# Task 009: Document Enemy Behavior Systems

**Status:** Done
**Phase:** 2 - Major Systems
**Priority:** High

## Objective

Document enemy movement patterns, direction changes, and projectile systems.

## Scope

- Document ship/helicopter movement ($7104)
- Document fighter movement and wrapping ($7158)
- Document tank shell trajectory ($7441)
- Document direction reversal system ($75D0)
- Document tank shell state variables ($7383-$7386)

## Acceptance Criteria

- [x] Ship/helicopter movement documented with timing and collision
- [x] Fighter movement documented with screen wrapping
- [x] Tank shell trajectory documented with parabolic arc
- [x] Direction reversal mechanism explained
- [x] Tank shell state variables fully documented
- [x] Build passes after changes

## Completed Work

### Ship/Helicopter Movement ($7104)
- Moves 2 pixels per frame on even ticks only
- Direction from SLOT_BIT_ORIENTATION (bit 6)
- Terrain collision at 16 pixels ahead triggers reversal via #R$75D0
- Renders 3x8 pixel sprite with frame-based animation

### Fighter Movement ($7158)
- Moves 4 pixels per frame (faster than ships)
- Screen wrapping: left edge $00 wraps to $E8, right edge $E8 wraps to $04
- Uses XOR blending mode for semi-transparent rendering
- Sets COLLISION_MODE_FIGHTER ($03) for collision detection

### Tank Shell Trajectory ($7441)
- 8-step parabolic arc before explosion
- Speed 1-4 (pseudo-random from interrupt counter)
- Descending pitch whistle: BEEPER with HL = step × 256
- Explodes at step 8 or when off-screen

### Tank Shell State Variables ($7383-$7386)
Added comprehensive bit field documentation:
- $7383: State flags (bits 0-2=speed, bit 5=exploding, bit 6=orientation, bit 7=flying)
- $7384: Trajectory step (0-7, explodes at 8)
- $7385-$7386: Shell coordinates (BC format)

### Direction Reversal ($75D0)
- XORs bit 6 (orientation) to reverse direction
- Ignores objects in top half of screen (Y >= $80)
- Re-renders sprite with new orientation immediately
- Called when terrain collision detected ahead

## Notes

These systems together create the characteristic River Raid enemy behavior: ships and helicopters patrol back and forth between river banks, fighters streak across the screen, and tanks lob shells in parabolic arcs.
