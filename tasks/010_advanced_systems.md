# Task 010: Document Advanced Game Systems

**Status:** Done
**Phase:** 3 - Advanced Systems
**Priority:** Medium

## Objective

Document the remaining major game systems: scoring, bridge progression, enemy spawning, and game mode state machine.

## Scope

- Document score and bonus life system ($90E0, $9122, $9109)
- Document bridge/level progression ($68E9, $694D)
- Document enemy spawning and activation ($6F80, $5F5F)
- Document game mode state machine ($5F68)

## Acceptance Criteria

- [x] Score digit increment and carry algorithm documented
- [x] Bonus life trigger (every 10,000 points) explained
- [x] Bridge wraparound algorithm documented
- [x] Object activation interval mechanism explained
- [x] Game mode state table added
- [x] Build passes after changes

## Completed Work

### Score and Bonus Life System
- **add_points ($90E0)**: Takes encoded point value (points/10), splits into high/low nibbles
- **update_score ($9122)**: Increments score digit at offset (6 - type)
- **Bonus life**: Awarded when carry propagates to type=4 (offset 2, thousands column) = every 10,000 points
- Score storage: 6 ASCII digits at $90BC-$90C1 for player 1, $90C2-$90C7 for player 2

### Bridge/Level Progression
- **48 unique bridges** indexed 1-48 in $5EF0
- **64 terrain fragments** per bridge
- **Wraparound algorithm**: After bridge 48, calculates ((progress - 48) mod 15) + 33
- Creates infinite loop through bridges 33-48 (15 bridges)

### Enemy Spawning and Activation
- **next_row ($6F80)**: Reads level_objects[$C800 + bridge×256] during scroll
- **state_activation_interval ($5F5F)**: Bitmask for activation timing
  - $1F = every 32 frames (normal)
  - $0F = every 16 frames (after bridge destruction)
- Objects spawn with bit 7 clear, activate when (counter AND mask) == 0

### Game Mode State Machine
- **NORMAL ($00)**: Full player control, collision active
- **SCROLL_IN ($01)**: Terrain preview at game start, no input
- **OVERVIEW ($02)**: Attract mode demo
- **REFUEL ($06)**: Over fuel depot, adding fuel

## Notes

These systems represent the core game logic that ties together rendering, collision, and player progression. The documentation now provides enough detail to understand how River Raid generates its infinite scrolling gameplay.
