# Task 004: Document Process Controls

**Status:** Done
**Phase:** 1 - System Architecture
**Address:** $6BED
**Priority:** Critical

## Objective

Document the sound flags processing that bridges input to action and sound.

## Scope

- Add D block explaining the control processing pipeline
- Document how input state becomes game actions
- Identify sound effect triggers
- Cross-reference input routines and sound routines
- Document the sound_flags bitmask usage

## Current State

The routine at $6BED executes ~43M times per game session. It processes sound flags but the pipeline from input to action to sound is undocumented.

## Acceptance Criteria

- [x] D block describes the input→action→sound pipeline
- [x] Control state bits are explained in context
- [x] Sound effect triggers are identified
- [x] Input and sound routines are cross-referenced
- [x] Build passes after changes

## Completed Work

- Added D block explaining the sound processing dispatcher role
- Added table showing all control bits and their sound handlers:
  - Bit 0 (FIRE) → #R$8A02 (fire sound)
  - Bit 1 (SPEED_DECREASED) → #R$6C5D (deceleration)
  - Bit 2 (SPEED_ALTERED) → #R$6CB8 (acceleration)
  - Bits 1+2 combined → #R$6CD6 (combined speed)
  - Bit 3 (LOW_FUEL) → #R$6CF4 (warning warble)
  - Bit 4 (BONUS_LIFE) → #R$6C31 (jingle)
  - Bit 5 (EXPLODING) → #R$6C7B (explosion)
- Added N block explaining flag lifecycle (set by game logic, cleared by sound routines)
- Simplified line comments for clarity

## Notes

This routine connects user input to game response. Understanding it clarifies the entire input handling system.
