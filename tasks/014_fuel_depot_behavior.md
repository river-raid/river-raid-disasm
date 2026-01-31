# Task 014: Document Fuel Depot Behavior

**Status:** Done
**Phase:** 4 - Game Mechanics
**Priority:** Medium

## Objective

Document fuel depot rendering, blinking animation, and refueling interaction.

## Completed Documentation

### Fuel Depot Blinking Animation

**Question Answered**: How often does the fuel station blink?
**Answer**: Every 4 frames

The blinking is controlled by TICK_MASK_FUEL_BLINK ($04):
- Attribute calculation: `base_attributes + (tick AND $04)`
- When tick bit 2 is 0: normal colors
- When tick bit 2 is 1: alternate colors (+4 to attribute)
- This toggles every 4 frames, creating a steady blink

Updated documentation at operate_fuel ($754C):
- "Blinks every 4 frames by toggling attribute bit 2 (TICK_MASK_FUEL_BLINK)"

### Refueling State Machine (already documented in Task 011)

GAMEPLAY_MODE_NORMAL → GAMEPLAY_MODE_REFUEL → GAMEPLAY_MODE_NORMAL

1. Plane approaches fuel depot
2. COLLISION_MODE_FUEL_DEPOT triggers
3. Mode switches to GAMEPLAY_MODE_REFUEL
4. Fuel added at 4 units/frame while plane centered
5. When plane leaves depot area, mode returns to NORMAL

### Key Constants

- TICK_MASK_FUEL_BLINK = $04 (blink timing)
- FUEL_INTAKE_AMOUNT = $04 (4 units per frame)
- SPRITE_FUEL_STATION_HEIGHT_PIXELS = $19 (25 pixels)
- SPRITE_FUEL_STATION_WIDTH_TILES = $02 (2 tiles = 16 pixels)

## Acceptance Criteria

- [x] Blink timing documented (every 4 frames via TICK_MASK_FUEL_BLINK)
- [x] Refuel state machine documented (in Task 011)
- [x] Fuel addition rate documented (4 units per frame)
- [x] Build passes after changes
