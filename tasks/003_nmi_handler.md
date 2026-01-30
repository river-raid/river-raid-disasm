# Task 003: Document NMI Handler

**Status:** Todo
**Phase:** 1 - System Architecture
**Address:** $6BDB
**Priority:** Critical

## Objective

Document the non-maskable interrupt handler that manages frame timing.

## Scope

- Add D block explaining the NMI handler's role
- Document timing relationships (frame rate, tick counter)
- Identify what gets updated per interrupt
- Document interaction with main loop
- Explain any timing-critical operations

## Current State

The NMI handler at $6BDB is fundamental to game timing but lacks documentation explaining its role in the frame update cycle.

## Acceptance Criteria

- [ ] D block describes the handler's purpose
- [ ] Timing mechanism is explained
- [ ] Relationship to state_tick is documented
- [ ] Any hardware interactions are noted
- [ ] Build passes after changes

## Notes

The NMI drives the game's frame timing. Understanding this is essential for understanding animation and game speed.
