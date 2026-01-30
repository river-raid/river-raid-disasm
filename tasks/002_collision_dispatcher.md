# Task 002: Document Collision Dispatcher

**Status:** Done
**Phase:** 1 - System Architecture
**Address:** $6136
**Priority:** Critical

## Objective

Document the collision detection dispatch mechanism that routes collisions to appropriate handlers.

## Scope

- Add D block explaining the dispatcher's role
- Document the dispatch table or switch logic
- Identify all collision modes and their handlers
- Cross-reference collision handler routines
- Document collision mode constants if not already defined

## Current State

The routine at $6136 executes ~54M times per game session. It routes collision detections but the dispatch mechanism is undocumented.

## Acceptance Criteria

- [x] D block describes the dispatch mechanism
- [x] All collision modes are identified and explained
- [x] Handler routines are cross-referenced
- [x] Any new constants are defined with @equ
- [x] Build passes after changes

## Completed Work

- Added D block explaining the dispatcher role (called via #R$8C45 during sprite rendering)
- Added table documenting all 5 collision modes:
  - COLLISION_MODE_NONE ($00) → #R$8C3B (rendering only)
  - COLLISION_MODE_FUEL_DEPOT ($01) → #R$6256 (fuel depot refuel)
  - COLLISION_MODE_MISSILE ($02) → #R$61BB (missile hit detection)
  - COLLISION_MODE_FIGHTER ($03) → #R$615E (fighter collision)
  - COLLISION_MODE_HELICOPTER_MISSILE ($04) → #R$7415 (enemy missile)
- Added line comments for register save sequence and dispatch logic
- Used @isub directives with COLLISION_MODE_* constants

## Notes

Understanding collision dispatch is essential for documenting enemy interactions and hit detection.
