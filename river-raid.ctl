> $4000 @start
> $4000
> $4000 COLOR_INHERIT EQU $00
> $4000 COLOR_BLACK   EQU $00
> $4000 COLOR_BLUE    EQU $01
> $4000 COLOR_RED     EQU $02
> $4000 COLOR_MAGENTA EQU $03
> $4000 COLOR_GREEN   EQU $04
> $4000 COLOR_CYAN    EQU $05
> $4000 COLOR_YELLOW  EQU $06
> $4000 COLOR_WHITE   EQU $07
> $4000
> $4000 ; Terrain colors
> $4000 COLOR_RIVER   EQU COLOR_BLUE
> $4000 COLOR_BANK    EQU COLOR_GREEN
> $4000
> $4000 ; Player colors
> $4000 COLOR_PLAYER_1 EQU COLOR_YELLOW
> $4000 COLOR_PLAYER_2 EQU COLOR_CYAN
> $4000
> $4000 ; Object colors
> $4000 COLOR_HELICOPTER EQU COLOR_YELLOW
> $4000 COLOR_SHIP       EQU COLOR_CYAN
> $4000 COLOR_BALLOON    EQU COLOR_YELLOW
> $4000 COLOR_FUEL       EQU COLOR_MAGENTA
> $4000 COLOR_ROCK       EQU COLOR_RED
> $4000 COLOR_MISSILE    EQU COLOR_GREEN
> $4000 COLOR_EXPLOSION  EQU COLOR_GREEN
> $4000
> $4000 EXT_ATTR_INK   EQU $10
> $4000 EXT_ATTR_PAPER EQU $11
> $4000 EXT_ATTR_AT    EQU $16
> $4000
> $4000 ; ASCII character codes
> $4000 CHAR_ENTER   EQU $0D
> $4000
> $4000 ; Z80 opcodes used in self-modifying code
> $4000 OPCODE_NOP   EQU $00
> $4000 OPCODE_JP    EQU $C3
> $4000 OPCODE_XOR_B EQU $A8
> $4000 OPCODE_OR_B  EQU $B0
> $4000
> $4000 ; ULA port speaker control
> $4000 ULA_SPEAKER_ON  EQU $10
> $4000 ULA_SPEAKER_OFF EQU $00
> $4000
> $4000 INPUT_INTERFACE_KEYBOARD EQU $00
> $4000 INPUT_INTERFACE_SINCLAIR EQU $01
> $4000 INPUT_INTERFACE_KEMPSTON EQU $02
> $4000 INPUT_INTERFACE_CURSOR   EQU $03
> $4000
> $4000 OVERVIEW_MODE_OFF EQU $00
> $4000 OVERVIEW_MODE_ON  EQU $01
> $4000
> $4000 GAME_MODE_BIT_TWO_PLAYERS EQU 0
> $4000
> $4000 PLAYER_1 EQU $01
> $4000 PLAYER_2 EQU $02
> $4000
> $4000 LIVES_INITIAL EQU $04
> $4000
> $4000 SPEED_STOP   EQU $01
> $4000 SPEED_SLOW   EQU $01
> $4000 SPEED_NORMAL EQU $02
> $4000 SPEED_FAST   EQU $04
> $4000
> $4000 CONTROLS_BIT_FIRE_SOUND      EQU 0
> $4000 CONTROLS_BIT_SPEED_NOT_FAST  EQU 1
> $4000 CONTROLS_BIT_SPEED_CHANGED   EQU 2
> $4000 CONTROLS_BIT_LOW_FUEL        EQU 3
> $4000 CONTROLS_BIT_BONUS_LIFE      EQU 4
> $4000 CONTROLS_BIT_EXPLODING       EQU 5
> $4000
> $4000 CONTROLS_SPEED_MASK   EQU 1<<CONTROLS_BIT_SPEED_NOT_FAST|1<<CONTROLS_BIT_SPEED_CHANGED
> $4000 CONTROLS_SPEED_NORMAL EQU 1<<CONTROLS_BIT_SPEED_NOT_FAST
> $4000 CONTROLS_SPEED_FAST   EQU 1<<CONTROLS_BIT_SPEED_CHANGED
> $4000 CONTROLS_SPEED_SLOW   EQU 1<<CONTROLS_BIT_SPEED_NOT_FAST|1<<CONTROLS_BIT_SPEED_CHANGED
> $4000
> $4000 TANK_SHELL_STATE_UNITIALIZED   EQU $00
> $4000 TANK_SHELL_MASK_SPEED          EQU $07
> $4000 TANK_SHELL_BIT_EXPLODING       EQU 5
> $4000 TANK_SHELL_BIT_FLYING          EQU 7
> $4000 TANK_SHELL_TRAJECTORY_MAX_STEP EQU $08
> $4000
> $4000 HELICOPTER_MISSILE_STEP EQU $08
> $4000
> $4000 ; Tick-based timing constants for frame parity checks.
> $4000 ; state_tick bit 0 alternates every frame (even/odd).
> $4000 ; state_tick bit 2 alternates every 4 frames (fuel blink).
> $4000 TICK_MASK_FRAME_PARITY EQU $01
> $4000 TICK_PARITY_EVEN       EQU $00
> $4000 TICK_PARITY_ODD        EQU $01
> $4000 TICK_MASK_FUEL_BLINK   EQU $04
> $4000
> $4000 FIGHTER_POSITION_LEFT_INIT   EQU $E8
> $4000 FIGHTER_POSITION_LEFT_LIMIT  EQU $00
> $4000 FIGHTER_POSITION_RIGHT_INIT  EQU $04
> $4000 FIGHTER_POSITION_RIGHT_LIMIT EQU $E8
> $4000
> $4000 ; Object characteristics summary:
> $4000 ; +---------------+------+--------+------------+----------------------+
> $4000 ; | Object        | Type | Points | Speed      | Special              |
> $4000 ; +---------------+------+--------+------------+----------------------+
> $4000 ; | Helicopter    | $01  | 60     | 2 px/frame | Patrols, no missiles |
> $4000 ; | Ship          | $02  | 30     | 2 px/frame | Patrols river        |
> $4000 ; | Helicopter+   | $03  | 150    | 2 px/frame | Patrols, FIRES       |
> $4000 ; | Tank          | $04  | 250    | 2 px/frame | Fires parabolic      |
> $4000 ; | Fighter       | $05  | 100    | 4 px/frame | Fast, wraps screen   |
> $4000 ; | Balloon       | $06  | 60     | 2 px/frame | Floats, bounces      |
> $4000 ; | Fuel Depot    | $07  | 80     | 0 (static) | Refuels plane        |
> $4000 ; | Bridge        | --   | 500    | 0 (static) | Increases activation |
> $4000 ; +---------------+------+--------+------------+----------------------+
> $4000 ; Note: Points encoded as value/10 (e.g., POINTS_SHIP=$03 = 30 points).
> $4000 ; Helicopter+ (ADV) fires missiles at player unlike regular helicopter.
> $4000
> $4000 POINTS_SHIP           EQU $03
> $4000 POINTS_HELICOPTER_REG EQU $06
> $4000 POINTS_BALLOON        EQU $06
> $4000 POINTS_FUEL           EQU $08
> $4000 POINTS_FIGHTER        EQU $10
> $4000 POINTS_HELICOPTER_ADV EQU $15
> $4000 POINTS_TANK           EQU $25
> $4000 POINTS_BRIDGE         EQU $50
> $4000
> $4000 OBJECT_HELICOPTER_REG EQU $01
> $4000 OBJECT_SHIP           EQU $02
> $4000 OBJECT_HELICOPTER_ADV EQU $03
> $4000 OBJECT_TANK           EQU $04
> $4000 OBJECT_FIGHTER        EQU $05
> $4000 OBJECT_BALLOON        EQU $06
> $4000 OBJECT_FUEL           EQU $07
> $4000
> $4000 ; Object definition byte bit fields (byte 2 of viewport_slots entries)
> $4000 ; +-------+--------------------------------------------------+
> $4000 ; | Bit   | Meaning                                          |
> $4000 ; +-------+--------------------------------------------------+
> $4000 ; | 0-2   | Object type (OBJECT_* constants, 0-7)            |
> $4000 ; | 3     | Rock flag (1=rock decoration, 0=interactive)     |
> $4000 ; | 4     | Alt shell init (set on direction reversal, triggers alternate tank shell init) |
> $4000 ; | 5     | Tank location (1=river bank, 0=bridge)           |
> $4000 ; | 6     | Orientation (1=right-facing, 0=left-facing)      |
> $4000 ; | 7     | Activation (1=active/interactive, 0=spawning)    |
> $4000 ; +-------+--------------------------------------------------+
> $4000 SLOT_BIT_ROCK              EQU $03
> $4000 SLOT_BIT_ALT_SHELL_INIT   EQU $04
> $4000 SLOT_BIT_TANK_ON_BANK     EQU $05
> $4000 SLOT_BIT_ORIENTATION  EQU $06
> $4000 SLOT_BIT_ACTIVATION   EQU $07
> $4000 SLOT_MASK_OBJECT_TYPE EQU $07
> $4000
> $4000 SIZE_LEVEL_SLOTS      EQU $0100
> $4000
> $4000 SET_MARKER_EMPTY_SLOT EQU $00
> $4000 SET_MARKER_END_OF_SET EQU $FF
> $4000
> $4000 SPRITE_PLANE_WIDTH_TILES   EQU $02
> $4000 SPRITE_PLANE_HEIGHT_PIXELS EQU $08
> $4000 SPRITE_PLANE_FRAME_SIZE    EQU SPRITE_PLANE_WIDTH_TILES * SPRITE_PLANE_HEIGHT_PIXELS
> $4000 SPRITE_PLANE_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_PLAYER_1
> $4000
> $4000 SPRITE_3BY1_ENEMY_WIDTH_TILES   EQU $03
> $4000 SPRITE_3BY1_ENEMY_HEIGHT_PIXELS EQU $08
> $4000 SPRITE_3BY1_ENEMY_FRAME_SIZE    EQU SPRITE_3BY1_ENEMY_WIDTH_TILES * SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
> $4000 SPRITE_3BY1_ENEMY_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_HELICOPTER
> $4000
> $4000 SPRITE_SHIP_ATTRIBUTES         EQU COLOR_RIVER<<3|COLOR_SHIP
> $4000 SPRITE_TANK_ATTRIBUTES         EQU COLOR_INHERIT
> $4000 SPRITE_TANK_ON_BANK_ATTRIBUTES EQU COLOR_BANK
> $4000 SPRITE_FIGHTER_ATTRIBUTES      EQU COLOR_INHERIT
> $4000
> $4000 SPRITE_ROTOR_WIDTH_TILES   EQU $02
> $4000 SPRITE_ROTOR_HEIGHT_PIXELS EQU $02
> $4000 SPRITE_ROTOR_FRAME_SIZE    EQU SPRITE_ROTOR_WIDTH_TILES * SPRITE_ROTOR_HEIGHT_PIXELS
> $4000 SPRITE_ROTOR_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_HELICOPTER
> $4000
> $4000 SPRITE_BALLOON_WIDTH_TILES   EQU $02
> $4000 SPRITE_BALLOON_HEIGHT_PIXELS EQU $10
> $4000 SPRITE_BALLOON_FRAME_SIZE    EQU SPRITE_BALLOON_WIDTH_TILES * SPRITE_BALLOON_HEIGHT_PIXELS
> $4000 SPRITE_BALLOON_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_BALLOON
> $4000
> $4000 ; There is only one frame, so it's size is irrelevant.
> $4000 SPRITE_FUEL_STATION_WIDTH_TILES   EQU $02
> $4000 SPRITE_FUEL_STATION_HEIGHT_PIXELS EQU $19
> $4000 SPRITE_FUEL_STATION_FRAME_SIZE    EQU $0000
> $4000 SPRITE_FUEL_STATION_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_FUEL
> $4000
> $4000 SPRITE_ROCK_WIDTH_TILES   EQU $03
> $4000 SPRITE_ROCK_HEIGHT_PIXELS EQU $10
> $4000 SPRITE_ROCK_FRAME_SIZE    EQU SPRITE_ROCK_WIDTH_TILES * SPRITE_ROCK_HEIGHT_PIXELS
> $4000 SPRITE_ROCK_ATTRIBUTES    EQU COLOR_ROCK<<3|COLOR_BANK
> $4000
> $4000 SPRITE_MISSILE_WIDTH_TILES      EQU $01
> $4000 SPRITE_MISSILE_HEIGHT_PIXELS    EQU $08
> $4000 SPRITE_MISSILE_FRAME_SIZE_BYTES EQU SPRITE_MISSILE_WIDTH_TILES * SPRITE_MISSILE_HEIGHT_PIXELS
> $4000 SPRITE_MISSILE_ATTRIBUTES       EQU COLOR_RIVER<<3|COLOR_MISSILE
> $4000
> $4000 SPRITE_HELICOPTER_MISSILE_WIDTH_TILES EQU $01
> $4000 SPRITE_HELICOPTER_MISSILE_ATTRIBUTES  EQU COLOR_INHERIT
> $4000
> $4000 ; Shell sprite is a truncated missile sprite, so the frame size should be calculated
> $4000 ; based on the original height.
> $4000 SPRITE_SHELL_WIDTH_TILES      EQU $01
> $4000 SPRITE_SHELL_HEIGHT_PIXELS    EQU $01
> $4000 SPRITE_SHELL_FRAME_SIZE_BYTES EQU SPRITE_SHELL_WIDTH_TILES * SPRITE_MISSILE_HEIGHT_PIXELS
> $4000 SPRITE_SHELL_ATTRIBUTES       EQU $00
> $4000
> $4000 SPRITE_SHELL_EXPLOSION_WIDTH_TILES      EQU $02
> $4000 SPRITE_SHELL_EXPLOSION_HEIGHT_PIXELS    EQU $10
> $4000 SPRITE_SHELL_EXPLOSION_FRAME_SIZE_BYTES EQU $0000
> $4000 SPRITE_SHELL_EXPLOSION_ATTRIBUTES       EQU COLOR_RIVER<<3|COLOR_EXPLOSION
> $4000
> $4000 PLANE_COORDINATE_Y     EQU $80
> $4000
> $4000 FUEL_CHECK_INTERVAL    EQU $03
> $4000 FUEL_INTAKE_AMOUNT     EQU $04
> $4000 FUEL_LEVEL_EMPTY       EQU $00
> $4000 FUEL_LEVEL_LOW         EQU $C0
> $4000 FUEL_LEVEL_ALMOST_FULL EQU $FC
> $4000 FUEL_LEVEL_FULL        EQU $FF
> $4000
> $4000
> $4000 ; Player is actively playing: plane is rendered, objects can be interacted with.
> $4000 GAMEPLAY_MODE_NORMAL    EQU $00
> $4000 ; Initial level scroll-in at start of play: plane is not rendered, objects
> $4000 ; don't activate. Runs for $28 iterations with SPEED_FAST before switching
> $4000 ; to GAMEPLAY_MODE_NORMAL.
> $4000 GAMEPLAY_MODE_SCROLL_IN EQU $01
> $4000 ; Overview mode: plane is not rendered, objects don't activate, auto-scrolls
> $4000 ; through levels. Set by init_state and used by the overview routine.
> $4000 GAMEPLAY_MODE_OVERVIEW  EQU $02
> $4000 ; Player is refueling at a fuel station.
> $4000 GAMEPLAY_MODE_REFUEL    EQU $06
> $4000
> $4000 COLLISION_MODE_NONE               EQU $00
> $4000 COLLISION_MODE_FUEL_DEPOT         EQU $01
> $4000 COLLISION_MODE_MISSILE            EQU $02
> $4000 COLLISION_MODE_FIGHTER            EQU $03
> $4000 COLLISION_MODE_HELICOPTER_MISSILE EQU $04
> $4000
> $4000 TANK_SHELL_INACTIVE EQU $00
> $4000 TANK_SHELL_ACTIVE   EQU $01
> $4000
> $4000 VIEWPORT_HEIGHT EQU $88
> $4000
> $4000 ACTIVATION_INTERVAL_NORMAL EQU $1F
> $4000 ACTIVATION_INTERVAL_FAST   EQU $0F
> $4000
> $4000 SCROLL_IN_ITERATIONS EQU $28
> $4000
> $4000 TERRAIN_PROFILE_SIZE EQU $10
> $4000
> $4000 EXPLOSION_ANIM_FRAMES  EQU $10
> $4000 EXPLOSION_SOUND_FRAMES EQU $18
> $4000
> $4000 BONUS_LIFE_SOUND_FRAMES EQU $40
> $4000
> $4000 SCORE_DIGIT_COUNT EQU $06
> $4000
> $4000 IM1_VECTOR_TABLE_HI EQU $3F
> $4000
> $4000 ; STRUCTURES
> $4000 ; ----------
> $4000 ;
> $4000 ; OBJECT_DEFINITION ::
> $4000 ;
> $4000 ; Bits 0..2 represent an interactive object type.
> $4000 ; OBJECT_DEFINITION_MASK_INTERACTIVE_TYPE = $07,
> $4000 ;
> $4000 ; Bits 0..1 represent a rock type type.
> $4000 ; OBJECT_DEFINITION_MASK_ROCK_TYPE        = $03,
> $4000 ;
> $4000 ; Bit 3 defines whether the slot contains an interactive object (reset)
> $4000 ; or a rock (set).
> $4000 ; OBJECT_DEFINITION_BIT_ROCK              = 3,
> $4000 ;
> $4000 ; Bit 4 is set when a tank reverses direction (via #R$7525). On the next
> $4000 ; processing tick, it causes the tank to use the alternate shell
> $4000 ; initialization path at #R$735E (check_shell_init_condition) instead of
> $4000 ; the normal path at #R$7343 (init_tank_shell_state).
> $4000 ; OBJECT_DEFINITION_BIT_ALT_SHELL_INIT           = 4,
> $4000 ;
> $4000 ; Bit 5 defines a tank location: bridge (unset) or river bank (set).
> $4000 ; OBJECT_DEFINITION_BIT_TANK_LOCATION     = 5,
> $4000 ;
> $4000 ; Bit 6 defines object orientation: left (unset) or right (set).
> $4000 ; OBJECT_DEFINITION_BIT_TANK_ORIENTATION  = 6,
> $4000 ;
> $4000 ; Bit 7 is an activation flag used by operate_viewport_slots to track
> $4000 ; whether an object has been activated on its first frame.
@ $4000 org
@ $4000 equ=KEYBOARD=$02BF
@ $4000 equ=BEEPER=$03B5
@ $4000 equ=CHAN_OPEN=$1601
@ $4000 equ=OUT_NUM_1=$1A1B
@ $4000 equ=PR_STRING=$203C
@ $4000 equ=LAST_K=$5C08
@ $4000 equ=UDG=$5C7B
@ $4000 equ=INT_VECTOR_TABLE_HI=$FC
@ $4000 equ=INT_VECTOR_ENTRY=$FE
@ $4000 label=screen_pixels
b $4000 Screen pixels.
D $4000 #UDGTABLE { #SCR(loading) } TABLE#
  $4000,6144,16
@ $5800 label=screen_attributes
b $5800 Screen attributes.
  $5800,32,16
@ $5820 label=screen_attributes_row_1
b $5820 Screen attributes row 1.
  $5820,512,16
@ $5A20 label=screen_attributes_row_16
b $5A20 Screen attributes row 16 (boundary for visible sprite area).
  $5A20,32,16
@ $5A40 label=screen_attributes_row_17
b $5A40 Screen attributes row 17 (start of lower screen area).
  $5A40,192,16
@ $5B00 label=screen_row_table
b $5B00 Screen row address lookup table (64 entries × 2 bytes = 128 bytes).
D $5B00 Pre-computed table mapping row indices (0-63) to screen memory addresses. Used by #R$683B for fast vertical scrolling. This table provides O(1) lookup: screen_addr = screen_row_table[row_index × 2].
W $5B00,128,2
@ $5B80 label=data_unused_5B80
u $5B80 Unused area.
@ $5C78 label=int_counter
g $5C78 Interrupt counter. Incremented by the interrupt handler.
@ $5C79 label=data_unused_5C79
u $5C79
@ $5CD2 label=init
c $5CD2 Game initialization and interrupt setup
N $5CD2 This is the main entry point invoked by the BASIC loader. It performs one-time initialization of the game engine, including setting up the custom interrupt handler (IM 2 mode) and initializing global pointers.
  $5CD2 Initialize #R$9283 to point to #R$6BB0.
@ $5CD8 nowarn
  $5CD8 Initialize #R$8B08 to point to #R$6136
@ $5CDE isub=LD A,OPCODE_JP
  $5CDE Write the JP opcode to the address that all vector table entries will point to.
@ $5CE0 isub=LD (INT_VECTOR_ENTRY<<8|INT_VECTOR_ENTRY),A
@ $5CE3 nowarn
  $5CE3 Write the interrupt handler address, completing the JP #R$6BDB instruction.
@ $5CE6 isub=LD (INT_VECTOR_ENTRY<<8|INT_VECTOR_ENTRY+1),HL
@ $5CE9 isub=LD HL,INT_VECTOR_TABLE_HI<<8
  $5CE9 Point HL to the start of interrupt vector table.
  $5CEC Prepare to iterate 256 times.
@ $5CEE label=int_vector_table_write_loop
@ $5CEE isub=LD (HL),INT_VECTOR_ENTRY
  $5CEE Write INT_VECTOR_ENTRY to the current vector table entry.
  $5CF0
  $5CF1
@ $5CF3 isub=LD (HL),INT_VECTOR_ENTRY
  $5CF3 Write INT_VECTOR_ENTRY to the final vector table entry.
@ $5CF5 isub=LD A,INT_VECTOR_TABLE_HI
  $5CF5 Set the I register to the high byte of the interrupt vector table address.
  $5CF9
  $5CFD,2 Set interrupt mode 2 (vectored interrupts).
  $5D00 Store the address of #R$8182 in #R$5F7E.
@ $5D06 label=return_to_control_selection
@ $5D06 isub=LD A,IM1_VECTOR_TABLE_HI
c $5D06 Return to control selection dialog
N $5D06 This entry point is used when returning to the control selection dialog from the game (via #R$6BD2) or from the overview mode. It switches back to IM 1, then calls clear_and_setup to display the control selection dialog.
N $5D06 .
N $5D06 After the user selects controls and game mode, execution continues at #R$5D10.
  $5D06 Restore standard IM 1 interrupt vector table.
  $5D08 Set the I register to $3F for IM 1 mode.
  $5D0A Set interrupt mode 1.
  $5D0C Enable interrupts.
  $5D0D Display the control selection dialog.
@ $5D10 label=start_gameplay_or_overview
@ $5D10 isub=LD A,INT_VECTOR_TABLE_HI
c $5D10 Start gameplay or overview mode based on user selection
N $5D10 This routine is called after the user selects controls and game mode from the control selection dialog.
  $5D10,6 Restore IM 2 (vectored interrupts) and enable interrupts.
  $5D17 Copy selected control type to state_input_interface.
@ $5D20 isub=CP OVERVIEW_MODE_ON
  $5D1D If overview mode was selected, start overview; otherwise initialize and start gameplay.
@ $5D2B label=start_overview
c $5D2B Start overview mode
N $5D2B This routine is called when overview mode is selected (either from the control selection dialog or after game over).
@ $5D35 label=start_gameplay
c $5D35 Start gameplay mode
N $5D35 This routine is called when the player presses Enter during gameplay to restart.
@ $5D3F label=starting_bridges
b $5D3F Array of possible starting bridge values.
R $5D3F Index of list element is specified by the second and third bits of the #R$923A.
R $5D3F The values correspond to the dialog rendered as #R$792A.
@ $5D43 label=state_overview_start_scroll
g $5D43
@ $5D44 label=init_state
c $5D44 Initialize game state for overview/demo mode.
N $5D44 This routine sets up the initial game state used by the overview (attract mode) routine. It initializes player positions, scores, lives, terrain state, and sets the gameplay mode to GAMEPLAY_MODE_OVERVIEW.
  $5D44 Initialize plane X position to $78. Why isn't it $80?
  $5D49 Set starting bridges for both players based on game mode.
  $5D4C Initialize viewport objects list (set pointer, mark as empty).
@ $5D52 isub=LD (HL),SET_MARKER_END_OF_SET
@ $5D54 isub=LD A,ACTIVATION_INTERVAL_NORMAL
  $5D54 Set normal activation timing (every 32 frames).
@ $5D56 isub=LD (state_activation_interval),A
  $5D59 Set border to black, silence speaker, clear tank shell and controls state.
@ $5D5D isub=LD (state_tank_shell),A
@ $5D63 ignoreua=$4C83
  $5D63 Initialize terrain element (C=$83: river center position, B=$4C: row offset).
  $5D6A Initialize terrain profile, gameplay mode, and speed to $02 (GAMEPLAY_MODE_OVERVIEW / SPEED_NORMAL).
@ $5D75 isub=LD (state_bridge_destroyed),A
  $5D75 Store $02 to #R$5F6D (unclear why $02 is used here).
@ $5D78 isub=LD HL,"00"
M $5D78,18 Initialize all player scores to zero.
C $5D78,c3
C $5D7B,h
  $5D8D Set level fragment number and terrain position to 1.
@ $5D95 isub=LD HL,LIVES_INITIAL<<8|LIVES_INITIAL
  $5D95 Set both players' lives to 4.
  $5D9B,3 Set current player to PLAYER_1.
@ $5D9F label=decrease_lives_player_2
c $5D9F Decrease player 2 lives
@ $5DA6 label=play
c $5DA6 Initialize and start gameplay mode
D $5DA6 This routine prepares the game for play and is called when starting a new game or after losing a life.
  $5DA6 Initialize island line index (starting line for island rendering).
@ $5DAB isub=LD A,ACTIVATION_INTERVAL_NORMAL
  $5DAB Initialize activation interval (every 32 frames).
  $5DB0
@ $5DB4 isub=LD D,COLOR_RIVER<<3|COLOR_BANK
  $5DB4 Clear screen with PAPER RIVER, INK BANK.
  $5DB9
@ $5DBF isub=LD BC,status_line_2 - status_line_1
  $5DBC Print status line 1.
  $5DC5 Initialize tick counter.
  $5DCA Open channel 1 (upper screen).
@ $5DD0 isub=LD BC,status_line_3 - status_line_2
  $5DCD Print status line 2.
  $5DD6 Open channel 2 (lower screen).
  $5DDB
  $5DDE Initialize terrain fragment counter.
  $5DE3 Clear state variables.
@ $5DF1 isub=LD A,FUEL_LEVEL_FULL
  $5DF1 Initialize fuel level.
  $5DF6 Initialize scroll offset.
  $5DFD
  $5E00 Initialize X position (horizontal center).
  $5E05 Initialize viewport_slots list.
@ $5E0B isub=LD (HL),SET_MARKER_END_OF_SET
  $5E0B Mark viewport objects list as empty.
  $5E0D Initialize exploding_fragments list.
  $5E13 Mark exploding fragments list as empty.
  $5E15
  $5E1B Open channel 1 for score display.
@ $5E20 isub=LD A,EXT_ATTR_AT
  $5E20 AT 1,5
@ $5E29 isub=LD A,EXT_ATTR_INK
@ $5E2C isub=LD A,COLOR_PLAYER_1
  $5E29 INK PLAYER_1
@ $5E32 isub=LD BC,state_score_player_2_low - state_score_player_1_low
  $5E2F Print player 1 score.
  $5E38 Open channel 2.
@ $5E40 isub=LD BC,status_line_4_end - status_line_4
  $5E3D Print status line 4.
@ $5E49 isub=ADD A,"1"
  $5E46 Print game mode digit (1 or 2 player).
  $5E4C Open channel 1.
  $5E51 Set terrain position to $FF (forces terrain regeneration).
  $5E56 Initialize terrain profile number.
  $5E5B Open channel 2.
  $5E5E,8 Initialize level fragment number, gameplay mode, and bridge destroyed flag.
@ $5E69 isub=LD A,"h"
  $5E69 Set last key to 'h' (suppress H-key pause on first frame).
  $5E6E Clear control state and tank shell state.
@ $5E76 isub=LD A,SPEED_FAST
  $5E76 Set speed for scroll-in animation.
@ $5E7B ignoreua=$4C83
  $5E7B Initialize terrain element (C=$83: river center position, B=$4C: row offset).
  $5E82
  $5E85
@ $5E88 isub=LD B,SCROLL_IN_ITERATIONS
  $5E88 Set loop counter for scroll-in (40 iterations).
@ $5E8A label=scroll_in_loop
  $5E8A Save loop counter.
  $5E8B Increment tick counter.
  $5E8F
  $5E92
  $5E95
@ $5E98 isub=LD A,SPEED_FAST
  $5E98 Maintain speed during scroll-in.
  $5E9D Restore loop counter.
  $5E9E Loop until scroll-in complete.
  $5EA0 Clear control state.
  $5EA5 Set gameplay mode to normal (ready for player control).
  $5EA8
@ $5EAB isub=LD A,CHAR_ENTER
  $5EAB Set last key to Enter (wait for start input).
@ $5EB3 isub=CP PLAYER_2
  $5EB0 Decrement current player's lives.
@ $5EBC label=after_life_lost
  $5EBC
@ $5EBF label=wait_for_start_input
  $5EBF
  $5EC2 Enable interrupts.
@ $5EC6 isub=CP CHAR_ENTER
  $5EC3 If any key except Enter pressed, start game.
@ $5ECD isub=CP INPUT_INTERFACE_KEMPSTON
  $5ECA If not Kempston joystick, keep waiting.
  $5ED2 Read Kempston joystick; if centered, keep waiting.
@ $5EDB label=start_game
  $5EDB Clear bridge destroyed flag.
@ $5EEE label=state_terrain_fragment_counter
g $5EEE Terrain fragment render counter (0-7). Tracks which of the 8 terrain fragments to render next. Incremented after each fragment, wraps at 8.
@ $5EEF label=state_tick
g $5EEF Frame tick (0-255). Incremented each game frame for animation timing. Bit 0 alternates every frame, bits 0-1 cycle every 4 frames, etc.
@ $5EF0 label=state_bridge_index
g $5EF0 Current bridge number (0-47).
@ $5EF1 label=state_input_readings
g $5EF1 Raw input port value from last keyboard/joystick read. Format depends on input interface type.
@ $5EF2 label=state_tank_shell
g $5EF2 Road tank center flag ($00 = inactive, $01 = road tank is at center X=$80).
@ $5EF3 label=state_plane_missile_coordinates
g $5EF3 Player missile Y coordinate in pixels (0-255). $00 when no missile active.
@ $5EF4 label=state_plane_missile_x
g $5EF4 Player missile X coordinate in pixels (0-255).
@ $5EF5 label=state_collision_mode
g $5EF5 Collision detection mode for current render pass. Determines which collision handler to invoke on pixel overlap.
@ $5EF6 label=state_collision_y
g $5EF6 Y coordinate where collision was detected, in pixels.
@ $5EF7 label=ptr_plane_sprite
g $5EF7 Pointer to current plane sprite data. Points into #R$82C5 sprite bank, offset by speed for animation frame selection.
W $5EF7
@ $5EF9 label=state_island_render_idx
g $5EF9 Island rendering line counter. Tracks current scanline during island terrain rendering (0-23).
@ $5EFA label=state_island_profile_idx
g $5EFA Island terrain profile index (0-7). Selects which of 8 island shapes from #R$8063 to render.
@ $5EFB label=state_island_byte_2
g $5EFB Island definition byte 2. Second byte from island data at #R$C600, controls island width/shape.
@ $5EFC label=state_island_byte_3
g $5EFC Island definition byte 3. Third byte from island data at #R$C600, controls island rendering parameters.
@ $5EFD label=state_island_line_idx
g $5EFD Island starting line index. Screen line (0-23) where island rendering begins. Initialized to $10 (16).
@ $5EFE label=data_unused_5EFE
u $5EFE
@ $5F00 label=viewport_slots
g $5F00 Viewport slots array (15 slots for active game objects).
D $5F00 Each slot is a 3-byte entry that can hold one game object (enemy, fuel depot, etc.). Iterated by #R$708E (operate) and #R$62E8 (collision). New objects added via #R$6EAB. See Glossary for terminology.
D $5F00 #TABLE(default) { =h Byte | =h Contents } { 0 | X position (0-255 pixels), or slot marker } { 1 | Y position (0-255 pixels, increases as object scrolls down) } { 2 | Object definition byte (type, orientation, activation) } TABLE#
D $5F00 #TABLE(default) { =h Marker | =h Value | =h Meaning } { SET_MARKER_EMPTY_SLOT | $00 | Unused slot (skip during iteration) } { SET_MARKER_END_OF_SET | $FF | End of active slots (reset iterator) } TABLE#
B $5F00,46,3
@ $5F2E label=exploding_fragments
g $5F2E Explosion animation fragments array.
D $5F2E Array of up to 16 explosion fragments. Each entry is 3 bytes. Animated by #R$6EC8. New explosions added via #R$6EAB.
D $5F2E #TABLE(default) { =h Byte | =h Contents } { 0 | X position (0-255 pixels) } { 1 | Y offset (relative position, adjusted during scroll) } { 2 | Frame counter: bits 0-6 = frame (1-6), bit 7 = erase flag } TABLE#
D $5F2E Explosion frames: 1,5=#R$8471 (small), 2,4=#R$8481 (medium), 3=#R$8491 (large), 6=#R$82F5 (erase).
B $5F2E,49,3
@ $5F5F label=state_activation_interval
g $5F5F Object activation interval bitmask
D $5F5F Controls when newly spawned objects become active (start moving/shooting). Objects spawn inactive (bit 7 clear in slot definition) and activate when (interrupt_counter AND mask) == 0. Checked in #R$708E.
D $5F5F #TABLE(default) { =h Value | =h Meaning | =h When Set } { $1F | Every 32 frames | Normal gameplay } { $0F | Every 16 frames | After bridge destruction } TABLE#
@ $5F60 label=current_slot_ptr
g $5F60 Current slot pointer. Iterator for traversing #R$5F00 during object processing.
W $5F60
@ $5F62 label=exploding_fragments_ptr
g $5F62 Pointer to a slot from #R$5F2E
W $5F62
@ $5F64 label=state_speed
g $5F64 Current scroll speed in pixels per frame.
D $5F64 #TABLE(default) { =h Speed | =h Value | =h Terrain scroll } { SLOW | $01 | 1 pixel/frame } { NORMAL | $02 | 2 pixels/frame } { FAST | $04 | 4 pixels/frame } TABLE#
D $5F64 Also determines sprite animation frame and number of terrain fragments rendered per frame. Horizontal movement is fixed at 2 pixels per input regardless of scroll speed.
@ $5F65 label=low_fuel_sound_period
g $5F65 Low fuel warning sound period (0-127). Used as delay loop iteration count for speaker ON/OFF phases. Lower values = higher pitch. Decremented each frame, creating a rising-then-resetting warble effect.
@ $5F66 label=state_fuel
g $5F66 Fuel level (0-255). $FF=full tank, $00=empty.
D $5F66 #TABLE(default) { =h Mechanic | =h Rate | =h Formula } { Consumption | 1 unit every 2 frames | ~25 units/sec at 50fps } { Refueling | 4 units per frame | ~200 units/sec at 50fps } { Full tank duration | ~10 seconds | 255 / 25 = 10.2 sec } { Full refuel time | ~1.3 seconds | 255 / 200 = 1.3 sec } TABLE#
D $5F66 Consumption rate does NOT depend on scroll speed. Low fuel warning triggers when <$40 (top 2 bits clear). Refueling only occurs when plane is centered over depot (not banking left/right).
@ $5F67 label=state_input_interface
g $5F67 Input interface type ($00=Keyboard, $01=Sinclair, $02=Kempston, $03=Cursor).
@ $5F68 label=state_gameplay_mode
@ $5F68 isub=DEFB GAMEPLAY_MODE_NORMAL
g $5F68 Current gameplay mode
D $5F68 Controls what actions are allowed and how rendering/collision works.
D $5F68 #TABLE(default) { =h Mode | =h Value | =h Description } { NORMAL | $00 | Full player control, collision active } { SCROLL_IN | $01 | Terrain preview at game start, no input } { OVERVIEW | $02 | Attract mode demo } { REFUEL | $06 | Over fuel depot, adding fuel } TABLE#
D $5F68 During SCROLL_IN and OVERVIEW, player input is ignored and no collision occurs. During REFUEL, fuel is added each frame and collisions use plane position instead of missile position.
@ $5F69 label=state_plane_sprite_bank
g $5F69 Plane sprite bank offset. $00=centered, $04=banked left/right. Reset to $00 at the start of each frame, then set to $04 by #R$6630 after the banked sprite is rendered. Read by #R$6E40, but always $00 at that call site — the check is dead code.
@ $5F6A label=state_bridge_player_1
g $5F6A Player 1's current bridge number (0-47). Saved when switching players in 2-player mode.
@ $5F6B label=state_bridge_player_2
g $5F6B Player 2's current bridge number (0-47). Saved when switching players in 2-player mode.
@ $5F6C label=state_bridge_section
g $5F6C Bridge section indicator. $00=normal terrain, $02=bridge terrain section. Set when plane enters bridge area.
@ $5F6D label=state_bridge_destroyed
g $5F6D Bridge destruction flag ($00 = intact, $01 = destroyed).
@ $5F6E label=state_bridge_y_position
g $5F6E Y-position of destroyed bridge in pixels. Updated during scroll to track bridge debris position on screen.
@ $5F6F label=state_unused_5F6F
g $5F6F Unused.
@ $5F70 label=state_scroll_offset
g $5F70 Vertical scroll offset (16-bit, little-endian). Accumulated distance traveled in pixels. Used to calculate level slot index and bridge position.
@ $5F72 label=state_plane_x
g $5F72 Player plane X coordinate in pixels (0-255). $78 (120) is horizontal center. Changes by 2 pixels per left/right input.
@ $5F73 label=helicopter_missile_coordinates_ptr
g $5F73 Pointer to helicopter missile coordinates in viewport_slots array. Updated when advanced helicopter fires.
@ $5F75 label=helicopter_missile_state
g $5F75 Helicopter missile state. Bit 7 set when missile active. Lower bits track missile animation/position.
@ $5F76 label=state_level_fragment_number
g $5F76 Current level terrain array index (1-255). Points to current element in level definition at #R$9500. Incremented as terrain scrolls.
@ $5F77 label=state_terrain_profile_number
b $5F77 Current terrain profile number (0-7). Index into terrain sprite table at #R$8063. Loaded from first byte of level element at #R$9500.
@ $5F78 label=state_terrain_element_23
g $5F78 Cached terrain element data (2 bytes). Stores bytes 2-3 of current level element for object spawning.
@ $5F7A label=state_terrain_extras
g $5F7A Terrain extras byte. Additional terrain rendering flags from level data.
@ $5F7B label=screen_ptr
g $5F7B Current screen memory pointer. Points to pixel address being rendered during terrain drawing.
W $5F7B
@ $5F7D label=state_terrain_position
g $5F7D Terrain sub-position (0-3). Index within current terrain element. Incremented every 4 scroll units, triggers new terrain load at 0.
@ $5F7E label=ptr_scroller
g $5F7E Pointer to the text to be displayed in the scroller.
W $5F7E
@ $5F80 label=data_unused_5F80
u $5F80
@ $5F81 label=state_overview_frame
g $5F81 Overview mode frame counter. Counts scroll iterations during attract mode. Game starts after 5 increments or key press.
@ $5F82 label=data_unused_5F82
u $5F82
@ $5F83 label=saved_stack_pointer
g $5F83 Saved stack pointer. Captured at init, restored when starting new life to unwind any nested calls.
W $5F83
@ $5F85 label=collision_saved_hl
g $5F85 Saved HL register during collision detection. Preserved across collision handler calls.
W $5F85
@ $5F87 label=collision_saved_de
g $5F87 Saved DE register during collision detection. Preserved across collision handler calls.
W $5F87
@ $5F89 label=collision_saved_bc
g $5F89 Saved BC register during collision detection. Preserved across collision handler calls.
W $5F89
@ $5F8B label=collision_coordinates
g $5F8B Collision coordinates (Y in high byte, X in low byte). Set by collision detection when overlap found.
W $5F8B
@ $5F8D label=state_saved_object_coords
g $5F8D Saved object coordinates during rendering. Backup of object position for multi-pass rendering.
W $5F8D
@ $5F8F label=state_plane_missile_coordinates_backup
g $5F8F Backup of plane missile coordinates. Saved before movement, used for collision detection and erasure.
W $5F8F
@ $5F91 label=main_loop
c $5F91 Main gameplay loop
D $5F91 Central game loop that runs continuously during active gameplay. Orchestrates all game subsystems in a fixed sequence each frame.
D $5F91 #LIST { Input: Scan Enter key for pause } { Timing: Increment tick counter (#R$5EEF) } { Render: Explosions, plane/terrain, viewport objects } { Missiles: Two-pass player missile (erase then draw) } { Projectiles: Tank shells, helicopter missiles } { Scroll: Advance game world (#R$66D0) } { Fuel: Consume fuel (#R$6DFF) } { Controls: Dispatch to input handler based on #R$5F67 } LIST#
N $5F91 The loop is infinite. It terminates only via: game over (fuel empty, collision), pause (Enter key calls #R$6BBF), or player death (jumps to death handler).
C $5F91,9 Scan Enter key for pause.
  $5F9A,4 Increment tick counter at #R$5EEF.
  $5FA7 Player missile pass 1: erase at old position.
  $5FAF,8 Player missile pass 2: draw at new position.
  $5FC3 Reset plane sprite bank.
  $5FC8 Dispatch to input handler.
@ $5FCB isub=CP INPUT_INTERFACE_KEMPSTON
@ $5FD0 isub=CP INPUT_INTERFACE_SINCLAIR
@ $5FD5 isub=CP INPUT_INTERFACE_KEYBOARD
@ $5FDA label=scan_cursor
c $5FDA Scan cursor keys
D $5FDA Reads keyboard half-rows via port $FE. Cursor keys use active-low bits (Z = pressed). Each detected press calls the corresponding handler.
C $5FDA Scan "8" (RIGHT)
C $5FE6 Scan "5" (LEFT)
C $5FEF Scan "0" (FIRE)
C $5FF7 Scan "7" (UP)
C $5FFF Scan "6" (DOWN)
@ $600A label=scan_kempston
c $600A Scan Kempston joystick
D $600A Reads Kempston joystick port $1F. Unlike keyboard, Kempston uses active-high bits (NZ = pressed).
C $600A Scan RIGHT
C $6016 Scan LEFT
C $601E Scan DOWN
C $6026 Scan UP
C $602E Scan FIRE
@ $6039 label=scan_sinclair
c $6039 Scan Sinclair joystick
D $6039 Reads half-row $EF (keys 6-0) via port $FE. Maps Sinclair Interface 2 joystick 1 to game actions.
C $6039 Scan "0" (FIRE)
C $6045 Scan "9" (UP)
C $604D Scan "8" (DOWN)
C $6055 Scan "7" (RIGHT)
C $605D Scan "6" (LEFT)
@ $6068 label=scan_keyboard
c $6068 Scan keyboard
D $6068 Reads multiple half-rows via port $FE. Keys: P=right, O=left, 2=up, W=down, either bottom row=fire.
C $6068 Scan "P" (RIGHT)
C $6071 Scan "O" (LEFT)
C $607A Scan "2" (UP)
C $6083 Scan "W" (DOWN)
C $608C Scan lower row right (FIRE)
C $6097 Scan lower row left (FIRE)
@ $60A5 label=render_plane_and_terrain
c $60A5 Render player plane and terrain fragments
D $60A5 Top-level render routine called from main loop (#R$5F91). Orchestrates visual updates in a specific order to prevent flicker.
N $60A5 Render sequence:
N $60A5 .
N $60A5 #LIST { Player plane sprite (GAMEPLAY_MODE_NORMAL only) } { Screen scroll system } { Terrain fragments (count = current speed) } { Attribute scroll (every 8 fragments) } LIST#
N $60A5 .
N $60A5 Speed affects the number of terrain fragments rendered per frame and the sprite animation frame selection.
  $60A5 Skip plane rendering if not GAMEPLAY_MODE_NORMAL.
@ $60A8 isub=CP GAMEPLAY_MODE_NORMAL
@ $60AD isub=LD A,COLLISION_MODE_NONE
  $60AD Set collision mode to NONE for plane (no collision during render).
  $60B2 Calculate plane sprite frame: offset = (8 - speed) * 2.
  $60C2 Apply offset to sprite pointer.
  $60C9 Calculate plane Y: Y = $88 - speed. However, movement handlers (#R$65F3, #R$6642, #R$6682) always use the fixed PLANE_COORDINATE_Y ($80), so this speed-dependent value has no visible effect.
  $60D0 Set plane coordinates for rendering.
  $60D8 Render plane: width=2, size=$10, attrs=$00.
@ $60E5 label=render_terrain_fragments
  $60E5 Render islands.
  $60E8 Calculate starting screen row based on speed.
@ $60F4 label=calculate_screen_row_loop
  $60F4 HL = screen_start + (speed * $100).
  $60F8 Store screen pointer to #R$5F7B.
  $60FB Set up terrain fragment loop (count = speed).
@ $6103 label=render_terrain_loop
  $6103 Increment fragment counter.
  $6106 Every 8 fragments, scroll attributes.
  $610D Render terrain fragment.
  $6110 Move screen pointer up one row ($100 bytes).
  $611D Loop until all fragments rendered.
  $611F Store updated fragment counter.
@ $6124 label=calculate_fuel_gauge_offset
c $6124 Calculate fuel gauge sprite offset
D $6124 Computes a sprite data offset for the fuel gauge display using the formula: offset = (7 - B) * 8 + D. The result is patched into the operand of the following RLC instruction via self-modifying code.
R $6124 I:B Fuel gauge row (0-7, top to bottom)
R $6124 I:D Sub-row pixel offset within the gauge row
R $6124 O:B Rotated fuel gauge row (used by caller for next iteration)
  $6124 Calculate offset = (7 - B) * 8 + D and patch into next instruction.
  $6133,2 Rotate B left through carry.
@ $6136 label=collision_dispatcher
c $6136 Collision detection dispatcher
D $6136 Central collision handler called during sprite rendering (via #R$8C45) when pixel overlap is detected. Saves registers, reads collision mode from #R$5EF5, and dispatches to the appropriate handler.
D $6136 #TABLE(default) { =h Mode | =h Handler | =h Description } { COLLISION_MODE_NONE ($00) | #R$8C3B | Rendering only } { COLLISION_MODE_FUEL_DEPOT ($01) | #R$6256 | Fuel depot refuel } { COLLISION_MODE_MISSILE ($02) | #R$61BB | Missile hit } { COLLISION_MODE_FIGHTER ($03) | #R$615E | Fighter hit } { COLLISION_MODE_HELICOPTER_MISSILE ($04) | #R$7415 | Enemy missile } TABLE#
  $6136 Save registers: return address to #R$5F85, DE to #R$5F87, BC to #R$5F89.
  $6142 Load collision mode and dispatch to handler (see table above).
@ $6145 isub=CP COLLISION_MODE_NONE
@ $614A isub=CP COLLISION_MODE_FUEL_DEPOT
@ $614F isub=CP COLLISION_MODE_MISSILE
@ $6154 isub=CP COLLISION_MODE_FIGHTER
@ $6159 isub=CP COLLISION_MODE_HELICOPTER_MISSILE
@ $615E label=handle_collision_mode_fighter
c $615E Handle COLLISION_MODE_FIGHTER collision detection
N $615E Checks if the player's missile has collided with a fighter aircraft. Uses bounding box collision detection by comparing the missile coordinates (from #R$5EF3) with the fighter's coordinates (from #R$8B0C).
N $615E .
N $615E The collision box is 6 pixels wide (horizontally) and uses vertical bounds of +10 and +1 pixels.
N $615E .
N $615E If no collision is detected (any boundary check fails), jumps to #R$6401 to reset collision mode and return.
N $615E .
N $615E On collision: removes the fighter from the viewport, triggers two explosion fragments, awards POINTS_FIGHTER, and continues to post-collision processing at #R$6794.
  $615E Load missile coordinates from #R$5EF3 and fighter coordinates from #R$8B0C.
N $6166 Y-axis collision check.
  $6166 Check if missile_Y + 6 >= fighter_Y; exit to #R$6401 if not.
  $616D Check if fighter_Y + 6 >= missile_Y; exit to #R$6401 if not.
N $6174 X-axis collision check.
  $6174 Check if fighter_X + 10 >= missile_X; exit to #R$6401 if not.
  $6182 Check if missile_X + 1 >= fighter_X; exit to #R$6401 if not.
N $6194 Collision detected - process hit.
  $6194 Clean up stack (3x POP DE).
  $6197 Store fighter Y coordinate to #R$5EF6.
  $619B Get object coordinates from viewport and mark slot as empty.
@ $61A3 isub=LD (HL),SET_MARKER_EMPTY_SLOT
  $61A5 Spawn two explosion fragments (second offset by X-6).
@ $61B3 isub=LD A,POINTS_FIGHTER
  $61B3 Award POINTS_FIGHTER to player.
  $61B8 Finalize collision.
@ $61BB label=check_collision
c $61BB Check collision against bridges and viewport objects
N $61BB Checks if the entity (missile or plane) has collided with a bridge or any viewport object. The coordinates to check are read from #R$5EF3.
N $61BB .
N $61BB Called in two contexts: (1) when COLLISION_MODE_MISSILE is set, checks missile collision; (2) when called from #R$6256, checks plane collision with fuel depots.
N $61BB .
N $61BB First checks if a bridge exists (#R$5F6E != 0) and whether the Y coordinate is within the bridge's vertical bounds (bridge_y - $16 to bridge_y). If the bridge is hit, awards POINTS_BRIDGE, triggers 6 explosion fragments in a 2x3 grid pattern, increments the player's bridge counter, and clears the bridge.
N $61BB .
N $61BB If no bridge collision, falls through to #R$62E8 to check collision against viewport objects.
  $61BB Load entity coordinates from #R$5EF3 and bridge Y from #R$5F6E.
  $61C2 If no bridge exists, jump to #R$62E8 to check viewport objects.
  $61C7 Check if entity_Y <= bridge_Y; if not, check objects.
  $61CC Check if entity_Y >= bridge_Y - $16; if not, check objects.
@ $61D3 isub=LD A,POINTS_BRIDGE
N $61D3 Bridge hit - award points and spawn explosions.
  $61D3 Award POINTS_BRIDGE to player.
@ $61D8 isub=LD A,ACTIVATION_INTERVAL_FAST
  $61D8 Increase activation rate (every 16 frames after bridge destruction).
  $61DD Clean up stack and store hit Y to #R$5EF6.
  $61E5 Set up bottom explosion row: Y = bridge_Y - 4, X = $70, D = 0.
  $61EF Spawn explosion 1 (bottom-left).
  $61F2 Move to X = $80 and spawn explosion 2 (bottom-right).
  $61F7 Move Y - 8 and spawn explosion 3 (middle-right).
  $61FE Move to X = $70 and spawn explosion 4 (middle-left).
  $6203 Move Y - 8 and spawn explosion 5 (top-left).
  $620A Move to X = $80 and spawn explosion 6 (top-right).
  $620F If bridge section is $02, call #R$6BA4 with screen #R$4000.
  $6217 (continued from above).
@ $621A ignoreua=$4100
  $621A If bridge section is $02, call #R$6BA4 with screen $4100.
@ $621F keep
@ $621F ignoreua=$4100
  $6222 (continued from above).
  $6225 Clear bridge Y position (#R$5F6E).
  $622A Set bridge destroyed flag (#R$5F6D).
  $622F Restore entity coordinates from #R$5F8D to #R$5EF3.
  $6237 Check if player 2; if so, jump to #R$6249.
@ $623A isub=CP PLAYER_2
  $623C (continued from above).
@ $623F label=next_bridge_player_1
  $623F Increment player 1 bridge counter at #R$5F6A and print.
  $6246 Finalize collision.
@ $6249 label=next_bridge_player_2
c $6249 Increment player 2's bridge counter
  $6249 Increment player 2 bridge counter at #R$5F6B and print.
  $6250,3 Finalize collision.
@ $6253 label=data_unused_6253
u $6253
@ $6256 label=handle_collision_mode_fuel_depot
@ $6256 isub=LD A,GAMEPLAY_MODE_REFUEL
c $6256 Handle COLLISION_MODE_FUEL_DEPOT (initiate refueling)
N $6256 Called from the collision dispatcher when COLLISION_MODE_FUEL_DEPOT is detected. Sets gameplay mode to GAMEPLAY_MODE_REFUEL and uses the plane's coordinates (instead of missile coordinates) for collision detection.
N $6256 .
N $6256 This allows the plane itself to interact with fuel depots via #R$61BB.
  $6256 Set gameplay mode to GAMEPLAY_MODE_REFUEL in #R$5F68.
  $625B Load plane coordinates (Y=$80, X from #R$5F72) into #R$5EF3.
  $6265 Check for collision with fuel depot.
@ $6268 label=check_fragment_collision
c $6268 Check collision with explosion fragments
N $6268 Iterates through #R$5F2E (exploding_fragments) to check if the entity collides with any active debris. Each fragment entry is 3 bytes: X, Y, and type/state.
N $6268 .
N $6268 Collision uses 8x8 bounding box for the entity and 16x8 for fragments. Result stored in #R$5F8B: $02 = collision detected, $00 = no collision (end of list reached).
  $6268 Load fragment coordinates (C=X, B=Y) from list pointer #R$5F62 and advance by 3.
  $6270 Store updated pointer; copy X to A for marker check.
@ $6274 isub=CP SET_MARKER_EMPTY_SLOT
  $6274 If empty slot, skip to next fragment.
@ $6279 isub=CP SET_MARKER_END_OF_SET
  $6279 If end-of-set marker, jump to #R$62CE (no collision).
  $627E Adjust Y coordinate for scrolling.
N $6281 Y-axis collision check (8-pixel height for both entity and fragment).
  $6281 Check if entity_Y + 8 >= fragment_Y; if not, next fragment.
  $6291 (continued).
  $6294 Check if fragment_Y + 8 >= entity_Y; if not, next fragment.
N $62A3 X-axis collision check (8-pixel width for entity, 16-pixel for fragment).
  $62A3 Check if entity_X + 8 >= fragment_X; if not, next fragment.
  $62B3 (continued).
  $62B6 Check if fragment_X + 16 >= entity_X; if not, next fragment.
N $62C8 Collision detected with fragment.
  $62C8 Store $02 (collision) to #R$5F8B and return.
@ $62CE label=check_fragment_collision_end
c $62CE End of fragment list - no collision found
  $62CE Store $00 (no collision) to #R$5F8B and return.
@ $62D4 label=get_offset_balloon
c $62D4 Get Y offset for balloon collision
  $62D4 Return $09 in E (balloon Y offset).
@ $62D7 label=get_offset_fuel
c $62D7 Get Y offset for fuel depot collision
  $62D7 Return $11 in E (fuel depot Y offset).
@ $62DA label=advance_object
c $62DA Increase vertical coordinate of the object by the value of #R$5F64.
D $62DA Adds the current scroll delta to an object's Y coordinate. Used during refueling mode to compensate for screen scrolling when checking collisions.
R $62DA I:B Current Y coordinate
R $62DA O:B New Y coordinate (B + scroll_delta)
  $62DA,5 Load scroll delta from #R$5F64 and add to B.
@ $62E0 label=retract_object
c $62E0 Decrease vertical coordinate of the object by the value of #R$5F64.
D $62E0 Subtracts the current scroll delta from an object's Y coordinate. Used to reverse the adjustment made by #R$62DA after collision checking.
R $62E0 I:B Current Y coordinate
R $62E0 O:B New Y coordinate (B - scroll_delta)
  $62E0,7 Load scroll delta from #R$5F64 and subtract from B.
@ $62E8 label=check_missile_vs_objects
c $62E8 Check missile collision against viewport objects
N $62E8 Iterates through #R$5F00 (viewport_slots) checking if the player's missile collides with any object. Each slot is 3 bytes: X, Y, and definition.
N $62E8 .
N $62E8 Collision detection uses type-specific bounding boxes. Most objects are 10x8 pixels, but balloons and fuel depots are taller (17-25 pixels), and ships are wider (19 pixels).
N $62E8 .
N $62E8 On hit, dispatches to type-specific handlers: #R$6414 (helicopter), #R$6423 (ship), #R$6444 (advanced helicopter), #R$6453 (fighter), #R$6462 (balloon), #R$6478 (fuel). If no known type matches, checks #R$6268 for fragment collision.
N $62E8 .
N $62E8 During GAMEPLAY_MODE_REFUEL, object Y coordinates are adjusted for scrolling before and after collision checks.
  $62E8 Load object coordinates (C=X, B=Y) from list pointer #R$5F60 and advance by 3.
  $62F0 Store updated pointer; copy X to A for marker check.
@ $62F4 isub=CP SET_MARKER_EMPTY_SLOT
  $62F4 If empty slot, skip to next object.
@ $62F9 isub=CP SET_MARKER_END_OF_SET
  $62F9 If end-of-set marker, jump to #R$63B9 for fragment collision check.
  $62FE If GAMEPLAY_MODE_REFUEL, call #R$62DA to adjust object Y for scrolling.
@ $6301 isub=CP GAMEPLAY_MODE_REFUEL
N $6306 Y-axis collision check (entity height: 9 pixels).
  $6306 Check if entity_Y + 9 >= object_Y; if not, next object.
  $6316 (continued).
  $6319 Set up D = object_Y + 8, E = 0 (height offset).
  $631F Load object type from viewport pointer.
@ $6324 isub=AND SLOT_MASK_OBJECT_TYPE
  $6324 If balloon, call #R$62D4 (E = 9, taller).
@ $6326 isub=CP OBJECT_BALLOON
@ $632B isub=CP OBJECT_FUEL
  $632B If fuel depot, call #R$62D7 (E = 17, tallest).
  $6330 Check if object_Y + 8 + offset >= entity_Y; if not, next object.
  $633F (continued).
N $6342 X-axis collision check (entity width: 8 pixels).
  $6342 Check if entity_X + 8 >= object_X; if not, next object.
  $6353 (continued).
  $6356 Set up D = object_X + 10, E = 0 (width offset).
  $635C Load object type from viewport pointer.
@ $6361 isub=AND SLOT_MASK_OBJECT_TYPE
  $6361 If ship, call #R$62D4 (E = 9, wider).
@ $6363 isub=CP OBJECT_SHIP
  $6368 Store object coordinates to #R$5F8B for hit handlers.
  $636E (continued).
  $6372 Check if object_X + 10 + offset >= entity_X; if not, next object.
  $637A (continued).
N $637D Collision detected - prepare for type dispatch.
  $637D If GAMEPLAY_MODE_REFUEL, call #R$62E0 to undo Y adjustment.
@ $6380 isub=CP GAMEPLAY_MODE_REFUEL
  $6385 Store object coordinates to #R$5F8B.
  $6389 Load object type from viewport pointer.
@ $638E isub=AND SLOT_MASK_OBJECT_TYPE
  $638E If type is 0, jump to #R$63DD to process collision.
  $6395 Mark object slot as empty.
  $6399 Clear D for type dispatch.
@ $639B isub=CP OBJECT_HELICOPTER_REG
  $639B If helicopter, jump to #R$6414.
@ $63A0 isub=CP OBJECT_SHIP
  $63A0 If ship, jump to #R$6423.
@ $63A5 isub=CP OBJECT_HELICOPTER_ADV
  $63A5 If advanced helicopter, jump to #R$6444.
@ $63AA isub=CP OBJECT_FIGHTER
  $63AA If fighter, jump to #R$6453.
@ $63AF isub=CP OBJECT_BALLOON
  $63AF If balloon, jump to #R$6462.
@ $63B4 isub=CP OBJECT_FUEL
  $63B4 If fuel depot, jump to #R$6478.
@ $63B9 label=check_missile_vs_objects_end
N $63B9 End of object list - check fragment collision and tank shell.
  $63B9 Reset #R$5F60/#R$5F62 to list starts.
  $63C8 If fragment collision detected ($02), jump to #R$63FC.
  $63D0,10 Compare missile Y with tank shell Y; if equal, jump to #R$63FC.
@ $63DD label=process_collision_hit
N $63DD Entry point for collision hit processing. Cleans up stack and finalizes collision.
  $63DD Pop four words from stack (unwind call frames).
  $63E1 Store hit Y coordinate to #R$5EF6.
  $63E5 Reset #R$5F62 and #R$5F60 to list starts.
  $63F1 Load saved coordinates from #R$5F8D.
  $63F5 Store to #R$5EF3.
  $63F9 Finalize collision.
@ $63FC label=reset_gameplay_mode
c $63FC Reset gameplay mode to normal and exit collision system
  $63FC Reset gameplay mode to GAMEPLAY_MODE_NORMAL.
@ $6401 label=no_collision_exit
@ $6401 isub=LD A,COLLISION_MODE_NONE
N $6401 Exit collision system with no collision detected.
  $6401 Clear collision mode, restore saved registers, and continue rendering.
@ $6414 label=hit_helicopter_reg
@ $6414 isub=LD A,POINTS_HELICOPTER_REG
c $6414 Handle missile hit on regular helicopter
N $6414 Awards POINTS_HELICOPTER_REG and spawns 1 explosion fragment at the object coordinates.
  $6414 Award POINTS_HELICOPTER_REG to player.
  $6419 Spawn explosion at object coordinates from #R$5F8B.
  $6420 Finalize collision.
@ $6423 label=hit_ship
@ $6423 isub=LD A,POINTS_SHIP
c $6423 Handle missile hit on ship
N $6423 Awards POINTS_SHIP and spawns 3 explosion fragments in a triangular pattern to cover the ship's width.
  $6423 Award POINTS_SHIP to player.
  $6428 Load coordinates from #R$5F8B and spawn explosion 1 (left).
  $642F Move X+8 and spawn explosion 2 (right).
  $6436 Move X-8, Y+4 and spawn explosion 3 (center-bottom).
  $6441 Finalize collision.
@ $6444 label=hit_helicopter_adv
@ $6444 isub=LD A,POINTS_HELICOPTER_ADV
c $6444 Handle missile hit on advanced helicopter
N $6444 Awards POINTS_HELICOPTER_ADV and spawns 1 explosion fragment.
  $6444 Award POINTS_HELICOPTER_ADV to player.
  $6449 Spawn explosion at object coordinates from #R$5F8B.
  $6450 Finalize collision.
@ $6453 label=hit_fighter
@ $6453 isub=LD A,POINTS_FIGHTER
c $6453 Handle missile hit on fighter
N $6453 Awards POINTS_FIGHTER and spawns 1 explosion fragment.
  $6453 Award POINTS_FIGHTER to player.
  $6458 Spawn explosion at object coordinates from #R$5F8B.
  $645F Finalize collision.
@ $6462 label=hit_balloon
@ $6462 isub=LD A,POINTS_BALLOON
c $6462 Handle missile hit on balloon
N $6462 Awards POINTS_BALLOON and spawns 2 explosion fragments vertically (balloon is taller than other objects).
  $6462 Award POINTS_BALLOON to player.
  $6467 Load coordinates from #R$5F8B and spawn explosion 1 (top).
  $646E Move Y+8 and spawn explosion 2 (bottom).
  $6475 Finalize collision.
@ $6478 label=hit_fuel
c $6478 Handle collision with fuel depot
N $6478 Handles both missile hits and plane refueling at fuel depots.
N $6478 .
N $6478 If in GAMEPLAY_MODE_REFUEL: marks the depot slot as empty and calls #R$6E40 to add fuel to the player's tank.
N $6478 .
N $6478 Otherwise (missile hit): awards POINTS_FUEL and spawns 4 explosion fragments vertically (fuel depot is the tallest object).
  $6478 Check if in REFUEL mode; if so, jump to #R$64A1.
@ $647B isub=CP GAMEPLAY_MODE_REFUEL
@ $6480 isub=LD A,POINTS_FUEL
N $6480 Missile hit on fuel depot - destroy it.
  $6480 Award POINTS_FUEL to player.
  $6485 Load coordinates from #R$5F8B and spawn explosion 1.
  $648C Move Y+8 and spawn explosion 2.
  $6493 Move Y+8 and spawn explosion 3.
  $649A Move Y+1 and spawn explosion 4.
@ $649E label=hit_fuel_done
c $649E Jump to collision finalization
  $649E Finalize collision.
@ $64A1 label=refuel_from_depot
c $64A1 Handle refueling from fuel depot
N $64A1 Called when the plane touches a fuel depot during REFUEL mode. Marks the depot slot as empty and adds fuel.
  $64A1 Mark depot slot as empty.
  $64A2 Reset #R$5F60 and #R$5F62 to list starts.
  $64AE,6 Add fuel and jump to #R$63FC to reset gameplay mode.
@ $64B4 label=data_unused_64B4
u $64B4
@ $64BC label=print_bridge
c $64BC Print current bridge number on status line
N $64BC Displays the current bridge number for the active player on the status line. Sets the appropriate ink color (yellow for Player 1, cyan for Player 2) and prints the bridge counter with leading space padding for single-digit numbers.
N $64BC .
N $64BC Uses ROM routine at $203C to print status line text and $1A1B (OUT_NUM_1) to print the numeric value.
  $64BC,5 If Player 2, jump to #R$64E5.
@ $64BF isub=CP PLAYER_2
@ $64C4 isub=LD A,EXT_ATTR_INK
  $64C4 INK PLAYER_1
@ $64C7 isub=LD A,COLOR_PLAYER_1
  $64CA Print #R$804F (11 bytes) to position cursor.
@ $64CD isub=LD BC,status_line_4 - status_line_3
  $64D3 If bridge count < 10, print leading space.
  $64D8 (continued).
  $64DB,9 Print bridge count from #R$5F6A.
@ $64E5 label=print_bridge_player_2
@ $64E5 isub=LD A,EXT_ATTR_INK
c $64E5 Print bridge number for Player 2
N $64E5 Entry point when current player is Player 2. Sets ink color and falls through to common printing logic.
  $64E5 INK PLAYER_2
@ $64E8 isub=LD A,COLOR_PLAYER_2
  $64EB Set up DE=$804F, BC=11 for status text.
@ $64EE isub=LD BC,status_line_4 - status_line_3
@ $64F1 label=print_bridge_player_2_common
c $64F1 Common bridge printing for Player 2
N $64F1 Shared code for printing Player 2's bridge number. Called directly when printing Player 2's status line in two-player mode.
  $64F1 Print status line text and check if bridge < 10.
  $64F7 (continued) If so, print leading space.
  $64FC,9 Print bridge count from #R$5F6B.
@ $6506 label=print_space
@ $6506 isub=LD A," "
c $6506 Print a space character
C $6506,c2 Output space via RST $10.
@ $650A label=handle_no_fuel
c $650A Handle the no fuel situation
D $650A This routine is called when the player runs out of fuel. It stops the plane, creates two explosion fragments at the plane's position, animates the explosions over 16 frames, waits for a delay, then determines the next game state based on the current player and remaining lives in single or two-player mode.
N $650A Two-player mode uses alternating turns. After death, the switching logic is:
N $650A #TABLE(default) { =h Current | =h P1 Lives | =h P2 Lives | =h Action } { P1 | >0 | >0 | Switch to P2 } { P1 | >0 | 0 | Restart P1 } { P1 | 0 | >0 | Switch to P2 } { P1 | 0 | 0 | Game Over } { P2 | >0 | >0 | Switch to P1 } { P2 | >0 | 0 | Restart P2 } { P2 | 0 | >0 | Switch to P1 } { P2 | 0 | 0 | Game Over } TABLE#
N $650A In single-player mode, the game simply restarts P1 if lives remain, otherwise Game Over.
  $650A Load plane X-coordinate
  $650D Align to 8-pixel boundary (clear lower 3 bits)
  $650F Store aligned X-coordinate in C register
  $6510 Set Y-coordinate to $7F (just below visible area)
  $6512 Stop plane movement (clear speed and missile coordinates)
  $651A Set explosion sprite type to $00
  $651D Create first explosion fragment at plane position
  $6522 Offset Y-coordinate by $05 pixels for second explosion
  $6526 Create second explosion fragment
@ $6529 isub=LD A,EXPLOSION_ANIM_FRAMES
  $6529 Set animation frame counter (16 frames).
@ $652B label=animate_explosion_loop
  $652B Save frame counter
  $652C Set outer delay loop counter to $40 (64 iterations)
@ $652E label=explosion_delay_outer
  $652E Set inner delay loop counter to $00 (256 iterations)
@ $6530 label=explosion_delay_inner
  $6530 Tight delay loop (256 iterations)
  $6533 Repeat outer delay loop (64 times)
  $6535 Render current explosion animation frame
  $6538 Restore and decrement frame counter
  $653A Repeat animation loop for all 16 frames
  $653D Set final delay counter to $0C (12 iterations)
  $6541 Initialize inner loop counter to $00
@ $6543 label=final_delay_loop
  $6543 Triple-nested delay loop for extended pause after explosion
  $654B Clear control state (reset all button flags)
  $654D Store cleared control state
  $6550 Load current player number
@ $6553 isub=CP PLAYER_2
  $6553 Check if current player is Player 2
  $6555 If Player 2, jump to Player 2 death handler
  $6558 Load Player 1 lives remaining
@ $655B isub=CP $00
  $655B Check if Player 1 has no lives left
  $655D If no lives, jump to check for game over
  $6560 Load game mode (1 or 2 player)
@ $6563 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
  $6563 Check if two-player mode is active
  $6565 If two-player mode, jump to switch to Player 2
@ $6568 label=restart_current_player
c $6568 Restart gameplay for current player
D $6568 This entry point is used by multiple death handler routines to restart gameplay for the current player. It restores the stack pointer and jumps back to the main play routine.
  $6568 Restore stack pointer to main game loop
  $656C Restart gameplay for current player
@ $656F label=check_player_2_lives
c $656F Check if Player 2 has lives remaining when Player 1 is out
D $656F This routine is called when Player 1 has no lives left. In two-player mode, it checks if Player 2 has lives and switches to Player 2 if so, otherwise triggers game over.
  $656F If two-player mode, switch to Player 2.
@ $6572 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $6577 label=game_over
c $6577 Game Over
D $6577 This routine displays the "GAME OVER" message, plays the game over sequence, and returns to the overview/demo mode.
  $6577 Set scroller to "GAME OVER" message.
  $657D Update high score, restore stack, and return to overview mode.
@ $6587 label=setup_overview_status_player_2
c $6587 Setup Player 2 status line during overview mode
D $6587 Called during overview mode in two-player games to add the Player 2 status line to the display. Resets state_player to PLAYER_1 so the game starts with Player 1, then manually renders Player 2's bridge and status with cyan color scheme.
  $6587 Return if single-player mode.
@ $658A isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
  $658D Reset current player to PLAYER_1 for game start.
  $6592 Print Player 1's bridge number.
@ $6595 isub=LD A,EXT_ATTR_INK
  $6595 INK PLAYER_2
@ $6598 isub=LD A,COLOR_PLAYER_2
@ $659B isub=LD A,EXT_ATTR_AT
  $659B,6 AT 20,...
@ $65A1 ofix=LD DE,$8052
@ $65A4 ofix=LD BC,$0008
  $65A7,3 Print Player 2 status line text
@ $65AB label=switch_to_player_2
c $65AB Switch to Player 2 after Player 1 death
D $65AB This routine is called when Player 1 dies and Player 2 has lives remaining in two-player mode. It checks if Player 2 has lives, triggers game over if not, otherwise switches to Player 2 and restarts gameplay.
  $65AB If Player 2 has no lives, trigger game over.
@ $65AE isub=CP $00
  $65B3 Switch to Player 2 and restart gameplay.
@ $65BB label=switch_to_player_2_in_two_player_mode
c $65BB Switch to Player 2 when Player 1 dies in two-player mode
D $65BB This routine is called when Player 1 dies in two-player mode and still has lives. It checks if Player 2 has lives, and if so, switches to Player 2. If Player 2 has no lives, it restarts Player 1 instead.
  $65BB If Player 2 has no lives, restart Player 1.
@ $65BE isub=CP $00
  $65C3 Switch to Player 2 and restart gameplay.
@ $65CB label=handle_player_2_death
c $65CB Handle Player 2 death and determine next game state
D $65CB This routine is called when Player 2 dies. It checks both players' lives to determine whether to switch to Player 1, continue with Player 2, or trigger game over.
  $65CB If Player 2 has no lives, check Player 1 status.
@ $65CE isub=CP $00
  $65D3 If Player 1 has lives, switch to Player 1; otherwise restart Player 2.
@ $65D6 isub=CP $00
@ $65DE label=switch_to_player_1
c $65DE Switch to Player 1 after Player 2 death
D $65DE This routine is called when Player 2 dies and Player 1 has lives remaining. It switches the current player to Player 1 and restarts gameplay, or triggers game over if Player 1 has no lives.
  $65DE Set current player to PLAYER_1.
@ $65E3 label=check_player_1_lives
  $65E3 If Player 1 has no lives, trigger game over.
@ $65E6 isub=CP $00
  $65EB Set current player to PLAYER_1 and restart gameplay.
@ $65F3 label=handle_right
c $65F3 Move player plane right by 2 pixels
D $65F3 This routine is called when the player presses right on the joystick or keyboard. It moves the plane 2 pixels to the right (INC A twice), backs up the missile coordinates, renders the plane at the new position, then restores the missile coordinates and sets the sprite bank selector.
  $65F3 Back up missile coordinates and move plane 2 pixels right.
@ $6602 isub=LD B,PLANE_COORDINATE_Y
  $6602 Set position and collision mode (FUEL_DEPOT) for rendering.
@ $6604 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $660D Calculate previous position for sprite erasure (2 pixels back).
@ $6613 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $6613 Configure sprite and render plane; use ship attributes for Player 2.
@ $661C isub=LD E,SPRITE_PLANE_ATTRIBUTES
@ $6621 isub=CP PLAYER_2
@ $6626 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
@ $6628 isub=LD A,SPRITE_PLANE_WIDTH_TILES
@ $6630 label=restore_plane_state_after_render
c $6630 Restore plane state after rendering
D $6630 Shared cleanup for #R$65F3, #R$6642, and #R$6682. Restores missile coordinates and sprite bank selector after rendering the plane sprite.
  $6630 Restore missile coordinates from backup.
  $6636 Update plane sprite pointer from render output.
  $663C,5 Set sprite bank selector to $04 (select banked plane sprite).
@ $6642 label=handle_left
c $6642 Move player plane left by 2 pixels
D $6642 Mirrors #R$65F3 but moves the plane 2 pixels left instead of right.
  $6642 Back up missile coordinates and move plane 2 pixels left.
@ $6651 isub=LD B,PLANE_COORDINATE_Y
  $6651 Set position and collision mode (FUEL_DEPOT) for rendering.
@ $6653 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $665C Calculate previous position for sprite erasure (2 pixels back).
@ $6662 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $6662 Configure sprite, render plane, and restore state; use ship attributes for Player 2.
@ $666B isub=LD E,SPRITE_PLANE_ATTRIBUTES
@ $6670 isub=CP PLAYER_2
@ $6675 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
@ $6677 isub=LD A,SPRITE_PLANE_WIDTH_TILES
@ $6682 label=render_plane
c $6682 Render player plane sprite
N $6682 Renders the player's plane at its current position. Only executes in GAMEPLAY_MODE_NORMAL; returns immediately in other modes (scroll-in, overview, refuel).
N $6682 .
N $6682 Sets COLLISION_MODE_FUEL_DEPOT so the collision system checks for fuel depot contact during rendering. Backs up missile coordinates to #R$5F8F before modifying them for collision detection.
N $6682 .
N $6682 Selects between normal sprite (#R$83B1) and banked sprite (#R$83F1) based on #R$5F69. Player 2 uses different attributes (same as ship).
  $6682 Return if not in GAMEPLAY_MODE_NORMAL.
@ $6685 isub=CP GAMEPLAY_MODE_NORMAL
  $6688 Backup missile coords to #R$5F8F; set up plane position (Y=$80, X from #R$5F72).
  $6691 Set COLLISION_MODE_FUEL_DEPOT and store plane coords.
@ $6694 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $669D Calculate previous position for sprite erasure.
@ $66A4 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $66A4 Set frame size and sprite pointer from #R$5EF7.
@ $66AD isub=LD E,SPRITE_PLANE_ATTRIBUTES
  $66AD Set attributes; call #R$7038 for Player 2 (uses ship attributes).
@ $66B2 isub=CP PLAYER_2
@ $66B7 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
  $66B7,10 Set height, load sprite base; if bank=$04, use #R$83F1.
@ $66C4 isub=LD A,SPRITE_PLANE_WIDTH_TILES
  $66C4 Set width and call #R$8B3C to render.
  $66C9 Restore state.
@ $66CC label=ld_sprite_plane_banked
c $66CC Load banked plane sprite address
N $66CC Helper to load the banked sprite address (#R$83F1) into HL when sprite bank selector is $04.
  $66CC,3
@ $66D0 label=advance_scroll
c $66D0 Advance game scroll and update bridge position
N $66D0 Called each frame to advance the vertical scroll position. Adds current speed (#R$5F64) to scroll offset (#R$5F70), updates the bridge's Y position, then resets speed to SPEED_NORMAL and updates control flags.
N $66D0 .
N $66D0 The control bits modified are: clears CONTROLS_BIT_SPEED_CHANGED, sets CONTROLS_BIT_SPEED_NOT_FAST. This triggers #R$6C5D to play the normal speed engine sound.
  $66D0 Add speed to scroll offset and store result.
  $66DB,6 Update bridge position; reset speed to SPEED_NORMAL.
@ $66E1 isub=LD A,SPEED_NORMAL
  $66E6,7 Clear CONTROLS_BIT_SPEED_CHANGED, set CONTROLS_BIT_SPEED_NOT_FAST in #R$6BB0.
@ $66E9 isub=RES CONTROLS_BIT_SPEED_CHANGED,(HL)
@ $66EB isub=SET CONTROLS_BIT_SPEED_NOT_FAST,(HL)
@ $66EE label=update_bridge_scroll
c $66EE Update bridge Y position during scroll
N $66EE Adjusts the bridge's Y position (#R$5F6E) based on current scrolling. If no bridge exists (Y=0), returns immediately. If the bridge scrolls off the bottom of the screen (Y AND $88 == $88), clears it.
  $66EE If no bridge, return; otherwise advance bridge Y position.
  $66F5 If bridge scrolled off screen, call #R$6704 to clear it.
@ $66F8 isub=AND VIEWPORT_HEIGHT
@ $66FA isub=CP VIEWPORT_HEIGHT
  $66FD,6 Store updated bridge Y and return.
@ $6704 label=clear_bridge
c $6704 Clear bridge when scrolled off screen
N $6704 Clears the bridge destroyed flag (#R$5F6D) and returns 0 in A, which the caller stores to #R$5F6E to mark no bridge present.
  $6704,5 Clear bridge destroyed flag.
@ $670A label=handle_up
@ $670A isub=LD A,SPEED_FAST
c $670A Handle up/accelerate input
N $670A Sets speed to SPEED_FAST and updates control flags. Called when player presses up on joystick/keyboard.
  $670A Set speed to SPEED_FAST.
  $670F,7 Set CONTROLS_BIT_SPEED_CHANGED, clear CONTROLS_BIT_SPEED_NOT_FAST.
@ $6712 isub=SET CONTROLS_BIT_SPEED_CHANGED,(HL)
@ $6714 isub=RES CONTROLS_BIT_SPEED_NOT_FAST,(HL)
@ $6717 label=handle_down
@ $6717 isub=LD A,SPEED_SLOW
c $6717 Handle down/decelerate input
N $6717 Sets speed to SPEED_SLOW and updates control flags. Called when player presses down on joystick/keyboard.
  $6717 Set speed to SPEED_SLOW.
  $671C,7 Set CONTROLS_BIT_SPEED_CHANGED and CONTROLS_BIT_SPEED_NOT_FAST.
@ $671F isub=SET CONTROLS_BIT_SPEED_CHANGED,(HL)
@ $6721 isub=SET CONTROLS_BIT_SPEED_NOT_FAST,(HL)
@ $6724 label=handle_fire
c $6724 Handle fire button input
N $6724 Creates a new missile if none is currently active. Positions missile at plane X + 4, Y = $7E (just above plane). Sets CONTROLS_BIT_FIRE_SOUND to trigger the fire sound effect.
  $6724 Return if missile already active (Y != 0).
  $672A Create missile at (plane_X + 4, $7E).
  $6736,5 Set CONTROLS_BIT_FIRE_SOUND in #R$6BB0.
@ $6739 isub=SET CONTROLS_BIT_FIRE_SOUND,(HL)
@ $673C label=missile_pass_selector
g $673C Missile animation pass selector. $01=first pass (erase at old position), $00=second pass (draw at new position). Two-pass rendering prevents flicker.
@ $673D label=animate_plane_missile
c $673D Animate and render player missile
D $673D Missile speed: 6 pixels upward per frame. Called twice per frame for two-pass rendering (erase then draw).
N $673D On the first pass (#R$673C = $01), adjusts missile position for screen scrolling. On both passes, moves missile up by 6 pixels.
N $673D .
N $673D If missile reaches top of screen (Y AND $F8 == 0), jumps to #R$6794 to finalize collision. Clears CONTROLS_BIT_FIRE_SOUND when missile is in lower screen area ($70 - Y >= 0).
N $673D .
N $673D Sets COLLISION_MODE_MISSILE so the rendering system checks for object collisions.
  $673D Return if no missile active (Y == 0).
  $6743 Backup coords to #R$5F8D; if first pass, adjust for scroll.
  $6753 Store previous position to #R$8B0A.
  $6757 Calculate new position: X = plane_X + 4, Y = missile_Y - 6.
  $6764 If Y reached top of screen, jump to #R$6794.
  $6769 (continued) Store new coordinates to #R$5EF3.
  $6770 If missile in lower area, call #R$678E to clear fire bit.
  $6776 Store position to #R$8B0C.
@ $677A isub=LD A,COLLISION_MODE_MISSILE
  $677A Set COLLISION_MODE_MISSILE in #R$5EF5.
@ $677F isub=LD DE,SPRITE_MISSILE_HEIGHT_PIXELS<<8|SPRITE_MISSILE_ATTRIBUTES
  $677F,14 Set up sprite params and call #R$8B1E to render missile.
@ $6785 isub=LD BC,SPRITE_MISSILE_FRAME_SIZE_BYTES
@ $6788 isub=LD A,SPRITE_MISSILE_WIDTH_TILES
@ $678E label=clear_fire_bit
c $678E Clear CONTROLS_BIT_FIRE_SOUND flag
N $678E Called when missile Y <= $70 (112), stopping the fire sound effect. Does not affect firing — a new missile is gated by missile Y being 0.
  $678E,5 Clear CONTROLS_BIT_FIRE_SOUND in #R$6BB0.
@ $6791 isub=RES CONTROLS_BIT_FIRE_SOUND,(HL)
@ $6794 label=finalize_collision
c $6794 Finalize collision and erase missile sprite
N $6794 Called after a successful collision to clean up the game state. Erases the missile sprite from the screen, resets the collision mode to COLLISION_MODE_NONE, clears the missile coordinates, and resets CONTROLS_BIT_SPEED_NOT_FAST.
N $6794 .
N $6794 If in GAMEPLAY_MODE_REFUEL, jumps to #R$650A instead.
N $6794 .
N $6794 The sprite frame selection uses the X coordinate's lower 3 bits to choose the correct pixel-aligned erasure frame (1-4).
  $6794 Load missile coordinates from #R$5EF3 and call #R$72EF to set OR blending.
  $679B If GAMEPLAY_MODE_REFUEL, jump to #R$650A.
@ $679E isub=CP GAMEPLAY_MODE_REFUEL
@ $67A3 isub=LD A,COLLISION_MODE_NONE
  $67A3 Reset collision mode in #R$5EF5 to NONE.
  $67A8 Set up sprite parameters: width=1, base=#R$8451, frame_size=8.
  $67B0 Calculate frame index from X coordinate's lower 3 bits.
  $67B7 Prepare for frame selection loop.
@ $67B9 label=finalize_collision_erase_missile_loop
  $67B9 Select correct frame by adding frame_size A times.
  $67BD If first missile pass, call #R$62DA to advance position.
  $67C5 Store sprite pointer and coordinates to rendering vars.
  $67D0 Set sprite dimensions: width=1, frame_size=8, height=8, attrs=$0C.
  $67D8 Erase missile sprite.
  $67DE Reset CONTROLS_BIT_SPEED_NOT_FAST in #R$6BB0.
@ $67E1 isub=RES CONTROLS_BIT_SPEED_NOT_FAST,(HL)
  $67E3 Reload coordinates from #R$5EF3, then clear them.
  $67ED Calculate residue Y position (missile_Y - 6).
  $67F4 Set X = plane_X + 4 for centered erasure.
  $67FA Set up sprite parameters for residue erasure.
  $6803 Same frame selection as missile loop above (X lower 3 bits).
@ $6809 label=finalize_collision_erase_residue_loop
  $680D Calculate remaining height from #R$5EF6; return if zero.
  $6817 Set height and attributes (height in D, attrs=$0C in E).
  $681A,22 Store sprite params and call #R$8B3C to erase residue.
@ $6831 label=add_screen_bank_800
c $6831 Add $0800 offset to screen pointer
  $6831 Set DE to $0800
  $6834,1 Add DE to HL (adjust screen pointer)
@ $6836 label=add_screen_bank_1000
c $6836 Add $1000 offset to screen pointer
  $6836 Set DE to $1000
  $6839,1 Add DE to HL (adjust screen pointer)
@ $683B label=scroll_screen
c $683B Scroll screen pixels vertically
D $683B Core vertical scroll engine. Scrolls all screen content by copying pixel data between screen lines. Called every frame from #R$60A5.
N $683B The algorithm processes 144 screen lines ($8F to $00), each copying 32 bytes via LDDR. This creates the vertical scroll effect by shifting pixel data from source to destination addresses, where the offset between source/destination is determined by current speed.
N $683B .
N $683B Counter bits 7-6 select screen memory banks: bit 7 adds $1000, bit 6 adds $0800 to the base address. This allows 4 banks of screen patterns (64 lines each × 4 = 256 total pattern lines).
N $683B .
N $683B Performance note: This is the game's hottest code path, executing 144 iterations × ~50 frames/sec. The inner loop accounts for ~300M+ executions per session.
  $683B Initialize line counter to $8F (143 lines to process).
@ $683D label=scroll_screen_line
  $6840 Mask lower 6 bits for table index (0-63).
  $6842 Look up destination address in table at #R$5B00.
  $684F Apply bank offset based on bits 7-6.
  $685C Save destination pointer.
  $685D Look up source address (counter - speed).
  $6874 Apply bank offset to source pointer.
  $6886 Copy 32 bytes from source to destination (LDDR).
  $688C If counter reached 0, jump to #R$68A1 to clear top rows.
  $6895 At counter $7F, render plane sprite mid-scroll.
  $689A Decrement and continue loop.
@ $68A1 label=clear_top_rows
c $68A1 Clear top screen rows after scrolling
D $68A1 Clears the top rows of the screen based on scroll speed. After screen content scrolls upward, the topmost rows contain old data that needs to be zeroed.
  $68A1 Initialize screen pointer, row offset, and row count from speed.
@ $68AA label=clear_row_loop
  $68AA Set bytes per row (32).
@ $68AC label=clear_byte_loop
  $68AC Clear byte, advance pointer, loop 32 times.
  $68B1,5 Advance to next row and loop until all rows cleared.
@ $68B7 label=scroll_attributes
@ $68B7 ignoreua=$5A1F
c $68B7 Scroll screen attributes up by one row
D $68B7 This routine is called every 8 terrain fragments to scroll the screen attributes. It copies attribute data from one row to the next, effectively scrolling the attributes upward. It also handles special bridge attribute rendering.
  $68B7 Copy 524 attribute bytes backward, scrolling all rows up by one.
@ $68BA ignoreua=$5A3F
@ $68C2 ignoreua=$5BDF
  $68C2 Point HL at the bottom attribute row.
@ $68C5 label=update_top_visible_row_and_refill_bottom
c $68C5 Copy bottom attribute row to row 1 and refill bottom
D $68C5 Copies the bottom attribute row to row 1, then fills the bottom row with either river (green) or bridge attributes depending on state_bridge_section. This leaves attribute row 0 unchanged, creating an 8-pixel blank zone at the top.
  $68C5 Copy bottom attribute row to row 1 (#R$5820).
  $68CD If bridge section 1 or 2, jump to render bridge attributes.
@ $68DA label=fill_river_attributes
  $68DA Initialize bottom row fill with river attribute (green).
@ $68E1 label=fill_attribute_loop
  $68E1 Store attribute, advance pointer, loop 32 times.
  $68E5,3 Process objects for new row.
@ $68E9 label=init_current_bridge
c $68E9 Initialize bridge state for current player
D $68E9 Clears the top attribute row, removes any active tank shell, and calculates the starting bridge index based on the current player's saved progress.
D $68E9 Bridge progression algorithm: The game has 48 unique bridge sections (1-48). Each bridge has 64 terrain fragments. When a player's progress exceeds 48, the algorithm calculates a wraparound: new_bridge = ((progress - 48) mod 15) + 33. This creates an infinite loop through bridges 33-48 (15 bridges) after completing all 48.
  $68E9 Initialize to clear top attribute row (32 bytes).
@ $68EE label=clear_top_attributes_loop
  $68EE Clear byte, advance pointer, loop 32 times.
  $68F3 Clear tank shell and helicopter missile state.
  $68F9 Load current player's bridge progress (swaps for player 2).
@ $6900 isub=CP PLAYER_2
  $6905 Check if progress exceeds initial section threshold (48).
  $6913 Load section size (15) for division.
@ $6915 label=divide_progress_loop
  $6915 Divide excess progress by 15 to find wraparound offset.
@ $691E label=finalize_bridge_index
  $691E Calculate final bridge index and fill river attributes.
@ $6927 label=render_bridge_attributes
c $6927 Render bridge attributes to bottom row
D $6927 Copies road/bridge attributes to the bottom attribute row and clears the bridge section flag.
  $6927 Copy bridge/road attributes to bottom row.
  $6932,8 Clear bridge section flag and spawn objects for new row.
@ $693B label=terrain_edge_counter
b $693B Terrain edge rendering counter
  $693B Incremented each time terrain edge is rendered.
@ $693C label=init_bridge_approach
c $693C Initialize bridge approach state
D $693C Called when terrain profile byte is $03, indicating the start of a bridge approach section. Sets up the bridge Y position counter and fragment counter for the upcoming bridge.
  $693C Mark bridge approaching (Y position = 1).
  $6941,5 Start 6-fragment countdown to bridge.
@ $6947 label=clear_bridge_destroyed
c $6947 Clear bridge destroyed flag
D $6947 Called when terrain profile byte is $02, indicating bridge structure. Clears the destroyed flag so the bridge renders intact (unless player has destroyed it).
  $6947,5 Reset destroyed flag so bridge renders intact.
@ $694D label=increase_bridge_index
c $694D Advance to next bridge/level
D $694D Called when all 64 terrain fragments of the current bridge are completed. Resets Y-position and advances to the next bridge. Bridge index wraps from 49 back to 1, but the player's progress counter in #R$5F6A continues incrementing for the wraparound calculation in #R$68E9.
R $694D O:A Always set to 0
  $694D Reset Y-position to start of new bridge.
  $6954 Increment bridge index at #R$5EF0.
  $695B If index reaches $31 (49), wrap to 1.
@ $6963 label=next_bridge_index_overflow
c $6963 Wrap bridge index from 49 to 1
D $6963 Resets bridge index to 1 when it would exceed 48. Note: player progress at #R$5F6A is not reset, allowing the wraparound algorithm to work.
  $6963,5 Reset bridge index to 1.
@ $696B label=handle_island
c $696B Initialize island state from terrain data
D $696B Called when terrain data indicates an island should appear. Looks up island parameters from data_islands table and stores them to state variables for use during island line rendering.
R $696B I:A Island index (upper 6 bits of terrain byte, will be divided by 4).
  $696B Convert input to island table index and prepare lookup.
@ $6978 label=locate_island_element
  $6978 Locate island entry in data_islands (3 bytes per entry).
@ $697A ofix=JR NZ,$6978
  $697C Store island profile index and width offset to state.
  $6986,9 Store extra byte and reset island line counter.
@ $6990 label=render_island_line
c $6990 Render one line of island terrain
D $6990 Renders the left and right edges of an island on the current screen line. Islands are rendered as two diagonal edges (left and right) with solid terrain ($FF) filling the space from screen edge to each diagonal edge.
N $6990 .
N $6990 The left edge X position is calculated as: state_island_byte_2 + profile_value + $80. The $80 centers the coordinate system (screen center). The profile_value comes from #R$8063 indexed by state_island_profile_idx and state_terrain_position.
N $6990 .
N $6990 The right edge position depends on state_island_byte_3: 0=use byte_3 directly, 1=mirror around center (2*$3C - left), 2=offset from left ($3C + left). $3C (60) is the default river half-width.
  $6990 Increment island line counter.
@ $699A isub=LD DE,TERRAIN_PROFILE_SIZE
  $6994 Set up lookup: HL=data_terrain_profiles, DE=TERRAIN_PROFILE_SIZE.
@ $69A0 label=locate_island_profile
  $69A0 Locate 16-byte profile entry by state_island_profile_idx.
  $69A4 Index into profile by (state_terrain_position AND $0F) to get edge offset byte.
  $69AD Left edge X = state_island_byte_2 + profile_byte + $80. Save X on stack.
  $69BA Look up 2-byte edge sprite from terrain_edge_left using (X AND $06) as sprite index.
  $69C5 Calculate screen address = screen_ptr + (X >> 3). Copy 2-byte edge sprite via LDIR.
  $69D8 Calculate fill count = (X >> 3) - 16. This is number of solid tiles left of edge.
  $69EA Fill leftward with $FF bytes (solid terrain) for fill count iterations.
@ $69EC label=fill_island_left_loop
@ $69F0 label=prepare_right_edge
  $69F0 Restore left X from stack. Set D=left X, C=$3C (river half-width), B=state_island_byte_2.
  $69FA Dispatch based on state_island_byte_3: 1=#R$6A3F, 2=#R$6A45, else use byte_3 as right X.
@ $6A0A label=draw_right_edge
  $6A0A Look up 2-byte edge sprite from terrain_edge_right using (right X AND $06) as index.
  $6A18 Calculate screen address = screen_ptr + (right X >> 3). Copy 2-byte edge sprite via LDIR.
  $6A26 Calculate fill count = 15 - (right X >> 3). This is number of solid tiles right of edge.
  $6A38 Load $FF (solid terrain byte) into A.
@ $6A3A label=fill_island_right_loop
  $6A3A Write A to (DE), increment DE, loop B times to fill rightward.
  $6A3E Return after filling right terrain.
@ $6A3F label=calc_mirrored_edge
c $6A3F Calculate mirrored right edge position
D $6A3F For symmetric islands (state_island_byte_3=1). Right edge = 2*$3C - left = 120 - left. This mirrors the left edge around screen center, creating a symmetric island shape.
  $6A3F A = 2*C - D = 120 - left_x, then jump to draw_right_edge.
@ $6A45 label=calc_offset_edge
c $6A45 Calculate offset right edge position
D $6A45 For offset islands (state_island_byte_3=2). Right edge = $3C + left. This creates an asymmetric island where right edge follows left edge with fixed river width.
  $6A45 A = C + D = 60 + left_x, then jump to draw_right_edge.
@ $6A4A label=get_player_2_bridge
c $6A4A Get player 2's bridge progress
D $6A4A Helper routine that loads player 2's bridge progress into B, replacing player 1's value.
  $6A4A,4 Load player 2's bridge progress into B.
@ $6A4F label=render_terrain_row
c $6A4F Load next terrain fragment and initialize rendering state
D $6A4F Called when a terrain fragment finishes (after 16 pixel lines). Loads the next 4-byte terrain fragment from level_terrains[bridge_index][fragment_number] and initializes state for rendering.
N $6A4F .
N $6A4F Terrain fragment format (4 bytes): byte 0 = profile number (index into #R$8063), bytes 1-2 = row offset (added to profile values), byte 3 = upper 6 bits: island index (0=no island), lower 2 bits: edge calculation mode.
N $6A4F .
N $6A4F Profile numbers 2 and 3 have special meaning: 2 = bridge structure (clears destroyed flag), 3 = bridge approach (sets countdown). Fragment number wraps at 64, incrementing bridge_index.
  $6A4F Reset state_terrain_position to $FF (will be incremented to 0).
  $6A54,10 Set up level_terrains lookup: HL = #R$9500, DE = $100 (level size).
@ $6A60 label=locate_level_terrain
  $6A60 Locate level_terrains[state_bridge_index] (256 bytes per level).
  $6A64 Increment fragment number (0-63), store to state_level_fragment_number.
  $6A6D If fragment wrapped to 0, call #R$694D to advance to next bridge/level.
  $6A72 Set up fragment lookup: DE = 4 (fragment size).
@ $6A79 label=locate_level_terrain_fragment
  $6A79 Locate fragment within level: level_terrains[bridge][fragment].
  $6A7D Load byte 0 (profile number) to state_terrain_profile_number. Handle special values.
  $6A86 Load bytes 1-2 (row offset) to state_terrain_element_23.
  $6A8B Byte 3: if upper 6 bits non-zero, call #R$696B to initialize island.
  $6A94,6 Store lower 2 bits of byte 3 to state_terrain_extras (edge mode: 0=direct, 1=mirrored, 2=offset).
@ $6AA3 label=render_terrain_fragment
c $6AA3 Render one pixel line of terrain
D $6AA3 Renders a single pixel line of the current terrain fragment. Called 16 times per fragment (lines 0-15). Draws left edge sprite, fills left terrain, draws right edge sprite, fills right terrain. Handles special fragments (bridges/roads) separately.
N $6AA3 .
N $6AA3 Left edge X = profile_byte + row_offset - 16. The profile_byte comes from #R$8063[profile_number][line]. The -16 adjusts for the edge sprite width. Right edge depends on state_terrain_extras mode.
@ $6AA9 isub=LD DE,TERRAIN_PROFILE_SIZE
  $6AA3 Set up profile lookup: HL = #R$8063, DE = TERRAIN_PROFILE_SIZE.
@ $6AAF label=locate_terrain_profile
  $6AAF Locate profile: data_terrain_profiles[state_terrain_profile_number].
  $6AB3 Increment state_terrain_position (line 0-15).
@ $6ABA isub=CP TERRAIN_PROFILE_SIZE
  $6ABA If line reached TERRAIN_PROFILE_SIZE, jump to #R$6A4F to load next fragment.
@ $6ABF isub=AND TERRAIN_PROFILE_SIZE-1
  $6ABF Index into profile: HL = profile_base + (line mod TERRAIN_PROFILE_SIZE).
  $6AC5 Load row offset (B) from state_terrain_element_23 and profile byte (A).
  $6ACA If bit 7 of profile byte set, jump to #R$6B7B (special fragment).
  $6ACF Left edge X = profile_byte + row_offset - 16. Save original X, work with adjusted X.
  $6AD5 Increment terrain_edge_counter. Set up sprite lookup from #R$89F2.
  $6ADA Sprite index = (X AND $06). Look up 2-byte edge sprite from terrain_edge_left.
  $6AE5,11 Screen address = screen_ptr + (X >> 3). Copy 2-byte sprite via LDIR.
  $6AF4 Fill count = X >> 3. Fill leftward with $FF (solid terrain).
  $6AFB,15 Restore original X. Dispatch based on state_terrain_extras: 1=#R$6B58, 2=#R$6B5E.
@ $6B06 label=fill_terrain_left_loop
  $6B10 Right sprite index = (right_X AND $06). Look up from #R$89FA.
@ $6B20 label=draw_terrain_right_edge
  $6B21 Screen address = screen_ptr + (right_X >> 3). Copy 2-byte sprite via LDIR.
  $6B31,13 Fill count = 30 - (right_X >> 3). Fill rightward with $FF.
  $6B45,13 If island active (state_island_line_idx != 16), call #R$6990.
@ $6B4B label=fill_terrain_right_loop
@ $6B52 isub=CP TERRAIN_PROFILE_SIZE
@ $6B58 label=calc_terrain_right_mirrored
c $6B58 Calculate mirrored right edge (terrain extras mode 1)
D $6B58 For symmetric river sections. Right edge = 2*C - D where C is the default river width from state_terrain_element_23 low byte and D is the left edge coordinate. This mirrors the left edge around the river center.
R $6B58 I:C River center position (from state_terrain_element_23 low byte).
R $6B58 I:D Left terrain edge coordinate.
R $6B58 O:A Right terrain edge coordinate = 2*C - D.
  $6B58 A = 2*C - D (mirror left around center), jump to #R$6B20.
@ $6B5E label=calc_terrain_right_offset
c $6B5E Calculate offset right edge (terrain extras mode 2)
D $6B5E For fixed-width river sections. Right edge = C + D where C is the river width and D is the left edge coordinate. This maintains constant river width regardless of left edge position.
R $6B5E I:C River width (from state_terrain_element_23 low byte).
R $6B5E I:D Left terrain edge coordinate.
R $6B5E O:A Right terrain edge coordinate = C + D.
  $6B5E A = C + D (fixed width from left), jump to #R$6B20.
@ $6B63 label=load_canal_river_side
c $6B63 Load canal sprite (river-adjacent side)
D $6B63 Helper for special terrain: loads canal/water transition sprite for the side adjacent to the river. Sets bridge_section = 0 (no special attributes).
  $6B63 A = 0 (no special section), HL = sprite_terrain_pre_post_bridge, jump to continue.
@ $6B6B label=load_canal_road_side
c $6B6B Load canal sprite (road-adjacent side)
D $6B6B Helper for special terrain: loads canal sprite for the side adjacent to the road. Sets bridge_section = 2 (road attributes).
  $6B6B A = 2 (road section), HL = sprite_terrain_pre_post_bridge, jump to continue.
@ $6B73 label=load_road_sprite
c $6B73 Load road/bridge sprite
D $6B73 Helper for special terrain: loads the road and bridge crossing sprite. Sets bridge_section = 2 (road attributes).
  $6B73 A = 2 (road section), HL = sprite_road_and_bridge_pixels, jump to continue.
@ $6B7B label=handle_special_terrain_fragment
c $6B7B Render special terrain fragment (bridge/road area)
D $6B7B Handles terrain lines with bit 7 set in profile byte, indicating bridge/road sections. These use full-width 32-byte sprites instead of edge rendering. Dispatches based on profile byte value: $80 = canal (river side), $E0 = canal (road side), $F0 = road, else = bridge.
N $6B7B .
N $6B7B After copying the 32-byte sprite to screen, sets state_bridge_section for attribute handling. If bridge was destroyed, clears a 4-byte hole in the middle of the road sprite.
  $6B7B Dispatch: $80=#R$6B63, $E0=#R$6B6B, $F0=#R$6B73, else=bridge (A=1).
  $6B8A Load bridge sprite (sprite_road_and_bridge_pixels), A = 1 (bridge section).
@ $6B8F label=handle_special_terrain_fragment_continue
  $6B8F Copy 32-byte sprite row to screen via LDIR. Store A to state_bridge_section.
  $6B98 If state_bridge_destroyed = 0, return (bridge intact).
  $6BA1 Load screen_ptr for destroyed bridge clearing.
@ $6BA4 label=clear_destroyed_bridge
  $6BA4 Set up loop to clear 4 bytes at offset $0E.
@ $6BAA label=clear_bridge_bytes_loop
  $6BAA,6 Clear byte, advance pointer, loop 4 times.
@ $6BB0 label=state_controls
g $6BB0 Control state bitmask. Bit 0=FIRE, 1=SPEED_DECREASED, 2=SPEED_ALTERED, 3=LOW_FUEL, 4=BONUS_LIFE, 5=EXPLODING.
@ $6BB1 label=pause
c $6BB1 Keep the game paused
  $6BB7,5 Loop until anything else than H is pressed
@ $6BBF label=handle_enter
c $6BBF Handle the Enter key pressed
C $6BBF Scan Caps Shift
C $6BC8 Scan Symbol Shift
@ $6BD2 label=select_controls
c $6BD2 Reset to control selection screen.
D $6BD2 Resets the scrolling text pointer and jumps back to the title screen.
  $6BD2 Reset text pointer to #R$8182 (credits text start).
  $6BD8 Jump to title screen initialization.
@ $6BDB label=int_handler
c $6BDB Maskable interrupt handler (IM 2)
D $6BDB Frame interrupt handler triggered ~50 times/second. Installed via IM 2 at game startup (see #R$5CD2). Uses RETN instead of RETI (functionally equivalent).
N $6BDB The handler performs three functions each frame:
N $6BDB .
N $6BDB #LIST { Increment interrupt counter (#R$5C78) } { Check H key for pause (jumps to #R$6BB1) } { Process control flags for sound effects (falls through to #R$6BED) } LIST#
N $6BDB .
N $6BDB Note: The game tick counter (#R$5EEF) is incremented in the main loop (#R$5F91), not here. int_counter is used for system timing, state_tick for game logic.
  $6BDB Disable interrupts and save registers.
  $6BE0 Increment interrupt counter.
  $6BE4 Check H key for pause.
@ $6BED label=handle_controls
c $6BED Process control state flags and trigger sound effects
D $6BED Sound processing dispatcher called from interrupt handler. Reads #R$6BB0 control flags and calls appropriate sound routines. Multiple sounds can trigger simultaneously (e.g., fire + low fuel).
D $6BED #TABLE(default) { =h Bit | =h Flag | =h Sound Handler } { 0 | FIRE_SOUND | #R$8A02 (fire) } { 1 | SPEED_NOT_FAST | #R$6C5D (normal speed) } { 2 | SPEED_CHANGED | #R$6CB8 (fast speed) } { 1+2 | Both speed bits | #R$6CD6 (slow speed) } { 3 | LOW_FUEL | #R$6CF4 (warning) } { 4 | BONUS_LIFE | #R$6C31 (jingle) } { 5 | EXPLODING | #R$6C7B (explosion) } TABLE#
N $6BED Flags are set by game logic (input handlers, collision, fuel system) and cleared by sound routines when complete.
  $6BED Skip if paused (H key).
  $6BF5 Check FIRE_SOUND → #R$8A02.
@ $6BF8 isub=BIT CONTROLS_BIT_FIRE_SOUND,(HL)
@ $6BFD isub=BIT CONTROLS_BIT_BONUS_LIFE,(HL)
  $6BFD Check BONUS_LIFE → #R$6C31.
@ $6C05 isub=BIT CONTROLS_BIT_EXPLODING,(HL)
  $6C05 Check EXPLODING → #R$6C7B.
@ $6C0D isub=BIT CONTROLS_BIT_LOW_FUEL,(HL)
  $6C0D Check LOW_FUEL → #R$6CF4.
@ $6C13 isub=AND CONTROLS_SPEED_MASK
  $6C13 Mask speed bits.
@ $6C15 isub=CP CONTROLS_SPEED_NORMAL
  $6C15 Normal speed → #R$6C5D.
@ $6C1A isub=CP CONTROLS_SPEED_FAST
  $6C1A Fast speed → #R$6CB8.
@ $6C1F isub=CP CONTROLS_SPEED_SLOW
  $6C1F Slow speed → #R$6CD6.
@ $6C24 label=int_return
c $6C24 Return from interrupt handler
D $6C24 Restores registers and returns. Uses RETN instead of RETI (both work identically).
  $6C24 Restore registers.
  $6C28 Enable interrupts and return.
@ $6C2B label=data_unused_6C2B
u $6C2B
@ $6C30 label=bonus_life_sound_counter
g $6C30 Bonus life sound progress counter (0-64). Incremented each frame during jingle. Sound completes when reaching $40 (64).
@ $6C31 label=do_bonus_life
c $6C31 Play bonus life sound effect
D $6C31 Generates a rising pitch sound effect when player earns an extra life. Called once per frame while CONTROLS_BIT_BONUS_LIFE is set. The sound plays over 64 frames.
D $6C31 #LIST { Counter increments from 0 to 64 over successive frames } { Pitch = ($40 - counter) >> 3, giving values 7→0 as counter increases } { Lower pitch values = higher frequency, so sound rises in pitch } { Calls ROM BEEPER routine at $03B5 with duration L=$FF, repeat DE=$0001 } LIST#
  $6C31 Increment counter and check if reached $40 (64). If so, sound is complete.
@ $6C38 isub=CP BONUS_LIFE_SOUND_FRAMES
  $6C38 Check if counter reached BONUS_LIFE_SOUND_FRAMES. If done, finish sound sequence.
@ $6C3E isub=LD A,BONUS_LIFE_SOUND_FRAMES
  $6C3D Calculate pitch: pitch = BONUS_LIFE_SOUND_FRAMES - counter.
  $6C41 Set up BEEPER parameters: H = pitch >> 3 (range 7-0), L = $FF (duration).
  $6C4A,7 Call ROM BEEPER at $03B5 with DE=$0001 (one iteration). Disable interrupts after.
@ $6C52 label=bonus_life_sound_done
c $6C52 Complete bonus life sound sequence
D $6C52 Resets the sound counter and clears the CONTROLS_BIT_BONUS_LIFE flag to stop the sound effect.
  $6C52 Reset counter to 0.
  $6C57,5 Clear CONTROLS_BIT_BONUS_LIFE in #R$6BB0 to indicate sound is complete.
@ $6C5A isub=RES CONTROLS_BIT_BONUS_LIFE,(HL)
@ $6C5D label=beep_engine_normal
c $6C5D Play normal speed engine sound
D $6C5D Generates the engine sound for normal speed. Called when only CONTROLS_BIT_SPEED_NOT_FAST is set (player not pressing up or down). HL points to the controls byte on entry.
D $6C5D #LIST { Period = (controls_byte AND $0F), used for both on and off delays } { Symmetric square wave: same delay for high and low phases } { Loops 8 cycles then returns } LIST#
R $6C5D I:HL Pointer to #R$6BB0 (controls state byte)
  $6C5D Extract period from low 4 bits of controls byte. Higher value = lower pitch.
  $6C61 Loop counter: 8 cycles of the waveform.
@ $6C63 label=beep_engine_normal_loop
@ $6C63 isub=LD A,ULA_SPEAKER_ON
  $6C63 Speaker ON.
  $6C67 Load period into D.
@ $6C68 label=beep_engine_normal_delay_on
  $6C68 Delay loop for speaker ON phase.
@ $6C6B isub=LD A,ULA_SPEAKER_OFF
  $6C6B Speaker OFF.
  $6C6F Load period into D.
@ $6C70 label=beep_engine_normal_delay_off
  $6C70 Delay loop for speaker OFF phase.
  $6C73,7 Decrement cycle counter, loop if not zero. Return from interrupt when done.
@ $6C7A label=explosion_counter
g $6C7A Explosion sound frame counter. Counts down from $18 (24) to 0. Value also controls pitch - higher values = lower frequency.
@ $6C7B label=beep_explosion
c $6C7B Play explosion sound effect
D $6C7B Generates an explosion sound that plays over 24 frames ($18). Called once per frame while CONTROLS_BIT_EXPLODING is set. The ON delay is derived from (DE)&7, but DE is not set up by the caller - it retains whatever value the interrupted main loop code had, making the pitch vary semi-randomly between frames and giving the explosion its noisy character.
D $6C7B #LIST { Counter decrements from $18 (24) to 0 over successive frames } { ON delay = ((DE) AND $07) << 3 + $10, range $10-$48 (16-72) } { OFF delay = counter value, decreasing each frame (sound speeds up) } { 4 cycles of waveform per frame } { As counter decreases, OFF delay shortens, making sound more rapid/urgent } LIST#
R $6C7B I:DE Not intentionally set - residual value from interrupted code, read as (DE)&7 to derive ON delay
  $6C7B,4 Decrement explosion counter.
  $6C82 If counter reached 0, jump to #R$6CAD to finish.
  $6C87 Calculate ON delay: ((DE) AND $07) << 3 + $10. Gives value $10-$48 based on low 3 bits of (DE).
  $6C92 Set ON delay in E, loop counter = 4 cycles.
@ $6C95 label=beep_explosion_loop
@ $6C95 isub=LD A,ULA_SPEAKER_ON
  $6C95 Speaker ON.
  $6C99 Load ON delay into D.
@ $6C9A label=beep_explosion_delay_on
  $6C9A Delay loop for speaker ON phase.
@ $6C9D isub=LD A,ULA_SPEAKER_OFF
  $6C9D Speaker OFF.
  $6CA1 Load counter value as OFF delay.
@ $6CA5 label=beep_explosion_delay_off
  $6CA5 Delay loop for speaker OFF phase (speeds up as counter decreases).
  $6CA8 Decrement cycle counter, loop for 4 cycles per frame.
@ $6CAD label=explosion_render_finish
@ $6CAD isub=LD A,EXPLOSION_SOUND_FRAMES
c $6CAD Complete explosion sound sequence
D $6CAD Resets the explosion counter and clears CONTROLS_BIT_EXPLODING flag.
  $6CAD Reset explosion counter for next explosion.
  $6CB2,5 Clear CONTROLS_BIT_EXPLODING in #R$6BB0.
@ $6CB5 isub=RES CONTROLS_BIT_EXPLODING,(HL)
@ $6CB8 label=beep_engine_fast
c $6CB8 Play fast speed engine sound
D $6CB8 Generates the engine sound for fast speed. Called when only CONTROLS_BIT_SPEED_CHANGED is set (player holding up). HL points to the controls byte on entry.
D $6CB8 #LIST { Period = (controls_byte AND $07), used for speaker ON delay } { Fixed OFF delay of 4 iterations (shorter than ON = asymmetric wave) } { Asymmetric wave gives a higher-pitched timbre than normal speed } LIST#
R $6CB8 I:HL Pointer to #R$6BB0 (controls state byte)
  $6CB8 Extract period from low 3 bits of controls byte.
  $6CBC Loop counter: 8 cycles of the waveform.
@ $6CBE label=beep_engine_fast_loop
@ $6CBE isub=LD A,ULA_SPEAKER_ON
  $6CBE Speaker ON.
  $6CC2 Load period into D.
@ $6CC3 label=beep_engine_fast_delay_on
  $6CC3 Delay loop for speaker ON phase.
@ $6CC6 isub=LD A,ULA_SPEAKER_OFF
  $6CC6 Speaker OFF.
  $6CCA Load fixed delay ($04) into D.
@ $6CCC label=beep_engine_fast_delay_off
  $6CCC Delay loop for speaker OFF phase (asymmetric wave).
  $6CCF Decrement cycle counter, loop if not zero. Return from interrupt when done.
@ $6CD6 label=beep_engine_slow
c $6CD6 Play slow speed engine sound
D $6CD6 Generates the engine sound for slow speed. Called when both CONTROLS_BIT_SPEED_NOT_FAST and CONTROLS_BIT_SPEED_CHANGED are set (player holding down). HL points to the controls byte on entry.
D $6CD6 #LIST { Period = (controls_byte AND $17), uses bits 0-2 and bit 4 } { Fixed OFF delay of $0C (12) iterations (longer than fast speed sound) } { Lower-pitched timbre than normal and fast speeds } LIST#
R $6CD6 I:HL Pointer to #R$6BB0 (controls state byte)
  $6CD6 Extract period from bits 0-2 and bit 4 of controls byte.
  $6CDA Loop counter: 8 cycles of the waveform.
@ $6CDC label=beep_engine_slow_loop
@ $6CDC isub=LD A,ULA_SPEAKER_ON
  $6CDC Speaker ON.
  $6CE0 Load period into D.
@ $6CE1 label=beep_engine_slow_delay_on
  $6CE1 Delay loop for speaker ON phase.
@ $6CE4 isub=LD A,ULA_SPEAKER_OFF
  $6CE4 Speaker OFF.
  $6CE8 Load fixed delay ($0C) into D.
@ $6CEA label=beep_engine_slow_delay_off
  $6CEA Delay loop for speaker OFF phase.
  $6CED Decrement cycle counter, loop if not zero. Return from interrupt when done.
@ $6CF4 label=do_low_fuel
c $6CF4 Play low fuel warning sound
D $6CF4 Generates a warbling warning sound when fuel is low. Called once per frame while CONTROLS_BIT_LOW_FUEL is set. The sound pitch varies each frame creating an urgent warbling effect.
D $6CF4 #LIST { Decrements #R$5F65 each frame, wrapping at $7F (0-127 range) } { Uses this value as period for symmetric square wave } { 3 cycles of waveform per invocation } { As period decrements, pitch rises then resets, creating warble } LIST#
  $6CF4 Loop counter: 3 cycles of waveform.
@ $6CF6 label=do_low_fuel_loop
  $6CF6 Decrement period (#R$5F65), wrap at $7F. Store new period in E.
@ $6D00 isub=LD A,ULA_SPEAKER_ON
  $6CFF Speaker ON.
  $6D04 Load period into D.
@ $6D05 label=do_low_fuel_delay_on
  $6D05 Delay loop for speaker ON phase.
@ $6D08 isub=LD A,ULA_SPEAKER_OFF
  $6D08 Speaker OFF.
  $6D0C Load period into D.
@ $6D0D label=do_low_fuel_delay_off
  $6D0D Delay loop for speaker OFF phase.
  $6D10 Decrement cycle counter, loop for 3 cycles. Return from interrupt when done.
@ $6D17 label=overview
c $6D17 Level overview screen
D $6D17 Displays a preview fly-over of the upcoming terrain before the game starts. Shows scrolling terrain with game number and scrolling title text. Player can press Enter to start the game early, or wait for 5 scroll units to auto-start.
D $6D17 #LIST { Initializes screen with PAPER RIVER, INK BANK } { Prints status line and "GAME n" where n is the game mode (1-4) } { Runs a main loop that scrolls terrain and displays title text } { Exits to game start after 5 scroll increments or Enter key } LIST#
  $6D17,9 Initialize scroll position (#R$5F70 = $0010) and scroll speed (#R$5EFD = $10).
@ $6D23 isub=LD D,COLOR_RIVER<<3|COLOR_BANK
  $6D23 Set screen colors (PAPER RIVER, INK BANK) via #R$940A.
  $6D28 Clear/initialize screen via #R$8A33.
  $6D2B Print status line 1 (#R$8000, length $31 bytes) using ROM PR_STRING ($203C).
@ $6D2E isub=LD BC,status_line_2 - status_line_1
  $6D34 Initialize gameplay: call #R$64BC, #R$6587, #R$6DEB (init_starting_bridge).
  $6D3D Initialize terrain rendering.
  $6D40,11 Print "GAME" text (#R$805A, length 5) using ROM PR_STRING.
@ $6D48 isub=LD BC,status_line_4_end - status_line_4
@ $6D51 isub=ADD A,"1"
  $6D4E Print game number: load game mode from #R$923A, add "1" for ASCII digit, output via RST $10.
@ $6D54 isub=LD A,"h"
  $6D54,13 Initialize state: store 'h' in last key (suppress H-key pause), clear #R$5F7D, save initial scroll value to #R$5D43.
@ $6D64 label=overview_loop
  $6D64 Check Enter key (row 6, bit 0). Handle Enter if pressed.
  $6D6D Check if 5 scroll units passed: if (#R$5EF0 - #R$5D43) == 5, jump to #R$5D06 to start game.
  $6D7A Render frame: call delay, scroll, increment counter, render terrain/objects.
  $6D8D Advance scroll and render terrain.
  $6D90,10 Call delay, increment frame counter #R$5F81, call ROM KEYBOARD ($02BF), enable interrupts.
@ $6D9E isub=CP CHAR_ENTER
  $6D9B Check if Enter was pressed. If so, jump to #R$5DA6.
  $6DA3,7 Check frame counter AND 3: if not zero, loop back to overview_loop.
  $6DAD Select upper screen channel via ROM CHAN_OPEN ($1601).
@ $6DB2 isub=LD A,EXT_ATTR_INK
  $6DB2 INK BLACK
@ $6DB5 isub=LD A,COLOR_BLACK
@ $6DB8 isub=LD A,EXT_ATTR_PAPER
  $6DB8 PAPER BLACK
@ $6DBB isub=LD A,COLOR_BLACK
@ $6DBE isub=LD A,EXT_ATTR_AT
  $6DBE AT 1,31
  $6DC7 Advance text pointer (#R$5F7E), get next character.
  $6DD1,9 If character is $FF (end of text), jump to #R$6DDD to reset. Otherwise print character and continue loop.
@ $6DDD label=reset_scroll_text
c $6DDD Reset scrolling title text
D $6DDD Resets the scrolling text pointer to the beginning of the title text at #R$8182 and continues the overview loop.
  $6DDD Reset text pointer #R$5F7E to #R$8182 (start of title text).
  $6DE5,6 Clear #R$5F6D and jump back to overview_loop.
@ $6DEB label=init_starting_bridge
c $6DEB Initializes the starting bridge based on the value of #R$923A using #R$5D3F for the lookup.
  $6DEE Shift the game mode right discarding the bit corresponding to the number of players and leaving the ones corresponding to the starting bridge.
  $6DF0 Point to the beginning of the list
  $6DF3 Advance to the element corresponding to the game mode.
  $6DF7,1 Get the starting bridge number
@ $6DFF label=consume_fuel
c $6DFF Consume fuel and update gauge display
D $6DFF Decrements fuel level by 1 every 2 frames (on even ticks only). At 50fps, this equals ~25 units/second. A full tank (255) lasts ~10 seconds. Fuel consumption does NOT vary with scroll speed.
D $6DFF #LIST { Gauge updates every 4th decrement (fuel AND 3 == 0) } { Low fuel warning when top 2 bits = 0 (fuel < $40) } { Empty fuel (fuel = 0) triggers game over via #R$650A } { Gauge position: column = (fuel >> 2) + $40, row = $A8 } LIST#
  $6DFF Skip if odd tick (fuel only consumed on even ticks).
@ $6E02 isub=AND TICK_MASK_FRAME_PARITY
@ $6E04 isub=CP TICK_PARITY_EVEN
  $6E07 Decrement fuel level in #R$5F66.
@ $6E0E isub=AND FUEL_CHECK_INTERVAL
  $6E0E Skip gauge update unless (fuel AND 3) == 0 (every 4th decrement).
  $6E13 If fuel == 0, game over (jump to #R$650A).
@ $6E16 isub=CP FUEL_LEVEL_EMPTY
@ $6E1B isub=AND FUEL_LEVEL_LOW
  $6E1B If fuel low (top 2 bits = 0), call #R$6E86 to set low fuel warning.
@ $6E22 label=update_fuel_gauge
  $6E22 Calculate gauge position: B = $A8 (row), C = (fuel >> 2) + $40 (column).
  $6E2E Compute screen address from B,C coordinates.
@ $6E31 label=draw_fuel_gauge_loop
  $6E31 Loop counter: 8 rows of gauge.
  $6E33 Set pixel pattern $86 for gauge.
@ $6E35 label=draw_fuel_gauge_row_loop
  $6E35,10 Draw row, move down, decrement counter, loop for 8 rows.
@ $6E40 label=add_fuel
c $6E40 Add fuel during refueling
D $6E40 Adds FUEL_INTAKE_AMOUNT (4 units) per frame while plane is over a fuel depot. At 50fps, this equals ~200 units/second. A full refuel from empty takes ~1.3 seconds.
D $6E40 #LIST { Checks #R$5F69 == 4, but this is always $00 at call time (set to $04 only after render completes) — effectively dead code } { Plays high-pitched refuel sound via ROM BEEPER } { If fuel almost full ($FC), plays tank full sound via #R$6E92 } { Clears low fuel warning when fuel becomes sufficient } LIST#
  $6E40 Check #R$5F69 == 4 (dead code: always $00 at call time).
  $6E46 Check if fuel almost full (AND $FC == $FC). If so, jump to #R$6E92 for tank full sound.
@ $6E49 isub=AND FUEL_LEVEL_ALMOST_FULL
@ $6E4B isub=CP FUEL_LEVEL_ALMOST_FULL
  $6E50 Play refueling sound: BEEPER with DE=$0007, HL=$0333.
  $6E59,12 Add 4 to fuel level. If now sufficient (AND $C0 != 0), call #R$6E8C to clear low fuel warning.
@ $6E5C isub=ADD A,FUEL_INTAKE_AMOUNT
@ $6E61 isub=AND FUEL_LEVEL_LOW
@ $6E68 label=update_fuel_gauge_refuel
  $6E68 Calculate gauge position: B = $A8, C = (fuel >> 2) + $3F.
  $6E74 Compute screen address.
  $6E77 Loop counter: 8 rows.
  $6E79,12 Draw 8 rows of fuel gauge with pattern $C6 (filled). Increment H each row.
@ $6E7B label=draw_fuel_gauge_refuel_loop
@ $6E86 label=register_low_fuel
c $6E86 Set low fuel warning flag
D $6E86 Sets CONTROLS_BIT_LOW_FUEL in #R$6BB0 to trigger the warbling low fuel warning sound.
  $6E86,5 Set CONTROLS_BIT_LOW_FUEL in controls state.
@ $6E89 isub=SET CONTROLS_BIT_LOW_FUEL,(HL)
@ $6E8C label=register_sufficient_fuel
c $6E8C Clear low fuel warning flag
D $6E8C Clears CONTROLS_BIT_LOW_FUEL in #R$6BB0 to stop the low fuel warning sound.
  $6E8C,5 Clear CONTROLS_BIT_LOW_FUEL in controls state.
@ $6E8F isub=RES CONTROLS_BIT_LOW_FUEL,(HL)
@ $6E92 label=signal_fuel_level_excessive
c $6E92 Play tank full sound
D $6E92 Plays a short beep (~1450 Hz, ~6ms) when fuel tank is already full and cannot accept more fuel.
  $6E92,9 Play tank full sound: BEEPER with DE=$0008, HL=$0111.
@ $6E9C label=spawn_explosion_fragment
c $6E9C Create explosion fragment at coordinates
D $6E9C Called when an enemy is destroyed or the player collides. Sets up explosion state and adds an explosion entry to the explosions set at #R$5F2E.
D $6E9C #LIST { Sets CONTROLS_BIT_EXPLODING to trigger explosion sound } { Clears CONTROLS_BIT_FIRE_SOUND to stop the fire sound during explosion } { Resets #R$6C7A (explosion counter) to EXPLOSION_SOUND_FRAMES } { Falls through to #R$6EAB to add explosion to set } LIST#
R $6E9C I:BC Fragment coordinates: B=Y offset, C=X position
R $6E9C I:D Object type/definition byte
  $6E9C Set CONTROLS_BIT_EXPLODING in #R$6BB0.
@ $6E9F isub=SET CONTROLS_BIT_EXPLODING,(HL)
@ $6EA1 isub=RES CONTROLS_BIT_FIRE_SOUND,(HL)
  $6EA1 Clear CONTROLS_BIT_FIRE_SOUND.
@ $6EA3 isub=LD A,EXPLOSION_SOUND_FRAMES
  $6EA3 Reset explosion counter.
  $6EA8 Point HL to explosions set at #R$5F2E, fall through to add_object_to_set.
@ $6EAB label=add_object_to_set
c $6EAB Add object entry to a set
D $6EAB Finds an empty slot or end-of-set marker in the object set and writes a 3-byte entry (C, B, D). Each entry represents an object with X position, Y offset, and type.
D $6EAB #LIST { Searches forward through set, 3 bytes per entry } { Skips non-empty entries until finding SET_MARKER_EMPTY_SLOT or SET_MARKER_END_OF_SET } LIST#
R $6EAB I:B Y offset (usually 0 for new objects)
R $6EAB I:C X position
R $6EAB I:D Object type/definition
R $6EAB I:HL Pointer to start of object set
  $6EAB Load current entry's first byte. If empty slot, jump to write.
@ $6EAC isub=CP SET_MARKER_EMPTY_SLOT
  $6EB1 If end-of-set marker, jump to write (will extend set).
@ $6EB1 isub=CP SET_MARKER_END_OF_SET
  $6EB6 Entry occupied: advance HL by 3 bytes and loop.
@ $6EBC label=write_object_to_set
c $6EBC Write object entry to set
D $6EBC Writes a 3-byte object entry at the current position. If replacing the end-of-set marker, writes a new end marker after the entry.
R $6EBC I:A Previous value at slot (used to check if extending set)
R $6EBC I:B Y offset
R $6EBC I:C X position
R $6EBC I:D Object type
R $6EBC I:HL Pointer to slot in set
  $6EBC Write 3-byte entry: [C, B, D] = [X, Y_offset, type].
@ $6EC1 isub=CP SET_MARKER_END_OF_SET
  $6EC1,4 If replacing end marker, write new $FF marker after entry.
@ $6EC5 isub=LD (HL),SET_MARKER_END_OF_SET
@ $6EC8 label=render_explosions
c $6EC8 Process and render all active explosions
D $6EC8 Iterates through the explosions set at #R$5F2E via pointer #R$5F62. Each explosion has 6 animation frames before being removed. Adjusts Y position based on scroll speed.
D $6EC8 #LIST { Entry format: [X_pos, Y_offset, frame_counter] where frame_counter bits 0-6 = frame (1-6), bit 7 = erase flag } { Frame 1,5: small explosion (#R$6F63) } { Frame 2,4: medium explosion (#R$6F67) } { Frame 3: large explosion (#R$6F6B) } { Frame 6: erase explosion (#R$6F6F) then remove entry } LIST#
  $6EC8 Load 3-byte entry from set: C=X, B=Y offset, D=frame. Advance pointer #R$5F62.
  $6ED4 Skip empty entries, continue to next.
@ $6ED5 isub=CP SET_MARKER_EMPTY_SLOT
@ $6EDA isub=CP SET_MARKER_END_OF_SET
  $6EDA If end-of-set marker, jump to #R$6F73 to reset pointer.
  $6EDF Add scroll speed (#R$5F64) to Y offset, store back.
  $6EE6 Extract frame number (bits 0-6), increment. If frame == 7, entry complete.
  $6EEF Increment frame counter and store back.
  $6EF3 Check if Y position is off-screen (AND $88 == $88). Skip if so.
@ $6EF4 isub=AND VIEWPORT_HEIGHT
@ $6EF6 isub=CP VIEWPORT_HEIGHT
  $6EFB Check if Y position is off-screen (AND $90 == $90). Skip if so.
  $6F03 Get frame number. Load sprite for frame 1.
  $6F08 Load sprite for frame 2.
  $6F0D Load sprite for frame 3.
  $6F12 Load sprite for frame 4 (same as 2).
  $6F17 Load sprite for frame 5 (same as 1).
  $6F1C Load erasure sprite for frame 6.
  $6F24 Set up sprite rendering: store sprite pointer, set collision mode to none, configure rendering parameters.
@ $6F30 isub=LD A,COLLISION_MODE_NONE
  $6F46 Check bit 7 of frame. If set, skip first render call.
  $6F52 Call first sprite rendering pass.
  $6F57 Restore registers from stack.
@ $6F5B label=render_explosions_next
  $6F5B,8 Call second sprite rendering pass, loop to next entry.
@ $6F63 label=ld_sprite_explosion_f1
c $6F63 Load frame 1/5 explosion sprite
R $6F63 O:DE Pointer to small explosion sprite at #R$8471.
@ $6F67 label=ld_sprite_explosion_f2
c $6F67 Load frame 2/4 explosion sprite
R $6F67 O:DE Pointer to medium explosion sprite at #R$8481.
@ $6F6B label=ld_sprite_explosion_f3
c $6F6B Load frame 3 explosion sprite
R $6F6B O:DE Pointer to large explosion sprite at #R$8491.
@ $6F6F label=ld_sprite_explosion_erasure
c $6F6F Load explosion erasure sprite
R $6F6F O:DE Pointer to erasure sprite at #R$82F5.
@ $6F73 label=reset_explosions_pointer
c $6F73 Reset explosions set pointer
D $6F73 Resets #R$5F62 to point to start of explosions set at #R$5F2E.
  $6F73 Reset pointer and return.
@ $6F7A label=remove_explosion_entry
c $6F7A Remove completed explosion from set
D $6F7A Called when explosion animation reaches frame 7 (complete). Marks the entry as empty so it can be reused, then continues processing remaining explosions.
R $6F7A I:HL Pointer past the current explosion entry's frame counter byte
  $6F7A Move back to frame counter byte and mark entry as empty.
@ $6F7B isub=LD (HL),SET_MARKER_EMPTY_SLOT
  $6F7D Continue processing remaining explosions.
@ $6F80 isub=LD A,COLLISION_MODE_NONE
@ $6F80 label=spawn_objects_from_level_slot
c $6F80 Spawn objects from level data slot
D $6F80 Called when a new attribute row scrolls into view (every 8 terrain fragments). Reads the level data slot for the current scroll position and spawns the appropriate object (rock, fuel depot, or enemy).
D $6F80 #LIST { Level data starts at #R$C800, with SIZE_LEVEL_SLOTS ($100) bytes per level } { Slot format: 2 bytes [D, E] where E = X position (0 = empty), D = type/flags } { D bit 3: rock flag, D bits 0-2: object type (7 = fuel depot) } LIST#
  $6F80 Clear collision mode (#R$5EF5).
  $6F85,9 Calculate level base address: HL = #R$C800 + (#R$5EF0 * SIZE_LEVEL_SLOTS).
@ $6F88 isub=LD DE,SIZE_LEVEL_SLOTS
@ $6F91 label=locate_level
  $6F91 Loop: advance HL by SIZE_LEVEL_SLOTS for each level up to current.
  $6F95,15 Calculate slot offset: BC = (#R$5F70 >> 2) with bit 0 cleared. Read [D, E] from (HL + BC).
  $6FA7 If E == 0 (empty slot), return.
@ $6FAB isub=BIT SLOT_BIT_ROCK,D
  $6FAB If D bit 3 set (rock), jump to #R$6FBB.
  $6FB0 Get object type (D AND $07). If type == OBJECT_FUEL (7), jump to #R$7051.
@ $6FB1 isub=AND SLOT_MASK_OBJECT_TYPE
@ $6FB3 isub=CP OBJECT_FUEL
  $6FB5 Otherwise render enemy.
@ $6FBB label=render_rock
c $6FBB Render rock sprite
D $6FBB Renders a rock decoration at the specified position. Uses 3x2 tile sprites (24x16 pixels) stored sequentially at #R$84A1 with $30 bytes per frame.
D $6FBB #LIST { Sprite address = #R$84A1 + (frame_index * $30) } { Frame index from bits 0-2 of D (0-7 rock variants) } { Sprite stored at #R$8B0E, position at #R$8B0A and #R$8B0C } { Width=3 tiles, height=16 pixels } LIST#
R $6FBB I:D Object type byte (bits 0-2 = rock frame index)
R $6FBB I:E X position
  $6FBB Extract rock frame index: A = D AND $07. Set flags with OR A.
@ $6FBC isub=AND SLOT_MASK_OBJECT_TYPE
  $6FBF Load sprite base address #R$84A1 and frame size $30. Prepare loop: INC A, subtract BC once to offset the first ADD.
@ $6FC2 isub=LD BC,SPRITE_ROCK_FRAME_SIZE
@ $6FC8 label=locate_rock_sprite
  $6FC8 Loop: HL += $30 for each frame index. Result: HL = #R$84A1 + (frame * $30).
  $6FCC Set BC = X position (B=0, C=E from input).
  $6FCF Store rendering state: sprite pointer at #R$8B0E, X position at #R$8B0C and #R$8B0A (duplicated). Load erase sprite #R$82F5.
@ $6FDD isub=LD A,SPRITE_ROCK_WIDTH_TILES
  $6FDD,8 Set dimensions: A=3 (width in tiles), D=$10 (height 16 pixels), E=$14 (attributes). Render rock.
@ $6FDF isub=LD DE,SPRITE_ROCK_HEIGHT_PIXELS<<8|SPRITE_ROCK_ATTRIBUTES
@ $6FE6 label=ld_enemy_sprites_right
c $6FE6 Load pointer to right-facing enemy sprites
D $6FE6 Returns pointer to sprite array for enemies facing right. Used by #R$75BA to select sprite direction based on enemy movement.
R $6FE6 O:HL Pointer to right-facing enemy sprite array at #R$8793.
  $6FE6 Load HL with #R$8793 (right-facing sprites base address).
@ $6FEA label=setup_object_position
c $6FEA Set up object screen position for rendering
D $6FEA Calculates screen coordinates and stores the result in both #R$8B0A and #R$8B0C for sprite rendering.
  $6FEA Calculate position and store result BC in both position registers.
@ $6FF6 label=render_enemy
@ $6FF6 isub=CP OBJECT_BALLOON
c $6FF6 Spawn and render enemy on screen
D $6FF6 Creates a new enemy from level data and renders it. Handles different enemy types (helicopter, ship, tank, fighter, balloon) with appropriate sprites and attributes.
D $6FF6 #LIST { Balloon (type 6) uses separate routine #R$706C } { Fighter/Tank (types 4,5) need XOR blending mode setup } { Adds enemy to active objects set at #R$5F00 } { Sprite size: 3 tiles wide, 8 pixels high ($18 bytes per frame) } LIST#
R $6FF6 I:A Object type (from D AND $07)
R $6FF6 I:D Object definition byte from level data
R $6FF6 I:E X position
  $6FF6 If balloon (type 6), use separate balloon renderer at #R$706C.
@ $6FFB isub=CP OBJECT_FIGHTER
  $6FFB If fighter (type 5), set XOR blending mode.
@ $7000 isub=CP OBJECT_TANK
  $7000 If tank (type 4), set XOR blending mode.
  $7005 Get sprite pointer based on enemy direction.
  $7008,10 Add enemy to active objects set: BC = (0, X_pos), call #R$6EAB with HL = #R$5F00.
  $7013 Set up screen position.
@ $7016 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $7016 Set sprite frame size ($18 = 24 bytes) and default attributes ($0E).
@ $7019 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
  $701B Get object type (D AND $07). Load type-specific attributes: ship=#R$7038 ($0D), fighter=#R$703B ($00), tank=#R$703E ($00/$04).
@ $701C isub=AND SLOT_MASK_OBJECT_TYPE
@ $701E isub=CP OBJECT_SHIP
@ $7023 isub=CP OBJECT_FIGHTER
@ $7028 isub=CP OBJECT_TANK
@ $702D isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $702D,10 Set sprite dimensions: A=3 (width tiles), D=8 (height pixels). Render enemy.
@ $702F isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $7038 isub=LD E,SPRITE_SHIP_ATTRIBUTES
@ $7038 label=ld_attributes_ship
c $7038 Load ship screen attributes
D $7038 Returns SPRITE_SHIP_ATTRIBUTES ($0D) = PAPER RIVER, INK SHIP.
R $7038 O:E Attributes value $0D.
  $7038 Load E with $0D (ship attributes).
@ $703B isub=LD E,SPRITE_FIGHTER_ATTRIBUTES
@ $703B label=ld_attributes_fighter
c $703B Load fighter screen attributes
D $703B Returns SPRITE_FIGHTER_ATTRIBUTES = PAPER BLACK, INK BLACK (invisible/XOR mode).
R $703B O:E Attributes value (SPRITE_FIGHTER_ATTRIBUTES).
  $703B Load E with $00 (fighter attributes).
@ $703E isub=LD E,SPRITE_TANK_ATTRIBUTES
@ $703E label=ld_attributes_tank
c $703E Load tank screen attributes
D $703E Returns tank attributes: $00 normally, $04 if tank is on river bank (bit 5 of D set).
R $703E I:D Object definition byte (bit 5 = tank on bank flag).
R $703E O:E Attributes value $00 or $04.
  $703E Load E=$00. If D bit 5 set (tank on bank), load E=$04 instead.
@ $7040 isub=BIT SLOT_BIT_TANK_ON_BANK,D
@ $7043 isub=LD E,SPRITE_TANK_ON_BANK_ATTRIBUTES
@ $7046 label=blending_mode_xor_nop
@ $7046 isub=LD A,OPCODE_XOR_B
c $7046 Set XOR blending mode for sprite rendering
D $7046 Modifies sprite rendering code via self-modifying instructions. Patches #R$8C3C with XOR B and #R$8C1B with NOP to enable XOR blending mode for fighters/tanks.
  $7046 Patch OPCODE_XOR_B into #R$8C3C and OPCODE_NOP into #R$8C1B for XOR rendering.
@ $7048 nowarn
@ $704B isub=LD A,OPCODE_NOP
@ $704D nowarn
@ $7051 label=render_fuel
c $7051 Render fuel station
D $7051 Renders a fuel station sprite at the specified X position. Fuel stations are static 2-tile wide (16 pixels) objects that the player can fly over to refuel.
D $7051 #LIST { Adds fuel station to #R$5F00 active objects set } { Sprite located at #R$8A86 (single frame, no animation) } { Dimensions: 2 tiles wide (16px) × 25 pixels tall } { Attributes: $0B (PAPER RIVER, INK FUEL) } LIST#
R $7051 I:E X position of fuel station
  $7051 BC = (0, E): set X position in BC for object entry.
  $7054 Add fuel station to active objects set.
  $705A Load fuel sprite address #R$8A86 and call #R$6FEA to set up screen position.
@ $7060 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
  $7060 Set sprite parameters: frame size=0, width=2 tiles, height=25 pixels, attributes=$0B.
@ $7063 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
@ $7065 isub=LD DE,SPRITE_FUEL_STATION_HEIGHT_PIXELS<<8|SPRITE_FUEL_STATION_ATTRIBUTES
  $7068,3 Render fuel station sprite.
@ $706C label=render_balloon
c $706C Render balloon
D $706C Renders a balloon enemy sprite at the specified X position. Balloons are 2-tile wide animated objects that float above the river. Unlike other enemies, balloons disable collision detection during rendering.
D $706C #LIST { Disables collision mode via #R$5EF5 (allows plane to pass through during render) } { Animated sprite with $20 byte frames at #R$8972 } { Dimensions: 2 tiles wide (16px) × 16 pixels tall } { Attributes: $0E (PAPER RIVER, INK BALLOON) } LIST#
R $706C I:E X position of balloon
  $706C BC = (0, E): set X position in BC for object entry.
  $706F Load balloon sprite #R$8972, set COLLISION_MODE_NONE to #R$5EF5.
@ $7072 isub=LD A,COLLISION_MODE_NONE
  $7077 Push sprite addr, add balloon to #R$5F00 objects set, pop and call #R$6FEA.
@ $7082 isub=LD BC,SPRITE_BALLOON_FRAME_SIZE
  $7082,11 Render sprite: frame size=$20, width=2, height=16px, attributes=$0E.
@ $7085 isub=LD A,SPRITE_BALLOON_WIDTH_TILES
@ $7087 isub=LD DE,SPRITE_BALLOON_HEIGHT_PIXELS<<8|SPRITE_BALLOON_ATTRIBUTES
@ $708E label=operate_viewport_slots
@ $708E isub=LD A,COLLISION_MODE_NONE
c $708E Main viewport slot processing loop.
N $708E Iterates through the viewport_slots array (#R$5F00), processing each active object. Each slot is a 3-byte structure: [X position, Y position, object definition byte].
N $708E .
N $708E The routine performs the following steps for each object:
N $708E 1. Skip empty slots (SET_MARKER_EMPTY_SLOT) and reset to the beginning when reaching the end marker (SET_MARKER_END_OF_SET).
N $708E 2. Advance the object's Y position (move it down the screen).
N $708E 3. Remove objects that have moved beyond the viewport boundary (VIEWPORT_HEIGHT).
N $708E 4. Render missiles for advanced helicopters (OBJECT_HELICOPTER_ADV).
N $708E 5. Skip further processing if in GAMEPLAY_MODE_SCROLL_IN.
N $708E 6. Activate objects on their first frame using an interrupt counter and activation mask (sets bit 7 of the OBJECT_DEFINITION byte).
N $708E 7. Dispatch to type-specific handlers based on object type: OBJECT_FIGHTER, OBJECT_BALLOON, OBJECT_FUEL, OBJECT_TANK, or ships/helicopters (other types).
  $708E Reset state_collision_mode to COLLISION_MODE_NONE.
  $7093 Load slot [X, Y, definition] into C, B, D; advance current_slot_ptr to next slot.
@ $70A0 isub=CP SET_MARKER_EMPTY_SLOT
  $709F Skip empty slots; reset to beginning on end-of-set marker.
@ $70A5 isub=CP SET_MARKER_END_OF_SET
  $70AA Advance object Y position and write back to slot.
@ $70B1 isub=AND VIEWPORT_HEIGHT
@ $70B3 isub=CP VIEWPORT_HEIGHT
  $70B0 If object moved beyond viewport boundary, remove it.
@ $70B9 isub=AND SLOT_MASK_OBJECT_TYPE
@ $70BB isub=CP OBJECT_HELICOPTER_ADV
  $70B8 If advanced helicopter, render its missile.
@ $70C9 isub=CP GAMEPLAY_MODE_SCROLL_IN
  $70C6 Skip further processing during GAMEPLAY_MODE_SCROLL_IN.
@ $70CE isub=BIT SLOT_BIT_ACTIVATION,D
  $70CE If already activated (bit 7 set), skip to type dispatch.
@ $70D3 isub=LD A,(state_activation_interval)
  $70D3 Check if interrupt counter matches activation interval; skip to #R$7224 if not time yet.
@ $70E0 isub=SET SLOT_BIT_ACTIVATION,D
  $70E0 Mark object as activated (set bit 7) and increment interrupt counter.
@ $70E8 label=dispatch_object_type
@ $70E9 isub=AND SLOT_MASK_OBJECT_TYPE
  $70E8 Dispatch by object type (bits 0-2).
@ $70EB isub=CP OBJECT_FIGHTER
@ $70F0 isub=CP OBJECT_BALLOON
@ $70F5 isub=CP OBJECT_FUEL
@ $70FA isub=CP OBJECT_TANK
@ $7104 label=operate_ship_or_helicopter
c $7104 Ship or helicopter operation routine
D $7104 Animates and moves ships and helicopters. On even ticks, advances the object by 2 pixels toward the opposite river bank. When the object gets within 16 pixels of the bank edge, it reverses direction.
D $7104 #LIST { Checks tick parity for movement timing } { Determines direction from bit 6 (SLOT_BIT_ORIENTATION) } { Left-facing objects advance left, right-facing advance right } { Collision with terrain triggers direction reversal } LIST#
R $7104 I:B Y position of object
R $7104 I:C X position of object
R $7104 I:D Object definition byte
  $7104,7 Skip if odd tick (ships/helicopters move on even ticks).
@ $7107 isub=AND TICK_MASK_FRAME_PARITY
@ $7109 isub=CP TICK_PARITY_EVEN
@ $710E isub=BIT SLOT_BIT_ORIENTATION,D
  $710E Check orientation: if bit 6 clear (right-facing), jump to #R$75A2.
@ $7113 label=ship_or_helicopter_left_advance
c $7113 Advance left-facing ship or helicopter
D $7113 Moves a left-facing ship/helicopter 2 pixels left, checking for terrain collision.
R $7113 I:B Y position
R $7113 I:C X position
R $7113 I:D Object definition
  $7113 Save BC, calculate terrain check position: C -= 16 pixels.
  $7118 Get terrain byte at (C, B). Load result into A.
  $711C Restore BC. If terrain != 0, reverse direction.
  $7122 Store position to #R$8B0A. Advance X position left by 2 pixels (DEC C twice).
@ $7128 label=operate_ship_or_helicopter_continue
c $7128 Continue ship/helicopter rendering
D $7128 Updates the object's position in the viewport array and renders the sprite.
  $7128 Load current_slot_ptr, navigate back to current slot, update [X, Y, D] values.
  $7131,10 Store position to #R$8B0C, sprite address #R$82C5 to #R$8B0E. Get sprite pointer.
@ $713E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $713E Set frame size=$18, default attributes=$0E.
@ $7141 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
  $7143,5 If object type is OBJECT_SHIP, load ship attributes via #R$7038.
@ $7144 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7146 isub=CP OBJECT_SHIP
@ $714B isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $714B,7 Render sprite: width=3 tiles, height=8 pixels.
@ $714D isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $7155 label=fighter_left_reset
@ $7155 isub=LD C,FIGHTER_POSITION_LEFT_INIT
c $7155 Reset left-moving fighter position
D $7155 Resets X position to FIGHTER_POSITION_LEFT_INIT ($E8) when fighter reaches left edge.
  $7155,2 Set C = $E8 (initial left position).
@ $7158 label=operate_fighter
c $7158 Fighter operation routine
D $7158 Operates fighter jets that fly horizontally across the screen. Fighters move 4 pixels per frame and wrap around when reaching screen edges. Uses XOR blending mode for rendering.
D $7158 #LIST { Moves 4 pixels per frame (faster than ships/helicopters) } { Left-facing: decrements X, wraps at $00 to $E8 } { Right-facing: increments X, wraps at $E8 to $04 } { Sets COLLISION_MODE_FIGHTER for collision detection } LIST#
R $7158 I:B Y position
R $7158 I:C X position
R $7158 I:D Object definition byte
  $7158 Store current position to #R$8B0A for rendering.
@ $715C isub=BIT SLOT_BIT_ORIENTATION,D
  $715C Check orientation: if bit 6 clear (right-facing), jump to #R$7192.
@ $7161 label=fighter_left_advance
  $7161,7 Move left 4 pixels (DEC C × 4). If C == 0, reset via #R$7155.
@ $7166 isub=CP FIGHTER_POSITION_LEFT_LIMIT
@ $716B label=operate_fighter_continue
c $716B Continue fighter operation
D $716B Updates fighter position in viewport array and renders the sprite with XOR blending.
  $716B Load current_slot_ptr, navigate to current slot, update [X, Y, D] values.
  $7174 Store position to #R$8B0C, get sprite pointer.
@ $717B isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $717B Set frame size=$18, call #R$72E6 to set XOR blending mode.
@ $7181 isub=LD A,COLLISION_MODE_FIGHTER
  $7181 Set collision mode to COLLISION_MODE_FIGHTER ($03) at #R$5EF5.
@ $7186 isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_FIGHTER_ATTRIBUTES
  $7186 Render sprite: height=8px, attributes=$00. Restore blending.
  $718F Return to main viewport loop.
@ $7192 label=fighter_right_advance
c $7192 Advance right-facing fighter
D $7192 Moves right-facing fighter 4 pixels right, wrapping at the right edge.
  $7192 Move right 4 pixels (INC C × 4). If C == $E8, reset via #R$719F.
@ $7197 isub=CP FIGHTER_POSITION_RIGHT_LIMIT
  $7199 Continue to #R$716B for rendering.
@ $719F label=fighter_right_reset
@ $719F isub=LD C,FIGHTER_POSITION_RIGHT_INIT
c $719F Reset right-moving fighter position
D $719F Resets X position to FIGHTER_POSITION_RIGHT_INIT ($04) when fighter reaches right edge.
  $719F,2 Set C = $04 (initial right position).
@ $71A2 label=operate_tank_shell_explosion
c $71A2 Animate tank shell explosion
D $71A2 Handles animation of tank shell explosions. Called when object type is 0 (special marker for shell explosions). Advances explosion frame counter and renders the current frame.
D $71A2 #LIST { Only processes on odd ticks } { Extracts frame index from bits 3-5 of object definition } { Finishes explosion when frame reaches 7 or Y position is off-screen } { Uses sprite at #R$8FFC with varying attributes for color cycling } LIST#
R $71A2 I:B Y position
R $71A2 I:C X position
R $71A2 I:D Object definition (bits 3-5 = frame index)
  $71A2 Skip if even tick (explosions animate on odd ticks).
@ $71A5 isub=AND TICK_MASK_FRAME_PARITY
@ $71A7 isub=CP TICK_PARITY_ODD
  $71A9 Store position to #R$8B0A and #R$8B0C for rendering.
  $71B0 Check Y position: if bit 7 set (off-screen), finish explosion.
  $71B9 Extract frame index from D bits 3-5, increment. If frame == 7, finish.
  $71C8 Shift frame back to bits 3-5 position, store in E.
  $71D1 Merge new frame into D, update object definition in viewport array.
  $71DB,11 Load sprite base #R$8FFC, calculate frame offset: HL -= (frame * $20).
@ $71EC label=tank_shell_frame_calc_loop
  $71EC Add frame size, loop until frame index exhausted.
@ $71F0 label=tank_shell_render_entry
  $71F0 Store erase sprite #R$82C5 to #R$8B0E, get frame-based attributes.
  $71F7 Calculate attributes with color cycling, set sprite params: width=2, height=16.
@ $71FE isub=ADD A,SPRITE_SHELL_EXPLOSION_ATTRIBUTES
@ $7201 isub=LD BC,SPRITE_SHELL_EXPLOSION_FRAME_SIZE_BYTES
@ $7204 isub=LD D,SPRITE_SHELL_EXPLOSION_HEIGHT_PIXELS
@ $7206 isub=LD A,SPRITE_SHELL_EXPLOSION_WIDTH_TILES
  $7208 Render and return to main loop.
@ $720E label=finish_tank_shell_explosion
c $720E Finish tank shell explosion animation
D $720E Clears the explosion object from the viewport and resets the tank shell state.
  $720E Navigate to object slot, clear X position to remove from viewport.
  $7216,11 Clear TANK_SHELL_BIT_EXPLODING in #R$7383, continue to render final frame.
@ $721C isub=RES TANK_SHELL_BIT_EXPLODING,A
@ $7224 label=handle_inactive_object
c $7224 Handle non-activated object
D $7224 Processes objects that haven't been activated yet. Routes balloons to #R$76AC, checks animation timing for helicopter rotor animation.
R $7224 I:B Y position
R $7224 I:C X position
R $7224 I:D Object definition byte
  $7224 If object is OBJECT_BALLOON, jump to #R$76AC.
@ $7225 isub=CP OBJECT_BALLOON
  $722A,7 Animate on odd ticks only.
@ $722D isub=AND TICK_MASK_FRAME_PARITY
@ $722F isub=CP TICK_PARITY_ODD
  $7234 If helicopter (REG or ADV), store position and continue to #R$7128.
@ $7235 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7237 isub=CP OBJECT_HELICOPTER_REG
@ $723C isub=CP OBJECT_HELICOPTER_ADV
  $723E Not a helicopter: return to main loop.
@ $7241 label=store_and_continue_ship
  $7241 Helicopters store position and jump to #R$7128.
@ $7248 label=ld_sprite_helicopter_rotor_right
c $7248 Load right-facing helicopter rotor sprite
D $7248 Returns pointer to right-facing helicopter rotor sprite at #R$8AC8.
R $7248 O:HL Pointer to the sprite
  $7248,3 Load HL with #R$8AC8 (right-facing rotor sprite).
@ $724C label=animate_object
c $724C Animate object (helicopter rotor)
D $724C Routes helicopters to rotor animation. Non-helicopters return to main loop.
R $724C I:D Object definition byte
  $724C,10 If helicopter (REG or ADV), animate rotor via #R$7259. Otherwise return to main loop.
@ $724D isub=AND SLOT_MASK_OBJECT_TYPE
@ $724F isub=CP OBJECT_HELICOPTER_REG
@ $7254 isub=CP OBJECT_HELICOPTER_ADV
@ $7259 label=animate_helicopter
c $7259 Animate helicopter rotor
D $7259 Renders the helicopter rotor sprite based on orientation. Uses left-facing (#R$8AB8) or right-facing (#R$8AC8) rotor sprite.
  $7259 Load current_slot_ptr, extract [D, B, C] from current slot.
  $7262 Load left rotor sprite #R$8AB8. If right-facing (bit 6 clear), load #R$8AC8.
@ $7265 isub=BIT SLOT_BIT_ORIENTATION,D
  $726A Store positions to #R$8B0C and #R$8B0A. Push rotor sprite, get main sprite pointer.
  $7276 Store erase sprite #R$82C5 to #R$8B0E. Pop rotor sprite.
@ $727D isub=LD DE,SPRITE_ROTOR_HEIGHT_PIXELS<<8|SPRITE_ROTOR_ATTRIBUTES
  $727D,11 Render rotor: height=2, attributes=$0E, frame size=4, width=2.
@ $7280 isub=LD BC,SPRITE_ROTOR_FRAME_SIZE
@ $7283 isub=LD A,SPRITE_ROTOR_WIDTH_TILES
@ $728B label=tank_advance_right
c $728B Advance tank right by 4 pixels
D $728B Increments X position by 4 pixels for right-moving tank.
  $728B,4 INC C × 4: move right 4 pixels.
@ $7290 label=set_tank_shell_active
@ $7290 isub=LD A,TANK_SHELL_ACTIVE
c $7290 Signal road tank at center
D $7290 Sets #R$5EF2 to TANK_SHELL_ACTIVE when the road tank reaches the center (X=$80). This suppresses the bank tank shell via #R$735E: if a road tank is at center, the bank tank cancels its shell rather than firing.
  $7290,5 Set state_tank_shell to TANK_SHELL_ACTIVE.
@ $7296 label=operate_tank
c $7296 Tank operation routine
D $7296 Operates tanks on the river. Tanks move 2 pixels per frame and signal their center position ($80) to suppress the bank tank shell. Tanks on the river bank are handled separately via #R$7302.
D $7296 #LIST { Skips processing every other frame (tick check) } { Tanks on bank (bit 5 set) handled via #R$7302 } { River tanks move left/right, set TANK_SHELL_ACTIVE at X=$80 } { Uses XOR blending mode for rendering } LIST#
R $7296 I:B Y position
R $7296 I:C X position
R $7296 I:D Object definition byte
  $7296 Skip if odd tick (tanks move on even ticks).
@ $7299 isub=AND TICK_MASK_FRAME_PARITY
@ $729B isub=CP TICK_PARITY_ODD
  $729D,8 Store position, check bank bit, handle terrain check.
@ $72A6 isub=BIT SLOT_BIT_TANK_ON_BANK,D
  $72A6 If SLOT_BIT_TANK_ON_BANK set, handle via #R$7302.
  $72AB Pop regs. If #R$5F6D != 0, jump to #R$74EE.
@ $72B5 label=tank_move_entry
  $72B5,10 Move tank: DEC C twice (left), then INC C × 4 if right-facing.
  $72B5 Move tank: DEC C twice (left), then INC C × 4 if right-facing.
@ $72B7 isub=BIT SLOT_BIT_ORIENTATION,D
  $72BC If X == $80 (center), signal road tank at center via #R$7290.
  $72C2,13 Update position in viewport array, store to #R$8B0C, get sprite pointer.
@ $72D2 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $72D2 Set frame size=$18, enable XOR blending via #R$72E6.
@ $72D8 isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $72D8,11 Render sprite: width=3, height=8, attributes=$00. Restore blending.
@ $72DA isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_TANK_ATTRIBUTES
@ $72E6 label=blending_mode_xor_xor
@ $72E6 isub=LD A,OPCODE_XOR_B
c $72E6 Set XOR/XOR blending mode
D $72E6 Patches sprite renderer to use XOR for both mask and sprite operations. Used for tanks and fighters.
  $72E6 Load OPCODE_XOR_B.
@ $72E8 nowarn
  $72E8 Patch XOR B into #R$8C1B.
@ $72EB nowarn
  $72EB,3 Patch XOR B into #R$8C3C.
@ $72EF label=blending_mode_or_or
@ $72EF isub=LD A,OPCODE_OR_B
c $72EF Set OR/OR blending mode
D $72EF Patches sprite renderer to use OR for both mask and sprite operations. Restores default blending after XOR rendering.
  $72EF Load OPCODE_OR_B.
@ $72F1 nowarn
  $72F1 Patch OR B into #R$8C1B.
@ $72F4 nowarn
  $72F4,3 Patch OR B into #R$8C3C.
@ $72F8 label=invert_tank_offset_delta
c $72F8 Adjust tank position for left orientation
D $72F8 Subtracts $20 from X position to compensate for right-bias offset. Called for left-facing tanks on bank.
R $72F8 I:C X position + $10 offset
R $72F8 O:C Corrected X position
  $72F8,4 C = C - $20.
@ $72FD label=add_tank_offset_delta
c $72FD Adjust tank position for right orientation
D $72FD Adds $28 to X position for right-facing tank shell spawn point.
R $72FD I:C X position
R $72FD O:C X position + $28
  $72FD,4 C = C + $28.
@ $7302 label=operate_tank_on_bank
c $7302 Operate tank on river bank
D $7302 Handles tanks positioned on the river bank. While the probe point (16 pixels ahead in the facing direction) reads solid terrain ($FF), the tank moves normally via #R$72B5. When the probe reads anything other than $FF (river edge reached), the tank stops moving and fires a shell. While the shell is flying or exploding, the tank returns to the main loop without updating its position, keeping it stationary. The tank never reverses direction. Shell trajectory depends on tank orientation and uses pseudo-random speed.
R $7302 I:B Y position (on stack)
R $7302 I:C X position (on stack)
R $7302 I:D Object definition byte
  $7302,7 Load stored position, check terrain 16 pixels ahead in facing direction.
@ $730A isub=BIT SLOT_BIT_ORIENTATION,D
  $730A If left-facing, negate offset via #R$72F8.
  $730F If terrain is solid ($FF), move tank normally.
  $7317 Pop BC/DE, jump to #R$72B5 if terrain clear.
  $731A,5 Check shell state: if already flying, return to main loop.
@ $731D isub=BIT TANK_SHELL_BIT_FLYING,A
@ $7322 isub=BIT TANK_SHELL_BIT_EXPLODING,A
  $7322 If shell exploding, return to main loop.
@ $7327 isub=CP TANK_SHELL_STATE_UNITIALIZED
  $7327 If shell uninitialized, initialize via #R$7343.
@ $732C isub=RES TANK_SHELL_BIT_EXPLODING,A
  $732C Clear exploding bit.
@ $732E label=tank_fire_shell_entry
@ $732E isub=SET TANK_SHELL_BIT_FLYING,A
  $732E Set flying bit.
  $7330,6 Store shell state, calculate spawn X position.
@ $7337 isub=BIT SLOT_BIT_ORIENTATION,D
  $7337,9 If right-facing, add offset via #R$72FD. Store shell coordinates.
@ $7343 isub=BIT SLOT_BIT_ALT_SHELL_INIT,D
@ $7343 label=init_tank_shell_state
c $7343 Initialize tank shell state
D $7343 Sets up shell with orientation from tank and pseudo-random speed from interrupt counter.
R $7343 I:D Object definition byte (bit 6 = orientation)
R $7343 O:A Shell state with orientation and speed bits
  $7343 If SLOT_BIT_ALT_SHELL_INIT is set, use alternate initialization via #R$735E.
  $7348 Copy orientation bit from object definition to shell state.
@ $7349 isub=AND 1<<SLOT_BIT_ORIENTATION
  $734C Derive speed from interrupt counter (pseudo-random 1-4).
  $7351 Store in E, load D into A.
  $7353 Ensure speed >= 1, combine with orientation, continue to fire shell.
@ $7358 label=cancel_and_remove_shell
c $7358 Cancel and remove tank shell
D $7358 Removes the tank shell and returns to main loop.
  $7358 Remove shell, return to main loop.
@ $735E label=check_shell_init_condition
c $735E Check shell initialization condition
D $735E Alternative shell initialization when bit 4 is set. Checks if tank can fire based on shell active state and position.
  $735E If TANK_SHELL_ACTIVE, cancel shell via #R$7358.
@ $7361 isub=CP TANK_SHELL_ACTIVE
  $7366 Push BC, check X position sign bit, invert if positive via #R$7380.
  $7373 Shift right 4 times to get upper nibble.
@ $7379 isub=AND 1<<SLOT_BIT_ORIENTATION
  $737B Combine with orientation, pop BC, continue to fire shell.
@ $7380 label=invert_coordinate_sign
c $7380 Invert coordinate for position calculation
D $7380 XORs A with $7F to flip coordinate sign for shell trajectory.
  $7380,2 A = A XOR $7F.
@ $7383 label=tank_shell_state
g $7383 Tank shell state flags and speed
D $7383 Controls tank shell behavior during flight and explosion.
D $7383 #TABLE(default) { =h Bit(s) | =h Meaning } { 0-2 | Speed (1-4): horizontal pixels per frame } { 5 | TANK_SHELL_BIT_EXPLODING: explosion animation active } { 6 | Orientation (same as SLOT_BIT_ORIENTATION) } { 7 | TANK_SHELL_BIT_FLYING: shell in flight } TABLE#
D $7383 Speed is pseudo-random (1-4), set when shell is fired at #R$732E.
@ $7384 label=tank_shell_trajectory_step
g $7384 Tank shell trajectory step (0-7)
D $7384 Current step in the shell's parabolic arc. Incremented each frame while flying. At step 8, shell explodes via #R$74C6.
D $7384 Higher steps produce lower-pitched whistle sounds (BEEPER with HL = step × 256).
@ $7385 label=tank_shell_coordinates
g $7385 Tank shell position (BC format: C=X, B=Y)
D $7385 Current screen position of the flying shell. Updated each frame based on speed and orientation. Cleared to $0000 when shell is removed.
W $7385
@ $7387 label=invert_shell_coordinate_delta
c $7387 Invert shell coordinate delta
D $7387 Subtracts E×4 from C for left-facing tank shell trajectory adjustment.
R $7387 I:C Current X position
R $7387 I:E Delta value
R $7387 O:C Adjusted X position
  $7387,6 C = C - E×4 (SUB E four times).
@ $738E label=invert_helicopter_missile_offset
c $738E Invert helicopter missile offset
D $738E Adds HELICOPTER_MISSILE_STEP×2 ($10) to C for right-facing missile trajectory.
R $738E I:C Current X position
R $738E O:C X position + $10
  $738E,4 C = C + $10.
@ $738F isub=ADD A,HELICOPTER_MISSILE_STEP*2
@ $7393 label=operate_helicopter_missile
c $7393 Operate helicopter missile
D $7393 Advances the helicopter missile position and renders it. Missiles move down and sideways based on helicopter orientation. Removed when reaching viewport boundary.
D $7393 #LIST { Loads position from #R$5F73 } { Advances Y position } { Moves X position by HELICOPTER_MISSILE_STEP ($08) } { Removed at VIEWPORT_HEIGHT boundary } { Sets COLLISION_MODE_HELICOPTER_MISSILE for collision } LIST#
  $7393,7 Load missile coordinates from #R$5F73. Return if B==0 (no missile).
  $739B,7 Advance Y position, store to #R$8B0A, move X left by $08.
@ $73A3 isub=SUB HELICOPTER_MISSILE_STEP
  $73A6 Check viewport boundary. If off-screen, remove missile via #R$73D0.
@ $73A7 isub=AND VIEWPORT_HEIGHT
@ $73A9 isub=CP VIEWPORT_HEIGHT
  $73AE If right-facing (from #R$5F75), adjust X offset via #R$738E.
@ $73B1 isub=BIT SLOT_BIT_ORIENTATION,A
  $73B6 Store position to #R$8B0C and #R$5F73.
@ $73BE isub=LD A,COLLISION_MODE_HELICOPTER_MISSILE
  $73BE,17 Render missile: collision mode=$04, width=1, attributes=$00, height=1.
@ $73C3 isub=LD A,SPRITE_HELICOPTER_MISSILE_WIDTH_TILES
@ $73C5 isub=LD E,SPRITE_HELICOPTER_MISSILE_ATTRIBUTES
@ $73D0 label=remove_helicopter_missile
c $73D0 Remove helicopter missile
D $73D0 Clears helicopter missile coordinates at #R$5F73 to remove it from the game.
  $73D0,7 Set #R$5F73 to $0000.
@ $73D8 label=add_missile_x_offset
c $73D8 Add X offset for right-facing missile spawn
D $73D8 Adds $08 to X position for spawning missile from right-facing helicopter.
  $73D8,4 C = C + $08.
@ $73DD label=render_helicopter_missile
c $73DD Render helicopter missile (spawn new)
D $73DD Spawns a new helicopter missile from an advanced helicopter. Called when processing OBJECT_HELICOPTER_ADV in the viewport loop. Plays a sound and initializes missile trajectory.
D $73DD #LIST { Returns immediately during GAMEPLAY_MODE_SCROLL_IN } { Returns if missile already active (B != 0) } { Plays missile launch sound via ROM BEEPER } { Extracts helicopter position and orientation } { Stores initial missile coordinates to #R$5F73 } LIST#
  $73DD Return if in GAMEPLAY_MODE_SCROLL_IN.
@ $73E0 isub=CP GAMEPLAY_MODE_SCROLL_IN
  $73E3,7 Load missile coords from #R$5F73. Return if missile active (B != 0).
  $73EB Play missile launch sound: BEEPER with DE=$0001, HL=$2800.
  $73F4 Load current_slot_ptr, extract [D, B, C] from helicopter's slot.
  $73FD Align X to 8-pixel boundary (AND $F8), extract orientation bit.
@ $7402 isub=AND 1<<SLOT_BIT_ORIENTATION
  $7404 Store orientation to #R$5F75. If right-facing, add offset via #R$73D8.
@ $7407 isub=BIT SLOT_BIT_ORIENTATION,A
  $740C,8 Add 4 to Y position (INC B × 4), store to #R$5F73.
@ $7415 label=handle_collision_mode_helicopter_missile
c $7415 Handle helicopter missile collision
D $7415 Checks if helicopter missile hit the player. Called from collision handler when COLLISION_MODE_HELICOPTER_MISSILE is active.
D $7415 #LIST { Checks missile position against player position } { If collision detected, jumps to #R$650A (player hit) } { Clears missile and pops return addresses to abort collision chain } LIST#
  $7415 Load missile coords. If Y bit 7 clear, clear missile and return.
  $741B Clear Y bit 7, check if Y-8 is negative (missile above screen).
  $7423 Compare missile X with player X (from #R$5F72). If match, player hit.
  $742F Check adjacent X position. If match, player hit.
@ $7435 label=handle_collision_mode_missile_miss
  $7435,11 Clear missile coords, pop 4 return addresses, return.
@ $7441 label=operate_tank_shell
c $7441 Operate tank shell
D $7441 Advances the tank shell along its trajectory and renders it. Shell moves in a parabolic arc based on speed and step count.
D $7441 #LIST { Returns if shell not flying (bit 7 of #R$7383) } { Increments trajectory step, explodes at step 8 } { Plays descending pitch sound based on step } { Moves shell based on speed and orientation } { Renders shell sprite or triggers explosion } LIST#
  $7441,5 Return if TANK_SHELL_BIT_FLYING not set.
@ $7444 isub=BIT TANK_SHELL_BIT_FLYING,A
  $7447,7 Load shell coords, increment trajectory step, store.
@ $7452 isub=CP TANK_SHELL_TRAJECTORY_MAX_STEP
  $7452 If step == 8 (max), explode via #R$74C6.
  $7457 Play shell whistle: BEEPER with DE=$0002, HL=(step, 0).
  $7460,7 Reload shell coords, advance Y position, store to #R$8B0A.
  $746B,10 Get shell speed from state, add speed×2 to X position.
@ $746F isub=AND TANK_SHELL_MASK_SPEED
@ $7476 isub=BIT SLOT_BIT_ORIENTATION,D
  $7476 If left-facing, invert X delta via #R$7387.
  $747B Increment Y, store position to #R$8B0C and #R$7385.
@ $7484 isub=LD A,COLLISION_MODE_NONE
  $7484 Set collision mode to COLLISION_MODE_NONE.
  $7489 Check viewport boundary. If off-screen, handle via #R$74A0.
@ $748A isub=AND VIEWPORT_HEIGHT
@ $748C isub=CP VIEWPORT_HEIGHT
  $7491,14 Render shell sprite: height=1, width=1, frame=$08.
@ $7494 isub=LD DE,SPRITE_SHELL_HEIGHT_PIXELS<<8|SPRITE_SHELL_ATTRIBUTES
@ $7497 isub=LD A,SPRITE_SHELL_WIDTH_TILES
@ $7499 isub=LD BC,SPRITE_SHELL_FRAME_SIZE_BYTES
@ $74A0 label=erase_tank_shell_offscreen
c $74A0 Erase off-screen tank shell
D $74A0 Erases the tank shell sprite when it goes off-screen and removes it from the game.
  $74A0 Load shell position from #R$8B0A, shell sprite #R$8431.
  $74A7 Calculate sprite frame offset from X position: (X AND 6) << 2.
  $74B2 Add offset to sprite address, store to #R$8B0E. Load erase sprite #R$82F5.
  $74B8 Render erase sprite and remove shell.
  $74C3 Remove shell.
@ $74C6 label=render_tank_shell_explosion
c $74C6 Trigger tank shell explosion
D $74C6 Converts the flying tank shell into an explosion. Clears flying bit, sets exploding bit, and adds explosion to viewport objects.
  $74C6 Set D=$80 (explosion marker), clear shell coordinates.
  $74CB Store $0000 to #R$7385.
  $74CE Load shell state, clear FLYING bit, set EXPLODING bit.
@ $74D1 isub=RES TANK_SHELL_BIT_FLYING,A
@ $74D3 isub=SET TANK_SHELL_BIT_EXPLODING,A
  $74D5 Store updated state, add explosion to #R$5F00 objects set.
  $74DE,5 Reset trajectory step to 0.
@ $74E4 label=remove_tank_shell
c $74E4 Remove tank shell from game
D $74E4 Clears all tank shell state variables to remove it from the game.
  $74E4,9 Clear #R$7383 (state) and #R$7385 (coordinates) to $0000.
@ $74EE label=handle_tank_at_boundary
c $74EE Handle tank after bridge destruction
D $74EE Called each frame when a road tank's bridge has been destroyed (#R$5F6D != 0). The tank's X position is frozen (no movement); this routine checks whether that position falls within the river gap ($70-$90). If yes, the tank is destroyed: its slot is cleared, 1 explosion fragment is spawned, and POINTS_TANK are awarded. If the X position is outside the river gap, the slot's direction bits are set and the speed is checked to decide whether to clear the slot or convert it to a bank-tank.
  $74EE Load current_slot_ptr, navigate to X position in current slot.
  $74F5 If X+10 < $70 (112): tank still on left bank, reverse direction.
  $7502 If X > $90 (144): tank still on right bank, reverse direction.
  $750F Tank destroyed: clear X position, set D=$80 (explosion marker).
  $7517,9 Add explosion and award POINTS_TANK.
@ $7520 isub=LD A,POINTS_TANK
@ $7525 label=tank_reverse_direction
  $7525,6 Reload current_slot_ptr, set bits 4 and 5 (direction change flags).
@ $7529 isub=SET SLOT_BIT_ALT_SHELL_INIT,(HL)
@ $752B isub=SET SLOT_BIT_TANK_ON_BANK,(HL)
  $752D Check active player at #R$923D. If player 1, use #R$5F6A.
@ $7532 isub=CP PLAYER_1
  $7534 Load bridge number from #R$5F6B.
@ $753A label=tank_bridge_check
  $753A,9 Check if 7-bridge_number < 0: if bridge > 7, leave slot as bank-tank; else clear slot X byte.
@ $7546 label=get_bridge_number_player_1
c $7546 Get bridge number for player 1
D $7546 Returns bridge number from #R$5F6A instead of #R$5F6B for player 1.
  $7546,3 Load bridge number from #R$5F6A, continue at #R$753A.
@ $754C label=operate_fuel
c $754C Operate fuel station
D $754C Processes fuel station rendering with animated lights. Blinks every 4 frames by toggling attribute bit 2 (TICK_MASK_FUEL_BLINK).
D $754C #LIST { Stores position for rendering } { Checks if fuel station is within viewport } { Blink animation: attributes = base + (tick AND $04), toggles every 4 frames } { Renders 2-tile wide, 25-pixel tall sprite } LIST#
  $754C,8 Store position to #R$8B0A and #R$8B0C. Set height=$19.
  $7556 Check if Y+$19 is off-screen (boundary check).
  $755D If off-screen, return to main loop.
@ $7565 isub=AND VIEWPORT_HEIGHT
@ $7567 isub=CP VIEWPORT_HEIGHT
  $7569,11 Load fuel sprite #R$8A86, get sprite pointer.
@ $7577 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
  $7577 Set frame size=0, calculate animated attributes from tick.
@ $757D isub=AND TICK_MASK_FUEL_BLINK
@ $757F isub=ADD A,SPRITE_FUEL_STATION_ATTRIBUTES
@ $7582 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
  $7582 Render fuel station: width=2.
@ $758A label=handle_fuel_off_viewport
c $758A Clip fuel station height to viewport
D $758A Called when the fuel station extends past the viewport bottom. Calculates the visible portion height by subtracting the overflow from the full height.
D $758A #LIST { Input: B = Y position, D = full height ($19) } { Calculates: overflow = (Y + height) - VIEWPORT_HEIGHT } { Output: D = visible height = height - overflow } LIST#
R $758A I:B Y position of fuel station
R $758A I:D Full sprite height ($19 = 25 pixels)
R $758A O:D Clipped height (visible portion only)
  $758A Calculate overflow: HL = (Y + height) - $90.
@ $758D isub=LD BC,SPRITE_FUEL_STATION_HEIGHT_PIXELS
  $7597,9 Calculate visible height: D = $19 - overflow.
@ $75A2 label=ship_or_helicopter_right_advance
c $75A2 Advance right-facing ship or helicopter
D $75A2 Moves a right-facing ship/helicopter 2 pixels right, checking for terrain collision ahead.
R $75A2 I:B Y position
R $75A2 I:C X position
R $75A2 I:D Object definition
  $75A2 Save BC, calculate terrain check position: C += $20 pixels.
  $75A7 Get terrain byte at (C, B). Load result into A.
  $75AB Restore BC. If terrain != 0, reverse direction.
  $75B1 Store position to #R$8B0A. Advance X position right by 2 pixels (INC C twice).
  $75B7 Continue to #R$7128 for rendering.
@ $75BA label=ld_enemy_sprites
c $75BA Load enemy sprite pointer
D $75BA Calculates sprite pointer for enemy objects based on type and orientation. Uses left-facing sprites by default, switches to right-facing via #R$6FE6.
R $75BA I:D Object definition (bits 0-2 = type, bit 6 = orientation)
R $75BA O:HL Pointer to sprite data
  $75BA Load left-facing sprite base #R$85B3, frame size $60.
@ $75C0 isub=BIT SLOT_BIT_ORIENTATION,D
  $75C0 If right-facing (bit 6 clear), get right sprites via #R$6FE6.
  $75C5 Extract object type (bits 0-2), prepare for loop.
@ $75C6 isub=AND SLOT_MASK_OBJECT_TYPE
  $75C9,7 Loop: HL += $60 for each type. Result: HL = base + (type * $60).
@ $75CB label=ld_enemy_sprites_loop
@ $75D0 label=reverse_enemy_direction
c $75D0 Reverse enemy direction at river bank
D $75D0 Reverses the direction of a ship or helicopter when it approaches a river bank. Inverts the orientation bit and re-renders with new facing. Ignores objects in top half of screen (Y >= $80).
R $75D0 I:BC Object coordinates
  $75D4 Return if Y >= $80 (object in top half, might be player).
  $75D8 Reload position, pop return address, load current_slot_ptr, get object definition.
  $75E2 Get sprite pointer, reload position.
  $75E9 Calculate animation frame offset from X position.
@ $75EC isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $75EC Set frame size, shift and increment offset.
  $75F3 Subtract frame size for pre-decrement.
@ $75F5 label=reverse_enemy_direction_frame_loop
  $75F5 Loop to add frame offset to sprite pointer, store to #R$8B0E.
  $75FC Reload position, store to #R$8B0C.
  $7604 Invert object orientation.
@ $7605 isub=XOR 1<<SLOT_BIT_ORIENTATION
  $7608,8 Update orientation in viewport array, get new sprite pointer.
@ $7613 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7615 isub=CP OBJECT_SHIP
@ $761A isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $761C isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $761E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7627 label=reset_slot_ptr
c $7627 Reset #R$5F60 to the start of #R$5F00.
D $7627 Resets the current slot pointer to the beginning of the viewport slots array.
  $7627,6 Set current_slot_ptr to start of viewport_slots.
@ $762E label=remove_object_from_viewport
c $762E Remove an object from the viewport array.
D $762E Clears the object's slot marker and handles tank shell cleanup if the object was a tank.
R $762E I:HL Pointer to object's Y position in viewport array
R $762E I:D Object definition byte
  $762E Decrement to definition byte and mark slot as empty.
@ $762F isub=LD (HL),SET_MARKER_EMPTY_SLOT
  $7631,5 Extract object type. If not OBJECT_TANK, continue main loop.
@ $7632 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7634 isub=CP OBJECT_TANK
  $7639 Mark tank shell as inactive.
@ $7639 isub=LD A,TANK_SHELL_INACTIVE
  $763E Check if tank was on right bank.
@ $763E isub=BIT SLOT_BIT_TANK_ON_BANK,D
  $7643 If so, call #R$74E4 for right-bank tank shell removal.
@ $7649 label=operate_balloon
c $7649 Operate balloon movement and rendering.
D $7649 Moves a balloon horizontally, checking for terrain collisions. Balloons bounce off riverbanks by reversing direction.
R $7649 I:B Y position
R $7649 I:C X position
R $7649 I:D Object definition (bit 6 = orientation: 0=right, 1=left)
  $7649 If balloon is off-screen (Y bit 7 set), skip to main loop.
  $764E,10 Only operate every 4th frame (frame counter AND 3 == 1). Check orientation.
@ $7658 isub=BIT SLOT_BIT_ORIENTATION,D
  $765D Left-facing: Check terrain 16 pixels left of sprite origin (top row). Reverse on collision.
  $766C Check terrain 16 pixels left, 8 pixels down (bottom row). Reverse on collision.
  $767F Save position, move left by 2 pixels.
@ $7685 label=operate_balloon_shared
N $7685 Shared entry point for balloon rendering (also used by right-facing balloon).
  $7685 Read object definition from viewport, write updated position back.
  $768E Store render position and load balloon sprite pointer.
  $7695,8 Calculate frame offset from frame counter (unused - overwritten below).
@ $769D isub=LD A,SPRITE_BALLOON_WIDTH_TILES
@ $769F isub=LD BC,SPRITE_BALLOON_FRAME_SIZE
@ $76A2 isub=LD E,SPRITE_BALLOON_ATTRIBUTES
@ $76A4 isub=LD D,SPRITE_BALLOON_HEIGHT_PIXELS
  $76A6,6 Render balloon, return to main loop.
@ $76AC label=jp_operate_viewport_slots
c $76AC A useless procedure that unconditionally jumps to #R$708E.
@ $76AF label=operate_balloon_right
c $76AF Right-facing balloon movement.
D $76AF Handles terrain collision checks and movement for a right-facing balloon.
R $76AF I:B Y position
R $76AF I:C X position
R $76AF I:D Object definition
  $76AF Check terrain 32 pixels right of sprite origin (past right edge). Reverse on collision.
  $76BE Check terrain 24 pixels right, 8 pixels down (bottom row). Reverse on collision.
  $76D1 Save position, move right by 2 pixels, jump to render at #R$7685.
@ $76DA label=reverse_balloon_direction
c $76DA Handle balloon terrain collision.
D $76DA Reverses balloon direction when it collides with terrain. Also handles rendering.
R $76DA I:BC Position
R $76DA I:D Object definition
  $76DA Save position. If Y >= 128 (off visible area), return early.
  $76E2 Reload position, get object definition from viewport.
  $76EC Calculate sprite frame offset from X position bits 1-2.
@ $76FC label=reverse_balloon_frame_loop
  $76FC Loop to select correct frame in sprite data.
  $7703 Store sprite pointer and render position.
  $770E Flip orientation bit and update in viewport array.
  $7716,17 Load sprite parameters, render balloon with new orientation, return to main loop.
@ $7727 label=data_unused_7727
u $7727
@ $7800 label=tmp_control_type
b $7800 Control type chosen from the dialog before the validation
@ $7801 label=state_overview_mode
b $7801 Overview mode flag ($00 - No, $01 - Yes)
@ $7802 label=controls_timer
w $7802 Stores the number of remaining iterations before the control choice dialog switches to overview mode
@ $7804 label=clear_and_setup
c $7804 Clear screen and enter setup menu.
D $7804 Saves stack pointer, clears screen with white-on-black attributes, then jumps to setup routine.
  $7804 Save current stack pointer to #R$7810.
@ $7808 isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
  $7808 Clear screen with white-on-black attributes.
  $780D,3 Continue with setup.
@ $7810 label=setup_sp
w $7810 Temporary stack pointer used by the control choice dialog
@ $7812 label=msg_keyboard_config
@ $7812 isub=DEFM EXT_ATTR_INK,COLOR_RED
t $7812 Keyboard configuration;
  $7812 INK RED
@ $7814 isub=DEFM EXT_ATTR_AT,$00,$08
  $7814,3 AT 0,8
@ $7824 isub=DEFM EXT_ATTR_INK,COLOR_MAGENTA
  $7824 INK MAGENTA
@ $7826 isub=DEFM EXT_ATTR_AT,$02,$08
  $7826,3 AT 2,8
@ $7836 isub=DEFM EXT_ATTR_INK,COLOR_YELLOW
  $7836 INK YELLOW
@ $7838 isub=DEFM EXT_ATTR_AT,$04,$08
  $7838,3 AT 4,8
@ $7848 isub=DEFM EXT_ATTR_INK,COLOR_GREEN
  $7848 INK GREEN
@ $784A isub=DEFM EXT_ATTR_AT,$06,$08
  $784A,3 AT 6,8
@ $785A isub=DEFM EXT_ATTR_INK,COLOR_CYAN
  $785A INK CYAN
@ $785C isub=DEFM EXT_ATTR_AT,$08,$08
  $785C,3 AT 8,8
@ $786F isub=DEFM EXT_ATTR_AT,$09,$08
  $786F,3 AT 9,8
@ $7880 isub=DEFM EXT_ATTR_INK,COLOR_WHITE
  $7880 INK WHITE
@ $7882 label=msg_instructions
@ $7882 isub=DEFM EXT_ATTR_AT,$0B,$07
  $7882,3 AT 11,7
@ $7895 isub=DEFM EXT_ATTR_AT,$0D,$06
  $7895,3 AT 13,6
@ $78AB isub=DEFM EXT_ATTR_AT,$0F,$04
  $78AB,3 AT 15,4
@ $78C6 isub=DEFM EXT_ATTR_AT,$10,$03
  $78C6,3 AT 16,3
@ $78E3 isub=DEFM EXT_ATTR_AT,$11,$09
  $78E3,3 AT 17,9
@ $78F1 isub=DEFM EXT_ATTR_AT,$13,$00
  $78F1,3 AT 19,0
@ $7914 isub=DEFM EXT_ATTR_AT,$14,$05
  $7914,3 AT 20,5
@ $792A label=msg_game_mode
@ $792A isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $792A,2 INK WHITE
@ $792C isub=DEFM EXT_ATTR_PAPER,COLOR_BLACK
T $792C,2 PAPER BLACK
@ $792E isub=DEFM EXT_ATTR_AT,$02,$03
T $792E,3 AT 2,3
@ $794B isub=DEFM EXT_ATTR_AT,$03,$0A
T $794B,3 AT 3,10
@ $7959 isub=DEFM EXT_ATTR_AT,$06,$06
T $7959,3 AT 6,6
@ $7974 isub=DEFM EXT_ATTR_AT,$07,$06
T $7974,3 AT 7,6
@ $798E isub=DEFM EXT_ATTR_AT,$09,$09
T $798E,3 AT 9,9
@ $79A2 isub=DEFM EXT_ATTR_AT,$0A,$09
T $79A2,3 AT 10,9
@ $79B6 isub=DEFM EXT_ATTR_AT,$0C,$09
T $79B6,3 AT 12,9
@ $79CA isub=DEFM EXT_ATTR_AT,$0D,$09
T $79CA,3 AT 13,7
@ $79DE isub=DEFM EXT_ATTR_AT,$0F,$09
T $79DE,3 AT 15,9
@ $79F2 isub=DEFM EXT_ATTR_AT,$10,$09
T $79F2,3 AT 16,9
@ $7A06 isub=DEFM EXT_ATTR_AT,$12,$09
T $7A06,3 AT 18,9
@ $7A1A isub=DEFM EXT_ATTR_AT,$13,$09
T $7A1A,3 AT 19,9
@ $7A2E label=msg_control_types
@ $7A2E isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $7A2E,2 INK WHITE
@ $7A30 isub=DEFM EXT_ATTR_PAPER,COLOR_BLACK
T $7A30,2 PAPER BLACK
@ $7A32 isub=DEFM EXT_ATTR_AT,$03,$03
T $7A32,3 AT 3,3
@ $7A4F isub=DEFM EXT_ATTR_AT,$04,$0A
T $7A4F,3 AT 4,10
@ $7A5D isub=DEFM EXT_ATTR_AT,$08,$06
T $7A5D,3 AT 8,6
@ $7A73 isub=DEFM EXT_ATTR_AT,$0A,$06
T $7A73,3 AT 10,6
@ $7A8B isub=DEFM EXT_ATTR_AT,$0C,$06
T $7A8B,3 AT 12,6
@ $7AA3 isub=DEFM EXT_ATTR_AT,$0E,$06
T $7AA3,3 AT 14,6
@ $7AB9 label=setup
c $7AB9 Initial game setup
D $7AB9 Displays the control selection dialog, waits for user input (or times out to overview mode), then shows the game mode dialog. Stores the selected control type in #R$7800, overview flag in #R$7801, and game mode in #R$923A. Uses a stack trick: sets SP to #R$7810 so RET jumps to #R$5D10.
C $7AB9,9 Print control types dialog
C $7AC2,6 Initialize timer
@ $7AC8 isub=LD A,CHAR_ENTER
@ $7ACD label=controls_input
c $7ACD Wait until the user chooses a valid control type or switch to the overview mode on timeout.
  $7ACD Decrease timer
  $7AD4,5 Check if the time is up
  $7ADC Scan keyboard
@ $7AE0 isub=SUB "1"
  $7AE0,2 Subtract "1" from the pressed key ASCII code, mapping "1" to 0, "2" to 1, etc.
  $7AE5 Validate the pressed key by making sure that none of the bits older than the first two are set, effectively allowing values 0 through 3.
  $7AE9,2 Repeat if a valid key was not pressed.
@ $7AED label=game_mode_print
  $7AED Initialize delay counter.
@ $7AEF label=controls_input_delay_loop
  $7AEF Delay loop (purpose unclear).
@ $7AF4 isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
  $7AF4,2 PAPER BLACK; INK WHITE
  $7AF9,9 Print game mode dialog
@ $7B02 isub=LD A,CHAR_ENTER
@ $7B07 label=game_mode_input
c $7B07 Wait until the user chooses a valid game mode.
  $7B0A Scan keyboard
@ $7B0E isub=SUB "1"
  $7B0E,2 Subtract "1" from the pressed key ASCII code, mapping "1" to 0, "2" to 1, etc.
  $7B13 Validate the pressed key by making sure that none of the bits older than the first three are set, effectively allowing values 0 through 7.
  $7B17 Repeat if a valid key was not pressed.
@ $7B1A isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
  $7B1A,2 PAPER BLACK; INK WHITE
  $7B27 Print keyboard configuration
@ $7B30 label=instructions_print
N $7B30 Print instructions and wait for Enter key.
  $7B30 Print instructions text (#R$7882, 168 bytes) via ROM PR_STRING.
@ $7B39 isub=LD A," "
C $7B39,c2 Initialize LAST_K to space character.
@ $7B3E label=instructions_input
N $7B3E Wait for user to press Enter.
  $7B3E Read last key pressed from LAST_K.
  $7B41 Scan keyboard via ROM routine.
@ $7B48 isub=CP CHAR_ENTER
  $7B45 Loop until Enter is pressed.
  $7B4A Exit loop when Enter detected.
  $7B4D,5 Clear overview mode flag (start game).
@ $7B57 label=switch_to_overview_mode
c $7B57 Switch to overview/demo mode on timeout.
D $7B57 Called when the control selection timer expires without user input.
  $7B57 Set overview mode flag to $01 (enabled).
  $7B5C,5 Restore stack pointer and return to caller.
@ $7B61 label=data_unused_7B61
u $7B61
@ $8000 label=status_line_1
@ $8000 isub=DEFM EXT_ATTR_PAPER,COLOR_BLACK
t $8000 Status line 1: fuel gauge and lives display.
T $8000 PAPER BLACK
@ $8002 isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $8002 INK WHITE
@ $8004 isub=DEFM EXT_ATTR_AT,$13,$02
T $8004 AT 19,2
T $8007
B $8011 One half UDG
T $8012
@ $8016 isub=DEFM EXT_ATTR_AT,$14,$08
T $8016 AT 20,8
B $8019 Fuel gauge scale UDG
@ $8022 isub=DEFM EXT_ATTR_AT,$15,$08
T $8022 AT 21,8
@ $8025 isub=DEFM EXT_ATTR_INK,COLOR_MAGENTA
T $8025 INK MAGENTA
B $8027 Fuel gauge reading UDG
@ $802F isub=DEFM EXT_ATTR_INK,COLOR_PLAYER_1
T $802F INK PLAYER_1
@ $8031 label=status_line_2
@ $8031 isub=DEFM EXT_ATTR_AT,$01,$02
t $8031 Status line 2: player scores header.
T $8031 AT 1,2
@ $8034 isub=DEFM EXT_ATTR_INK,COLOR_PLAYER_1
T $8034 INK PLAYER_1
T $8036
@ $8040 isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $8040 INK WHITE
@ $8042 isub=DEFM EXT_ATTR_AT,$01,$12
T $8042 AT 1,18
T $8045
@ $804F label=status_line_3
@ $804F isub=DEFM EXT_ATTR_AT,$13,$12
t $804F Status line 3: bridge number position.
T $804F AT 19,18
@ $8052 label=status_line_3_text
t $8052 Status line 3 text: "BRIDGE" label.
T $8052
@ $805A label=status_line_4
@ $805A isub=DEFM EXT_ATTR_AT,$14,$04
t $805A Status line 4: "FUEL" label.
T $805A AT 20,4
@ $805D isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $805D INK WHITE
@ $805F label=status_line_4_end
u $805F End marker for status_line_4 length calculation
@ $8063 label=data_terrain_profiles
b $8063 River bank shape profiles (15 profiles × 16 bytes = 240 bytes).
D $8063 Defines how the river banks curve. Each profile has 16 bytes, one per scanline within a terrain fragment. Each byte is the X offset for the left bank edge at that line. Used by #R$6AA3 (terrain) and #R$6990 (islands).
D $8063 #TABLE(default) { =h Profile | =h Type | =h Description } { 0 | Normal | Standard river section } { 1 | Normal | Alternate river shape } { 2 | Special | Pre-bridge approach (bit 7 set) } { 3 | Special | Bridge structure (bit 7 set) } { 4 | Special | Post-bridge transition } { 5-10 | Normal | Various river widths } { 11 | Narrow | River narrows significantly } { 12 | Wide | River widens significantly } { 13-14 | Normal | Additional variations } TABLE#
D $8063 When bit 7 of a profile byte is set, #R$6AA3 jumps to special bridge/road rendering at #R$6B7B. Left edge X = profile_byte + row_offset - 16.
  $8063 Profile 0: standard river
  $8073 Profile 1: pre-bridge (special, bit 7 set)
  $8083 Profile 2: bridge structure (special, bit 7 set)
  $8093 Profile 3: post-bridge transition
  $80A3 Profile 4
  $80B3 Profile 5
  $80C3 Profile 6
  $80D3 Profile 7
  $80E3 Profile 8
  $80F3 Profile 9
  $8103 Profile 10
  $8113 Profile 11: river narrows
  $8123 Profile 12: river widens
  $8133 Profile 13
  $8143 Profile 14
@ $8153 label=msg_game_over
t $8153 Game Over message.
@ $8182 label=msg_credits
t $8182 Credits message with copyright and Activision logo.
  $818D,1 Trademark UDG symbol
  $81A8,1 Copyright symbol
  $81AF,7 Activision logo UDG symbols
B $81E4
T $81E8
B $825C
@ $825D label=udg_data
b $825D User-defined graphics data (13 characters).
D $825D #UDGTABLE { #FONT$825D,13 } TABLE#
@ $82C5 label=all_ff
b $82C5 Solid fill pattern (48 bytes of $FF).
@ $82F5 label=sprite_erasure
b $82F5 Sprite erasure pattern (60 bytes of $00).
@ $8331 label=sprite_terrain_pre_post_bridge
b $8331 Terrain pixels for pre/post bridge sections (2×16 bytes).
  $8331,32,16
@ $8351 label=sprite_road_and_bridge_pixels
b $8351 Road and bridge pixel patterns (2×16 bytes).
  $8351,32,16
@ $8371 label=sprite_road_attributes
b $8371 Road and bridge color attributes (2×16 bytes).
  $8371,32,16
@ $8391 label=data_unused_8391
u $8391 Unused alternate road attributes.
D $8391 32 bytes with the same structure as #R$8371 but different values: $3F (white-on-white, invisible) and $C0 (flash, black). Possibly an early version or debug variant of road attributes.
@ $83B1 label=sprite_plane
b $83B1 Player plane sprite (4 frames × 16 bytes).
N $83B1 #POKES33723,146
N $83B1 #POKES33739,36
N $83B1 #UDGTABLE { #UDGARRAY2,14,4,2;$83B1-$83B2-1-16(plane-f1) } TABLE#
  $83B1,16,2 Frame 1
@ $83BB ofix=DEFB $92,$00
N $83C1 #UDGTABLE { #UDGARRAY2,14,4,2;$83C1-$83C2-1-16(plane-f2) } TABLE#
  $83C1,16,2 Frame 2
@ $83CB ofix=DEFB $24,$80
N $83D1 #UDGTABLE { #UDGARRAY2,14,4,2;$83D1-$83D2-1-16(plane-f3) } TABLE#
  $83D1,16,2 Frame 3
N $83E1 #UDGTABLE { #UDGARRAY2,14,4,2;$83E1-$83E2-1-16(plane-f4) } TABLE#
  $83E1,16,2 Frame 4
@ $83F1 label=sprite_plane_banked
b $83F1 Player plane banked sprite (4 frames × 16 bytes).
N $83F1 #UDGTABLE { #UDGARRAY2,14,4,2;$83F1-$83F2-1-16(plane-banked-f1) } TABLE#
  $83F1,16,2 Frame 1
N $8401 #UDGTABLE { #UDGARRAY2,14,4,2;$8401-$8402-1-16(plane-banked-f2) } TABLE#
  $8401,16,2 Frame 2
N $8411 #UDGTABLE { #UDGARRAY2,14,4,2;$8411-$8412-1-16(plane-banked-f3) } TABLE#
  $8411,16,2 Frame 3
N $8421 #UDGTABLE { #UDGARRAY2,14,4,2;$8421-$8422-1-16(plane-banked-f4) } TABLE#
  $8421,16,2 Frame 4
@ $8431 label=sprite_missile
b $8431 Player missile sprite (4 frames × 8 bytes).
N $8431 #UDGTABLE { #UDG$8431,14,4(missile-f1) } TABLE#
  $8431,8,1 Frame 1
N $8439 #UDGTABLE { #UDG$8439,14,4(missile-f2) } TABLE#
  $8439,8,1 Frame 2
N $8441 #UDGTABLE { #UDG$8441,14,4(missile-f3) } TABLE#
  $8441,8,1 Frame 3
N $8449 #UDGTABLE { #UDG$8449,14,4(missile-f4) } TABLE#
  $8449,8,1 Frame 4
@ $8451 label=sprite_missile_trail
b $8451 Missile trail sprite (4 frames × 8 bytes).
N $8451 #UDGTABLE { #UDG$8451,14,4(missile-trail-f1) } TABLE#
  $8451,8,1 Frame 1
N $8459 #UDGTABLE { #UDG$8459,14,4(missile-trail-f2) } TABLE#
  $8459,8,1 Frame 2
N $8461 #UDGTABLE { #UDG$8461,14,4(missile-trail-f3) } TABLE#
  $8461,8,1 Frame 3
N $8469 #UDGTABLE { #UDG$8469,14,4(missile-trail-f4) } TABLE#
  $8469,8,1 Frame 4
@ $8471 label=sprite_explosion_f1
b $8471 Explosion sprite frame 1 (2×1 tiles).
N $8471 #UDGTABLE { #UDGARRAY2,14,4,2;$8471-$8472-1-16(explosion-f1) } TABLE#
  $8471,16,2
@ $8481 label=sprite_explosion_f2
b $8481 Explosion sprite frame 2 (2×1 tiles).
N $8481 #UDGTABLE { #UDGARRAY2,14,4,2;$8481-$8482-1-16(explosion-f2) } TABLE#
  $8481,16,2
@ $8491 label=sprite_explosion_f3
b $8491 Explosion sprite frame 3 (2×1 tiles).
N $8491 #UDGTABLE { #UDGARRAY2,14,4,2;$8491-$8492-1-16(explosion-f3) } TABLE#
  $8491,16,2
@ $84A1 label=sprite_rock
b $84A1 Array [4] of rock sprites (3×2 tiles, 48 bytes).
N $84A1 #UDGTABLE { #UDGARRAY3,34,4,3;$84A1-$84D0-1-24(rock-1) } TABLE#
  $84A1,48,3 Rock 1
N $84D1 #UDGTABLE { #UDGARRAY3,34,4,3;$84D1-$8500-1-24(rock-2) } TABLE#
  $84D1,48,3 Rock 2
N $8501 #UDGTABLE { #UDGARRAY3,34,4,3;$8501-$8530-1-24(rock-3) } TABLE#
  $8501,48,3 Rock 3
N $8531 #UDGTABLE { #UDGARRAY3,34,4,3;$8531-$8560-1-24(rock-4) } TABLE#
  $8531,48,3 Rock 4
@ $8561 label=msg_control_menu
t $8561 Control selection menu text.
B $8563
B $8565
T $8568
B $8579
T $857C
B $858C
T $858F
B $8599
T $859C
B $85A6
T $85A9
@ $85B3 label=sprite_enemies_left
b $85B3 Array [5] arrays of enemy headed left sprites (each element is 3×1 tiles × 4 frames = 96 bytes).
N $85B3 Array [4] of regular helicopter headed left sprites (3×1 tiles, 24 bytes).
N $85B3 #UDGTABLE { #UDGARRAY3,14,4,3;$85B3-$85B6-1-16{0,0,64,32}(helicopter-reg-left-f1) } TABLE#
  $85B3,24,3 Frame 1
N $85CB #UDGTABLE { #UDGARRAY3,14,4,3;$85CB-$85CF-1-16{0,0,64,32}(helicopter-reg-left-f2) } TABLE#
  $85CB,24,3 Frame 2
N $85E3 #UDGTABLE { #UDGARRAY3,14,4,3;$85E3-$85E6-1-16{0,0,64,32}(helicopter-reg-left-f3) } TABLE#
  $85E3,24,3 Frame 3
N $85FB #UDGTABLE { #UDGARRAY3,14,4,3;$85FB-$85FE-1-16{0,0,64,32}(helicopter-reg-left-f4) } TABLE#
  $85FB,24,3 Frame 4
N $8613 Array [4] of ship headed left sprites (each element is 3×1 tiles = 24 bytes).
N $8613 #UDGTABLE { #UDGARRAY3,13,4,3;$8613-$8616-1-16(ship-left-f1) } TABLE#
  $8613,24,3 Frame 1
N $862B #UDGTABLE { #UDGARRAY3,13,4,3;$862B-$862E-1-16(ship-left-f2) } TABLE#
  $862B,24,3 Frame 2
N $8643 #UDGTABLE { #UDGARRAY3,13,4,3;$8643-$8646-1-16(ship-left-f3) } TABLE#
  $8643,24,3 Frame 3
N $865B #UDGTABLE { #UDGARRAY3,13,4,3;$865B-$865E-1-16(ship-left-f4) } TABLE#
  $865B,24,3 Frame 4
N $8673 Array [4] of advanced helicopter headed left sprites (each element is 3×1 tiles = 24 bytes).
N $8673 #UDGTABLE { #UDGARRAY3,14,4,3;$8673-$8676-1-16{0,0,64,32}(helicopter-adv-left-f1) } TABLE#
  $8673,24,3 Frame 1
N $868B #UDGTABLE { #UDGARRAY3,14,4,3;$868B-$868F-1-16{0,0,64,32}(helicopter-adv-left-f2) } TABLE#
  $868B,24,3 Frame 2
N $86A3 #UDGTABLE { #UDGARRAY3,14,4,3;$86A3-$86A6-1-16{0,0,64,32}(helicopter-adv-left-f3) } TABLE#
  $86A3,24,3 Frame 3
N $86BB #UDGTABLE { #UDGARRAY3,14,4,3;$86BB-$86BE-1-16{0,0,64,32}(helicopter-adv-left-f4) } TABLE#
  $86BB,24,3 Frame 4
N $86D3 Array [4] of tank headed left sprites (each element is 3×1 tiles = 24 bytes).
N $86D3 #UDGTABLE { #UDGARRAY3,60,4,3;$86D3-$86D6-1-16{0,0,64,32}(tank-left-f1) } TABLE#
  $86D3,24,3 Frame 1
N $86EB #UDGTABLE { #UDGARRAY3,60,4,3;$86EB-$86EE-1-16{0,0,64,32}(tank-left-f2) } TABLE#
  $86EB,24,3 Frame 2
N $8703 #UDGTABLE { #UDGARRAY3,60,4,3;$8703-$8706-1-16{0,0,64,32}(tank-left-f3) } TABLE#
  $8703,24,3 Frame 3
N $871B #UDGTABLE { #UDGARRAY3,60,4,3;$871B-$871E-1-16{0,0,64,32}(tank-left-f4) } TABLE#
  $871B,24,3 Frame 4
N $8733 #POKES34614,0;34617,112
N $8733 Array [4] of fighter headed left sprites (each element is 3×1 tiles = 24 bytes).
N $8733 #UDGTABLE { #UDGARRAY3,12,4,3;$8733-$8736-1-16{0,0,64,32}(fighter-left-f1) } TABLE#
  $8733,24,3 Frame 1
@ $8736 ofix=DEFB $00,$40,$00
@ $8739 ofix=DEFB $70,$C0,$00
N $874B #UDGTABLE { #UDGARRAY3,12,4,3;$874B-$874E-1-16{0,0,64,32}(fighter-left-f2) } TABLE#
  $874B,24,3 Frame 2
N $8763 #UDGTABLE { #UDGARRAY3,12,4,3;$8763-$8766-1-16{0,0,64,32}(fighter-left-f3) } TABLE#
  $8763,24,3 Frame 3
N $877B #UDGTABLE { #UDGARRAY3,12,4,3;$877B-$877E-1-16{0,0,64,32}(fighter-left-f4) } TABLE#
  $877B,24,3 Frame 4
@ $8793 label=sprite_enemies_right
b $8793 Array [5] arrays of enemy headed right sprites (each element is 3×1 tiles × 4 frames = 96 bytes).
N $8793 Array [4] of regular helicopter headed right sprites (each element is 3×1 tiles = 24 bytes).
N $8793 #UDGTABLE { #UDGARRAY3,14,4,3;$8793-$8796-1-16{0,0,64,32}(helicopter-reg-right-f1) } TABLE#
  $8793,24,3 Frame 1
N $87AB #UDGTABLE { #UDGARRAY3,14,4,3;$87AB-$87AE-1-16{0,0,64,32}(helicopter-reg-right-f2) } TABLE#
  $87AB,24,3 Frame 2
N $87C3 #UDGTABLE { #UDGARRAY3,14,4,3;$87C3-$87C6-1-16{0,0,64,32}(helicopter-reg-right-f3) } TABLE#
  $87C3,24,3 Frame 3
N $87DB #UDGTABLE { #UDGARRAY3,14,4,3;$87DB-$87DE-1-16{0,0,64,32}(helicopter-reg-right-f4) } TABLE#
  $87DB,24,3 Frame 4
N $87F3 Array [4] of ship headed right sprites (each element is 3×1 tiles = 24 bytes).
N $87F3 #UDGTABLE { #UDGARRAY3,13,4,3;$87F3-$87F6-1-16(ship-right-f1) } TABLE#
  $87F3,24,3 Frame 1
N $880B #UDGTABLE { #UDGARRAY3,13,4,3;$880B-$880E-1-16(ship-right-f2) } TABLE#
  $880B,24,3 Frame 2
N $8823 #UDGTABLE { #UDGARRAY3,13,4,3;$8823-$8826-1-16(ship-right-f3) } TABLE#
  $8823,24,3 Frame 3
N $883B #UDGTABLE { #UDGARRAY3,13,4,3;$883B-$883E-1-16(ship-right-f4) } TABLE#
  $883B,24,3 Frame 4
N $8853 Array [4] of advanced helicopter headed right sprites (each element is 3×1 tiles = 24 bytes).
N $8853 #UDGTABLE { #UDGARRAY3,14,4,3;$8853-$8856-1-16{0,0,64,32}(helicopter-adv-right-f1) } TABLE#
  $8853,24,3 Frame 1
N $886B #UDGTABLE { #UDGARRAY3,14,4,3;$886B-$886E-1-16{0,0,64,32}(helicopter-adv-right-f2) } TABLE#
  $886B,24,3 Frame 2
N $8883 #POKES34968,0
N $8883 #UDGTABLE { #UDGARRAY3,14,4,3;$8883-$8886-1-16{0,0,64,32}(helicopter-adv-right-f3) } TABLE#
  $8883,24,3 Frame 3
@ $8898 ofix=DEFB $00,$F8,$00
N $889B #POKES34992,0
N $889B #UDGTABLE { #UDGARRAY3,14,4,3;$889B-$889E-1-16{0,0,64,32}(helicopter-adv-right-f4) } TABLE#
  $889B,24,3 Frame 4
@ $88B0 ofix=DEFB $00,$3E,$00
N $88B3 #POKES35037,0
N $88B3 Array [4] of tank headed right sprites (each element is 3×1 tiles = 24 bytes).
N $88B3 #UDGTABLE { #UDGARRAY3,60,4,3;$88B3-$88B6-1-16{0,0,64,32}(tank-right-f1) } TABLE#
  $88B3,24,3 Frame 1
N $88CB #UDGTABLE { #UDGARRAY3,60,4,3;$88CB-$88CE-1-16{0,0,64,32}(tank-right-f2) } TABLE#
  $88CB,24,3 Frame 2
@ $88DD ofix=DEFB $00,$00,$00
N $88E3 #UDGTABLE { #UDGARRAY3,60,4,3;$88E3-$88E6-1-16{0,0,64,32}(tank-right-f3) } TABLE#
  $88E3,24,3 Frame 3
N $88FB #UDGTABLE { #UDGARRAY3,60,4,3;$88FB-$88FE-1-16{0,0,64,32}(tank-right-f4) } TABLE#
  $88FB,24,3 Frame 4
N $8913 #POKES35095,0;35098,128;35104,192;35130,15
N $8913 Array [4] of fighter headed right sprites (each element is 3×1 tiles = 24 bytes).
N $8913 #UDGTABLE { #UDGARRAY3,12,4,3;$8913-$8916-1-16{0,0,64,32}(fighter-right-f1) } TABLE#
  $8913,24,3 Frame 1
@ $8916 ofix=DEFB $80,$00,$00
@ $8919 ofix=DEFB $C3,$80,$00
@ $891F ofix=DEFB $4F,$C0,$00
N $892B #UDGTABLE { #UDGARRAY3,12,4,3;$892B-$892E-1-16{0,0,64,32}(fighter-right-f2) } TABLE#
  $892B,24,3 Frame 2
@ $893A ofix=DEFB $0F,$00,$00
N $8943 #UDGTABLE { #UDGARRAY3,12,4,3;$8943-$8946-1-16{0,0,64,32}(fighter-right-f3) } TABLE#
  $8943,24,3 Frame 3
N $895B #UDGTABLE { #UDGARRAY3,12,4,3;$895B-$895E-1-16{0,0,64,32}(fighter-right-f4) } TABLE#
  $895B,23,3 Frame 4
@ $8972 label=sprite_balloon
b $8972 Array [4] of balloon sprites (2×2 tiles, 32 bytes).
N $8972 #UDGTABLE { #UDGARRAY2,14,4,2;$8972-$898A-1-16(balloon-f1) } TABLE#
  $8972,32,2 Frame 1
N $8992 #UDGTABLE { #UDGARRAY2,14,4,2;$8992-$89AA-1-16(balloon-f2) } TABLE#
  $8992,32,2 Frame 2
N $89B2 #UDGTABLE { #UDGARRAY2,14,4,2;$89B2-$89CA-1-16(balloon-f3) } TABLE#
  $89B2,32,2 Frame 3
N $89D2 #UDGTABLE { #UDGARRAY2,14,4,2;$89D2-$89EA-1-16(balloon-f4) } TABLE#
  $89D2,32,2 Frame 4
@ $89F2 label=terrain_edge_left
b $89F2 Left terrain edge masks (4 widths: 10, 12, 14, 16 pixels).
  $89F2,2,b2 10 pixels
  $89F4,2,b2 12 pixels
  $89F6,2,b2 14 pixels
  $89F8,2,b2 16 pixels
@ $89FA label=terrain_edge_right
b $89FA Right terrain edge masks (4 widths: 16, 14, 12, 10 pixels).
  $89FA,2,b2 16 pixels
  $89FC,2,b2 14 pixels
  $89FE,2,b2 12 pixels
  $8A00,2,b2 10 pixels
@ $8A02 label=do_fire
c $8A02 Generate firing sound effect.
D $8A02 Produces the "pew" sound when the player fires a missile by toggling the speaker port rapidly.
  $8A02 Loop 8 pulses for sound duration.
@ $8A04 label=do_fire_pulse_loop
@ $8A04 isub=LD A,ULA_SPEAKER_ON
  $8A04 Speaker ON, delay 32 iterations (~150us half-period, ~3.3kHz).
@ $8A0A label=do_fire_delay_loop
@ $8A0D isub=LD A,ULA_SPEAKER_OFF
  $8A0D Speaker OFF, same delay. $FD prefix byte adds 4 T-states before DEC C (IY prefix on non-HL instruction = extra delay cycle).
@ $8A1B label=scroll_attribute_row
c $8A1B Scroll the bottom attribute row left by 1 pixel.
D $8A1B Shifts the pixels in the bottom visible row (#R$5800-1 down) left by 1 bit. Used during terrain scrolling.
  $8A1B Start at rightmost byte of row below attributes, process 8 rows upward.
@ $8A20 label=scroll_attr_outer_loop
  $8A20 For each row, rotate 32 bytes left (right-to-left traversal propagates carry between bytes).
@ $8A23 label=scroll_attr_inner_loop
  $8A28,10 Step up one row ($E0 = 256 - 32 bytes back to previous row start) and continue.
@ $8A33 label=init_udg
c $8A33 Initialize UDG and screen attributes.
D $8A33 Sets border to black, fills lower screen attributes with white-on-black, and copies UDG graphics to the UDG area.
  $8A33 Set border to black via OUT to port $FE.
@ $8A37 isub=LD B,screen_row_table-screen_attributes_row_17
  $8A37 Fill screen attributes starting at screen_attributes_row_17.
@ $8A3C label=init_udg_loop
@ $8A3C isub=LD (HL),COLOR_BLACK<<3|COLOR_WHITE
  $8A41,12 Copy $68 bytes from #R$825D to UDG area pointed by CHARS system variable.
@ $8A4E label=calculate_pixel_address
c $8A4E Calculate screen address from pixel coordinates.
D $8A4E Converts X,Y pixel coordinates to a ZX Spectrum screen memory address.
R $8A4E I:B Vertical coordinate of the object in pixels.
R $8A4E I:C Horizontal coordinate of the object in pixels.
R $8A4E O:B Horizontal coordinate of the object in pixels relative to its tile.
R $8A4E O:HL Screen address corresponding to the coordinates.
C $8A54,6 Load the number of the third of the screen corresponding to the vertical coordinate of the object into #REGa.
@ $8A5A label=calc_pixel_screen_third_loop
C $8A5A,5 Load the starting address of the third of the screen into #REGhl.
C $8A5F,4 Leave only the 6 lowest bits in #REGb which define the coordinate of the object relative to its third of the screen.
C $8A63,2 Unset the 3 lowest bits, so now #REGa contains the coordinate of starting tile relative to its third of the screen.
C $8A66,6 Multiply the value of #REGa by 4 and put into #REGde which makes the offset of the starting tile address from its third of the screen.
C $8A6C,2 Now #REGhl contains the screen address of the tile.
C $8A6E,4 Leave only the 3 lowest bits in #REGb which define the coordinate of the object relative to it tile.
C $8A72,2 Prepare for row loop.
@ $8A74 label=calc_pixel_row_loop
C $8A74,4 Increment H (row within tile) B times.
C $8A78,14 Add column offset and extract bit position.
@ $8A86 label=sprite_fuel
b $8A86 Fuel sprite
N $8A86 #UDGTABLE { #UDGARRAY2,11,4,2;$8A86-$8AB8-1-16{0,0,64,100}(sprite-fuel) } TABLE#
  $8A86,50,2
@ $8AB8 label=sprite_helicopter_rotor_left
b $8AB8 Helicopter rotor sprite (left-facing, 4 frames × 4 bytes).
D $8AB8 The rotor is rendered above the helicopter body at 2 pixels height. Each frame is 2 tiles wide × 2 pixels tall, pre-shifted for smooth animation.
N $8AB8 #UDGTABLE { #UDGARRAY2,6,4,2;$8AB8-$8ABB-1-16{0,0,64,8}(rotor-left-f1) } TABLE#
  $8AB8,4,2 Frame 1
N $8ABC #UDGTABLE { #UDGARRAY2,6,4,2;$8ABC-$8ABF-1-16{0,0,64,8}(rotor-left-f2) } TABLE#
  $8ABC,4,2 Frame 2
N $8AC0 #UDGTABLE { #UDGARRAY2,6,4,2;$8AC0-$8AC3-1-16{0,0,64,8}(rotor-left-f3) } TABLE#
  $8AC0,4,2 Frame 3
N $8AC4 #UDGTABLE { #UDGARRAY2,6,4,2;$8AC4-$8AC7-1-16{0,0,64,8}(rotor-left-f4) } TABLE#
  $8AC4,4,2 Frame 4
@ $8AC8 label=sprite_helicopter_rotor_right
b $8AC8 Helicopter rotor sprite (right-facing, 4 frames × 4 bytes).
D $8AC8 The rotor is rendered above the helicopter body at 2 pixels height. Each frame is 2 tiles wide × 2 pixels tall, pre-shifted for smooth animation.
N $8AC8 #UDGTABLE { #UDGARRAY2,6,4,2;$8AC8-$8ACB-1-16{0,0,64,8}(rotor-right-f1) } TABLE#
  $8AC8,4,2 Frame 1
N $8ACC #UDGTABLE { #UDGARRAY2,6,4,2;$8ACC-$8ACF-1-16{0,0,64,8}(rotor-right-f2) } TABLE#
  $8ACC,4,2 Frame 2
N $8AD0 #UDGTABLE { #UDGARRAY2,6,4,2;$8AD0-$8AD3-1-16{0,0,64,8}(rotor-right-f3) } TABLE#
  $8AD0,4,2 Frame 3
N $8AD4 #UDGTABLE { #UDGARRAY2,6,4,2;$8AD4-$8AD7-1-16{0,0,64,8}(rotor-right-f4) } TABLE#
  $8AD4,4,2 Frame 4
@ $8AD8 label=sprite_unused_explosion
u $8AD8 Unused explosion animation sprite (6 frames × 8 bytes).
D $8AD8 A 6-frame animation showing a diamond shape expanding from a single pixel to a full diamond. Each frame is 8×8 pixels (1 tile). This appears to be an unused or early explosion effect that was not included in the final game.
N $8AD8 #UDGTABLE { #UDG$8AD8,4,4(unused-exp-f1) } TABLE#
  $8AD8,8,1 Frame 1
N $8AE0 #UDGTABLE { #UDG$8AE0,4,4(unused-exp-f2) } TABLE#
  $8AE0,8,1 Frame 2
N $8AE8 #UDGTABLE { #UDG$8AE8,4,4(unused-exp-f3) } TABLE#
  $8AE8,8,1 Frame 3
N $8AF0 #UDGTABLE { #UDG$8AF0,4,4(unused-exp-f4) } TABLE#
  $8AF0,8,1 Frame 4
N $8AF8 #UDGTABLE { #UDG$8AF8,4,4(unused-exp-f5) } TABLE#
  $8AF8,8,1 Frame 5
N $8B00 #UDGTABLE { #UDG$8B00,4,4(unused-exp-f6) } TABLE#
  $8B00,8,1 Frame 6
@ $8B08 label=collision_dispatcher_ptr
g $8B08 Pointer to collision handler routine at #R$6136. Called when sprite rendering detects pixel overlap.
W $8B08
@ $8B0A label=previous_object_coordinates
g $8B0A Previous object coordinates (Y high, X low). Position before movement, used for sprite erasure.
W $8B0A
@ $8B0C label=object_coordinates
g $8B0C Current object coordinates (Y high, X low). Position after movement, used for sprite drawing.
W $8B0C
@ $8B0E label=render_sprite_ptr
g $8B0E Pointer to current sprite frame data. Set before calling render routines.
W $8B0E
@ $8B10 label=render_old_sprite_ptr
g $8B10 Pointer to sprite data for erasure. Points to previous frame or erase pattern.
W $8B10
@ $8B12 label=render_new_screen_addr
g $8B12 Screen memory address for drawing new sprite position. Calculated from object_coordinates.
W $8B12
@ $8B14 label=render_old_screen_addr
g $8B14 Screen memory address for erasing old sprite position. Calculated from previous_object_coordinates.
W $8B14
@ $8B16 label=render_sprite_ptr_out
g $8B16 Output sprite pointer after rendering. Advanced by frame size during render loop.
W $8B16
@ $8B18 label=data_unused_8B18
u $8B18
@ $8B1A label=render_object_width
g $8B1A Sprite width in tiles (1-3). Used by render loop to process correct number of bytes per row.
@ $8B1B label=data_unused_8B1B
s $8B1B
@ $8B1E label=render_sprite
c $8B1E Render a sprite at position from #R$8B0A.
D $8B1E Selects the pre-shifted sprite frame based on X position bits 1-2 (4 frames at 2-pixel alignment intervals) and renders it.
R $8B1E I:A Sprite width in tiles
R $8B1E I:BC Sprite frame size
R $8B1E I:D Sprite height in pixels
R $8B1E I:E Screen attributes
R $8B1E I:HL Pointer to the sprite array
  $8B1E Save attributes/height, store sprite width.
  $8B22,9 Calculate animation frame index from X position bits 1-2.
  $8B2C Prepare for frame calculation loop.
@ $8B30 label=render_sprite_frame_loop
  $8B30 Add frame offset to sprite pointer, loop until done.
  $8B34 Store result to #R$8B0E.
  $8B37,4 Reload width and restore attributes/height, fall through to render_object.
@ $8B3C label=render_object
c $8B3C Render an object with collision detection.
D $8B3C Two-phase rendering pipeline: (1) erase old sprite at #R$8B0A using XOR blending, (2) draw new sprite at #R$8B0C using OR blending, checking for pixel collisions during the draw phase. Sprite frame is selected from E's lower bits for sub-pixel alignment.
R $8B3C I:A Sprite width in tiles (1-3)
R $8B3C I:BC Sprite frame size in bytes
R $8B3C I:D Sprite height in pixels
R $8B3C I:E Screen attributes (lower bits also select animation frame)
R $8B3C I:HL Pointer to sprite data array (base of all frames)
  $8B3C,5 Store width and set screen attributes for the sprite area.
  $8B44 Select sprite frame from E's lower bits (sub-pixel alignment).
@ $8B4D label=render_object_frame_loop
  $8B51,6 Store selected frame pointer for both erase and draw passes.
@ $8B58 label=render_object_entry
  $8B58 Calculate screen addresses for new and old positions.
  $8B6D Jump to render loop.
@ $8B70 label=render_row_loop
c $8B70 Process one row of sprite rendering.
D $8B70 Handles screen memory boundary wrapping. The screen address increments by $0100 per pixel row, but crossing character row or screen-third boundaries requires corrections: subtract $07E0 at character row boundaries (within same third), or subtract $00E0 at third-of-screen boundaries.
  $8B70 Check if new Y position crosses a character row boundary (Y AND $07 = 0).
  $8B7D If at a third-of-screen boundary (Y AND $3F = 0), jump to subtract $00E0 instead.
  $8B85,12 Subtract $07E0 from screen address for character row crossing.
@ $8B94 label=adjust_new_screen_third
c $8B94 Adjust screen address for third-of-screen crossing.
D $8B94 Subtracts $00E0 to correct screen address when crossing a screen-third boundary.
  $8B94,12 HL -= $E0 (adjust for character row boundary).
@ $8BA3 label=adjust_old_position
c $8BA3 Process old position screen address adjustment.
D $8BA3 Similar boundary handling for the old (erasure) position.
  $8BA3,9 Check if old Y position crosses a character row boundary.
  $8BAF If at a third-of-screen boundary, jump to subtract $00E0 instead.
  $8BB7,12 Subtract $07E0 from old screen address for character row crossing.
@ $8BC6 label=adjust_old_screen_third
c $8BC6 Adjust old position for third-of-screen crossing.
  $8BC6,9 HL -= $E0, fall through to sprite renderer.
@ $8BD2 label=adjust_old_screen_third_loop
N $8BD2 Main rendering loop - draws sprite row and advances to next pixel row.
  $8BD2 Render this sprite row.
  $8BD5 Advance sprite pointers by width.
  $8BE9 Increment Y coordinate for all position/address variables.
  $8C05,5 Decrement row counter, loop if more rows.
@ $8C0B label=render_sprite_row
c $8C0B Render one row of sprite data to screen.
D $8C0B XORs erasure pixels, then ORs new pixels, checking for collision.
  $8C0B Get width, load screen addresses for new and old positions.
@ $8C16 label=render_erase_loop
N $8C16 First pass: erase old sprite (XOR with screen).
  $8C16 Read sprite byte, XOR $FF, combine with screen.
@ $8C1B label=sprite_erase_op
c $8C1B Self-modifying blending operation (erasure).
D $8C1B This byte is patched to change blending mode: OR B for XOR mode, NOP for OR mode.
  $8C1B,9 Apply blend, store result, advance pointers, loop.
@ $8C2F label=sprite_draw_loop
N $8C2F Second pass: draw new sprite (OR with screen), check collision.
  $8C2F Read sprite byte, XOR with screen to detect overlap.
  $8C38,3 If collision detected, jump to collision dispatcher.
@ $8C3B label=handle_collision_mode_none
@ $8C3C label=sprite_draw_op
c $8C3C Self-modifying blending operation (drawing).
D $8C3C This byte is patched to change blending mode: OR B for OR mode, XOR B for XOR mode.
  $8C3C,8 Apply blend, store result, advance pointers, loop.
@ $8C45 label=jp_collision_dispatcher
c $8C45 Jump to collision dispatcher
D $8C45 This routine is called during sprite rendering to invoke the collision detection dispatcher. It performs an indirect jump through the collision_dispatcher_ptr to reach the collision_dispatcher routine.
@ $8C4A label=data_unused_8C4A
u $8C4A
@ $8FFC label=sprite_tank_shell_explosion
b $8FFC Tank shell explosion sprite (6 frames × 32 bytes).
N $8FFC #UDGTABLE { #UDGARRAY2,4,4,2;$8FFC-$901A-1-16(tank-shell-exp-f1) } TABLE#
  $8FFC,32,2 Frame 1
N $901C #UDGTABLE { #UDGARRAY2,4,4,2;$901C-$903A-1-16(tank-shell-exp-f2) } TABLE#
  $901C,32,2 Frame 2
N $903C #UDGTABLE { #UDGARRAY2,4,4,2;$903C-$905A-1-16(tank-shell-exp-f3) } TABLE#
  $903C,32,2 Frame 3
N $905C #UDGTABLE { #UDGARRAY2,4,4,2;$905C-$907A-1-16(tank-shell-exp-f4) } TABLE#
  $905C,32,2 Frame 4
N $907C #UDGTABLE { #UDGARRAY2,4,4,2;$907C-$909A-1-16(tank-shell-exp-f5) } TABLE#
  $907C,32,2 Frame 5
N $909C #UDGTABLE { #UDGARRAY2,4,4,2;$909C-$90BA-1-16(tank-shell-exp-f6) } TABLE#
  $909C,32,2 Frame 6
@ $90BC label=state_score_player_1_low
t $90BC Player 1 score ones and tens digits (2 ASCII chars)
D $90BC Score storage as 6 ASCII digit characters. Each player's score spans 6 bytes at offsets 0-5 (leftmost to rightmost). Offset is calculated as (6 - update_type) in #R$9122. Bonus life is awarded when digit offset 2 (update_type=4, the 10,000s place) is incremented.
@ $90BE label=state_score_player_1_mid
t $90BE Player 1 score hundreds and thousands digits
@ $90C0 label=state_score_player_1_high
t $90C0 Player 1 score ten-thousands and hundred-thousands digits
@ $90C2 label=state_score_player_2_low
t $90C2 Player 2 score ones and tens digits (2 ASCII chars)
@ $90C4 label=state_score_player_2_mid
t $90C4 Player 2 score hundreds and thousands digits
@ $90C6 label=state_score_player_2_high
t $90C6 Player 2 score ten-thousands and hundred-thousands digits
@ $90C8 label=high_score_bridge_1
t $90C8 High score storage for bridge 1 (6 ASCII digits).
@ $90CE label=high_scores_extended
t $90CE High score storage for bridges 2-4 (18 ASCII digits, 6 per bridge).
@ $90E0 label=add_points
c $90E0 Add score points for a hit target
D $90E0 Adds points to the current player's score. The value in A is BCD-encoded as score/10: high nibble increments the 10s digit (×100 displayed points), low nibble increments the 1s digit (×10 displayed points). The trailing zero in the score display provides the ×10 factor. E.g. POINTS_TANK = BCD 25 → 2×100 + 5×10 = 250 points.
R $90E0 I:A Points to add in BCD/10 format (e.g. BCD 25 = 250 points).
  $90E0,11 Extract high nibble (hundreds digit), skip if zero.
@ $90EE label=add_points_tens_loop
  $90EE,8 Increment 10s score digit once per high-nibble unit.
@ $90F8 label=add_points_units_entry
  $90F8 Extract low nibble (tens digit), return if zero.
@ $90FE label=add_points_units_loop
  $90FE,10 Increment 1s score digit once per low-nibble unit.
@ $9109 label=add_life
c $9109 Add a life to the current player.
D $9109 Increments the current player's life count, prints the updated lives display, and triggers the bonus life sound. Switches to channel 2 (main screen) for printing, then restores channel 1 (upper screen) for the caller.
  $9109 Increment lives and print updated display on main screen.
@ $9119 isub=SET CONTROLS_BIT_BONUS_LIFE,(HL)
  $9119 Trigger bonus life sound, restore upper screen channel.
@ $9122 label=update_score
c $9122 Update and print score for current player.
D $9122 Increments a score digit and propagates carry if needed. The digit offset is calculated as (6 - type), where offset 0 is the leftmost (100,000s) and offset 5 is the rightmost (1s). When carry propagates to type=4 (offset 2, the 1,000s column), #R$9109 is called to award a bonus life. This means bonus lives are awarded every 10,000 points.
R $9122 I:A Update type: determines digit offset (1=1s, 2=10s, 3=100s, 4=1000s+bonus life, 5=10000s, 6=100000s)
  $9122 Save A, open upper screen channel via ROM CHAN_OPEN, restore A.
  $9129 If update type is 4, award bonus life via #R$9109.
  $912E Calculate digit offset: C = 6 - update_type.
  $9133 Load current player number.
@ $9136 isub=CP PLAYER_2
  $9136 Route to player 2 handler if current player is PLAYER_2.
@ $913B label=inc_player_1_score_digit
c $913B Increase a digit in the player 1's score.
D $913B Increments the ASCII digit at the specified offset in the score buffer. If the digit overflows past '9', it jumps to the carry routine. Otherwise prints the updated digit.
R $913B I:C Offset of the digit to increase (0=leftmost, 5=rightmost).
R $913B O:D Offset of the digit (passed to print routine).
  $913B Point HL at the target digit in player 1's score.
  $9140 Save offset to D, load digit, increment it.
@ $9145 isub=CP "9"+1
C $9145,c2 If digit overflows past '9', jump to #R$9191 for carry.
  $914A Store incremented digit, fall through to print.
@ $914B label=print_player_1_score_digit
@ $914B isub=LD A,EXT_ATTR_INK
c $914B Print a digit from player 1's score.
D $914B Prints a single score digit at the correct screen position using ROM RST $10 character output.
R $914B I:D Digit offset (0-5, used to calculate column).
R $914B I:HL Pointer to the digit character.
  $914B INK PLAYER_1
@ $914E isub=LD A,COLOR_PLAYER_1
@ $9151 isub=LD A,EXT_ATTR_PAPER
  $9151 PAPER BLACK
@ $9154 isub=LD A,COLOR_BLACK
@ $9157 isub=LD A,EXT_ATTR_AT
  $9157 AT 1,...
  $915D Calculate screen column (P1 score starts at column 5).
  $9161 Load digit from score buffer and print it.
  $9163 Switch to channel 2 (main screen) and return.
@ $9169 label=inc_player_2_score_digit
c $9169 Increase a digit in the player 2's score.
D $9169 Increments the ASCII digit at the specified offset in player 2's score buffer. If the digit overflows past '9', it jumps to the carry routine. Otherwise prints the updated digit.
R $9169 I:C Offset of the digit to increase (0=leftmost, 5=rightmost).
R $9169 O:D Offset of the digit (passed to print routine).
  $9169 Point HL at the target digit in player 2's score.
  $916E Save offset to D, load digit, increment it.
@ $9173 isub=CP "9"+1
C $9173,c2 If digit overflows past '9', jump to #R$91A9 for carry.
  $9178 Store incremented digit, fall through to print.
@ $9179 label=print_player_2_score_digit
@ $9179 isub=LD A,EXT_ATTR_INK
c $9179 Print a digit from player 2's score.
D $9179 Prints a single score digit at the correct screen position using ROM RST $10 character output.
R $9179 I:D Digit offset (0-5, used to calculate column).
R $9179 I:HL Pointer to the digit character.
  $9179 INK PLAYER_2
@ $917C isub=LD A,COLOR_PLAYER_2
@ $917F isub=LD A,EXT_ATTR_AT
  $917F AT 1,...
  $9185 Calculate screen column (P2 score starts at column 21).
  $9189 Load digit from score buffer and print it.
  $918B Switch to channel 2 (main screen) and return.
@ $9191 label=carry_player_1_score_digit
@ $9191 isub=LD (HL),"0"
c $9191 Handle carry for player 1's score digit.
D $9191 When a digit overflows past '9', this routine sets it to '0' and propagates the carry to the next higher digit by recursively calling update_score.
R $9191 I:D Offset of the overflowed digit.
R $9191 I:HL Pointer to the overflowed digit.
  $9191 Write '0' to the overflowed digit.
@ $9193 isub=LD A,SCORE_DIGIT_COUNT
@ $9197 isub=CP SCORE_DIGIT_COUNT+1
  $9193 Check if this is the leftmost digit (offset 0): A = SCORE_DIGIT_COUNT - D + 1.
  $9199 Return if leftmost digit (no more digits to carry into).
  $919A Save HL/DE, call #R$9122 to increment next higher digit.
  $919F Open channel 1 (upper screen) for printing.
  $91A4 Restore HL/DE, jump to #R$914B to print the '0' digit.
@ $91A9 label=carry_player_2_score_digit
@ $91A9 isub=LD (HL),"0"
c $91A9 Handle carry for player 2's score digit.
D $91A9 When a digit overflows past '9', this routine sets it to '0' and propagates the carry to the next higher digit by recursively calling update_score.
R $91A9 I:D Offset of the overflowed digit.
R $91A9 I:HL Pointer to the overflowed digit.
  $91A9 Write '0' to the overflowed digit.
@ $91AB isub=LD A,SCORE_DIGIT_COUNT
@ $91AF isub=CP SCORE_DIGIT_COUNT+1
  $91AB Check if this is the leftmost digit (offset 0): A = SCORE_DIGIT_COUNT - D + 1.
  $91B1 Return if leftmost digit (no more digits to carry into).
  $91B2 Save HL/DE, call #R$9122 to increment next higher digit.
  $91B7 Open channel 1 (upper screen) for printing.
  $91BC Restore HL/DE, jump to #R$9179 to print the '0' digit.
@ $91C1 label=print_score_player_2
@ $91C1 isub=LD A,EXT_ATTR_INK
c $91C1 Print player 2's score on the status line.
D $91C1 Displays player 2's full score area including "P2" label and leading zero.
  $91C1 INK PLAYER_2
@ $91C4 isub=LD A,COLOR_PLAYER_2
@ $91C7 isub=LD BC,high_score_bridge_1 - state_score_player_2_low
  $91C7 Print 6-digit score from #R$90C2 via ROM PR_STRING.
@ $91D0 isub=LD A,"0"
C $91D0,c2 Print trailing '0' after score.
@ $91D3 isub=LD A,EXT_ATTR_AT
  $91D3 AT 1,18
C $91DC,c2 Print "P2" label.
C $91DF,c2
  $91E2 Switch to channel 2 (main screen) and return.
@ $91E8 label=print_player_2_score_area
c $91E8 Print player 2 score area or high score on status line.
D $91E8 In 2-player mode, prints player 2's score. In 1-player mode, prints the high score for the current starting bridge.
  $91E8 Open channel 1 (upper screen).
@ $91ED isub=LD A,EXT_ATTR_AT
  $91ED AT 1,21
  $91F6 If 2-player mode, jump to #R$91C1 to print player 2 score.
@ $91F9 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $91FE isub=LD A,EXT_ATTR_INK
  $91FE INK WHITE
@ $9201 isub=LD A,COLOR_WHITE
@ $9222 isub=LD A,"0"
  $9204 Select high score for current bridge: offset = (game_mode AND $FE) * 3 = bridge_index * 6 (6 bytes per entry). Print 6-digit score.
C $9222,c2 Print trailing '0' after score.
@ $9225 isub=LD A,EXT_ATTR_AT
  $9225 AT 1,18
@ $922E isub=LD A,"H"
C $922E,c2 Print "HI" label.
@ $9231 isub=LD A,"I"
C $9231,c2
  $9234 Switch to channel 2 (main screen).
@ $923A label=state_game_mode
b $923A Game mode configuration byte
D $923A #TABLE(default) { =h Bit(s) | =h Meaning | =h Values } { 0 | Player count | 0=1 player, 1=2 players } { 1-2 | Starting bridge | 0=Bridge 1, 1=Bridge 5, 2=Bridge 9, 3=Bridge 15 } { 3-7 | Unused | Always 0 } TABLE#
D $923A Set during control selection dialog. Read by various routines to determine player count and initial bridge offset.
  $923A,1
@ $923B label=state_lives_player_1
g $923B Player 1 lives remaining (0-4). Starts at 4, decremented on death. Game over when reaching 0.
@ $923C label=state_lives_player_2
g $923C Player 2 lives remaining (0-4). Starts at 4, decremented on death. Game over when reaching 0.
@ $923D label=state_player
b $923D Current active player ($01=PLAYER_1, $02=PLAYER_2).
D $923D Determines which player's state to use for: score (#R$90BC vs #R$90C2), lives (#R$923B vs #R$923C), bridge progress (#R$5F6A vs #R$5F6B). Players alternate turns in two-player mode, switching when one dies if the other has lives. Colors: P1=yellow ($06), P2=cyan ($05).
@ $923E label=print_lives
c $923E Print lives for current player.
D $923E Displays the remaining lives as plane UDG symbols at row 20, column 18. Uses the appropriate player color (yellow for player 1, cyan for player 2).
  $923E,5 If current player is player 2, jump to #R$9277.
@ $9241 isub=CP PLAYER_2
@ $9246 isub=LD A,EXT_ATTR_INK
  $9246 INK PLAYER_1
@ $9249 isub=LD A,COLOR_PLAYER_1
  $924C Load player 1 lives count and fall through.
@ $924F label=print_lives_continue
c $924F Continue printing lives after count has been loaded.
D $924F Positions cursor and prints plane symbols for each life. Pads with spaces to clear any previous display.
R $924F I:A Number of lives.
  $924F Store lives count in B for loop counter.
@ $9250 isub=LD A,EXT_ATTR_AT
  $9250 AT 20,18
  $9259 If lives count is 0, skip to padding.
@ $925F label=print_lives_loop
  $925F Print ✈ UDG symbol, loop B times.
@ $9264 label=print_lives_padding
@ $9264 isub=LD A," "
c $9264 Print six spaces to clear old lives display.
D $9264 Erases previously displayed lives symbols that no longer apply.
C $9264,c2 Print space 1.
@ $9267 isub=LD A," "
C $9267,c2 Print space 2.
@ $926A isub=LD A," "
C $926A,c2 Print space 3.
@ $926D isub=LD A," "
C $926D,c2 Print space 4.
@ $9270 isub=LD A," "
C $9270,c2 Print space 5.
@ $9273 isub=LD A," "
C $9273,c2 Print space 6.
@ $9277 label=print_lives_player_2
@ $9277 isub=LD A,EXT_ATTR_INK
c $9277 Player 2 branch of #R$923E.
D $9277 Sets player 2 color and loads player 2 lives count before jumping to common display code.
R $9277 O:A Number of lives.
  $9277 INK PLAYER_2
@ $927A isub=LD A,COLOR_PLAYER_2
  $927D,6 Load player 2 lives count and jump to #R$924F.
@ $9283 label=ptr_state_controls
g $9283 Pointer to state_controls at #R$6BB0. Allows indirect access to control state bitmask.
W $9283
@ $9285 label=attr_saved_bc
g $9285 Saved BC register during attribute setting. Preserved across attribute routine calls.
W $9285
@ $9287 label=attr_saved_de
g $9287 Saved DE register during attribute setting. Preserved across attribute routine calls.
W $9287
@ $9289 label=attr_saved_hl
g $9289 Saved HL register during attribute setting. Preserved across attribute routine calls.
W $9289
@ $928B label=attr_sprite_width
g $928B Sprite width in tiles for attribute routine. Determines how many attribute cells to update.
W $928B
@ $928D label=set_sprite_attributes
c $928D Set screen attributes for sprite area.
D $928D Fills rectangular regions of attribute cells for both old (erase) and new (draw) sprite positions.
D $928D .
D $928D Algorithm: For each position (old then new), calculate the top-left attribute address, then fill a rectangle of B rows × C columns with attribute value A. After filling each row, advance HL by stride DE to reach the next row's starting column.
R $928D I:A Sprite width in tiles (columns to fill).
R $928D I:DE Sprite height in pixels (D), attribute color byte (E).
R $928D I:BC Old position coordinates from #R$8B0A.
R $928D I:HL New position coordinates from #R$8B0C.
  $928D Save registers, store width to #R$928B. If attribute E is 0, skip to #R$935D.
  $9295 If attribute is 0, skip drawing (nothing to draw).
  $9298 Save DE, BC, HL to memory at #R$9287, #R$9285, #R$9289 for later use.
  $92A3 Calculate attribute address for old position: HL = #R$5800 + (Y AND $F8) * 4 + (X >> 3). Y coordinate is in B of stored BC at #R$8B0A, X in C.
  $92BD Calculate row count B = (height >> 3) + 3. This covers sprite height plus padding. Load width into C.
  $92CF Calculate row stride DE = $20 - width. After filling C columns, add DE to reach column 0 of next row. Check if Y is at screen top (row 0).
  $92E0,9 If at screen top (Y AND $F8 = 0), use wrapped fill at #R$936F to handle attribute area start.
@ $92EA label=set_attr_old_outer_loop
  $92EA Outer loop start: push BC to preserve row count (B) and column count (C) for this row.
@ $92EB label=set_attr_old_inner_loop
  $92EB Inner loop: write attribute byte A to address HL, increment HL, decrement column counter C, repeat until row complete.
  $92F0 Boundary check: compare HL against #R$5A20 (row 16 of attributes). If HL >= #R$5A20, sprite has scrolled off visible area, exit early via #R$9367.
  $92FB Row complete: restore BC, add stride DE to HL (moves to same column on next row), decrement row counter B, repeat outer loop.
@ $92FF label=set_attr_new_position_entry
  $92FF Calculate attribute address for new position: HL = #R$5800 + (Y AND $F8) * 4 + (X >> 3) using coordinates from #R$8B0C.
  $9318 Calculate row count B = (height >> 3) + 2 (one less row than old position). Load width into C.
  $9329 Calculate row stride DE = $20 - width. Check if Y is at screen top.
  $933B,12 If at screen top, use wrapped fill at #R$9388.
@ $9348 label=set_attr_new_outer_loop
  $9348 Outer loop start: push BC to preserve row count (B) and column count (C) for this row.
@ $9349 label=set_attr_new_inner_loop
  $9349 Inner loop: write attribute byte A to address HL, increment HL, decrement column counter C, repeat until row complete.
  $934E Boundary check: compare HL against #R$5A20. If HL >= #R$5A20, exit early via #R$936B.
  $9359 Row complete: restore BC, add stride DE to HL, decrement row counter B, repeat outer loop.
@ $935D label=handle_zero_attributes
c $935D Return point when attribute color is zero.
D $935D Restores registers and returns without filling any attributes. Called when sprite has no visible color.
  $935D,9 Restore width from #R$928B, pop BC and HL, load new coordinates from #R$8B0C into DE, return.
@ $9367 label=attr_old_exit_early
c $9367 Early exit from old position attribute loop.
D $9367 Called when old position boundary check detects HL >= #R$5A20 (past visible attribute area).
  $9367,1 Pop BC (discard saved counter) and continue to new position processing at #R$92FF.
@ $936B label=attr_new_exit_early
c $936B Early exit from new position attribute loop.
D $936B Called when new position boundary check detects HL >= #R$5A20.
  $936B,1 Pop BC and jump to #R$935D to restore registers and return.
@ $936F label=set_attr_wrap_old
c $936F Handle old position attributes when sprite is at screen top (row 0).
D $936F When Y AND $F8 = 0, the sprite is in attribute row 0 (pixel rows 0-7). Instead of writing attributes to row 0, this routine wraps around and writes to the bottom of the viewport. This preserves row 0 as black, creating an 8-pixel blank zone where sprites are invisible. Adds $03DF (31 rows × 32 bytes - 1 = 991) to wrap the address, then subtracts $03DF after each row to maintain the wrap.
  $936F Add $03DF to HL to correct wrapped address. Restore and re-save BC.
@ $9375 label=set_attr_wrap_old_loop
  $9375 Inner loop: write attribute A to HL, increment HL, decrement C, repeat for row width.
  $937A After row: restore BC, add stride DE, decrement B, re-save BC. Subtract $03DF from HL to maintain wrap. Jump back to #R$92EA for next row.
@ $9388 label=set_attr_wrap_new
c $9388 Handle new position attributes when sprite is at screen top (row 0).
D $9388 Same $03DF wrap handling as #R$936F but for new position. Wraps attribute writes to bottom of viewport to preserve row 0 as black.
  $9388 Add $03DF to HL to correct wrapped address. Restore and re-save BC.
@ $938E label=set_attr_wrap_new_loop
  $938E Inner loop: write attribute A to HL, increment HL, decrement C, repeat for row width.
  $9393 After row: restore BC, add stride DE, decrement B, re-save BC. Subtract $03DF from HL to maintain wrap. Jump back to #R$9348 for next row.
@ $93A1 label=compare_scores
@ $93A1 isub=LD C,SCORE_DIGIT_COUNT
c $93A1 Compare two 6-digit scores.
D $93A1 Compares score at HL with score at DE, digit by digit.
R $93A1 I:HL Pointer to first score (6 ASCII digits)
R $93A1 I:DE Pointer to second score (6 ASCII digits)
R $93A1 O:A Result: 0 if equal, 1 if HL < DE, $FF if HL > DE
  $93A1 Initialize digit counter to SCORE_DIGIT_COUNT.
@ $93A3 label=compare_scores_loop
  $93A3 Compare digits, return if different, advance pointers, loop.
  $93B7,1 Return 0 (scores equal).
@ $93B8 label=compare_scores_less
c $93B8 Return 1 (first score less than second).
@ $93BB label=compare_scores_greater
c $93BB Return $FF (first score greater than second).
@ $93BE label=update_high_score
c $93BE Update high score table from current player score.
D $93BE Compares player 1's score with the appropriate high score slot (based on starting bridge) and updates if higher. In 2-player mode, first checks if player 2 beat player 1.
  $93BE If 2-player mode, call #R$93F2 to check player 2 score first.
@ $93C1 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
  $93C6 Calculate high score slot address: base (#R$90C8) + ((game_mode AND $FE) * 3).
  $93DD Compare player 1 score with high score slot. Return if not higher.
  $93E9,8 Copy player 1 score (6 bytes) to high score slot.
@ $93EC isub=LD BC,state_score_player_2_low - state_score_player_1_low
@ $93F2 label=check_player2_high_score
c $93F2 Check if player 2 score beats player 1 score.
D $93F2 For 2-player games, compares scores and copies player 2 score to player 1 slot if higher. This ensures the best score from either player is compared against the high score.
  $93F2 Compare player 1 score (#R$90BC) with player 2 score (#R$90C2).
  $93FB Return if player 2 score is not greater.
  $93FE,11 Copy player 2 score to player 1 score slot (6 bytes).
@ $9404 isub=LD BC,state_score_player_2_low - state_score_player_1_low
@ $940A label=clear_screen
c $940A Clear the screen by setting all pixel bytes to $00 and all attributes to the value set in #REGd.
D $940A Clears screen memory.
R $940A I:D Attribute value to fill the attribute area.
  $940A Point HL to start of screen memory (#R$4000).
  $940D Set outer loop counter to $18 (24 blocks for pixel area).
@ $940F label=clear_scr_block
  $940F Set inner loop counter to 256 (full block).
@ $9411 label=clear_scr_byte
  $9411 Write $00 to pixel byte, advance HL, loop until block cleared.
  $9416 Decrement block counter, continue until all pixel blocks done.
  $9419 Set outer loop counter to $03 (3 blocks for attribute area).
@ $941B label=clear_scr_attr
  $941B Write attribute value D to byte, advance HL, loop until block cleared.
  $941F,3 Decrement block counter, continue until all attribute blocks done.
@ $9423 label=ld_lives
c $9423 Load pointer to current player's lives counter.
D $9423 Returns HL pointing to player 1's lives by default. If current player is player 2, adjusts to point to player 2's lives instead.
R $9423 O:HL Pointer to the current player's lives counter.
  $9423 Load address of player 1 lives (#R$923B) into HL.
  $9426 If current player is not PLAYER_2, return with player 1 address.
@ $9429 isub=CP PLAYER_2
  $942B,4 Otherwise load player 2 lives address (#R$923C) and return.
@ $9430 label=data_unused_9430
u $9430
@ $9500 label=level_terrains
b $9500 Level terrain data (48 levels × 256 bytes = 12,288 bytes).
D $9500 Defines the terrain shape for each of 48 game levels. Each level contains 64 terrain fragments × 4 bytes. Loaded by #R$6A4F as terrain scrolls.
D $9500 #TABLE(default) { =h Byte | =h Contents } { 0 | Profile (0-14): #R$8063 index. 1=pre-bridge, 2=bridge, 3=post-bridge } { 1-2 | Row offset (16-bit): shifts bank position } { 3 | Bits 0-1: edge mode. Bits 2-7: island index (÷4 for #R$C600) } TABLE#
D $9500 When profile is 2 (bridge), the bridge destroyed flag is cleared. When profile is 3 (post-bridge), bridge countdown begins. Fragments wrap at 64, advancing to the next level.
  $9500,256,4 Bridge 1
  $9600,256,4 Bridge 2
  $9700,256,4 Bridge 3
  $9800,256,4 Bridge 4
  $9900,256,4 Bridge 5
  $9A00,256,4 Bridge 6
  $9B00,256,4 Bridge 7
  $9C00,256,4 Bridge 8
  $9D00,256,4 Bridge 9
  $9E00,256,4 Bridge 10
  $9F00,256,4 Bridge 11
  $A000,256,4 Bridge 12
  $A100,256,4 Bridge 13
  $A200,256,4 Bridge 14
  $A300,256,4 Bridge 15
  $A400,256,4 Bridge 16
  $A500,256,4 Bridge 17
  $A600,256,4 Bridge 18
  $A700,256,4 Bridge 19
  $A800,256,4 Bridge 20
  $A900,256,4 Bridge 21
  $AA00,256,4 Bridge 22
  $AB00,256,4 Bridge 23
  $AC00,256,4 Bridge 24
  $AD00,256,4 Bridge 25
  $AE00,256,4 Bridge 26
  $AF00,256,4 Bridge 27
  $B000,256,4 Bridge 28
  $B100,256,4 Bridge 29
  $B200,256,4 Bridge 30
  $B300,256,4 Bridge 31
  $B400,256,4 Bridge 32
  $B500,256,4 Bridge 33
  $B600,256,4 Bridge 34
  $B700,256,4 Bridge 35
  $B800,256,4 Bridge 36
  $B900,256,4 Bridge 37
  $BA00,256,4 Bridge 38
  $BB00,256,4 Bridge 39
  $BC00,256,4 Bridge 40
  $BD00,256,4 Bridge 41
  $BE00,256,4 Bridge 42
  $BF00,256,4 Bridge 43
  $C000,256,4 Bridge 44
  $C100,256,4 Bridge 45
  $C200,256,4 Bridge 46
  $C300,256,4 Bridge 47
  $C400,256,4 Bridge 48
@ $C600 label=data_islands
b $C600 Island shape definitions (36 islands × 3 bytes = 108 bytes).
D $C600 Defines the shape of islands that appear in the river. Each island is 3 bytes. Referenced from terrain fragment byte 3 (upper 6 bits = island index × 4). Initialized by #R$696B.
D $C600 #TABLE(default) { =h Byte | =h Contents } { 0 | Profile index (0-14): selects shape from #R$8063 } { 1 | Width offset: added to profile values, shifts edge position } { 2 | Edge mode: 0=use byte directly, 1=mirror, 2=offset from left } TABLE#
D $C600 Edge mode controls right edge calculation in #R$6990: mode 1 creates symmetric islands (right = 120 - left), mode 2 creates fixed-width channels (right = 60 + left).
  $C600,108,3
@ $C800 label=level_objects
b $C800 Level object spawn data (48 levels × 256 bytes = 12,288 bytes total).
D $C800 Defines what objects spawn at each scroll position for all 48 game levels (bridges). Each level has 128 spawn slots (256 bytes, 2 bytes per slot). Read by #R$6F80 during scroll.
D $C800 #TABLE(default) { =h Byte | =h Contents } { 0 (D) | Object definition: bits 0-2 = type, bit 3 = rock flag } { 1 (E) | X position ($00 = empty slot, $01-$FF = spawn X coordinate) } TABLE#
D $C800 When bit 3 (SLOT_BIT_ROCK) is set, bits 0-1 select rock variant (0-3). Otherwise bits 0-2 are OBJECT_* type. Level address = level_objects + (level_number × SIZE_LEVEL_SLOTS).
  $C800,256,2 Level 1
  $C900,256,2 Level 2
  $CA00,256,2 Level 3
  $CB00,256,2 Level 4
  $CC00,256,2 Level 5
  $CD00,256,2 Level 6
  $CE00,256,2 Level 7
  $CF00,256,2 Level 8
  $D000,256,2 Level 9
  $D100,256,2 Level 10
  $D200,256,2 Level 11
  $D300,256,2 Level 12
  $D400,256,2 Level 13
  $D500,256,2 Level 14
  $D600,256,2 Level 15
  $D700,256,2 Level 16
  $D800,256,2 Level 17
  $D900,256,2 Level 18
  $DA00,256,2 Level 19
  $DB00,256,2 Level 20
  $DC00,256,2 Level 21
  $DD00,256,2 Level 22
  $DE00,256,2 Level 23
  $DF00,256,2 Level 24
  $E000,256,2 Level 25
  $E100,256,2 Level 26
  $E200,256,2 Level 27
  $E300,256,2 Level 28
  $E400,256,2 Level 29
  $E500,256,2 Level 30
  $E600,256,2 Level 31
  $E700,256,2 Level 32
  $E800,256,2 Level 33
  $E900,256,2 Level 34
  $EA00,256,2 Level 35
  $EB00,256,2 Level 36
  $EC00,256,2 Level 37
  $ED00,256,2 Level 38
  $EE00,256,2 Level 39
  $EF00,256,2 Level 40
  $F000,256,2 Level 41
  $F100,256,2 Level 42
  $F200,256,2 Level 43
  $F300,256,2 Level 44
  $F400,256,2 Level 45
  $F500,256,2 Level 46
  $F600,256,2 Level 47
  $F700,256,2 Level 48
i $F800
