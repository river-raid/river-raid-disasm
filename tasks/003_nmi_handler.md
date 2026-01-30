# Task 003: Document NMI Handler

**Status:** Done
**Phase:** 1 - System Architecture
**Address:** $6BDB
**Priority:** Critical

## Objective

Document the interrupt handler that manages frame timing.

## Scope

- Add D block explaining the handler's role
- Document timing relationships (frame rate, tick counter)
- Identify what gets updated per interrupt
- Document interaction with main loop
- Explain any timing-critical operations

## Current State

The interrupt handler at $6BDB is fundamental to game timing but lacks documentation explaining its role in the frame update cycle.

## Acceptance Criteria

- [x] D block describes the handler's purpose
- [x] Timing mechanism is explained
- [x] Relationship to state_tick is documented
- [x] Any hardware interactions are noted
- [x] Build passes after changes

## Completed Work

- Fixed terminology: this is a maskable interrupt handler (IM 2), not NMI
- Added D block explaining the handler is triggered ~50 times/second by ULA
- Documented the three functions: FRAMES increment, H key pause check, sound processing
- Clarified relationship between FRAMES ($5C78) and state_tick ($5EEF):
  - FRAMES: System counter, incremented in interrupt handler
  - state_tick: Game counter, incremented in main loop
- Noted that RETN vs RETI is functionally equivalent on ZX Spectrum
- Updated int_return documentation to match

## Notes

The interrupt handler drives the game's frame timing. Understanding this is essential for understanding animation and game speed.
