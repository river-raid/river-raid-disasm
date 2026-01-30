# Task 002: Document Collision Dispatcher

**Status:** Todo
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

- [ ] D block describes the dispatch mechanism
- [ ] All collision modes are identified and explained
- [ ] Handler routines are cross-referenced
- [ ] Any new constants are defined with @equ
- [ ] Build passes after changes

## Notes

Understanding collision dispatch is essential for documenting enemy interactions and hit detection.
