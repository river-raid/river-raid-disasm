# Task 015: Replace Magic Values with Named Constants

**Status:** Done
**Phase:** 5 - Polish
**Priority:** Medium

## Overview

Scan the disassembly for recurring or obscure literal values and replace them with named `@equ` constants and `@isub`
directives. This improves readability and makes the code self-documenting.

## Tier 1 — High-impact (repeated, obscure, or both)

### 1. Z80 opcodes in self-modifying code

Define once, use in three blending-mode routines and the interrupt vector setup:

```
OPCODE_NOP   EQU $00
OPCODE_JP    EQU $C3
OPCODE_XOR_B EQU $A8
OPCODE_OR_B  EQU $B0
```

Affected addresses: `$5CDE` (JP), `$7046` (XOR_B + NOP), `$72E6` (XOR_B), `$72EF` (OR_B). The `$A8`/`$B0` are
especially opaque without names — they patch `sprite_draw_op` and `sprite_erase_op` at runtime.

### 2. ULA speaker bit (7+7 = 14 occurrences)

```
ULA_SPEAKER_ON  EQU $10
ULA_SPEAKER_OFF EQU $00
```

Every sound routine uses `LD A,$10 / OUT ($FE),A` and `LD A,$00 / OUT ($FE),A`. This is the single most repeated magic
value pair in the codebase.

Affected addresses: `$6C63`, `$6C6B`, `$6C95`, `$6C9D`, `$6CBE`, `$6CC6`, `$6CDC`, `$6CE4`, `$6CF6`, `$6D08`,
`$8A04`, `$8A0D`.

### 3. ASCII character constants

```
CHAR_SPACE EQU $20
CHAR_ENTER EQU $0D
CHAR_0     EQU $30
CHAR_1     EQU $31
```

Occurrences:
- `CHAR_SPACE` ($20): `$6506`, `$5E69`/`$7B39`, 6× at `$9264` area — 8 total
- `CHAR_ENTER` ($0D): `$5EAB`, `$6D9B`, `$7B45` (CP comparisons and LD)
- `CHAR_0` ($30): `$91D0`, `$91E0` (score trailing zero), `$5D78` as part of `$3030`
- `CHAR_1` ($31): `$5E62`, `$6D4E` (ADD A,$31), `$7AE0`, `$7B0E` (SUB $31)

For the digit overflow check `CP $3A` at `$9144` and `$9172`, use expression `CHAR_0+10` — reads as "one past '9'"
without needing a separate constant.

### 4. Activation interval

```
ACTIVATION_INTERVAL_NORMAL EQU $1F
ACTIVATION_INTERVAL_FAST   EQU $0F
```

Affected addresses: `$5D54`, `$5DA8` ($1F), `$61D8` ($0F). All store into `state_activation_interval`.

## Tier 2 — Medium-impact (2–3 occurrences or important for clarity)

### 5. Dummy key value 'h'

```
CHAR_H EQU $68
```

Stored into `LAST_K` at `$5E69` and `$6D54` to suppress the H-key pause logic. Simple ASCII name, comment explains
the why.

### 6. Scroll-in iterations

```
SCROLL_IN_ITERATIONS EQU $28
```

Single use at `$5E88` but documents an important game constant (40 frames).

### 7. Terrain profile size

```
TERRAIN_PROFILE_SIZE EQU $10
```

2–3 uses in terrain rendering. `AND $0F` can become `AND TERRAIN_PROFILE_SIZE-1`.

### 8. Explosion frame counts

```
EXPLOSION_SOUND_FRAMES EQU $18
EXPLOSION_ANIM_FRAMES  EQU $10
```

### 9. Bonus life sound duration

```
BONUS_LIFE_SOUND_FRAMES EQU $40
```

## Tier 3 — Lower priority (single occurrence, but clarifying)

### 10. IM 1 vector table high byte

```
IM1_VECTOR_TABLE_HI EQU $3F
```

At `$5D06`. Restores ROM's default IM 1 mode — obscure without a name.

### 11. Score digit count

```
SCORE_DIGIT_COUNT EQU $06
```

Used in score routines; the related `$07` becomes `SCORE_DIGIT_COUNT+1`.

## What NOT to replace

- **`$20` as screen width (32 columns)** — same value as `CHAR_SPACE`, used in stride arithmetic. A `SCREEN_WIDTH`
  constant would collide and confuse. Leave with comments.
- **One-off coordinates** (missile spawn Y, fuel gauge row) — well-commented, not reused.
- **Per-routine sound timing values** — each is unique to its effect.
- **Fuel gauge pixel patterns** ($86, $C6) — bitmaps, not semantic.
- **Bridge progression values** — single-use in tightly commented algorithm.
