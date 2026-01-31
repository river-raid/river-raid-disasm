# Task 013: Document Object Characteristics

**Status:** Done
**Phase:** 4 - Game Mechanics
**Priority:** Medium

## Objective

Create comprehensive reference tables for all game objects: enemies, fuel depots, rocks, and bridges.

## Completed Documentation

### Object Characteristics Table (added to constants section)

| Object | Type | Points | Speed | Special |
|--------|------|--------|-------|---------|
| Helicopter | $01 | 60 | 2 px/frame | Patrols, no missiles |
| Ship | $02 | 30 | 2 px/frame | Patrols river |
| Helicopter+ | $03 | 210 | 2 px/frame | Patrols, FIRES missiles |
| Tank | $04 | 250 | 2 px/frame | Fires parabolic shells |
| Fighter | $05 | 160 | 4 px/frame | Fast, wraps screen edges |
| Balloon | $06 | 60 | 2 px/frame | Floats, bounces off banks |
| Fuel Depot | $07 | 80 | 0 (static) | Refuels plane |
| Bridge | -- | 500 | 0 (static) | Increases enemy activation rate |

### HELICOPTER_REG vs HELICOPTER_ADV Difference

The key difference is **missiles**:
- HELICOPTER_REG ($01): Regular helicopter, 60 points, patrols but does NOT fire
- HELICOPTER_ADV ($03): Advanced helicopter, 210 points, patrols AND fires missiles at player

This is documented in:
- Object characteristics table in constants section
- operate_viewport_objects ($708E): "Render missiles for advanced helicopters"
- spawn_helicopter_missile ($73DD): "Spawns a new helicopter missile from an advanced helicopter"

### Point Value Encoding

Points are encoded as value/10:
- POINTS_SHIP = $03 = 30 points
- POINTS_HELICOPTER_REG = $06 = 60 points
- etc.

## Acceptance Criteria

- [x] Point value table added to constants section
- [x] Movement speed table for all enemies documented
- [x] HELICOPTER_REG vs HELICOPTER_ADV difference explained (missiles)
- [x] Build passes after changes
