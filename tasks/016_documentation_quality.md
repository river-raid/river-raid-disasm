# Task 016: Documentation Quality Improvements

**Status:** Done
**Phase:** 5 - Polish
**Priority:** Medium

## Overview

Systematic assessment of every routine's documentation quality against the CLAUDE.md guidelines. Each routine is rated
**good** (no changes needed), **decent** (minor issues), or **needs improvement** (significant rework).

## Common Patterns to Fix

These recurring issues appear across multiple routines and should be addressed consistently:

1. **Mechanical instruction restatements**: Comments like "Load X into A" or "Store A to variable" that add nothing
   beyond what the symbolic instruction already says.
2. **Restating variable/constant names**: "Set CONTROLS_BIT_LOW_FUEL in controls state" when `SET CONTROLS_BIT_LOW_FUEL,(HL)` is self-evident.
3. **Per-instruction comments where grouping is needed**: Sequential `INC A; INC A` pairs or initialization sequences
   should share one comment describing the logical operation.
4. **Missing formulas in calculation routines**: Calculation routines should document the formula up front, not
   describe each shift/add individually.
5. **Unexplained screen memory magic numbers**: Values like `$7E0`, `$E0`, `$03DF` in rendering code are consequences
   of the ZX Spectrum's non-linear screen layout and should be derived in comments.

---

## Routines Needing Improvement

### 1. `init_state` ($5D44)

- Per-instruction comments are excessively mechanical and redundant.
- "Load the address of viewport_objects into HL" restates the instruction.
- Six nearly identical comments "Initialize state_score_player_X_Y bytes to '00'" should be one grouped comment.
- The `$4C83` terrain element value needs explanation of what the two bytes mean.
- **Fix**: Group initialization sequences under single high-level comments. Remove instruction restatements.

### 2. `calculate_fuel_gauge_offset` ($6124)

- Routine-level description is vague: "performs bit manipulation on the fuel level."
- Every line comment is a mechanical instruction restatement: "Load $07 into A," "Subtract B from A," etc.
- Missing the actual formula: should explain `offset = (7 - B) * 8 + D`.
- Self-modifying code at the end needs more context.
- No I:/O: register annotations.
- **Fix**: Add formula to the routine header, add register annotations, replace mechanical comments with algorithm steps.

### 3. `handle_right` ($65F3)

- Per-instruction comments are extremely verbose.
- "Increment X-coordinate by 1 pixel (first pixel)" / "Increment X-coordinate by 1 pixel (second pixel, total 2 pixels right)" for `INC A; INC A`. Should be: "Move plane 2 pixels right."
- "Store new X-coordinate back to state_plane_x" is self-evident from symbolic names.
- "Back up missile coordinates to state_plane_missile_coordinates_backup for later restoration" is overly verbose.
- Sprite setup parameters each get separate mechanical comments instead of being grouped.
- **Fix**: Group related instructions under single purpose comments. Remove restatements of symbolic names.

### 4. `handle_left` ($6642)

- Mirror of `handle_right` with identical issues (DEC instead of INC).
- **Fix**: Same as `handle_right`.

### 5. `restore_plane_state_after_render` ($6630)

- "Load backed-up missile coordinates from state_plane_missile_coordinates_backup" restates the instruction.
- "Restore missile coordinates to state_plane_missile_coordinates" is the same issue.
- **Fix**: Use concise purpose comment: "Restore missile coordinates from backup."

### 6. `scroll_attributes` ($68B7)

- "Load source address $5A1F into HL (attribute row)" literally restates the instruction with raw addresses.
- "Set BC to $020C (524 bytes to copy)" is mechanical.
- Should describe the operation at a higher level: "Copy 524 bytes backward to scroll attributes up one row."
- **Fix**: Replace per-instruction mechanical comments with grouped high-level operation descriptions.

### 7. `render_object` ($8B3C)

- Routine-level description says "Main rendering routine" but doesn't explain the two-phase approach (erase old, draw new).
- Register annotation for `I:D` is vague: "Frame number and some other info."
- Comments like "Save DE, store width, call set_sprite_attributes" are mechanical.
- The NOP instruction is unexplained.
- Missing: overview of the rendering pipeline (attribute setup → frame selection → screen address calculation → row-by-row rendering).
- **Fix**: Rewrite routine description with pipeline overview. Fix register annotations. Group mechanical comments.

### 8. `render_row_loop` ($8B70)

- ZX Spectrum screen boundary logic ($7E0 vs. $E0 adjustments) is not explained.
- $7E0 = 32 bytes/row x 63 rows (inter-third adjustment). $E0 = 32 bytes/row x 7 rows (intra-third adjustment).
- The overall algorithm flow is unclear without understanding the non-linear screen memory layout.
- **Fix**: Add a block comment explaining the ZX Spectrum screen memory layout and derive the magic numbers.

### 9. `print_lives_padding` ($9264)

- Six identical `LD A,CHAR_SPACE / RST $10` pairs have no grouping.
- **Fix**: Group under a single comment: "Print 6 spaces to clear the old lives display."

---

## Decent Routines (Minor Improvements)

### Input scanning cluster

| Routine         | Address | Issue                                          |
|-----------------|---------|------------------------------------------------|
| `scan_cursor`   | $5FDA   | No routine-level description beyond title      |
| `scan_kempston` | $600A   | Same                                           |
| `scan_sinclair` | $6039   | Same                                           |
| `scan_keyboard` | $6068   | Possible mislabeled comments (O/P key mapping) |

### Player switching cluster

| Routine                                 | Address | Issue                                     |
|-----------------------------------------|---------|-------------------------------------------|
| `check_player_2_lives`                  | $656F   | Mechanical "Load Player 1 lives" comments |
| `game_over`                             | $6577   | Same pattern                              |
| `setup_overview_status_player_2`        | $6587   | Same pattern                              |
| `switch_to_player_2`                    | $65AB   | Same pattern                              |
| `switch_to_player_2_in_two_player_mode` | $65BB   | Same pattern                              |
| `handle_player_2_death`                 | $65CB   | Same pattern                              |
| `switch_to_player_1`                    | $65DE   | Same pattern                              |

### Other decent routines

| Routine                               | Address | Issue                                                                       |
|---------------------------------------|---------|-----------------------------------------------------------------------------|
| `start_gameplay_or_overview`          | $5D10   | Restates variable names: "Load selected control type from tmp_control_type" |
| `play`                                | $5DA6   | The `$4C83` terrain element value lacks explanation                         |
| `collision_dispatcher`                | $6136   | Dispatch comments restate self-evident CP/JP pairs                          |
| `reset_gameplay_mode`                 | $63FC   | Slightly mechanical load/store comments                                     |
| `render_plane`                        | $6682   | Some comments slightly mechanical but overall better grouped                |
| `finalize_collision`                  | $6794   | Frame selection loop repeated; could note "same logic as above"             |
| `clear_top_rows`                      | $68A1   | Minor: grouped init comment is good but could be clearer                    |
| `update_bottom_row`                   | $68C5   | Minor precision issues                                                      |
| `render_bridge_attributes`            | $6927   | Minor                                                                       |
| `init_bridge_approach`                | $693C   | Borderline variable restatement                                             |
| `clear_bridge_destroyed`              | $6947   | Slightly mechanical for a 3-instruction routine                             |
| `operate_viewport_objects`            | $708E   | Excellent header but some line comments are mechanical                      |
| `operate_ship_or_helicopter_continue` | $7128   | Minor                                                                       |
| `handle_inactive_object`              | $7224   | Adequate but minimal                                                        |
| `animate_helicopter`                  | $724C   | "Store erase sprite all_ff to render_sprite_ptr" is mechanical              |
| `operate_tank_on_bank`                | $7302   | Could explain terrain check and shell firing conditions more clearly        |
| `init_tank_shell_state`               | $7343   | Could be clearer about bit 4 check dispatch                                 |
| `handle_tank_at_boundary`             | $74EE   | X-range checks ($70, $90) not explained in game terms                       |
| `operate_balloon`                     | $7649   | Terrain check offsets (-16, +32) not explained as sprite dimensions         |
| `operate_balloon_right`               | $76AF   | Same offset explanation issue                                               |
| `setup`                               | $7804   | Routine-level description is minimal for the overall game setup flow        |
| `do_fire`                             | $8A02   | Undocumented `$FD` prefix byte; missing sound frequency details             |
| `scroll_attribute_row`                | $8A1B   | Comments are mechanical; missing explanation of traversal direction         |
| `render_sprite`                       | $8B1E   | Missing explanation of frame selection algorithm (X position bits 1-2)      |
| `add_points`                          | $90E0   | Missing explanation of BCD-like point encoding                              |
| `add_life`                            | $9109   | Channel open/close pattern could be explained once                          |
| `inc_player_1_score_digit`            | $913B   | Restates variable names in comments                                         |
| `print_player_1_score_digit`          | $914B   | Column offset 5 not explained                                               |
| `inc_player_2_score_digit`            | $9169   | Same as player 1 version                                                    |
| `print_player_2_score_digit`          | $9179   | Column offset 21 not explained                                              |
| `print_score_player_2`                | $91C1   | Raw ASCII values ($50, $32) for 'P','2' without explanation                 |
| `print_player_2_score_area`           | $91E8   | Multiplication by 3 pattern not explained as such                           |
| `print_lives`                         | $923E   | Minor                                                                       |
| `set_attr_wrap_old`                   | $936F   | $03DF magic number not derived                                              |
| `set_attr_wrap_new`                   | $9388   | Same                                                                        |

---

## Good Routines (No Changes Needed)

The following routines have clear routine-level descriptions, appropriate formulas/algorithms, and meaningful
line comments that explain purpose rather than restating code:

`init`, `return_to_control_selection`, `start_overview`, `start_gameplay`, `decrease_lives_player_2`,
`main_loop`, `render_plane_and_terrain`, `handle_collision_mode_fighter`, `check_collision`,
`handle_collision_mode_fuel_depot`, `check_fragment_collision`, `get_offset_balloon`, `get_offset_fuel`,
`advance_object`, `retract_object`, `check_missile_vs_objects`, `hit_helicopter_reg`, `hit_ship`,
`hit_helicopter_adv`, `hit_fighter`, `hit_balloon`, `hit_fuel`, `refuel_from_depot`, `print_bridge`,
`handle_player_death`, `restart_current_player`, `advance_scroll`, `update_bridge_scroll`, `clear_bridge`,
`handle_up`, `handle_down`, `handle_fire`, `animate_plane_missile`, `clear_fire_bit`, `scroll_screen`,
`init_current_bridge`, `increase_bridge_index`, `handle_island`, `render_island_line`,
`calc_mirrored_edge`, `calc_offset_edge`, `render_terrain_row`, `render_terrain_fragment`,
`handle_special_terrain_fragment`, `int_handler`, `handle_controls`, `int_return`, `do_bonus_life`,
`beep_engine_normal`, `beep_explosion`, `beep_engine_fast`, `beep_engine_slow`, `do_low_fuel`,
`overview`, `consume_fuel`, `add_fuel`, `explode_fragment`, `add_object_to_set`, `write_object_to_set`,
`render_explosions`, `next_row`, `render_rock`, `render_enemy`, `blending_mode_xor_nop`, `render_fuel`,
`render_balloon`, `operate_ship_or_helicopter`, `operate_fighter`, `operate_tank_shell_explosion`,
`operate_tank`, `blending_mode_xor_xor`, `blending_mode_or_or`, `operate_helicopter_missile`,
`render_helicopter_missile`, `operate_tank_shell`, `operate_fuel`, `handle_fuel_off_viewport`,
`remove_object_from_viewport`, `switch_to_overview_mode`, `init_udg`, `calculate_pixel_address`,
`sprite_erase_op`, `sprite_draw_op`, `jp_collision_dispatcher`, `update_score`,
`carry_player_1_score_digit`, `carry_player_2_score_digit`, `print_lives_player_2`,
`set_sprite_attributes`, `compare_scores`, `update_high_score`, `clear_screen`, `ld_lives`,
`load_banked_plane_sprite`, `print_bridge_player_2`, `render_plane_and_terrain`,
`add_screen_bank_800`, `add_screen_bank_1000`, `pause`, `handle_enter`, `select_controls`,
`bonus_life_sound_done`, `explosion_render_finish`, `reset_scroll_text`, `init_starting_bridge`,
`register_low_fuel`, `register_sufficient_fuel`, `signal_fuel_level_excessive`,
`reset_explosions_pointer`, `remove_explosion_entry`, `render_sprite_row`,
`handle_zero_attributes`, `handle_collision_mode_none`

## Proposed Execution Order

1. Fix the nine "needs improvement" routines first (the highest impact).
2. Address mechanical comment patterns in "decent" routines, grouped by cluster:
   - Player switching cluster (seven routines, same pattern)
   - Score routines (6 routines, same pattern)
   - Input scanning cluster (four routines, same pattern)
   - Remaining individual routines
3. Skip "good" routines entirely.
