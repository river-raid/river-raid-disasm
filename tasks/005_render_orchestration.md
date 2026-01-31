# Task 005: Document Render Orchestration

**Status:** Done
**Phase:** 1 - System Architecture
**Address:** $60A5
**Priority:** Critical

## Objective

Document the top-level render routine that orchestrates plane and terrain rendering.

## Scope

- Add D block explaining render orchestration
- Document the render order and why it matters
- Identify sprite rendering calls
- Document terrain/island rendering integration
- Explain any double-buffering or flicker prevention

## Current State

The routine at $60A5 is the main render entry point but lacks documentation explaining how it coordinates the visual update.

## Acceptance Criteria

- [x] D block describes render orchestration role
- [x] Render sequence is documented
- [x] Sprite and terrain rendering are cross-referenced
- [x] Any flicker prevention techniques are noted
- [x] Build passes after changes

## Completed Work

- Added D block explaining top-level render orchestration role
- Added N block with render sequence list:
  1. Player plane sprite (GAMEPLAY_MODE_NORMAL only, via #R$8B3C)
  2. Island/terrain system (via #R$683B)
  3. Terrain fragments (count = speed, via #R$6AA3)
  4. Attribute scroll (every 8 fragments, via #R$68B7)
- Documented speed effects on plane Y position and fragment count
- Simplified line comments with logical groupings
- Cross-referenced all called routines

## Notes

This is the entry point for all visual updates. Understanding it is key to understanding the rendering pipeline.
