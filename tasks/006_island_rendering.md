# Task 006: Document Island Rendering System

**Status:** Done
**Phase:** 1 - System Architecture
**Address:** $683B
**Priority:** Critical

## Objective

Document the core island/terrain rendering and scrolling system.

## Scope

- Add D block explaining the island rendering system
- Document the scrolling mechanism
- Explain terrain fragment generation
- Document the hot path cluster ($6859-$68C0)
- Identify data structures for terrain state

## Current State

The routine at $683B and the hot path cluster ($6859-$68C0) execute ~300M+ times per session. This is the most executed code in the game but has minimal documentation.

## Acceptance Criteria

- [x] D block describes the island rendering system
- [x] Scrolling mechanism is explained
- [x] Terrain fragment generation is documented
- [x] Hot path routines are identified
- [x] Build passes after changes

## Completed Work

- Added D block explaining the core vertical scroll engine
- Added N blocks explaining the algorithm:
  - Processes 144 screen lines ($8F to $00)
  - Each iteration copies 32 bytes via LDDR
  - Source/destination offset determined by speed
- Documented bank selection mechanism:
  - Bits 7-6 of counter select data banks
  - Bit 7 adds $1000, bit 6 adds $0800
  - Allows 4 banks × 64 lines = 256 pattern lines
- Added performance note about ~300M+ executions per session
- Simplified line comments with logical groupings
- Cross-referenced lookup table at #R$5B00

## Notes

This is the most performance-critical code in the game. Understanding it is essential for understanding River Raid's visual presentation.
