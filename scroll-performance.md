# Scrolling Performance Analysis

Analysis of `scroll_screen` ($8C?? — see `river-raid.asm`), the game's hottest code path.

## Overview

`scroll_screen` runs every frame and copies 144 screen rows (32 bytes each) from a source row to a destination row,
creating the vertical scroll effect. It processes rows \$8F down to \$01 (144 iterations), using a pre-computed
`screen_row_table` to convert row indices to ZX Spectrum screen addresses.

The ZX Spectrum 48K runs at 3.5 MHz with 69,888 T-states per frame (50 Hz). `scroll_screen` nominally costs
**~156,000 T-states per frame — over 2 full frame periods** — before accounting for memory contention.

---

## Per-Iteration Cost Breakdown

A typical iteration (no bank offset calls, no `render_plane` call) breaks down as follows:

| Section | Key instructions | T-states |
|---|---|---|
| Store counter + dest table lookup | `LD (nn),A` / `AND` / `LD HL,nn` / `SLA C` / `ADD HL,BC` / 2× `LD r,(HL)` | 84 |
| Reload counter + dest bank bits | `LD A,(nn)` / `BIT 7,A` / `CALL NZ` (not taken) / `BIT 6,A` / `CALL NZ` (not taken) | 49 |
| Load speed×2 + src table lookup | `LD A,(nn)` / `LD B,A` / `LD A,(nn)` / `SUB B` / `AND` / `SLA C` / `ADD HL,BC` / 2× `LD r,(HL)` | 116 |
| Reload speed + counter + src bank bits | `LD A,(nn)` / `LD D,A` / `LD A,(nn)` / `SUB D` / `BIT 7,A` / `CALL NZ` / `BIT 6,A` / `CALL NZ` | 70 |
| **Copy 32 bytes** | **`LDDR` (32 steps)** | **667** |
| Loop control | `LD A,(nn)` / `DEC A` / `CP $00` / `JP Z` / `CP $7F` / `CALL Z` / `LD A,(nn)` / `DEC A` / `JP` | 78 |
| **Total** | | **1,084** |

**LDDR accounts for 667 / 1084 = 61.5% of each iteration.** The remaining 417 T-states are pure overhead.

Total (144 iterations × 1,084): **~156,000 T-states = 2.23 frame periods**.

---

## Inefficiencies in the Current Loop

### 1. Redundant `CP $00` after `DEC A`

```asm
DEC A          ; sets Z flag if result = 0
CP $00         ; redundant: wastes 7 T-states
JP Z, clear_top_rows
```

`DEC A` already sets the Z flag. `CP $00` costs 7 T-states × 144 iterations = **1,008 T-states/frame** wasted.

### 2. Double decrement / reload pattern

At the end of each iteration, the loop:
1. Loads `state_island_render_idx`, decrements it (for exit and mid-scroll checks).
2. Reloads `state_island_render_idx` and decrements it again to produce the value for the next iteration.

The second `LD A,(nn)` + `DEC A` is only necessary because `render_plane` (called once at counter \$7F) may
clobber A. If `render_plane` preserves A, the reload can be dropped, saving **17 T-states/iter = 2,448/frame**.

### 3. `state_island_render_idx` loaded from memory 5× per iteration

The loop counter is stored to and read from `state_island_render_idx` (a memory location) on every iteration:
one store (`LD (nn),A`) and five loads (`LD A,(nn)`). Each load is 13 T-states.

If kept in `IY` (or another register) and spilled to memory only for the `render_plane` call, this saves
approximately **91 T-states/iter = ~13,100 T-states/frame**.

### 4. `state_speed` loaded from memory twice per iteration

Speed is loaded at two separate points per iteration to compute both source and destination bank offsets.
Speed does not change during the scroll, so it can be loaded once into a register before the loop.
Savings: 2 × 13 = **26 T-states/iter = ~3,744 T-states/frame**.

### 5. Combined overhead savings

| Fix | T-states/iter | T-states/frame |
|---|---|---|
| Remove `CP $00` | 7 | 1,008 |
| Remove double DEC (if A preserved) | 17 | 2,448 |
| Keep speed in register | 26 | 3,744 |
| Keep loop counter in `IY` | ~91 | ~13,100 |
| **Total** | **~141** | **~20,300** |

**~13% reduction in total scroll time.** Meaningful, but the loop overhead is not the dominant cost.

---

## The Real Bottleneck: Memory Contention

The ZX Spectrum 48K ULA competes with the CPU for access to the lower 16 KB (\$4000–\$7FFF). During the active
display period (lines 0–191), the ULA asserts WAIT on CPU memory accesses to this range for 6 out of every 8
T-states. The screen pixel memory ($4000–$57FF) falls entirely within this contended region.

`scroll_screen` copies **screen RAM → screen RAM**: both source and destination are contended. Each LDDR step
involves four memory accesses (two data, two address), all of which can be delayed by wait states.

In the worst case, every access is stalled: an instruction that nominally takes 7 T-states might take 13+.
Across 32 bytes × 144 rows = 4,608 LDDR steps, the effective LDDR cost can approach **double** the nominal
667 T-states. The scroll's true wall-clock cost is likely **3–4 frame periods**, not 2.2.

No amount of loop overhead reduction fixes this — **contention dominates the total cost**.

### Why contention matters more than overhead

The 417 T-states of per-iteration overhead can be reduced by ~141 T-states (34% of overhead, 13% of total)
with the fixes above. But if LDDR's 667 T-states expand to ~1,200 under contention, LDDR becomes ~75% of the
cost and the overhead is less than 25%. Optimizing overhead while leaving contention untouched yields
diminishing returns.

---

## Significantly Better Approaches

### Option A: Self-modifying unrolled loop

For a given speed, precompute all 144 (src, dst) address pairs and emit a flat sequence of hardcoded
`LD HL,src / LD DE,dst / LD BC,32 / LDDR` blocks:

```asm
LD HL,$4800    ; src row 0 — address patched per speed
LD DE,$4000    ; dst row 0
LD BC,32
LDDR
LD HL,$4900    ; src row 1
LD DE,$4100    ; dst row 1
LD BC,32
LDDR
; ... × 144
RET
```

Per-iteration overhead drops from **417 T-states to ~30 T-states** (three `LD rr,nn` + fall-through).

| Metric | Current loop | Unrolled |
|---|---|---|
| Overhead/iter | 417 T-states | ~30 T-states |
| Copy/iter | 667 T-states | 667 T-states |
| Total/iter | 1,084 T-states | ~697 T-states |
| Total (144 iters) | ~156,000 T-states | ~100,000 T-states |
| **Speedup** | — | **~36%** |

Code size: 144 × 11 bytes (3+3+3+2) = **~1,584 bytes**. The block is regenerated only when speed changes
(infrequent). Contention is unchanged, but fewer total CPU cycles are spent in the contended region.

### Option B: Render to non-contended shadow buffer

Maintain a 6 KB shadow copy of the pixel screen in high RAM ($8000+). Perform the scroll by reading from
the shadow buffer (uncontended) and writing to screen RAM (contended). This eliminates wait states on all
reads — roughly halving the contention penalty on LDDR.

Downsides: requires 6 KB of RAM (tight on 48K), and all pixel writes must be mirrored to the shadow buffer.
The island renderer and sprite blitter would need to write to both locations.

### Option C: Scroll during VBLANK / border period

The blanking interval begins at line 192 and lasts ~8,960 T-states before line 0. During this window, the
ULA is not actively fetching pixel data, so CPU accesses to screen RAM are uncontended (or minimally
contended during the border). Scheduling the scroll to begin at the start of blanking eliminates the
contention penalty entirely for any rows copied before the display restarts.

This requires precise interrupt timing: at the IM 1 interrupt (start of VBLANK), immediately begin the
scroll rather than entering the normal game loop. With ~8,960 T-states of uncontended time and each row
costing ~697 T-states (with unrolled loop), approximately **12–13 rows** can be copied contention-free per
frame. Copying all 144 rows would still overflow into the display period, but the worst-case contention
window is reduced.

A hybrid approach — scroll during VBLANK, then continue into the display period — would yield a
meaningfully faster effective scroll even without a shadow buffer.

---

## Summary

| Problem | Impact | Fix |
|---|---|---|
| Redundant `CP $00` | Minor (1,008 T-states/frame) | Delete instruction |
| Double DEC / reload | Minor (2,448 T-states/frame) | Check if `render_plane` preserves A |
| Counter/speed in memory | Moderate (17,000 T-states/frame) | Use `IY` and a register |
| Table lookup overhead | Significant (417 T-states/iter) | Unrolled self-modifying code (~36% speedup) |
| **Memory contention** | **Dominant** | Shadow buffer or VBLANK scheduling |

The scroll is fundamentally bottlenecked by contended screen-to-screen copying. Pure Z80 loop optimizations
reduce overhead but leave the dominant cost untouched. The highest-leverage improvements are architectural:
either eliminate reads from contended memory (shadow buffer) or move as much copying as possible to the
uncontended VBLANK window.
