# Task 001: Document Main Gameplay Loop

**Status:** Done
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

- [x] D block describes the routine's role as central orchestrator
- [x] Loop structure is explained (entry, iteration, exit conditions)
- [x] All major subroutine calls are cross-referenced
- [x] State transitions are documented (exit via game over, pause, death)
- [x] Build passes after changes

## Completed Work

- Added D block with loop summary and phase list
- Added N block explaining infinite loop nature and exit conditions
- Documented 8 phases: Input, Timing, Render, Missiles, Projectiles, Scroll, Fuel, Controls
- Cross-referenced all called routines: #R$6EC8, #R$60A5, #R$708E, #R$673D, #R$7441, #R$7393, #R$66D0, #R$6DFF
- Cross-referenced input handlers: #R$600A, #R$6039, #R$6068, #R$5FDA
- Improved line comments to show logical grouping

## Notes

This is the game's heartbeat. Understanding this routine is prerequisite for understanding the entire game flow.
