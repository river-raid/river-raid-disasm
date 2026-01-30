# Task 005: Document Render Orchestration

**Status:** Todo
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

- [ ] D block describes render orchestration role
- [ ] Render sequence is documented
- [ ] Sprite and terrain rendering are cross-referenced
- [ ] Any flicker prevention techniques are noted
- [ ] Build passes after changes

## Notes

This is the entry point for all visual updates. Understanding it is key to understanding the rendering pipeline.
