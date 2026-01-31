# Task 011: Document Player Mechanics

**Status:** Done
**Phase:** 4 - Game Mechanics
**Priority:** High

## Objective

Document all player-related mechanics: movement speeds, fuel consumption, refueling, and missile behavior.

## Scope

- Document player movement speeds (scroll and horizontal)
- Document fuel consumption rate and whether it varies with speed
- Document refueling mechanics (rate, conditions)
- Document missile speed and behavior
- Create unified reference for player constants

## Control Questions Answered

1. **At what speed does the player plane move normally and at slow/fast speeds?**
   - Scroll speed: SLOW=1, NORMAL=2, FAST=4 pixels per frame
   - Horizontal movement: 2 pixels per left/right input (fixed, regardless of scroll speed)

2. **Does fuel consumption depend on speed?**
   - NO. Fuel decreases by 1 unit every 2 frames regardless of scroll speed.

3. **What is the refueling rate per frame?**
   - 4 fuel units per frame (FUEL_INTAKE_AMOUNT)
   - Only when plane is centered over depot (not banking)

4. **What is the missile speed?**
   - 6 pixels upward per frame

5. **What is the exact refueling rate per frame?**
   - 4 units/frame = ~200 units/second at 50fps
   - Full refuel from empty takes ~1.3 seconds (255/200)

## Completed Documentation

### state_speed ($5F64)
Added table showing scroll speeds:
- SLOW: 1 pixel/frame
- NORMAL: 2 pixels/frame
- FAST: 4 pixels/frame

### state_fuel ($5F66)
Added comprehensive table:
- Consumption: 1 unit every 2 frames (~25 units/sec)
- Refueling: 4 units per frame (~200 units/sec)
- Full tank duration: ~10 seconds
- Full refuel time: ~1.3 seconds

### consume_fuel ($6DFF)
Updated description: "Decrements fuel level by 1 every 2 frames (on even ticks only). Fuel consumption does NOT vary with scroll speed."

### add_fuel ($6E40)
Updated description: "Adds FUEL_INTAKE_AMOUNT (4 units) per frame while plane is over a fuel depot. Returns if plane is banking - must be centered to refuel."

### animate_plane_missile ($673D)
Added D block: "Missile speed: 6 pixels upward per frame."

## Acceptance Criteria

- [x] Scroll speed values documented with actual pixel rates
- [x] Horizontal movement speed documented (2 pixels per input)
- [x] Fuel consumption formula documented (rate per frame, speed dependency)
- [x] Refueling rate documented (4 units per frame when centered)
- [x] Missile speed documented (6 pixels per frame upward)
- [x] Build passes after changes
