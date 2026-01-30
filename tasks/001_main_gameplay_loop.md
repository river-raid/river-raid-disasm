# Task 001: Document Main Gameplay Loop

**Status:** Todo
**Phase:** 1 - System Architecture
**Address:** $5F91
**Priority:** Critical

## Objective

Document the main gameplay loop that orchestrates all game subsystems.

## Scope

- Add D (description) block explaining the loop's purpose
- Add N (narrative) blocks for algorithm flow
- Document state machine transitions
- Identify and cross-reference called subroutines
- Document any data structures encountered inline

## Current State

The routine at $5F91 executes ~171M times per game session but lacks high-level documentation.

## Acceptance Criteria

- [ ] D block describes the routine's role as central orchestrator
- [ ] Loop structure is explained (entry, iteration, exit conditions)
- [ ] All major subroutine calls are cross-referenced
- [ ] State transitions are documented
- [ ] Build passes after changes

## Notes

This is the game's heartbeat. Understanding this routine is prerequisite for understanding the entire game flow.
