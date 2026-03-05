# Task 012: Document Two-Player Mode

**Status:** Done
**Phase:** 4 - Game Mechanics
**Priority:** High

## Objective

Document the two-player game mode mechanics: player switching, separate state tracking, and display differences.

## Completed Documentation

### state_game_mode ($923A)
Added bit field table:
- Bit 0: Player count (0=1 player, 1=2 players)
- Bits 1-2: Starting bridge (0=Bridge 1, 1=Bridge 5, 2=Bridge 9, 3=Bridge 15)
- Bits 3-7: Unused

### state_player ($923D)
Updated with detailed description of which state variables it affects:
- Score: #R$90BC (P1) vs #R$90C2 (P2)
- Lives: #R$923B (P1) vs #R$923C (P2)
- Bridge progress: #R$5F6A (P1) vs #R$5F6B (P2)
- Colors: P1=yellow ($06), P2=cyan ($05)

### Player Switching Logic (handle_player_death $650A)
Added comprehensive state machine table showing all combinations:

| Current | P1 Lives | P2 Lives | Action |
|---------|----------|----------|--------|
| P1 | >0 | >0 | Switch to P2 |
| P1 | >0 | 0 | Restart P1 |
| P1 | 0 | >0 | Switch to P2 |
| P1 | 0 | 0 | Game Over |
| P2 | >0 | >0 | Switch to P1 |
| P2 | >0 | 0 | Restart P2 |
| P2 | 0 | >0 | Switch to P1 |
| P2 | 0 | 0 | Game Over |

## Key Routines (already documented)

- $65AB: switch_to_player_2
- $65BB: switch_to_player_2_in_two_player_mode
- $65CB: handle_player_2_death
- $65DE: switch_to_player_1
- $6587: setup_player_2_display

## Acceptance Criteria

- [x] state_game_mode bit fields documented
- [x] Player switching flow documented (who plays next after death)
- [x] Separate state variables identified (score, lives, bridge)
- [x] Color scheme differences documented (P1=yellow, P2=cyan)
- [x] Game over conditions for two-player mode explained
- [x] Build passes after changes
