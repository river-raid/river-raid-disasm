# Task 007: Document Game Data Structures

**Status:** Done
**Phase:** 2 - Major Systems
**Priority:** High

## Objective

Document the data structures that represent game levels, enemies, their positions and orientations.

## Scope

- Document viewport_objects array ($5F00)
- Document explosion fragments array ($5F2E)
- Document object definition byte format (bit fields)
- Document level_objects spawn data ($C800)
- Add SLOT_BIT_ACTIVATION constant

## Acceptance Criteria

- [x] viewport_objects array documented with entry format table
- [x] Explosion fragments array documented with frame info
- [x] Object definition byte bit fields documented as ASCII table
- [x] level_objects data documented with 2-byte slot format
- [x] SLOT_BIT_ACTIVATION constant added
- [x] Build passes after changes

## Completed Work

### Object Definition Byte (byte 2 of viewport entries)
Added comprehensive bit field documentation:
- Bits 0-2: Object type (OBJECT_* constants)
- Bit 3: Rock flag (selects rock vs interactive object)
- Bit 5: Tank location (river bank vs bridge)
- Bit 6: Orientation (left/right facing)
- Bit 7: Activation flag (spawning vs active)

### viewport_objects Array ($5F00-$5F2D)
- 46 bytes, up to 15 entries × 3 bytes each
- Entry format: [X, Y, object_definition]
- Markers: EMPTY=$00, END=$FF
- Cross-referenced operate and collision routines

### Explosion Fragments Array ($5F2E-$5F5E)
- 49 bytes, up to 16 entries × 3 bytes each
- Entry format: [X, Y_offset, frame_counter]
- Frame counter bit 7 = erase flag
- Cross-referenced explosion sprite addresses

### level_objects Data ($C800-$F7FF)
- 48 levels × 256 bytes = 12,288 bytes
- 128 spawn slots per level (2 bytes each)
- Slot format: [D=type/flags, E=X_position]
- E=$00 means empty slot, otherwise X coordinate

## Notes

These data structures are fundamental to understanding how River Raid generates and manages its game world.
