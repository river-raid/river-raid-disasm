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
> $4000 COLOR_RIVER   EQU COLOR_BLUE
> $4000 COLOR_BANK    EQU COLOR_GREEN
> $4000
> $4000 COLOR_PLAYER_1 EQU COLOR_YELLOW
> $4000 COLOR_PLAYER_2 EQU COLOR_CYAN
> $4000
> $4000 EXT_ATTR_INK   EQU $10
> $4000 EXT_ATTR_PAPER EQU $11
> $4000 EXT_ATTR_AT    EQU $16
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
> $4000 SPEED_STOP   EQU $01
> $4000 SPEED_SLOW   EQU $01
> $4000 SPEED_NORMAL EQU $02
> $4000 SPEED_FAST   EQU $04
> $4000
> $4000 CONTROLS_BIT_FIRE            EQU 0
> $4000 CONTROLS_BIT_SPEED_DECREASED EQU 1
> $4000 CONTROLS_BIT_SPEED_ALTERED   EQU 2
> $4000 CONTROLS_BIT_LOW_FUEL        EQU 3
> $4000 CONTROLS_BIT_BONUS_LIFE      EQU 4
> $4000 CONTROLS_BIT_EXPLODING       EQU 5
> $4000
> $4000 TANK_SHELL_STATE_UNITIALIZED   EQU $00
> $4000 TANK_SHELL_MASK_SPEED          EQU $07
> $4000 TANK_SHELL_BIT_EXPLODING       EQU 5
> $4000 TANK_SHELL_BIT_FLYING          EQU 7
> $4000 TANK_SHELL_TRAJECTORY_MAX_STEP EQU $08
> $4000
> $4000 HELICOPTER_MISSILE_STEP EQU $08
> $4000
> $4000 HELICOPTER_ANIMATION_METRONOME_MASK  EQU $01
> $4000 HELICOPTER_ANIMATION_METRONOME_VALUE EQU $00
> $4000
> $4000 BALLOON_ANIMATION_METRONOME_MASK  EQU $01
> $4000 BALLOON_ANIMATION_METRONOME_VALUE EQU $01
> $4000
> $4000 FIGHTER_POSITION_LEFT_INIT   EQU $E8
> $4000 FIGHTER_POSITION_LEFT_LIMIT  EQU $00
> $4000 FIGHTER_POSITION_RIGHT_INIT  EQU $04
> $4000 FIGHTER_POSITION_RIGHT_LIMIT EQU $E8
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
> $4000 SLOT_BIT_ROCK         EQU $03
> $4000 SLOT_BIT_TANK_ON_BANK EQU $05
> $4000 SLOT_BIT_ORIENTATION  EQU $06
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
> $4000 SPRITE_3BY1_ENEMY_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_YELLOW
> $4000
> $4000 SPRITE_SHIP_ATTRIBUTES         EQU COLOR_RIVER<<3|COLOR_CYAN
> $4000 SPRITE_TANK_ATTRIBUTES         EQU COLOR_INHERIT
> $4000 SPRITE_TANK_ON_BANK_ATTRIBUTES EQU COLOR_BANK
> $4000 SPRITE_FIGHTER_ATTRIBUTES      EQU COLOR_INHERIT
> $4000
> $4000 SPRITE_ROTOR_WIDTH_TILES   EQU $02
> $4000 SPRITE_ROTOR_HEIGHT_PIXELS EQU $02
> $4000 SPRITE_ROTOR_FRAME_SIZE    EQU SPRITE_ROTOR_WIDTH_TILES * SPRITE_ROTOR_HEIGHT_PIXELS
> $4000 SPRITE_ROTOR_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_YELLOW
> $4000
> $4000 SPRITE_BALLOON_WIDTH_TILES   EQU $02
> $4000 SPRITE_BALLOON_HEIGHT_PIXELS EQU $10
> $4000 SPRITE_BALLOON_FRAME_SIZE    EQU SPRITE_BALLOON_WIDTH_TILES * SPRITE_BALLOON_HEIGHT_PIXELS
> $4000 SPRITE_BALLOON_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_YELLOW
> $4000
> $4000 ; There is only one frame, so it's size is irrelevant.
> $4000 SPRITE_FUEL_STATION_WIDTH_TILES   EQU $02
> $4000 SPRITE_FUEL_STATION_HEIGHT_PIXELS EQU $19
> $4000 SPRITE_FUEL_STATION_FRAME_SIZE    EQU $0000
> $4000 SPRITE_FUEL_STATION_ATTRIBUTES    EQU COLOR_RIVER<<3|COLOR_MAGENTA
> $4000
> $4000 SPRITE_ROCK_WIDTH_TILES   EQU $03
> $4000 SPRITE_ROCK_HEIGHT_PIXELS EQU $10
> $4000 SPRITE_ROCK_FRAME_SIZE    EQU SPRITE_ROCK_WIDTH_TILES * SPRITE_ROCK_HEIGHT_PIXELS
> $4000 SPRITE_ROCK_ATTRIBUTES    EQU COLOR_RED<<3|COLOR_BANK
> $4000
> $4000 SPRITE_MISSILE_WIDTH_TILES      EQU $01
> $4000 SPRITE_MISSILE_HEIGHT_PIXELS    EQU $08
> $4000 SPRITE_MISSILE_FRAME_SIZE_BYTES EQU SPRITE_MISSILE_WIDTH_TILES * SPRITE_MISSILE_HEIGHT_PIXELS
> $4000 SPRITE_MISSILE_ATTRIBUTES       EQU COLOR_RIVER<<3|COLOR_GREEN
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
> $4000 SPRITE_SHELL_EXPLOSION_ATTRIBUTES       EQU $0C
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
> $4000 METRONOME_INTERVAL_CONSUME_FUEL EQU $01
> $4000 METRONOME_INTERVAL_ANIMATE_FUEL EQU $04
> $4000 METRONOME_INTERVAL_1            EQU $01
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
> $4000 ; Bit 4 is unused.
> $4000 ;
> $4000 ; Bit 5 defines a tank location: bridge (unset) or river bank (set).
> $4000 ; OBJECT_DEFINITION_BIT_TANK_LOCATION     = 5,
> $4000 ;
> $4000 ; Bit 6 defines object orientation: left (unset) or right (set).
> $4000 ; OBJECT_DEFINITION_BIT_TANK_ORIENTATION  = 6,
> $4000 ;
> $4000 ; Bit 7 is an activation flag used by operate_viewport_objects to track
> $4000 ; whether an object has been activated on its first frame.
@ $4000 org
@ $4000 equ=KEYBOARD=$02BF
@ $4000 equ=BEEPER=$03B5
@ $4000 equ=CHAN_OPEN=$1601
@ $4000 equ=OUT_NUM_1=$1A1B
@ $4000 equ=PR_STRING=$203C
@ $4000 equ=LAST_K=$5C08
@ $4000 equ=UDG=$5C7B
@ $4000 label=screen_pixels
b $4000 Screen pixels.
b $4000 Screen pixels.
D $4000 #UDGTABLE { #SCR(loading) } TABLE#
@ $5800 label=screen_attributes
b $5800 Screen attributes.
b $5B00
@ $5C78 label=int_counter
g $5C78 Interrupt counter
u $5C79
@ $5CD2 label=init
c $5CD2 Game initialization and interrupt setup
N $5CD2 This is the main entry point invoked by the BASIC loader. It performs one-time initialization of the game engine, including setting up the custom interrupt handler (IM 2 mode) and initializing global pointers.
  $5CD2 Initialize #R$9283 to point to #R$6BB0.
  $5CD5,6 Initialize #R$8B08 to point to #R$6136 (collision dispatcher routine).
@ $5CD8 nowarn
  $5CDE Load $C3 (JP instruction opcode) into A.
  $5CE0 Write the JP opcode to $FEFE (interrupt vector table entry).
@ $5CE3 nowarn
  $5CE3 Load the address of #R$6BDB into HL.
  $5CE6 Write the interrupt handler address to $FEFF (completing the JP instruction).
  $5CE9 Point HL to $FC00 (start of interrupt vector table).
  $5CEC Set B to 0 (loop 256 times).
@ $5CEE label=int_vector_table_write_loop
  $5CEE Write $FE to the current vector table entry.
  $5CF0 Advance HL to the next entry.
  $5CF1 Decrement B and loop until all 256 entries are filled.
  $5CF3 Write $FE to the final (257th) entry at $FD00.
  $5CF5 Load $FC into A (high byte of interrupt vector table address).
  $5CF7 Set the I register to $FC (enabling IM 2 mode with vector table at $FC00).
  $5CF9 Save the current stack pointer to #R$5F83.
  $5CFD Set interrupt mode 2 (vectored interrupts).
  $5CFF Enable interrupts.
  $5D00 Load the address of #R$8182 into HL.
  $5D03 Store it in #R$5F7E (initialize the scroller message).
@ $5D06 label=return_to_control_selection
c $5D06 Return to control selection dialog
N $5D06 This entry point is used when returning to the control selection dialog from the game (via #R$6BD2) or from the overview mode. It switches back to the standard ZX Spectrum interrupt mode (IM 1), then calls clear_and_setup to display the control selection dialog.
N $5D06 .
N $5D06 After the user selects controls and game mode, execution continues at #R$5D10.
  $5D06 Load $3F into A (high byte of ROM address for IM 1).
  $5D08 Set the I register to $3F (standard ZX Spectrum IM 1 mode).
  $5D0A Set interrupt mode 1 (standard ZX Spectrum interrupts).
  $5D0C Enable interrupts.
  $5D0D Call #R$7804 to display the control selection dialog.
@ $5D10 label=start_gameplay_or_overview
c $5D10 Start gameplay or overview mode based on user selection
N $5D10 This routine is called after the user selects controls and game mode from the control selection dialog. It switches back to IM 2 (custom interrupt mode), copies the selected control type to the game state, and then either starts gameplay or overview mode based on the state_overview_mode flag.
  $5D10 Load $FC into A (high byte of interrupt vector table address).
  $5D12 Set the I register to $FC (enabling IM 2 mode with vector table at $FC00).
  $5D14 Set interrupt mode 2 (vectored interrupts).
  $5D16 Enable interrupts.
  $5D17 Load the selected control type from #R$7800.
  $5D1A Store it in #R$5F67 (state_input_interface).
  $5D1D Load the overview mode flag from #R$7801.
@ $5D20 isub=CP OVERVIEW_MODE_ON
  $5D20 Check if overview mode is enabled.
  $5D22 If overview mode is on, jump to #R$5D2B.
  $5D25 Call #R$5D44 to initialize game state.
  $5D28 Jump to #R$5DA6 to start gameplay.
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
  $5D44 Initialize #R$5F72. Why isn't it $80?
  $5D49 Call init_starting_bridge to set starting bridge for both players based on game mode.
  $5D4C Load the address of viewport_objects into HL.
  $5D4F Store the viewport_objects address in viewport_ptr.
@ $5D52 isub=LD (HL),SET_MARKER_END_OF_SET
  $5D52 Mark the viewport objects list as empty (SET_MARKER_END_OF_SET).
  $5D54 Load $1F (31 decimal) into A.
@ $5D56 isub=LD (state_activation_mask),A
  $5D56 Store $1F to #R$5F5F (normal activation timing).
  $5D59 Load $00 into A.
  $5D5B Set border to black and disable sound (OUT to ULA port $FE).
@ $5D5D isub=LD (state_tank_shell),A
  $5D5D Clear #R$5EF2 (set to TANK_SHELL_INACTIVE).
  $5D60 Clear #R$5EF0 (set to $00).
@ $5D63 ignoreua=$4C83
  $5D63 Load $4C83 into BC (terrain element value).
  $5D66 Store BC to state_terrain_element_23.
  $5D6A Load $02 into A (GAMEPLAY_MODE_OVERVIEW and SPEED_NORMAL).
  $5D6C Set state_terrain_profile_number to $02.
  $5D6F Set state_gameplay_mode to GAMEPLAY_MODE_OVERVIEW.
  $5D72 Set #R$5F64 to SPEED_NORMAL.
@ $5D75 isub=LD (state_bridge_destroyed),A
  $5D75 Store $02 to #R$5F6D (unclear why $02 is used here).
  $5D78 Load $3030 into HL (ASCII "00").
  $5D7B Initialize state_score_player_1 low bytes to "00".
  $5D7E Initialize state_score_player_1_mid bytes to "00".
  $5D81 Initialize state_score_player_1_high bytes to "00".
  $5D84 Initialize state_score_player_2 low bytes to "00".
  $5D87 Initialize state_score_player_2_mid bytes to "00".
  $5D8A Initialize state_score_player_2_high bytes to "00".
  $5D8D Load $01 into A (PLAYER_1).
  $5D8F Set state_level_fragment_number to $01.
  $5D92 Set state_terrain_position to $01.
  $5D95 Load $0404 into HL (4 lives for both players).
  $5D98 Store $0404 to state_lives_player_1 (sets both player lives to 4).
  $5D9B,3 Set state_player to PLAYER_1.
@ $5D9F label=decrease_lives_player_2
c $5D9F Decrease player 2 lives
@ $5DA6 label=play
c $5DA6 Initialize and start gameplay mode
D $5DA6 This routine initializes the game screen and state for gameplay mode, then enters the main game loop. It is called when starting a new game or restarting after losing a life.
  $5DA6 Initialize island line index to $10 (starting line for island rendering)
  $5DA8 Store island line index
  $5DAB Initialize activation mask to $1F (controls which objects are active)
  $5DAD Store activation mask
  $5DB0 Restore stack pointer from saved location
  $5DB4 Set color attributes: PAPER BLUE, INK GREEN
@ $5DB4 isub=LD D,COLOR_BLUE<<3|COLOR_GREEN
  $5DB6 Clear screen with the specified colors
  $5DB9 Initialize user-defined graphics (UDGs)
  $5DBC Point to status line 1 text
  $5DBF Calculate length of status line 1
@ $5DBF isub=LD BC,status_line_2 - status_line_1
  $5DC2 Print status line 1
  $5DC5 Initialize metronome counter to $01 (used for timing game events)
  $5DC7 Store metronome value
  $5DCA Open channel 1 (upper screen area)
  $5DCD Point to status line 2 text
  $5DD0 Calculate length of status line 2
@ $5DD0 isub=LD BC,status_line_3 - status_line_2
  $5DD3 Print status line 2
  $5DD6 Prepare to open channel 2
  $5DD8 Open channel 2 (lower screen area)
  $5DDB Print current bridge number
  $5DDE Initialize terrain fragment counter to $04
  $5DE0 Store terrain fragment counter
  $5DE3 Clear accumulator for initializing multiple state variables
  $5DE5 Clear bridge section counter (tracks position within current bridge)
  $5DE8 Clear unused state variable
  $5DEB Clear terrain position (will be set to $FF later)
  $5DEE Clear plane sprite bank (selects which plane sprite to display)
  $5DF1 Set fuel level to full ($80)
@ $5DF1 isub=LD A,FUEL_LEVEL_FULL
  $5DF3 Store fuel level
  $5DF6 Set initial Y position to $0010 (vertical position on screen)
  $5DF9 Store Y position
  $5DFD Initialize current bridge data structures
  $5E00 Set X position to $78 (horizontal center of screen)
  $5E02 Store X position
  $5E05 Point to viewport objects list (tracks active game objects)
  $5E08 Store viewport objects pointer
  $5E0B Mark viewport objects list as empty (end-of-set marker)
@ $5E0B isub=LD (HL),SET_MARKER_END_OF_SET
  $5E0D Point to exploding fragments list (tracks explosion animations)
  $5E10 Store exploding fragments pointer
  $5E13 Mark exploding fragments list as empty ($FF terminator)
  $5E15 Set BC to $0000 for print_lives call
  $5E18 Display lives remaining for current player
  $5E1B Prepare to open channel 1
  $5E1D Open channel 1 for score display
  $5E20 Load AT control code (position cursor)
@ $5E20 isub=LD A,EXT_ATTR_AT
  $5E22 Print AT control code
  $5E23 Row 1 for AT command
  $5E25 Print row parameter
  $5E26 Column 5 for AT command
  $5E28 Print column parameter
  $5E29 Load INK control code (set text color)
@ $5E29 isub=LD A,EXT_ATTR_INK
  $5E2B Print INK control code
  $5E2C Set color to yellow
@ $5E2C isub=LD A,COLOR_YELLOW
  $5E2E Print color parameter
  $5E2F Point to player 1 score data
  $5E32 Calculate length of score data
@ $5E32 isub=LD BC,state_score_player_2_low - state_score_player_1_low
  $5E35 Print player 1 score
  $5E38 Prepare to open channel 2
  $5E3A Open channel 2 for status display
  $5E3D Point to status line 4 text
  $5E40 Calculate length of status line 4
@ $5E40 isub=LD BC,status_line_4_end - status_line_4
  $5E43 Print status line 4
  $5E46 Load current game mode (1 or 2 player)
  $5E49 Convert to ASCII digit (add $31 to convert 0-9 to '0'-'9')
  $5E4B Print game mode digit
  $5E4C Prepare to open channel 1
  $5E4E Open channel 1
  $5E51 Set terrain position to $FF (forces terrain regeneration)
  $5E53 Store terrain position
  $5E56 Set terrain profile number to $02 (selects terrain pattern)
  $5E58 Store terrain profile number
  $5E5B Open channel 2
  $5E5E Initialize level fragment number to $01 (first fragment of level)
  $5E60 Store level fragment number
  $5E63 Set gameplay mode to $01 (normal gameplay)
  $5E66 Set bridge destroyed flag to $01 (bridge intact)
  $5E69 Set last key to $68 (dummy key value)
  $5E6B Store last key pressed
  $5E6E Clear control state (no buttons pressed)
  $5E70 Store control state
  $5E73 Clear tank shell state (no tank shell active)
  $5E76 Set speed to SPEED_FAST ($04) for level scroll-in
@ $5E76 isub=LD A,SPEED_FAST
  $5E78 Store speed
@ $5E7B ignoreua=$4C83
  $5E7B Initialize terrain element 23 to $4C83
  $5E7E Store terrain element 23
  $5E82 Print player 2 score area
  $5E85 Initialize current bridge data
  $5E88 Set loop counter to $28 (40 iterations for scroll-in)
@ $5E8A label=scroll_in_loop
  $5E8A Save loop counter
  $5E8B Point to metronome counter
  $5E8E Increment metronome (advances game timing)
  $5E8F Render player plane and terrain for current frame
  $5E92 Update and render viewport objects (enemies, fuel, etc.)
  $5E95 Advance game state (scroll terrain, update positions)
  $5E98 Set speed to SPEED_FAST (maintain fast scroll during intro)
@ $5E98 isub=LD A,SPEED_FAST
  $5E9A Store speed
  $5E9D Restore loop counter
  $5E9E Repeat scroll-in loop until counter reaches zero
  $5EA0 Clear control state (reset controls after scroll-in)
  $5EA2 Store control state
  $5EA5 Set gameplay mode to $00 (ready for player control)
  $5EA8 Render player plane in starting position
  $5EAB Set last key to $0D (Enter key - wait for start)
  $5EAD Store last key
  $5EB0 Load current player number
  $5EB3 Check if player 2
@ $5EB3 isub=CP PLAYER_2
  $5EB5 If player 2, jump to decrease player 2 lives
  $5EB8 Point to player 1 lives counter
  $5EBB Decrement lives (player lost a life)
@ $5EBC label=after_life_lost
  $5EBC Display updated lives count
@ $5EBF label=wait_for_start_input
  $5EBF Scan keyboard for input
  $5EC2 Enable interrupts
  $5EC3 Load last key pressed
  $5EC6 Check if Enter key ($0D)
  $5EC8 If not Enter, start game
  $5ECA Load input interface type (keyboard/joystick)
  $5ECD Check if Kempston joystick
@ $5ECD isub=CP INPUT_INTERFACE_KEMPSTON
  $5ECF If not Kempston, wait for key press
  $5ED2 Set port address for Kempston joystick read
  $5ED4 Read Kempston joystick port
  $5ED6 Check if joystick is centered (no input)
  $5ED8 If centered, keep waiting for input
@ $5EDB label=start_game
  $5EDB Clear bridge destroyed flag (bridge is intact at start)
  $5EDD,3 Store bridge destroyed flag
@ $5EEE label=state_terrain_fragment_counter
g $5EEE Counter for terrain fragment rendering (incremented each time a fragment is rendered).
@ $5EEF label=state_metronome
g $5EEF
@ $5EF0 label=state_bridge_index
g $5EF0 Current player's current bridge modulo 48 (the total number of bridges).
@ $5EF1 label=state_input_readings
g $5EF1 Contains the current readings of the input port (Sinclair, Kempston, Cursor, etc.).
@ $5EF2 label=state_tank_shell
g $5EF2 Tank shell state: $00 when no tank is in firing position, $01 when a tank is at screen center ($80) and can fire.
@ $5EF3 label=state_plane_missile_coordinates
g $5EF3
@ $5EF4 label=state_plane_missile_x
g $5EF4
@ $5EF5 label=state_collision_mode
g $5EF5
@ $5EF6 label=state_collision_y
g $5EF6
@ $5EF7 label=ptr_plane_sprite
g $5EF7
W $5EF7
@ $5EF9 label=state_island_render_idx
g $5EF9
@ $5EFA label=state_island_profile_idx
g $5EFA The value sourced from the first byte of an island definition in #R$C600 and used as a #R$8063 array index.
@ $5EFB label=state_island_byte_2
g $5EFB
@ $5EFC label=state_island_byte_3
g $5EFC
@ $5EFD label=state_island_line_idx
g $5EFD
u $5EFE
@ $5F00 label=viewport_objects
g $5F00
B $5F00,46,3
@ $5F2E label=exploding_fragments
g $5F2E
B $5F2E,49,3
@ $5F5F label=state_activation_mask
g $5F5F Object activation mask ANDed with interrupt counter to control activation timing. Set to $1F normally, $0F after bridge destruction.
@ $5F60 label=viewport_ptr
g $5F60 Pointer to a slot from #R$5F00
W $5F60
@ $5F62 label=exploding_fragments_ptr
g $5F62 Pointer to a slot from #R$5F2E
W $5F62
@ $5F64 label=state_speed
g $5F64 Current speed
@ $5F65 label=low_fuel_sound_period
g $5F65 Low fuel warning sound period (decrements to create warbling effect)
@ $5F66 label=state_fuel
g $5F66 Fuel level
@ $5F67 label=state_input_interface
g $5F67 Control type ($00 - Keyboard, $01 - Sinclair, $02 - Kempston, Other - Cursor)
@ $5F68 label=state_gameplay_mode
@ $5F68 isub=DEFB GAMEPLAY_MODE_NORMAL
g $5F68 Current gameplay mode (NORMAL, SCROLL_IN, OVERVIEW, or REFUEL)
@ $5F69 label=state_plane_sprite_bank
g $5F69 Plane sprite bank selector: $00 = normal sprite, $04 = banked sprite.
@ $5F6A label=state_bridge_player_1
g $5F6A Current bridge of player 1
@ $5F6B label=state_bridge_player_2
g $5F6B Current bridge of player 2
@ $5F6C label=state_bridge_section
g $5F6C Bridge section indicator: $02 when rendering special bridge terrain fragments.
@ $5F6D label=state_bridge_destroyed
g $5F6D Bridge destruction flag: $00 = no bridge destroyed, $01 = bridge destroyed.
@ $5F6E label=state_bridge_y_position
g $5F6E Y-position of the destroyed bridge section (used for rendering explosion fragments).
@ $5F6F label=state_unused_5F6F
g $5F6F Unused state variable (cleared during initialization).
@ $5F70 label=state_scroll_offset
g $5F70 Scroll offset - accumulated vertical distance traveled. Incremented by current speed each frame.
@ $5F72 label=state_x
g $5F72 Current X coordinate
@ $5F73 label=helicopter_missile_coordinates_ptr
g $5F73 Pointer to the helicopter missile coordinates.
@ $5F75 label=helicopter_missile_state
g $5F75 Helicopter missile state.
@ $5F76 label=state_level_fragment_number
g $5F76 Index of the current element of current level terrain array
@ $5F77 label=state_terrain_profile_number
b $5F77 The first byte of the current #R$9500 element, defines the index of the terrain sprite (see #R$8063).
@ $5F78 label=state_terrain_element_23
g $5F78
@ $5F7A label=state_terrain_extras
g $5F7A
@ $5F7B label=screen_ptr
g $5F7B
W $5F7B
@ $5F7D label=state_terrain_position
g $5F7D Inner array index in the terrain definition.
@ $5F7E label=ptr_scroller
g $5F7E Pointer to the text to be displayed in the scroller.
W $5F7E
u $5F80
@ $5F81 label=state_overview_frame
g $5F81
u $5F82
@ $5F83 label=saved_stack_pointer
g $5F83 Main stack pointer saved at startup
D $5F83 This stores the stack pointer value saved during game initialization. It is restored whenever the game needs to reset the stack, such as when starting overview mode, restarting the game, or handling game over.
W $5F83
@ $5F85 label=collision_saved_hl
g $5F85 Saved HL (return address) for collision dispatcher
W $5F85
@ $5F87 label=collision_saved_de
g $5F87 Saved DE for collision dispatcher
W $5F87
@ $5F89 label=collision_saved_bc
g $5F89 Saved BC for collision dispatcher
W $5F89
@ $5F8B label=collision_result
g $5F8B Collision detection result / hit object coordinates
W $5F8B
@ $5F8D label=state_saved_entity_coords
g $5F8D
W $5F8D
@ $5F8F label=state_plane_missile_coordinates_backup
g $5F8F
W $5F8F
@ $5F91 label=main_loop
c $5F91 Main gameplay loop
D $5F91 This is the main gameplay loop that runs continuously during active gameplay. It handles input scanning (Enter key), updates the game state (metronome, explosions, plane, objects, missiles, tank shells, helicopter missiles), advances the game (scrolling), consumes fuel, and dispatches to the appropriate input handler based on the selected control interface.
C $5F91,9 Scan Enter
  $5F9A Load address of #R$5EEF (metronome counter) into HL
  $5F9D Increment metronome counter
  $5F9E Call #R$6EC8 to render explosions
  $5FA1 Call #R$60A5 to render player plane and terrain fragments
  $5FA4 Call #R$708E to operate viewport objects
  $5FA7 Load $01 into A (first missile pass)
  $5FA9 Store $01 to #R$673C (missile pass selector)
  $5FAC Call #R$673D to animate plane missile (first pass)
  $5FAF Load $00 into A (second missile pass)
  $5FB1 Store $00 to #R$673C (missile pass selector)
  $5FB4 Call #R$673D to animate plane missile (second pass)
  $5FB7 Call #R$7441 to operate tank shell
  $5FBA Call #R$7393 to operate helicopter missile
  $5FBD Call #R$66D0 to advance game state (scrolling)
  $5FC0 Call #R$6DFF to consume fuel
  $5FC3 Load $00 into A (reset sprite bank selector)
  $5FC5,3 Store $00 to #R$5F69 (clear plane sprite bank)
@ $5FCB isub=CP INPUT_INTERFACE_KEMPSTON
@ $5FD0 isub=CP INPUT_INTERFACE_SINCLAIR
@ $5FD5 isub=CP INPUT_INTERFACE_KEYBOARD
@ $5FDA label=scan_cursor
c $5FDA Scan cursor keys
C $5FDA Scan "8" (RIGHT)
C $5FE6 Scan "5" (LEFT)
C $5FEF Scan "0" (FIRE)
C $5FF7 Scan "7" (UP)
C $5FFF Scan "6" (DOWN)
@ $600A label=scan_kempston
c $600A Scan Kempston joystick
C $600A Scan RIGHT
C $6016 Scan LEFT
C $601E Scan DOWN
C $6026 Scan UP
C $602E Scan FIRE
@ $6039 label=scan_sinclair
c $6039 Scan Sinclair joystick
C $6039 Scan "0" (FIRE)
C $6045 Scan "9" (UP)
C $604D Scan "8" (DOWN)
C $6055 Scan "7" (RIGHT)
C $605D Scan "6" (LEFT)
@ $6068 label=scan_keyboard
c $6068 Scan keyboard
C $6068 Scan "O" (LEFT)
C $6071 Scan "P" (RIGHT)
C $607A Scan "2" (UP)
C $6083 Scan "W" (DOWN)
C $608C Scan lower row right (FIRE)
C $6097 Scan lower row left (FIRE)
@ $60A5 label=render_plane_and_terrain
c $60A5 Render player plane and terrain fragments
D $60A5 This routine renders the player plane sprite (in normal gameplay mode) and then renders terrain fragments based on the current speed. It calculates the screen position based on speed, then loops through terrain fragments, calling the terrain rendering routine for each one. Every 8 fragments, it calls the attribute scrolling routine.
  $60A5 Load gameplay mode from #R$5F68
@ $60A8 isub=CP GAMEPLAY_MODE_NORMAL
  $60A8 Check if gameplay mode is NORMAL ($00)
  $60AA If not normal mode, skip plane rendering and jump to #R$60E5
@ $60AD isub=LD A,COLLISION_MODE_NONE
  $60AD Set collision mode to NONE ($00) for plane rendering
  $60AF Store collision mode to #R$5EF5
  $60B2 Load plane X-coordinate from #R$5F72
  $60B5 Copy X-coordinate to C register
  $60B6 Load current speed from #R$5F64
  $60B9 Copy speed to E register
  $60BA Load $08 into A
  $60BC Subtract speed from $08 (calculate frame offset)
  $60BD Clear D register (prepare for 16-bit arithmetic)
  $60BF Copy result to E register
  $60C0 Shift E left (multiply by 2 for 16-byte frames)
  $60C2 Load sprite data pointer from #R$5EF7
  $60C5 Add frame offset to sprite pointer
  $60C6 Store updated sprite pointer to #R$8B0E
  $60C9 Add $80 to A (calculate Y-coordinate)
  $60CB Copy Y-coordinate to B register
  $60CC Load current speed from #R$5F64
  $60CF Copy speed to D register
  $60D0 Store plane coordinates (BC) to #R$8B0A (previous position)
  $60D4 Store plane coordinates (BC) to #R$8B0C (current position)
  $60D8 Set E to $00 (sprite attributes)
  $60DA Set BC to $0010 (sprite frame size: 16 bytes)
  $60DD Set A to $02 (sprite width: 2 tiles)
  $60DF Load address of #R$82F5 (sprite erasure data) into HL
  $60E2 Call #R$8B3C to render the plane sprite
@ $60E5 label=render_terrain_fragments
  $60E5 Call #R$683B to handle island rendering
  $60E8 Load current speed from #R$5F64
  $60EB Set DE to $0100 (256 bytes per screen row)
  $60EE Load #R$4000 into HL
  $60F1 Clear carry flag
  $60F2 Subtract DE from HL (move up one row)
@ $60F4 label=calculate_screen_row_loop
  $60F4 Add DE to HL (move down one row)
  $60F5 Decrement A (speed counter)
  $60F6 If not zero, loop to calculate correct screen row
  $60F8 Store calculated screen pointer to #R$5F7B
  $60FB Load current speed from #R$5F64
  $60FE Copy speed to B register (loop counter)
  $60FF Load terrain fragment counter from #R$5EEE
  $6102 Copy fragment counter to C register
@ $6103 label=render_terrain_loop
  $6103 Increment fragment counter
  $6104 Copy fragment counter to A
  $6105 Push BC (save loop counter and fragment counter)
  $6106 Mask lower 3 bits (check if fragment counter is multiple of 8)
  $6108 Compare with $00
  $610A If zero (every 8 fragments), call #R$68B7 to scroll attributes
  $610D Call #R$6AA3 to render current terrain fragment
  $6110 Set DE to $0100 (256 bytes per screen row)
  $6113 Load screen pointer from #R$5F7B
  $6116 Clear carry flag
  $6117 Subtract DE from HL (move up one row for next fragment)
  $6119 Store updated screen pointer to #R$5F7B
  $611C Pop BC (restore loop counter and fragment counter)
  $611D Decrement B and loop if not zero
  $611F Copy final fragment counter to A
  $6120,3 Store updated fragment counter to #R$5EEE
@ $6124 label=calculate_fuel_gauge_offset
c $6124 Calculate fuel gauge sprite offset
D $6124 This routine is used by fuel consumption and refueling to calculate the sprite offset for the fuel gauge display. It performs bit manipulation on the fuel level to determine which sprite frame to display.
  $6124 Load $07 into A
  $6126 Push DE (save DE register)
  $6127 Subtract B from A
  $6128 Shift A left (multiply by 2)
  $612A Shift A left (multiply by 4)
  $612C Shift A left (multiply by 8)
  $612E Pop DE (restore DE register)
  $612F Add D to A
  $6130 Store result into the middle of the next instruction (self-modifying code)
  $6133,2 Rotate B left through carry
@ $6136 label=collision_dispatcher
c $6136 Collision detection dispatcher
D $6136 This routine is called during sprite rendering (via #R$8C45) to handle collision detection. It saves the current register state, checks the collision mode, and dispatches to the appropriate collision handler. This is the central dispatcher for all collision detection in the game.
  $6136 Pop HL (get return address from stack)
  $6137 Store return address to #R$5F85.
  $613A Store DE to #R$5F87.
  $613E Store BC to #R$5F89.
  $6142 Load collision mode from #R$5EF5
@ $6145 isub=CP COLLISION_MODE_NONE
  $6145 Check if collision mode is NONE ($00)
  $6147 If NONE, jump to #R$8C3B to handle no collision
@ $614A isub=CP COLLISION_MODE_FUEL_DEPOT
  $614A Check if collision mode is FUEL DEPOT ($01)
  $614C If FUEL DEPOT, jump to #R$6256 to handle refueling
@ $614F isub=CP COLLISION_MODE_MISSILE
  $614F Check if collision mode is MISSILE ($02)
  $6151 If MISSILE, jump to #R$61BB to check collision
@ $6154 isub=CP COLLISION_MODE_FIGHTER
  $6154 Check if collision mode is ENEMY ($03)
  $6156 If ENEMY, jump to #R$615E to handle fighter collision
@ $6159 isub=CP COLLISION_MODE_HELICOPTER_MISSILE
  $6159 Check if collision mode is HELICOPTER_MISSILE ($04)
  $615B If HELICOPTER_MISSILE, jump to #R$7415 to handle helicopter missile collision
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
  $61D8 Store $0F to #R$5F5F (new activation mask).
  $61DD Clean up stack and store hit Y to #R$5EF6.
  $61E5 Set up first explosion row: Y = bridge_Y - 4, X = $70, D = 0.
  $61EF Spawn explosion 1 (top-left).
  $61F2 Move to X = $80 and spawn explosion 2 (top-right).
  $61F7 Move Y + 8 and spawn explosion 3 (middle-right).
  $61FE Move to X = $70 and spawn explosion 4 (middle-left).
  $6203 Move Y + 8 and spawn explosion 5 (bottom-left).
  $620A Move to X = $80 and spawn explosion 6 (bottom-right).
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
u $6253
@ $6256 label=handle_collision_mode_fuel_depot
@ $6256 isub=LD A,GAMEPLAY_MODE_REFUEL
c $6256 Handle COLLISION_MODE_FUEL_DEPOT (initiate refueling)
N $6256 Called from the collision dispatcher when COLLISION_MODE_FUEL_DEPOT is detected. Sets gameplay mode to GAMEPLAY_MODE_REFUEL and uses the plane's coordinates (instead of missile coordinates) for collision detection.
N $6256 .
N $6256 This allows the plane itself to interact with fuel depots via #R$61BB.
  $6256 Set gameplay mode to GAMEPLAY_MODE_REFUEL in #R$5F68.
  $625B Load plane coordinates (Y=$80, X from #R$5F72) into #R$5EF3.
  $6265 Jump to #R$61BB to check for collision with fuel depot.
@ $6268 label=check_fragment_collision
c $6268 Check collision with explosion fragments
N $6268 Iterates through #R$5F2E (exploding_fragments) to check if the entity collides with any active debris. Each fragment entry is 3 bytes: X, Y, and type/state.
N $6268 .
N $6268 Collision uses 8x8 bounding box for the entity and 16x8 for fragments. Result stored in #R$5F8B: $02 = collision detected, $00 = no collision (end of list reached).
  $6268 Load fragment coordinates (C=X, B=Y) from list pointer #R$5F62 and advance by 3.
  $6270 Store updated pointer; copy X to A for marker check.
@ $6274 isub=CP SET_MARKER_EMPTY_SLOT
  $6274 If empty slot marker ($00), skip to next fragment.
@ $6279 isub=CP SET_MARKER_END_OF_SET
  $6279 If end marker ($FF), jump to #R$62CE (no collision).
  $627E Call #R$62DA to adjust Y coordinate for scrolling.
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
N $62E8 Iterates through #R$5F00 (viewport_objects) checking if the player's missile collides with any object. Each object slot is 3 bytes: X, Y, and type/state.
N $62E8 .
N $62E8 Collision detection uses type-specific bounding boxes. Most objects are 10x8 pixels, but balloons and fuel depots are taller (17-25 pixels), and ships are wider (19 pixels).
N $62E8 .
N $62E8 On hit, dispatches to type-specific handlers: #R$6414 (helicopter), #R$6423 (ship), #R$6444 (advanced helicopter), #R$6453 (fighter), #R$6462 (balloon), #R$6478 (fuel). If no known type matches, checks #R$6268 for fragment collision.
N $62E8 .
N $62E8 During GAMEPLAY_MODE_REFUEL, object Y coordinates are adjusted for scrolling before and after collision checks.
  $62E8 Load object coordinates (C=X, B=Y) from list pointer #R$5F60 and advance by 3.
  $62F0 Store updated pointer; copy X to A for marker check.
@ $62F4 isub=CP SET_MARKER_EMPTY_SLOT
  $62F4 If empty slot marker ($00), skip to next object.
@ $62F9 isub=CP SET_MARKER_END_OF_SET
  $62F9 If end marker ($FF), jump to #R$63B9 for fragment collision check.
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
  $63B9 Call #R$6268 and reset #R$5F60/#R$5F62 to list starts.
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
  $63FC Load GAMEPLAY_MODE_NORMAL ($00).
  $63FE Store to #R$5F68.
@ $6401 label=no_collision_exit
@ $6401 isub=LD A,COLLISION_MODE_NONE
N $6401 Exit collision system with no collision detected.
  $6401 Load COLLISION_MODE_NONE ($00).
  $6403 Store to #R$5EF5.
  $6406 Restore HL, DE, BC from #R$5F85, #R$5F87, #R$5F89.
  $6411 Jump to #R$8C3B to continue rendering.
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
u $64B4
@ $64BC label=print_bridge
c $64BC Print current bridge number on status line
N $64BC Displays the current bridge number for the active player on the status line. Sets the appropriate ink color (yellow for Player 1, cyan for Player 2) and prints the bridge counter with leading space padding for single-digit numbers.
N $64BC .
N $64BC Uses ROM routine at $203C to print status line text and $1A1B (OUT_NUM_1) to print the numeric value.
  $64BC,5 If Player 2, jump to #R$64E5.
@ $64BF isub=CP PLAYER_2
@ $64C4 isub=LD A,EXT_ATTR_INK
  $64C4 Set ink to COLOR_PLAYER_1.
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
  $64E5 Set ink to COLOR_PLAYER_2.
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
c $6506 Print a space character
  $6506,3 Output space ($20) via RST $10.
@ $650A label=handle_no_fuel
c $650A Handle the no fuel situation
D $650A This routine is called when the player runs out of fuel. It stops the plane, creates two explosion fragments at the plane's position, animates the explosions over 16 frames, waits for a delay, then determines the next game state based on the current player and remaining lives in single or two-player mode.
  $650A Load plane X-coordinate
  $650D Align to 8-pixel boundary (clear lower 3 bits)
  $650F Store aligned X-coordinate in C register
  $6510 Set Y-coordinate to $7F (just below visible area)
  $6512 Stop plane movement (clear speed and missile coordinates)
  $651A Set explosion sprite type to $00
  $651D Create first explosion fragment at plane position
  $6522 Offset Y-coordinate by $05 pixels for second explosion
  $6526 Create second explosion fragment
  $6529 Set animation frame counter to $10 (16 frames)
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
  $656F Load game mode (1 or 2 player)
@ $6572 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
  $6572 Check if two-player mode is active
  $6574 If two-player mode, jump to switch to Player 2
@ $6577 label=game_over
c $6577 Game Over
D $6577 This routine displays the "GAME OVER" message, plays the game over sequence, and returns to the overview/demo mode.
  $6577 Set scroller pointer to "GAME OVER" message
  $657D Display game over sequence
  $6580 Restore stack pointer to main loop
  $6584 Return to overview/demo mode
@ $6587 label=setup_player_2_display
c $6587 Setup Player 2 display during overview mode
D $6587 This routine is called during overview mode to set up the Player 2 status display. It only executes in two-player mode, setting the player to Player 2, printing the bridge number, and configuring the Player 2 color scheme.
  $6587 Load game mode (1 or 2 player)
@ $658A isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
  $658A Check if two-player mode is active
  $658C Return if single-player mode
  $658D Set current player to Player 2 ($01)
  $6592 Print current bridge number for Player 2
@ $6595 isub=LD A,EXT_ATTR_INK
  $6595 INK of Player 2 color
@ $6598 isub=LD A,COLOR_PLAYER_2
@ $659B isub=LD A,EXT_ATTR_AT
  $659B,6 AT 20,...
@ $65A1 ofix=LD DE,$8052
@ $65A4 ofix=LD BC,$0008
  $65A7,3 Print Player 2 status line text
@ $65AB label=switch_to_player_2
c $65AB Switch to Player 2 after Player 1 death
D $65AB This routine is called when Player 1 dies and Player 2 has lives remaining in two-player mode. It checks if Player 2 has lives, triggers game over if not, otherwise switches to Player 2 and restarts gameplay.
  $65AB Load Player 2 lives remaining
@ $65AE isub=CP $00
  $65AE Check if Player 2 has no lives left
  $65B0 If no lives, trigger game over
  $65B3 Set current player to Player 2 ($02)
  $65B8 Restart gameplay for Player 2
@ $65BB label=switch_to_player_2_in_two_player_mode
c $65BB Switch to Player 2 when Player 1 dies in two-player mode
D $65BB This routine is called when Player 1 dies in two-player mode and still has lives. It checks if Player 2 has lives, and if so, switches to Player 2. If Player 2 has no lives, it restarts Player 1 instead.
  $65BB Load Player 2 lives remaining
@ $65BE isub=CP $00
  $65BE Check if Player 2 has no lives left
  $65C0 If no lives, restart current player (Player 1)
  $65C3 Set current player to Player 2 ($02)
  $65C8 Restart gameplay for Player 2
@ $65CB label=handle_player_2_death
c $65CB Handle Player 2 death and determine next game state
D $65CB This routine is called when Player 2 dies. It checks both players' lives to determine whether to switch to Player 1, continue with Player 2, or trigger game over.
  $65CB Load Player 2 lives remaining
@ $65CE isub=CP $00
  $65CE Check if Player 2 has no lives left
  $65D0 If no lives, jump to check Player 1 status
  $65D3 Load Player 1 lives remaining
@ $65D6 isub=CP $00
  $65D6 Check if Player 1 has no lives left
  $65D8 If Player 1 has lives, switch to Player 1
  $65DB Otherwise restart Player 2
@ $65DE label=switch_to_player_1
c $65DE Switch to Player 1 after Player 2 death
D $65DE This routine is called when Player 2 dies and Player 1 has lives remaining. It switches the current player to Player 1 and restarts gameplay, or triggers game over if Player 1 has no lives.
  $65DE Set current player to Player 1 ($01)
@ $65E3 label=check_player_1_lives
  $65E3 Load Player 1 lives remaining
@ $65E6 isub=CP $00
  $65E6 Check if Player 1 has no lives left
  $65E8 If no lives, trigger game over
  $65EB Set current player to Player 1 ($01)
  $65F0 Restart gameplay for Player 1
@ $65F3 label=handle_right
c $65F3 Move player plane right by 2 pixels
D $65F3 This routine is called when the player presses right on the joystick or keyboard. It moves the plane 2 pixels to the right (INC A twice), backs up the missile coordinates, renders the plane at the new position, then restores the missile coordinates and sets the sprite bank selector.
  $65F3 Load current plane X-coordinate from #R$5F72
  $65F6 Load missile coordinates into HL
  $65F9 Back up missile coordinates to #R$5F8F for later restoration
  $65FC Increment X-coordinate by 1 pixel (first pixel)
  $65FD Increment X-coordinate by 1 pixel (second pixel, total 2 pixels right)
  $65FE Store new X-coordinate back to #R$5F72
  $6601 Copy new X-coordinate to C register for rendering
@ $6602 isub=LD B,PLANE_COORDINATE_Y
  $6602 Set Y-coordinate to $80 (fixed vertical position)
@ $6604 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $6604 Set collision mode to FUEL (check plane vs fuel depot collision)
  $6606 Store collision mode to #R$5EF5
  $6609 Store new plane coordinates (BC) to #R$8B0C for rendering
  $660D Decrement C to calculate previous X position (first pixel back)
  $660E Decrement C to calculate previous X position (second pixel back, total 2 pixels left)
  $660F Store previous coordinates to #R$8B0A for erasing old sprite
@ $6613 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $6613 Set sprite frame size to $0010 (16 bytes per frame)
  $6616 Load sprite data pointer from #R$5EF7
  $6619 Store sprite pointer to #R$8B0E for rendering
@ $661C isub=LD E,SPRITE_PLANE_ATTRIBUTES
  $661C Set sprite attributes to $0E (color/attribute byte)
  $661E Load current player number from #R$923D
@ $6621 isub=CP PLAYER_2
  $6621 Check if current player is Player 2
  $6623 If Player 2, call routine to set Player 2 sprite attributes
@ $6626 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
  $6626 Set sprite height to $08 (8 pixels)
@ $6628 isub=LD A,SPRITE_PLANE_WIDTH_TILES
  $6628 Set sprite width to $02 (2 tiles wide)
  $662A Load sprite data address #R$83F1
  $662D Call #R$8B3C to render the plane sprite at new position
@ $6630 label=restore_plane_state_after_render
c $6630 Restore plane state after rendering
D $6630 This shared cleanup routine is used by #R$65F3, #R$6642, and #R$6682 to restore the plane's missile coordinates and sprite bank selector after rendering the plane sprite. It ensures the game state is properly restored after sprite rendering operations.
  $6630 Load backed-up missile coordinates from #R$5F8F
  $6633 Restore missile coordinates to #R$5EF3
  $6636 Load sprite data pointer from #R$8B16 (updated by render routine)
  $6639 Store updated sprite pointer to #R$5EF7
  $663C Set sprite bank selector to $04 (select banked plane sprite)
  $663E,3 Store sprite bank selector to #R$5F69
@ $6642 label=handle_left
c $6642 Move player plane left by 2 pixels
D $6642 This routine is called when the player presses left on the joystick or keyboard. It moves the plane 2 pixels to the left (DEC A twice), backs up the missile coordinates, renders the plane at the new position, then restores the missile coordinates and sets the sprite bank selector.
  $6642 Load current plane X-coordinate from #R$5F72
  $6645 Load missile coordinates into HL
  $6648 Back up missile coordinates to #R$5F8F for later restoration
  $664B Decrement X-coordinate by 1 pixel (first pixel)
  $664C Decrement X-coordinate by 1 pixel (second pixel, total 2 pixels left)
  $664D Store new X-coordinate back to #R$5F72
  $6650 Copy new X-coordinate to C register for rendering
@ $6651 isub=LD B,PLANE_COORDINATE_Y
  $6651 Set Y-coordinate to $80 (fixed vertical position)
@ $6653 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $6653 Set collision mode to FUEL DEPOT (check plane vs fuel depot collision)
  $6655 Store collision mode to #R$5EF5
  $6658 Store new plane coordinates (BC) to #R$8B0C for rendering
  $665C Increment C to calculate previous X position (first pixel right)
  $665D Increment C to calculate previous X position (second pixel right, total 2 pixels right)
  $665E Store previous coordinates to #R$8B0A for erasing old sprite
@ $6662 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $6662 Set sprite frame size to $0010 (16 bytes per frame)
  $6665 Load sprite data pointer from #R$5EF7
  $6668 Store sprite pointer to #R$8B0E for rendering
@ $666B isub=LD E,SPRITE_PLANE_ATTRIBUTES
  $666B Set sprite attributes to $0E (color/attribute byte)
  $666D Load current player number from #R$923D
@ $6670 isub=CP PLAYER_2
  $6670 Check if current player is Player 2
  $6672 If Player 2, call routine to set Player 2 sprite attributes
@ $6675 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
  $6675 Set sprite height to $08 (8 pixels)
@ $6677 isub=LD A,SPRITE_PLANE_WIDTH_TILES
  $6677 Set sprite width to $02 (2 tiles wide)
  $6679 Load sprite data address #R$83F1
  $667C Call #R$8B3C to render the plane sprite at new position
  $667F Jump to #R$6630 to restore plane state after rendering
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
  $6691 Set COLLISION_MODE_FUEL_DEPOT and store plane coords to #R$8B0C.
@ $6694 isub=LD A,COLLISION_MODE_FUEL_DEPOT
  $6699 (continued).
  $669D Advance position via #R$62DA and store to #R$8B0A.
@ $66A4 isub=LD BC,SPRITE_PLANE_FRAME_SIZE
  $66A4 Set frame size and sprite pointer from #R$5EF7.
@ $66AD isub=LD E,SPRITE_PLANE_ATTRIBUTES
  $66AD Set attributes; call #R$7038 for Player 2 (uses ship attributes).
@ $66B2 isub=CP PLAYER_2
@ $66B7 isub=LD D,SPRITE_PLANE_HEIGHT_PIXELS
  $66B7,10 Set height, load sprite base; if bank=$04, use #R$83F1.
@ $66C4 isub=LD A,SPRITE_PLANE_WIDTH_TILES
  $66C4 Set width and call #R$8B3C to render.
  $66C9 Restore state via #R$6630.
@ $66CC label=ld_sprite_plane_banked
c $66CC Load banked plane sprite address
N $66CC Helper to load the banked sprite address (#R$83F1) into HL when sprite bank selector is $04.
  $66CC,3 Load #R$83F1 into HL.
@ $66D0 label=advance_scroll
c $66D0 Advance game scroll and update bridge position
N $66D0 Called each frame to advance the vertical scroll position. Adds current speed (#R$5F64) to scroll offset (#R$5F70), updates the bridge's Y position via #R$66EE, then resets speed to SPEED_NORMAL and updates control flags.
N $66D0 .
N $66D0 The control bits modified are: clears CONTROLS_BIT_SPEED_ALTERED, sets CONTROLS_BIT_SPEED_DECREASED. This marks that speed has returned to normal after any joystick input.
  $66D0 Add speed to scroll offset and store result.
  $66DB,6 Call #R$66EE to update bridge; reset speed to SPEED_NORMAL.
@ $66E1 isub=LD A,SPEED_NORMAL
  $66E6,7 Clear CONTROLS_BIT_SPEED_ALTERED, set CONTROLS_BIT_SPEED_DECREASED in #R$6BB0.
@ $66EE label=update_bridge_scroll
c $66EE Update bridge Y position during scroll
N $66EE Adjusts the bridge's Y position (#R$5F6E) based on current scrolling. If no bridge exists (Y=0), returns immediately. If the bridge scrolls off the bottom of the screen (Y AND $88 == $88), clears it via #R$6704.
  $66EE If no bridge, return; otherwise advance bridge Y via #R$62DA.
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
  $670F,7 Set CONTROLS_BIT_SPEED_ALTERED, clear CONTROLS_BIT_SPEED_DECREASED.
@ $6712 isub=SET CONTROLS_BIT_SPEED_ALTERED,(HL)
@ $6714 isub=RES CONTROLS_BIT_SPEED_DECREASED,(HL)
@ $6717 label=handle_down
@ $6717 isub=LD A,SPEED_SLOW
c $6717 Handle down/decelerate input
N $6717 Sets speed to SPEED_SLOW and updates control flags. Called when player presses down on joystick/keyboard.
  $6717 Set speed to SPEED_SLOW.
  $671C,7 Set CONTROLS_BIT_SPEED_ALTERED and CONTROLS_BIT_SPEED_DECREASED.
@ $671F isub=SET CONTROLS_BIT_SPEED_ALTERED,(HL)
@ $6721 isub=SET CONTROLS_BIT_SPEED_DECREASED,(HL)
@ $6724 label=handle_fire
c $6724 Handle fire button input
N $6724 Creates a new missile if none is currently active. Positions missile at plane X + 4, Y = $7E (just above plane). Sets CONTROLS_BIT_FIRE flag.
  $6724 Return if missile already active (Y != 0).
  $672A Create missile at (plane_X + 4, $7E).
  $6736,5 Set CONTROLS_BIT_FIRE in #R$6BB0.
@ $673C label=missile_pass_selector
g $673C Missile animation pass selector: $01 = first pass (adjust for scroll), $00 = second pass (no adjustment).
@ $673D label=animate_plane_missile
c $673D Animate and render player missile
N $673D Called twice per frame (via #R$5F91) to animate the player's missile. On the first pass (#R$673C = $01), adjusts missile position for screen scrolling via #R$62DA. On both passes, moves missile up by 6 pixels.
N $673D .
N $673D If missile reaches top of screen (Y AND $F8 == 0), jumps to #R$6794 to finalize collision. Clears CONTROLS_BIT_FIRE when missile is in lower screen area ($70 - Y >= 0).
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
c $678E Clear CONTROLS_BIT_FIRE flag
N $678E Called when missile has moved past the plane's Y position, indicating the fire button can trigger a new missile.
  $678E,5 Clear CONTROLS_BIT_FIRE in #R$6BB0.
@ $6794 label=finalize_collision
c $6794 Finalize collision and erase missile sprite
N $6794 Called after a successful collision to clean up the game state. Erases the missile sprite from the screen, resets the collision mode to COLLISION_MODE_NONE, clears the missile coordinates, and resets CONTROLS_BIT_SPEED_DECREASED.
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
  $67D8 Call #R$8B3C with #R$82F5 to erase missile sprite.
  $67DE Reset CONTROLS_BIT_SPEED_DECREASED in #R$6BB0.
  $67E3 Reload coordinates from #R$5EF3, then clear them.
  $67EA (continued).
  $67ED Calculate residue Y position (missile_Y - 6).
  $67F4 Set X = plane_X + 4 for centered erasure.
  $67FA Set up sprite parameters for residue erasure.
  $6803 Calculate frame index from X coordinate's lower 3 bits.
@ $6809 label=finalize_collision_erase_residue_loop
  $6809 Select correct frame by adding frame_size A times.
  $680D Calculate remaining height from #R$5EF6; return if zero.
  $6817 Set height and attributes (height in D, attrs=$0C in E).
  $681A,22 Store sprite params and call #R$8B3C to erase residue.
@ $6831 label=add_island_offset_800
c $6831 Add $0800 offset to island data pointer
  $6831 Set DE to $0800
  $6834,1 Add DE to HL (adjust island pointer)
@ $6836 label=add_island_offset_1000
c $6836 Add $1000 offset to island data pointer
  $6836 Set DE to $1000
  $6839,1 Add DE to HL (adjust island pointer)
@ $683B label=handle_island_rendering
c $683B Handle island rendering and scrolling
D $683B This routine manages island rendering by manipulating island data pointers based on bit flags, copying island data to screen memory, and calling render_plane when appropriate. It loops through island lines, decrementing the island counter until it reaches zero.
  $683B,2 Initialize island line counter to $8F (143).
@ $683D label=process_island_line
  $6840 Mask to get lower 6 bits (index 0-63).
  $6842,8 Look up pointer in table at #R$5B00 (index × 2).
  $684B Load pointer into HL.
  $684F Reload island counter.
  $6852 If bit 7 set, add $1000 offset to island pointer.
  $6857 If bit 6 set, add $0800 offset to island pointer.
  $685C Save adjusted island pointer.
  $685D,15 Look up pointer for (counter - speed) in table at #R$5B00.
  $6873 Load pointer into HL.
  $6874 Calculate (counter - speed).
  $687C If bit 7 set, add $1000 offset to island pointer.
  $6881 If bit 6 set, add $0800 offset to island pointer.
  $6886 Copy 32 bytes backward from first to second island line.
  $688C,6 Decrement island counter and check if finished.
  $6895 If counter is $7F, render plane.
  $689A Continue with next island line.
@ $68A1 label=clear_top_rows
c $68A1 Clear top screen rows after scrolling
D $68A1 Clears the top rows of the screen based on scroll speed. After island data scrolls upward, the topmost rows contain old data that needs to be zeroed.
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
  $68B7 Load source address $5A1F into HL (attribute row)
@ $68BA ignoreua=$5A3F
  $68BA Load destination address $5A3F into DE (next attribute row)
  $68BD Set BC to $020C (524 bytes to copy)
  $68C0 Copy attributes backward (LDDR)
@ $68C2 ignoreua=$5BDF
  $68C2 Load address $5BDF into HL (bottom attribute row)
@ $68C5 nowarn
@ $68C5 label=update_bottom_row
c $68C5 Update bottom attribute row after scrolling
D $68C5 Copies the bottom attribute row to the top of the screen, then fills the bottom row with either river (green) or bridge attributes depending on state_bridge_section.
  $68C5 Copy bottom attribute row to top of screen.
  $68CD If bridge section 1 or 2, jump to render bridge attributes.
@ $68DA label=fill_river_attributes
  $68DA Initialize bottom row fill with river attribute (green).
@ $68E1 label=fill_attribute_loop
  $68E1 Store attribute, advance pointer, loop 32 times.
  $68E5,3 Call #R$6F80 to spawn objects for new row.
@ $68E9 label=init_current_bridge
c $68E9 Initialize bridge state for current player
D $68E9 Clears the top attribute row, removes any active tank shell, and calculates the starting bridge index based on the current player's saved progress. The algorithm handles wraparound for players who have progressed past bridge 48.
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
  $693C Set state_bridge_y_position = 1 (bridge is approaching).
  $6941,5 Set state_terrain_fragment_counter = 6 (countdown to bridge).
@ $6947 label=clear_bridge_destroyed
c $6947 Clear bridge destroyed flag
D $6947 Called when terrain profile byte is $02, indicating bridge structure. Clears the destroyed flag so the bridge renders intact (unless player has destroyed it).
  $6947,5 Set state_bridge_destroyed = 0.
@ $694D label=increase_bridge_index
c $694D Increase bridge index and handle overflow by resetting to the first bridge.
R $694D O:A Always set to 0
  $694D Reset Y-position
  $6954 Increase bridge index
  $695B,2 Check for overflow
@ $6963 label=next_bridge_index_overflow
c $6963 Handle bridge index overflow by wrapping to first bridge.
  $6963,5 Reset bridge index to 0.
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
  $6994 Set up lookup: HL=data_terrain_profiles, DE=$10 (profile size).
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
  $6AA3 Set up profile lookup: HL = #R$8063, DE = $10 (profile size).
@ $6AAF label=locate_terrain_profile
  $6AAF Locate profile: data_terrain_profiles[state_terrain_profile_number].
  $6AB3 Increment state_terrain_position (line 0-15).
  $6ABA If line reached 16, jump to #R$6A4F to load next fragment.
  $6ABF Index into profile: HL = profile_base + (line AND $0F).
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
g $6BB0 Bitmask of the CONTROLS_BIT_* bits containing the current controls and other information.
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
c $6BDB Non-maskable interrupt handler
D $6BDB Called 50 times per second by the Z80 NMI. Saves registers, increments frame counter, checks for pause key, and processes game control flags for sound effects.
  $6BDB Disable interrupts and save all registers (HL, DE, BC, AF).
  $6BE0 Increment frame counter at FRAMES (#R$5C78).
  $6BE4,6 Read keyboard row (H-B-N-M-SS). If H pressed, jump to #R$6BB1 (pause handler).
@ $6BED label=handle_controls
c $6BED Process control state flags and trigger sound effects.
D $6BED Called from interrupt handler to process various control flags like fire, bonus life, explosion, and low fuel sounds.
  $6BED If last key was 'h' (pause), skip sound processing.
  $6BF5 Load #R$6BB0 (controls). If FIRE bit set, call #R$8A02 (fire sound).
@ $6BF8 isub=BIT CONTROLS_BIT_FIRE,(HL)
@ $6BFD isub=BIT CONTROLS_BIT_BONUS_LIFE,(HL)
  $6BFD If BONUS_LIFE bit set, call #R$6C31 (bonus life sound).
@ $6C05 isub=BIT CONTROLS_BIT_EXPLODING,(HL)
  $6C05 Reload controls. If EXPLODING bit set, call #R$6C7B (explosion sound).
@ $6C0D isub=BIT CONTROLS_BIT_LOW_FUEL,(HL)
  $6C0D Reload controls. If LOW_FUEL bit set, jump to #R$6CF4 (low fuel warning).
  $6C13 Mask control byte to isolate SPEED_DECREASED and SPEED_ALTERED bits.
  $6C15 If only SPEED_DECREASED set, jump to #R$6C5D (deceleration sound).
  $6C1A If only SPEED_ALTERED set, jump to #R$6CB8 (acceleration sound).
  $6C1F If both speed bits set, jump to #R$6CD6 (combined speed sound).
@ $6C24 label=int_return
c $6C24 Return from the non-maskable interrupt handler.
D $6C24 Restores all saved registers and returns from NMI using RETN instruction.
  $6C24 Restore registers (AF, BC, DE, HL).
  $6C28,3 Enable interrupts and return from NMI.
u $6C2B
@ $6C30 label=bonus_life_sound_counter
g $6C30 Bonus life sound progress counter (0-64)
@ $6C31 label=do_bonus_life
c $6C31 Play bonus life sound effect
D $6C31 Generates a rising pitch sound effect when player earns an extra life. Called once per frame while CONTROLS_BIT_BONUS_LIFE is set. The sound plays over 64 frames.
D $6C31 #LIST { Counter increments from 0 to 64 over successive frames } { Pitch = ($40 - counter) >> 3, giving values 7→0 as counter increases } { Lower pitch values = higher frequency, so sound rises in pitch } { Calls ROM BEEPER routine at $03B5 with duration L=$FF, repeat DE=$0001 } LIST#
  $6C31 Increment counter and check if reached $40 (64). If so, sound is complete.
  $6C38 Check if counter reached $40 (64 frames). Jump to #R$6C52 to finish if done.
  $6C3D Calculate pitch: pitch = $40 - counter. Store counter in B, load $40 into A, subtract.
  $6C41 Set up BEEPER parameters: H = pitch >> 3 (range 7-0), L = $FF (duration).
  $6C4A,7 Call ROM BEEPER at $03B5 with DE=$0001 (one iteration). Disable interrupts after.
@ $6C52 label=bonus_life_sound_done
c $6C52 Complete bonus life sound sequence
D $6C52 Resets the sound counter and clears the CONTROLS_BIT_BONUS_LIFE flag to stop the sound effect.
  $6C52 Reset counter to 0.
  $6C57,5 Clear CONTROLS_BIT_BONUS_LIFE in #R$6BB0 to indicate sound is complete.
@ $6C5D label=beep_speed_decreased
c $6C5D Play deceleration engine sound
D $6C5D Generates an engine sound when player is decelerating. Called when only CONTROLS_BIT_SPEED_DECREASED is set in #R$6BB0. HL points to the controls byte on entry.
D $6C5D #LIST { Period = (controls_byte AND $0F), used for both on and off delays } { Symmetric square wave: same delay for high and low phases } { Loops 8 cycles then returns via #R$6C24 } LIST#
R $6C5D I:HL Pointer to #R$6BB0 (controls state byte)
  $6C5D Extract period from low 4 bits of controls byte. Higher value = lower pitch.
  $6C61 Loop counter: 8 cycles of the waveform.
@ $6C63 label=beep_speed_decreased_loop
  $6C63 Turn speaker ON (bit 4 of port $FE).
  $6C67 Load period into D.
@ $6C68 label=beep_speed_decreased_delay_on
  $6C68 Delay loop for speaker ON phase.
  $6C6B Turn speaker OFF.
  $6C6F Load period into D.
@ $6C70 label=beep_speed_decreased_delay_off
  $6C70 Delay loop for speaker OFF phase.
  $6C73,7 Decrement cycle counter, loop if not zero. Jump to #R$6C24 when done.
@ $6C7A label=explosion_counter
g $6C7A Explosion sound frame counter (counts down from $18 to 0)
@ $6C7B label=beep_explosion
c $6C7B Play explosion sound effect
D $6C7B Generates an explosion sound that plays over 24 frames ($18). Called once per frame while CONTROLS_BIT_EXPLODING is set. DE points to some game state byte that affects pitch.
D $6C7B #LIST { Counter decrements from $18 (24) to 0 over successive frames } { ON delay = ((DE) AND $07) << 3 + $10, range $10-$48 (16-72) } { OFF delay = counter value, decreasing each frame (sound speeds up) } { 4 cycles of waveform per frame } { As counter decreases, OFF delay shortens, making sound more rapid/urgent } LIST#
R $6C7B I:DE Pointer to game state byte affecting pitch
  $6C7B,4 Decrement explosion counter.
  $6C82 If counter reached 0, jump to #R$6CAD to finish.
  $6C87 Calculate ON delay: ((DE) AND $07) << 3 + $10. Gives value $10-$48 based on low 3 bits of (DE).
  $6C92 Set ON delay in E, loop counter = 4 cycles.
@ $6C95 label=beep_explosion_loop
  $6C95 Turn speaker ON (bit 4 of port $FE).
  $6C99 Load ON delay into D.
@ $6C9A label=beep_explosion_delay_on
  $6C9A Delay loop for speaker ON phase.
  $6C9D Turn speaker OFF.
  $6CA1 Load counter value as OFF delay.
@ $6CA5 label=beep_explosion_delay_off
  $6CA5 Delay loop for speaker OFF phase (speeds up as counter decreases).
  $6CA8 Decrement cycle counter, loop for 4 cycles per frame.
@ $6CAD label=explosion_render_finish
c $6CAD Complete explosion sound sequence
D $6CAD Resets the explosion counter and clears CONTROLS_BIT_EXPLODING flag.
  $6CAD Reset explosion counter to $18 (24) for next explosion.
  $6CB2,5 Clear CONTROLS_BIT_EXPLODING in #R$6BB0.
@ $6CB5 isub=RES CONTROLS_BIT_EXPLODING,(HL)
@ $6CB8 label=beep_speed_increased
c $6CB8 Play acceleration engine sound
D $6CB8 Generates an engine sound when player is accelerating. Called when only CONTROLS_BIT_SPEED_ALTERED is set in #R$6BB0. HL points to the controls byte on entry.
D $6CB8 #LIST { Period = (controls_byte AND $07), used for speaker ON delay } { Fixed OFF delay of 4 iterations (shorter than ON = asymmetric wave) } { Asymmetric wave gives a different timbre than deceleration sound } LIST#
R $6CB8 I:HL Pointer to #R$6BB0 (controls state byte)
  $6CB8 Extract period from low 3 bits of controls byte.
  $6CBC Loop counter: 8 cycles of the waveform.
@ $6CBE label=beep_speed_increased_loop
  $6CBE Turn speaker ON (bit 4 of port $FE).
  $6CC2 Load period into D.
@ $6CC3 label=beep_speed_increased_delay_on
  $6CC3 Delay loop for speaker ON phase.
  $6CC6 Turn speaker OFF.
  $6CCA Load fixed delay ($04) into D.
@ $6CCC label=beep_speed_increased_delay_off
  $6CCC Delay loop for speaker OFF phase (asymmetric wave).
  $6CCF Decrement cycle counter, loop if not zero. Jump to #R$6C24 when done.
@ $6CD6 label=beep_speed_combined
c $6CD6 Play combined speed change sound
D $6CD6 Generates a sound when both CONTROLS_BIT_SPEED_DECREASED and CONTROLS_BIT_SPEED_ALTERED are set. HL points to the controls byte on entry.
D $6CD6 #LIST { Period = (controls_byte AND $17), uses bits 0-2 and bit 4 } { Fixed OFF delay of $0C (12) iterations (longer than acceleration sound) } { Different timbre from both acceleration and deceleration } LIST#
R $6CD6 I:HL Pointer to #R$6BB0 (controls state byte)
  $6CD6 Extract period from bits 0-2 and bit 4 of controls byte.
  $6CDA Loop counter: 8 cycles of the waveform.
@ $6CDC label=beep_speed_combined_loop
  $6CDC Turn speaker ON (bit 4 of port $FE).
  $6CE0 Load period into D.
@ $6CE1 label=beep_speed_combined_delay_on
  $6CE1 Delay loop for speaker ON phase.
  $6CE4 Turn speaker OFF.
  $6CE8 Load fixed delay ($0C) into D.
@ $6CEA label=beep_speed_combined_delay_off
  $6CEA Delay loop for speaker OFF phase.
  $6CED Decrement cycle counter, loop if not zero. Jump to #R$6C24 when done.
@ $6CF4 label=do_low_fuel
c $6CF4 Play low fuel warning sound
D $6CF4 Generates a warbling warning sound when fuel is low. Called once per frame while CONTROLS_BIT_LOW_FUEL is set. The sound pitch varies each frame creating an urgent warbling effect.
D $6CF4 #LIST { Decrements #R$5F65 each frame, wrapping at $7F (0-127 range) } { Uses this value as period for symmetric square wave } { 3 cycles of waveform per invocation } { As period decrements, pitch rises then resets, creating warble } LIST#
  $6CF4 Loop counter: 3 cycles of waveform.
@ $6CF6 label=do_low_fuel_loop
  $6CF6 Decrement period (#R$5F65), wrap at $7F. Store new period in E.
  $6CFF Turn speaker ON (bit 4 of port $FE).
  $6D04 Load period into D.
@ $6D05 label=do_low_fuel_delay_on
  $6D05 Delay loop for speaker ON phase.
  $6D08 Turn speaker OFF.
  $6D0C Load period into D.
@ $6D0D label=do_low_fuel_delay_off
  $6D0D Delay loop for speaker OFF phase.
  $6D10 Decrement cycle counter, loop for 3 cycles. Jump to #R$6C24 when done.
@ $6D17 label=overview
c $6D17 Level overview screen
D $6D17 Displays a preview fly-over of the upcoming terrain before the game starts. Shows scrolling terrain with game number and scrolling title text. Player can press Enter to start the game early, or wait for 5 scroll units to auto-start.
D $6D17 #LIST { Initializes screen with PAPER BLUE, INK GREEN } { Prints status line and "GAME n" where n is the game mode (1-4) } { Runs a main loop that scrolls terrain and displays title text } { Exits to game start after 5 scroll increments or Enter key } LIST#
  $6D17,9 Initialize scroll position (#R$5F70 = $0010) and scroll speed (#R$5EFD = $10).
@ $6D23 isub=LD D,COLOR_BLUE<<3|COLOR_GREEN
  $6D23 Set screen colors (PAPER BLUE, INK GREEN) via #R$940A.
  $6D28 Clear/initialize screen via #R$8A33.
  $6D2B Print status line 1 (#R$8000, length $31 bytes) using ROM PR_STRING ($203C).
@ $6D2E isub=LD BC,status_line_2 - status_line_1
  $6D34 Initialize gameplay: call #R$64BC, #R$6587, #R$6DEB (init_starting_bridge).
  $6D3D Call #R$68E9 to initialize terrain rendering.
  $6D40,11 Print "GAME" text (#R$805A, length 5) using ROM PR_STRING.
@ $6D48 isub=LD BC,status_line_4_end - status_line_4
  $6D4E Print game number: load game mode from #R$923A, add '1' ($31) for ASCII digit, output via RST $10.
  $6D54,13 Initialize state: store 'h' ($68) in last key, clear #R$5F7D, save initial scroll value to #R$5D43.
@ $6D64 label=overview_loop
  $6D64 Check Enter key (row 6, bit 0). Call #R$6BBF if pressed.
  $6D6D Check if 5 scroll units passed: if (#R$5EF0 - #R$5D43) == 5, jump to #R$5D06 to start game.
  $6D7A Render frame: call delay, scroll, increment counter, render terrain/objects.
  $6D8D Call #R$66D0 for rendering.
  $6D90,10 Call delay, increment frame counter #R$5F81, call ROM KEYBOARD ($02BF), enable interrupts.
  $6D9B Check if Enter ($0D) was pressed. If so, jump to #R$5DA6.
  $6DA3,7 Check frame counter AND 3: if not zero, loop back to overview_loop.
  $6DAD Select upper screen channel via ROM CHAN_OPEN ($1601).
@ $6DB2 isub=LD A,EXT_ATTR_INK
  $6DB2 Set INK BLACK for title text area.
@ $6DB5 isub=LD A,COLOR_BLACK
@ $6DB8 isub=LD A,EXT_ATTR_PAPER
  $6DB8 Set PAPER BLACK for title text area.
@ $6DBB isub=LD A,COLOR_BLACK
@ $6DBE isub=LD A,EXT_ATTR_AT
  $6DBE Position cursor AT row 1, column 31.
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
D $6DFF Decrements fuel level and updates the fuel gauge. Called each frame during gameplay. Fuel only decreases on even frames, and the gauge only updates every 4th decrement.
D $6DFF #LIST { Fuel level stored in #R$5F66 (0-255) } { Low fuel warning when top 2 bits = 0 (fuel < $40) } { Empty fuel (fuel = 0) triggers game over via #R$650A } { Gauge position: column = (fuel >> 2) + $40, row = $A8 } LIST#
  $6DFF Skip if odd frame (fuel only consumed on even frames).
@ $6E02 isub=AND METRONOME_INTERVAL_CONSUME_FUEL
  $6E07 Decrement fuel level in #R$5F66.
@ $6E0E isub=AND FUEL_CHECK_INTERVAL
  $6E0E Skip gauge update unless (fuel AND 3) == 0 (every 4th decrement).
  $6E13 If fuel == 0, game over (jump to #R$650A).
@ $6E16 isub=CP FUEL_LEVEL_EMPTY
@ $6E1B isub=AND FUEL_LEVEL_LOW
  $6E1B If fuel low (top 2 bits = 0), call #R$6E86 to set low fuel warning.
@ $6E22 label=update_fuel_gauge
  $6E22 Calculate gauge position: B = $A8 (row), C = (fuel >> 2) + $40 (column).
  $6E2E Call #R$8A4E to compute screen address from B,C coordinates.
@ $6E31 label=draw_fuel_gauge_loop
  $6E31 Loop counter: 8 rows of gauge.
  $6E33 Set pixel pattern $86 for gauge.
@ $6E35 label=draw_fuel_gauge_row_loop
  $6E35,10 Draw row, move down, decrement counter, loop for 8 rows.
@ $6E40 label=add_fuel
c $6E40 Add fuel during refueling
D $6E40 Called when plane is over a fuel depot. Adds FUEL_INTAKE_AMOUNT (4) to fuel level, plays refueling sound, and updates gauge.
D $6E40 #LIST { Returns immediately if #R$5F69 == 4 (refueling complete?) } { Plays high-pitched refuel sound via ROM BEEPER } { If fuel almost full ($FC), plays different sound via #R$6E92 } { Clears low fuel warning if fuel now sufficient } LIST#
  $6E40 Check if #R$5F69 == 4 (refuel limit), return if so.
  $6E46 Check if fuel almost full (AND $FC == $FC). If so, jump to #R$6E92 for tank full sound.
@ $6E49 isub=AND FUEL_LEVEL_ALMOST_FULL
@ $6E4B isub=CP FUEL_LEVEL_ALMOST_FULL
  $6E50 Play refueling sound: BEEPER with DE=$0007, HL=$0333.
  $6E59,12 Add 4 to fuel level. If now sufficient (AND $C0 != 0), call #R$6E8C to clear low fuel warning.
@ $6E5C isub=ADD A,FUEL_INTAKE_AMOUNT
@ $6E61 isub=AND FUEL_LEVEL_LOW
@ $6E68 label=update_fuel_gauge_refuel
  $6E68 Calculate gauge position: B = $A8, C = (fuel >> 2) + $3F.
  $6E74 Call #R$8A4E to compute screen address.
  $6E77 Loop counter: 8 rows.
  $6E79,12 Draw 8 rows of fuel gauge with pattern $C6 (filled). Increment H each row.
@ $6E7B label=draw_fuel_gauge_refuel_loop
@ $6E86 label=register_low_fuel
c $6E86 Set low fuel warning flag
D $6E86 Sets CONTROLS_BIT_LOW_FUEL in #R$6BB0 to trigger the warbling low fuel warning sound.
  $6E86,5 Set CONTROLS_BIT_LOW_FUEL (bit 3) in controls state.
@ $6E8C label=register_sufficient_fuel
c $6E8C Clear low fuel warning flag
D $6E8C Clears CONTROLS_BIT_LOW_FUEL in #R$6BB0 to stop the low fuel warning sound.
  $6E8C,5 Clear CONTROLS_BIT_LOW_FUEL (bit 3) in controls state.
@ $6E92 label=signal_fuel_level_excessive
c $6E92 Play tank full sound
D $6E92 Plays a different beep when fuel tank is already full and cannot accept more fuel.
  $6E92,9 Play tank full sound: BEEPER with DE=$0008, HL=$0111.
@ $6E9C label=explode_fragment
c $6E9C Create explosion at fragment position
D $6E9C Called when an enemy is destroyed or the player collides. Sets up explosion state and adds an explosion entry to the explosions set at #R$5F2E.
D $6E9C #LIST { Sets CONTROLS_BIT_EXPLODING to trigger explosion sound } { Clears CONTROLS_BIT_FIRE to prevent firing during explosion } { Resets #R$6C7A (explosion counter) to $18 (24 frames) } { Falls through to #R$6EAB to add explosion to set } LIST#
R $6E9C I:BC BC contains fragment position: B=Y offset, C=X position
R $6E9C I:D Object type/definition byte
  $6E9C Set CONTROLS_BIT_EXPLODING (bit 5) in #R$6BB0.
@ $6E9F isub=SET CONTROLS_BIT_EXPLODING,(HL)
  $6EA1 Clear CONTROLS_BIT_FIRE (bit 0).
  $6EA3 Reset explosion counter to $18 (24 frames).
  $6EA8 Point HL to explosions set at #R$5F2E, fall through to add_object_to_set.
@ $6EAB label=add_object_to_set
c $6EAB Add object entry to a set
D $6EAB Finds an empty slot or end-of-set marker in the object set and writes a 3-byte entry (C, B, D). Each entry represents an object with X position, Y offset, and type.
D $6EAB #LIST { Searches forward through set, 3 bytes per entry } { Empty slot marker = $00, end-of-set marker = $FF } { Skips non-empty entries until finding $00 or $FF } LIST#
R $6EAB I:B Y offset (usually 0 for new objects)
R $6EAB I:C X position
R $6EAB I:D Object type/definition
R $6EAB I:HL Pointer to start of object set
  $6EAB Load current entry's first byte. If empty slot ($00), jump to write.
@ $6EAC isub=CP SET_MARKER_EMPTY_SLOT
  $6EB1 If end-of-set marker ($FF), jump to write (will extend set).
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
  $6ED4 Skip empty entries ($00), continue to next.
@ $6ED5 isub=CP SET_MARKER_EMPTY_SLOT
@ $6EDA isub=CP SET_MARKER_END_OF_SET
  $6EDA If end marker ($FF), jump to #R$6F73 to reset pointer.
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
@ $6F80 label=next_row
c $6F80 Process objects for newly scrolled row
D $6F80 Called when screen scrolls by one fragment. Reads the level data slot for the current scroll position and spawns the appropriate object (rock, fuel depot, or enemy).
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
  $6FB5 Otherwise spawn enemy via #R$6FF6.
@ $6FBB label=render_rock
c $6FBB Render rock sprite
D $6FBB Renders a rock obstacle at the specified position. Rocks use 3x2 tile sprites (24x16 pixels) stored sequentially at #R$84A1 with $30 bytes per frame.
D $6FBB #LIST { Sprite address = #R$84A1 + (frame_index * $30) } { Frame index from bits 0-2 of D (0-7 rock variants) } { Sprite stored at #R$8B0E, position at #R$8B0A and #R$8B0C } { Renders via #R$8B3C with width=3 tiles, height=16 pixels } LIST#
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
  $6FDD,8 Set dimensions: A=3 (width in tiles), D=$10 (height 16 pixels), E=$14 (attributes). Call #R$8B3C to render.
@ $6FDF isub=LD DE,SPRITE_ROCK_HEIGHT_PIXELS<<8|SPRITE_ROCK_ATTRIBUTES
@ $6FE6 label=ld_enemy_sprites_right
c $6FE6 Load pointer to right-facing enemy sprites
D $6FE6 Returns pointer to sprite array for enemies facing right. Used by #R$75BA to select sprite direction based on enemy movement.
R $6FE6 O:HL Pointer to right-facing enemy sprite array at #R$8793.
  $6FE6 Load HL with #R$8793 (right-facing sprites base address).
@ $6FEA label=setup_object_position
c $6FEA Set up object screen position for rendering
D $6FEA Calculates screen coordinates via #R$62DA and stores the result in both #R$8B0A and #R$8B0C for sprite rendering.
  $6FEA Call #R$62DA to calculate position, store result BC in both position registers.
@ $6FF6 label=render_enemy
@ $6FF6 isub=CP OBJECT_BALLOON
c $6FF6 Spawn and render enemy on screen
D $6FF6 Creates a new enemy from level data and renders it. Handles different enemy types (helicopter, ship, tank, fighter, balloon) with appropriate sprites and attributes.
D $6FF6 #LIST { Balloon (type 6) uses separate routine #R$706C } { Fighter/Tank (types 4,5) need blending mode setup via #R$7046 } { Adds enemy to active objects set at #R$5F00 } { Sprite size: 3 tiles wide, 8 pixels high ($18 bytes per frame) } LIST#
R $6FF6 I:A Object type (from D AND $07)
R $6FF6 I:D Object definition byte from level data
R $6FF6 I:E X position
  $6FF6 If balloon (type 6), use separate balloon renderer at #R$706C.
@ $6FFB isub=CP OBJECT_FIGHTER
  $6FFB If fighter (type 5), set XOR blending mode via #R$7046.
@ $7000 isub=CP OBJECT_TANK
  $7000 If tank (type 4), set XOR blending mode via #R$7046.
  $7005 Call #R$75BA to get sprite pointer based on enemy direction.
  $7008,10 Add enemy to active objects set: BC = (0, X_pos), call #R$6EAB with HL = #R$5F00.
  $7013 Call #R$6FEA to set up screen position.
@ $7016 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $7016 Set sprite frame size ($18 = 24 bytes) and default attributes ($0E).
@ $7019 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
  $701B Get object type (D AND $07). Load type-specific attributes: ship=#R$7038 ($0D), fighter=#R$703B ($00), tank=#R$703E ($00/$04).
@ $701C isub=AND SLOT_MASK_OBJECT_TYPE
@ $701E isub=CP OBJECT_SHIP
@ $7023 isub=CP OBJECT_FIGHTER
@ $7028 isub=CP OBJECT_TANK
@ $702D isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $702D,10 Set sprite dimensions: A=3 (width tiles), D=8 (height pixels). Call #R$8B1E and #R$72EF to render.
@ $702F isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $7038 isub=LD E,SPRITE_SHIP_ATTRIBUTES
@ $7038 label=ld_attributes_ship
c $7038 Load ship screen attributes
D $7038 Returns SPRITE_SHIP_ATTRIBUTES ($0D) = PAPER BLACK, INK MAGENTA, BRIGHT.
R $7038 O:E Attributes value $0D.
  $7038 Load E with $0D (ship attributes).
@ $703B isub=LD E,SPRITE_FIGHTER_ATTRIBUTES
@ $703B label=ld_attributes_fighter
c $703B Load fighter screen attributes
D $703B Returns SPRITE_FIGHTER_ATTRIBUTES ($00) = PAPER BLACK, INK BLACK (invisible/XOR mode).
R $703B O:E Attributes value $00.
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
c $7046 Set XOR blending mode for sprite rendering
D $7046 Modifies sprite rendering code via self-modifying instructions. Patches #R$8C3C with XOR B and #R$8C1B with NOP to enable XOR blending mode for fighters/tanks.
  $7046 Patch XOR B ($A8) into #R$8C3C and NOP ($00) into #R$8C1B for XOR rendering.
@ $7048 nowarn
@ $704D nowarn
@ $7051 label=render_fuel
c $7051 Render fuel station
D $7051 Renders a fuel station sprite at the specified X position. Fuel stations are static 2-tile wide (16 pixels) objects that the player can fly over to refuel.
D $7051 #LIST { Adds fuel station to #R$5F00 active objects set } { Sprite located at #R$8A86 (single frame, no animation) } { Dimensions: 2 tiles wide (16px) × 25 pixels tall } { Attributes: $0B (PAPER BLACK, INK CYAN, BRIGHT) } LIST#
R $7051 I:E X position of fuel station
  $7051 BC = (0, E): set X position in BC for object entry.
  $7054 Add fuel station to #R$5F00 active objects set via #R$6EAB.
  $705A Load fuel sprite address #R$8A86 and call #R$6FEA to set up screen position.
@ $7060 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
  $7060 Set sprite parameters: frame size=0, width=2 tiles, height=25 pixels, attributes=$0B.
@ $7063 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
@ $7065 isub=LD DE,SPRITE_FUEL_STATION_HEIGHT_PIXELS<<8|SPRITE_FUEL_STATION_ATTRIBUTES
  $7068,3 Render fuel station sprite via #R$8B1E.
@ $706C label=render_balloon
c $706C Render balloon
D $706C Renders a balloon enemy sprite at the specified X position. Balloons are 2-tile wide animated objects that float above the river. Unlike other enemies, balloons disable collision detection during rendering.
D $706C #LIST { Disables collision mode via #R$5EF5 (allows plane to pass through during render) } { Animated sprite with $20 byte frames at #R$8972 } { Dimensions: 2 tiles wide (16px) × 16 pixels tall } { Attributes: $0E (PAPER BLACK, INK YELLOW, BRIGHT) } LIST#
R $706C I:E X position of balloon
  $706C BC = (0, E): set X position in BC for object entry.
  $706F Load balloon sprite #R$8972, set COLLISION_MODE_NONE to #R$5EF5.
@ $7072 isub=LD A,COLLISION_MODE_NONE
  $7077 Push sprite addr, add balloon to #R$5F00 objects set, pop and call #R$6FEA.
@ $7082 isub=LD BC,SPRITE_BALLOON_FRAME_SIZE
  $7082,11 Set sprite parameters: frame size=$20, width=2, height=16px, attributes=$0E. Render via #R$8B1E.
@ $7085 isub=LD A,SPRITE_BALLOON_WIDTH_TILES
@ $7087 isub=LD DE,SPRITE_BALLOON_HEIGHT_PIXELS<<8|SPRITE_BALLOON_ATTRIBUTES
@ $708E label=operate_viewport_objects
@ $708E isub=LD A,COLLISION_MODE_NONE
c $708E Main viewport object processing loop.
N $708E Iterates through the viewport_objects array, processing each active object. Each object slot is a 3-byte structure: [X position, Y position, OBJECT_DEFINITION byte].
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
  $7093 Load the current viewport_ptr into HL.
  $7096 Load the first byte of the object slot (X position) into C.
  $7097 Advance HL to the next byte.
  $7098 Load the second byte of the object slot (Y position) into B.
  $7099 Advance HL to the next byte.
  $709A Load the third byte of the object slot (object definition) into D.
  $709B Advance HL to point to the next slot.
  $709C Update viewport_ptr to point to the next slot.
  $709F Copy the X position (C) into A for comparison.
@ $70A0 isub=CP SET_MARKER_EMPTY_SLOT
  $70A0 Check if this slot is empty.
  $70A2 If empty, skip this slot and process the next one.
@ $70A5 isub=CP SET_MARKER_END_OF_SET
  $70A5 Check if we've reached the end of the viewport objects list.
  $70A7 If end of list, reset viewport_ptr to the beginning.
  $70AA Advance the object's Y position (move it down the screen).
  $70AD Move HL back to point to the Y position byte of the current slot.
  $70AF Store the updated Y position (B) back into the slot.
  $70B0 Copy the Y position into A for boundary checking.
@ $70B1 isub=AND VIEWPORT_HEIGHT
  $70B1 Mask the Y position with VIEWPORT_HEIGHT.
@ $70B3 isub=CP VIEWPORT_HEIGHT
  $70B3 Check if the object has moved beyond the viewport boundary.
  $70B5 If beyond boundary, remove the object from the viewport.
  $70B8 Copy the object definition (D) into A.
@ $70B9 isub=AND SLOT_MASK_OBJECT_TYPE
  $70B9 Extract the object type (bits 0-2) from the definition.
@ $70BB isub=CP OBJECT_HELICOPTER_ADV
  $70BB Check if this is an advanced helicopter.
  $70BD Preserve DE, HL, BC registers for the potential call.
  $70C0 If it's an advanced helicopter, render its missile.
  $70C3 Restore BC, HL, DE registers.
  $70C6 Load the current gameplay mode.
@ $70C9 isub=CP GAMEPLAY_MODE_SCROLL_IN
  $70C9 Check if gameplay mode is GAMEPLAY_MODE_SCROLL_IN.
  $70CB If so, skip to the next object without further processing.
  $70CE Check bit 7 of the object definition (activation flag).
  $70D0 If bit 7 is set, the object is already activated, skip to operation dispatch.
@ $70D3 isub=LD A,(state_activation_mask)
  $70D3 Load the activation mask from #R$5F5F.
  $70D6 Copy the mask into E.
  $70D7 Load the interrupt counter.
  $70DA AND the counter with the mask to check if it's time to activate.
  $70DB Compare with zero.
  $70DD If not zero, skip activation and jump to L7224.
  $70E0 Set bit 7 of D to mark the object as activated.
  $70E2 Move HL forward to point to the object definition byte.
  $70E3 Store the updated definition (with bit 7 set) back to the slot.
  $70E4 Point HL to the interrupt counter.
  $70E7 Increment the interrupt counter.
@ $70E8 label=dispatch_object_type
  $70E8 Copy the object definition into A for type dispatch.
@ $70E9 isub=AND SLOT_MASK_OBJECT_TYPE
  $70E9 Extract the object type (bits 0-2).
@ $70EB isub=CP OBJECT_FIGHTER
  $70EB Check if this is a fighter.
  $70ED If fighter, jump to operate_fighter.
@ $70F0 isub=CP OBJECT_BALLOON
  $70F0 Check if this is a balloon.
  $70F2 If balloon, jump to operate_baloon.
@ $70F5 isub=CP OBJECT_FUEL
  $70F5 Check if this is a fuel station.
  $70F7 If fuel, jump to operate_fuel.
@ $70FA isub=CP OBJECT_TANK
  $70FA Check if this is a tank.
  $70FC If tank, jump to operate_tank.
  $70FF Check if object type is 0 (no object or special case).
  $7101 If type is 0, jump to L71A2.
@ $7104 label=operate_ship_or_helicopter
c $7104 Ship or helicopter operation routine
D $7104 Animates and moves ships and helicopters. On every other frame (metronome tick), advances the object by 2 pixels toward the opposite river bank. When the object gets within 16 pixels of the bank edge, it reverses direction.
D $7104 #LIST { Checks metronome for animation timing } { Determines direction from bit 6 (SLOT_BIT_ORIENTATION) } { Left-facing objects advance left, right-facing advance right } { Collision with terrain triggers direction reversal via #R$75D0 } LIST#
R $7104 I:B Y position of object
R $7104 I:C X position of object
R $7104 I:D Object definition byte
  $7104,7 Check metronome: if frame counter bit 0 == 0, jump to render only at #R$724C.
@ $7107 isub=AND HELICOPTER_ANIMATION_METRONOME_MASK
@ $7109 isub=CP HELICOPTER_ANIMATION_METRONOME_VALUE
@ $710E isub=BIT SLOT_BIT_ORIENTATION,D
  $710E Check orientation: if bit 6 clear (right-facing), jump to #R$75A2.
@ $7113 label=ship_or_helicopter_left_advance
c $7113 Advance left-facing ship or helicopter
D $7113 Moves a left-facing ship/helicopter 2 pixels left, checking for terrain collision.
R $7113 I:B Y position
R $7113 I:C X position
R $7113 I:D Object definition
  $7113 Save BC, calculate terrain check position: C -= 16 pixels.
  $7118 Call #R$8A4E to get terrain byte at (C, B). Load result into A.
  $711C Restore BC. If terrain != 0, reverse direction via #R$75D0.
  $7122 Store position to #R$8B0A. Advance X position left by 2 pixels (DEC C twice).
@ $7128 label=operate_ship_or_helicopter_continue
c $7128 Continue ship/helicopter rendering
D $7128 Updates the object's position in the viewport array and renders the sprite.
  $7128 Load viewport_ptr, navigate back to current slot, update [X, Y, D] values.
  $7131,10 Store position to #R$8B0C, sprite address #R$82C5 to #R$8B0E. Get sprite via #R$75BA.
@ $713E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $713E Set frame size=$18, default attributes=$0E.
@ $7141 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
  $7143,5 If object type is OBJECT_SHIP, load ship attributes via #R$7038.
@ $7144 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7146 isub=CP OBJECT_SHIP
@ $714B isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $714B,7 Set width=3 tiles, height=8 pixels. Render via #R$8B3C, return to main loop.
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
  $716B Load viewport_ptr, navigate to current slot, update [X, Y, D] values.
  $7174 Store position to #R$8B0C, get sprite pointer via #R$75BA.
@ $717B isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $717B Set frame size=$18, call #R$72E6 to set XOR blending mode.
@ $7181 isub=LD A,COLLISION_MODE_FIGHTER
  $7181 Set collision mode to COLLISION_MODE_FIGHTER ($03) at #R$5EF5.
@ $7186 isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_FIGHTER_ATTRIBUTES
  $7186 Set height=8px, attributes=$00. Render via #R$8B1E, restore blending via #R$72EF.
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
D $71A2 #LIST { Only processes on every other frame (metronome check) } { Extracts frame index from bits 3-5 of object definition } { Finishes explosion when frame reaches 7 or Y position is off-screen } { Uses sprite at #R$8FFC with varying attributes for color cycling } LIST#
R $71A2 I:B Y position
R $71A2 I:C X position
R $71A2 I:D Object definition (bits 3-5 = frame index)
  $71A2 Check metronome: if frame counter bit 0 != 1, skip to next object.
@ $71A5 isub=AND METRONOME_INTERVAL_1
@ $71A7 isub=CP METRONOME_INTERVAL_1
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
  $7208 Render via #R$8B3C, return to main loop.
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
  $722A,7 Check metronome: if bit 0 == 1, jump to #R$724C for animation.
@ $722D isub=AND BALLOON_ANIMATION_METRONOME_MASK
@ $722F isub=CP BALLOON_ANIMATION_METRONOME_VALUE
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
  $7259 Load viewport_ptr, extract [D, B, C] from current slot.
  $7262 Load left rotor sprite #R$8AB8. If right-facing (bit 6 clear), load #R$8AC8.
@ $7265 isub=BIT SLOT_BIT_ORIENTATION,D
  $726A Store positions to #R$8B0C and #R$8B0A. Push rotor sprite, get main sprite via #R$75BA.
  $7276 Store erase sprite #R$82C5 to #R$8B0E. Pop rotor sprite.
@ $727D isub=LD DE,SPRITE_ROTOR_HEIGHT_PIXELS<<8|SPRITE_ROTOR_ATTRIBUTES
  $727D,11 Set rotor params: height=2, attributes=$0E, frame size=4, width=2. Render via #R$8B3C.
@ $7280 isub=LD BC,SPRITE_ROTOR_FRAME_SIZE
@ $7283 isub=LD A,SPRITE_ROTOR_WIDTH_TILES
@ $728B label=tank_advance_right
c $728B Advance tank right by 4 pixels
D $728B Increments X position by 4 pixels for right-moving tank.
  $728B,4 INC C × 4: move right 4 pixels.
@ $7290 label=set_tank_shell_active
@ $7290 isub=LD A,TANK_SHELL_ACTIVE
c $7290 Set tank shell state to active
D $7290 Sets #R$5EF2 to TANK_SHELL_ACTIVE, indicating tank is at firing position.
  $7290,5 Set tank shell state to active ($01).
@ $7296 label=operate_tank
c $7296 Tank operation routine
D $7296 Operates tanks on the river. Tanks move 2 pixels per frame and fire shells when reaching the center position ($80). Tanks on the river bank are handled separately via #R$7302.
D $7296 #LIST { Skips processing every other frame (metronome check) } { Tanks on bank (bit 5 set) handled via #R$7302 } { River tanks move left/right, fire at X=$80 } { Uses XOR blending mode for rendering } LIST#
R $7296 I:B Y position
R $7296 I:C X position
R $7296 I:D Object definition byte
  $7296 Check metronome: if bit 0 == 1, skip to next object.
@ $7299 isub=AND METRONOME_INTERVAL_1
@ $729B isub=CP METRONOME_INTERVAL_1
  $729D,8 Store position, check bank bit, handle terrain check.
@ $72A6 isub=BIT SLOT_BIT_TANK_ON_BANK,D
  $72A6 If SLOT_BIT_TANK_ON_BANK set, handle via #R$7302.
  $72AB Pop regs. If #R$5F6D != 0, jump to #R$74EE.
@ $72B5 label=tank_move_entry
  $72B5,10 Move tank: DEC C twice (left), then INC C × 4 if right-facing.
  $72B5 Move tank: DEC C twice (left), then INC C × 4 if right-facing.
  $72BC If X == $80 (center), set tank shell active via #R$7290.
  $72C2,13 Update position in viewport array, store to #R$8B0C, get sprite via #R$75BA.
@ $72D2 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $72D2 Set frame size=$18, enable XOR blending via #R$72E6.
@ $72D8 isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
  $72D8,11 Set width=3, height=8, attributes=$00. Render via #R$8B1E, restore blending, return.
@ $72DA isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_TANK_ATTRIBUTES
@ $72E6 label=blending_mode_xor_xor
c $72E6 Set XOR/XOR blending mode
D $72E6 Patches sprite renderer to use XOR for both mask and sprite operations. Used for tanks and fighters.
  $72E6 Load XOR B opcode ($A8).
@ $72E8 nowarn
  $72E8 Patch XOR B into #R$8C1B.
@ $72EB nowarn
  $72EB,3 Patch XOR B into #R$8C3C.
@ $72EF label=blending_mode_or_or
c $72EF Set OR/OR blending mode
D $72EF Patches sprite renderer to use OR for both mask and sprite operations. Restores default blending after XOR rendering.
  $72EF Load OR B opcode ($B0).
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
D $7302 Handles tanks positioned on the river bank. These tanks check terrain ahead and fire shells when path is clear. The shell trajectory depends on tank orientation and uses pseudo-random speed.
R $7302 I:B Y position (on stack)
R $7302 I:C X position (on stack)
R $7302 I:D Object definition byte
  $7302,7 Load stored position, add $10 offset to X.
@ $730A isub=BIT SLOT_BIT_ORIENTATION,D
  $730A If left-facing, adjust offset via #R$72F8.
  $730F Call #R$8A4E for terrain check. If terrain == $FF, move tank normally.
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
@ $7343 label=init_tank_shell_state
c $7343 Initialize tank shell state
D $7343 Sets up shell with orientation from tank and pseudo-random speed from interrupt counter.
R $7343 I:D Object definition byte (bit 6 = orientation)
R $7343 O:A Shell state with orientation and speed bits
  $7343 If bit 4 set, use alternate initialization via #R$735E.
  $7348 Copy orientation bit from object definition to shell state.
@ $7349 isub=AND 1<<SLOT_BIT_ORIENTATION
  $734C Derive speed from interrupt counter (pseudo-random 1-4).
  $7351 Store in E, load D into A.
  $7353 Ensure speed >= 1, combine with orientation, continue to fire shell.
@ $7358 label=cancel_and_remove_shell
c $7358 Cancel and remove tank shell
D $7358 Removes the tank shell via #R$74E4 and returns to main loop.
  $7358 Call #R$74E4 to remove shell, return to main loop.
@ $735E label=check_shell_init_condition
c $735E Check shell initialization condition
D $735E Alternative shell initialization when bit 4 is set. Checks if tank can fire based on shell active state and position.
  $735E If TANK_SHELL_ACTIVE, cancel shell via #R$7358.
@ $7361 isub=CP TANK_SHELL_ACTIVE
  $7366 Push BC, check X position sign bit, invert if positive via #R$7380.
  $7373 Shift right 4 times to get upper nibble.
  $737B Combine with orientation, pop BC, continue to fire shell.
@ $7380 label=invert_coordinate_sign
c $7380 Invert coordinate for position calculation
D $7380 XORs A with $7F to flip coordinate sign for shell trajectory.
  $7380,2 A = A XOR $7F.
@ $7383 label=tank_shell_state
g $7383
@ $7384 label=tank_shell_trajectory_step
g $7384
@ $7385 label=tank_shell_coordinates
g $7385
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
D $7393 #LIST { Loads position from #R$5F73 } { Advances Y position via #R$62DA } { Moves X position by HELICOPTER_MISSILE_STEP ($08) } { Removed at VIEWPORT_HEIGHT boundary via #R$73D0 } { Sets COLLISION_MODE_HELICOPTER_MISSILE for collision } LIST#
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
  $73BE,17 Set collision mode=$04, width=1, attributes=$00, height=1. Render via #R$8B1E.
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
  $73F4 Load viewport_ptr, extract [D, B, C] from helicopter's slot.
  $73FD Align X to 8-pixel boundary (AND $F8), extract orientation bit.
  $7404 Store orientation to #R$5F75. If right-facing, add offset via #R$73D8.
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
  $7491,14 Load shell sprite #R$8431, set params: height=1, width=1, frame=$08. Render via #R$8B1E.
@ $7494 isub=LD DE,SPRITE_SHELL_HEIGHT_PIXELS<<8|SPRITE_SHELL_ATTRIBUTES
@ $7497 isub=LD A,SPRITE_SHELL_WIDTH_TILES
@ $7499 isub=LD BC,SPRITE_SHELL_FRAME_SIZE_BYTES
@ $74A0 label=erase_tank_shell_offscreen
c $74A0 Erase off-screen tank shell
D $74A0 Erases the tank shell sprite when it goes off-screen and removes it from the game.
  $74A0 Load shell position from #R$8B0A, shell sprite #R$8431.
  $74A7 Calculate sprite frame offset from X position: (X AND 6) << 2.
  $74B2 Add offset to sprite address, store to #R$8B0E. Load erase sprite #R$82F5.
  $74B8 Set sprite params, render via #R$8B3C, remove shell.
  $74C3 Remove shell via #R$74E4.
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
c $74EE Handle tank reaching river boundary
D $74EE Called when a tank on the river reaches the viewport boundary. Checks if tank is within valid X range, creates explosion and awards points if tank destroyed.
  $74EE Load viewport_ptr, navigate to X position in current slot.
  $74F5 Check if X+$0A < $70: if true, tank at left boundary, jump to reverse.
  $7502 Check if X > $90: if true, tank at right boundary, jump to reverse.
  $750F Tank destroyed: clear X position, set D=$80 (explosion marker).
  $7517,9 Call #R$6E9C to add explosion, award POINTS_TANK via #R$90E0.
@ $7520 isub=LD A,POINTS_TANK
@ $7525 label=tank_reverse_direction
  $7525,6 Reload viewport_ptr, set bits 4 and 5 (direction change flags).
@ $752B isub=SET CONTROLS_BIT_EXPLODING,(HL)
  $752D Check difficulty level at #R$923D. If level 1, use alternate speed.
  $7534 Load speed from #R$5F6B.
@ $753A label=tank_speed_check
  $753A,9 Check if 7-speed < 0, clear slot if needed.
@ $7546 label=get_tank_speed_level_1
c $7546 Get tank speed for level 1
D $7546 Returns tank speed from #R$5F6A instead of #R$5F6B for difficulty level 1.
  $7546,3 Load speed from #R$5F6A, continue at #R$753A.
@ $754C label=operate_fuel
c $754C Operate fuel station
D $754C Processes fuel station rendering with animated lights. Checks viewport boundary and renders with alternating attributes based on metronome.
D $754C #LIST { Stores position for rendering } { Checks if fuel station is within viewport } { Animates fuel lights based on metronome counter } { Renders 2-tile wide, 25-pixel tall sprite } LIST#
  $754C,8 Store position to #R$8B0A and #R$8B0C. Set height=$19.
  $7556 Check if Y+$19 is off-screen (boundary check).
  $755D If off-screen, return to main loop.
@ $7565 isub=AND VIEWPORT_HEIGHT
@ $7567 isub=CP VIEWPORT_HEIGHT
  $7569,11 Load fuel sprite #R$8A86, get sprite pointer via #R$75BA.
@ $7577 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
  $7577 Set frame size=0, calculate animated attributes from metronome.
@ $757D isub=AND METRONOME_INTERVAL_ANIMATE_FUEL
@ $757F isub=ADD A,SPRITE_FUEL_STATION_ATTRIBUTES
@ $7582 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
  $7582 Set width=2, render via #R$8B1E.
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
  $75A7 Call #R$8A4E to get terrain byte at (C, B). Load result into A.
  $75AB Restore BC. If terrain != 0, reverse direction via #R$75D0.
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
  $75C9,7 Loop: HL += $60 for each type. Result: HL = base + (type * $60).
@ $75CB label=ld_enemy_sprites_loop
@ $75D0 label=handle_object_proximity
c $75D0 Handle ship/helicopter proximity to obstacle
D $75D0 When a ship or helicopter approaches a river bank or fuel station, inverts its orientation. Ignores the player (objects in top half of screen).
R $75D0 I:BC Object coordinates
  $75D4 Return if Y >= $80 (object in top half, might be player).
  $75D8 Reload position, pop return address, load viewport_ptr, get object definition.
  $75E2 Get sprite pointer via #R$75BA, reload position.
  $75E9 Calculate animation frame offset from X position.
@ $75EC isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $75EC Set frame size, shift and increment offset.
  $75F3 Subtract frame size for pre-decrement.
@ $75F5 label=handle_object_proximity_frame_loop
  $75F5 Loop to add frame offset to sprite pointer, store to #R$8B0E.
  $75FC Reload position, store to #R$8B0C.
  $7604 Invert object orientation (XOR bit 6).
@ $7605 isub=XOR 1<<SLOT_BIT_ORIENTATION
  $7608,8 Update orientation in viewport array, get new sprite via #R$75BA.
@ $7613 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7615 isub=CP OBJECT_SHIP
@ $761A isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $761C isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $761E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7627 label=init_viewport_ptr
c $7627 Point #R$5F60 to the head of #R$5F00.
D $7627 Resets the viewport pointer to the beginning of the viewport array.
  $7627,6 Set viewport_ptr to start of viewport array.
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
@ $7649 label=operate_baloon
c $7649 Operate balloon movement and rendering.
D $7649 Moves a balloon horizontally, checking for terrain collisions. Balloons bounce off riverbanks by reversing direction.
R $7649 I:B Y position
R $7649 I:C X position
R $7649 I:D Object definition (bit 6 = orientation: 0=right, 1=left)
  $7649 If balloon is off-screen (Y bit 7 set), skip to main loop.
  $764E,10 Only operate every 4th frame (frame counter AND 3 == 1). Check orientation.
  $765D Left-facing: Check terrain at (X-16, Y). If collision, reverse direction.
  $766C Check terrain at (X-16, Y+8). If collision, reverse direction.
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
  $76A6,6 Call #R$8B1E to render balloon, return to main loop.
@ $76AC label=jp_operate_viewport_objects
c $76AC A useless procedure that unconcditionally jumps to #R$708E.
c $76AF Right-facing balloon movement.
D $76AF Handles terrain collision checks and movement for a right-facing balloon.
R $76AF I:B Y position
R $76AF I:C X position
R $76AF I:D Object definition
  $76AF Check terrain at (X+32, Y). If collision, reverse direction via #R$76DA.
  $76BE Check terrain at (X+24, Y+8). If collision, reverse direction.
  $76D1 Save position, move right by 2 pixels, jump to render at #R$7685.
c $76DA Handle balloon terrain collision.
D $76DA Reverses balloon direction when it collides with terrain. Also handles rendering.
R $76DA I:BC Position
R $76DA I:D Object definition
  $76DA Save position. If Y >= 128 (off visible area), return early.
  $76E2 Reload position, get object definition from viewport.
  $76EC Calculate sprite frame offset from X position bits 1-2.
  $76FC Loop to select correct frame in sprite data.
  $7703 Store sprite pointer and render position.
  $770E Flip orientation bit and update in viewport array.
  $7716,17 Load sprite parameters, render balloon with new orientation, return to main loop.
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
  $780D,3 Jump to #R$7AB9 (setup routine).
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
R $7AB9 Initializes #R$7800, #R$7801 and #R$923A.
R $7AB9 Sets the stack pointer to #R$7810 and returns using that stack.
C $7AB9,9 Print control types dialog
C $7AC2,6 Initialize timer
@ $7ACD label=controls_input
c $7ACD Wait until the user chooses a valid control type or switch to the overview mode on timeout.
  $7ACD Decrease timer
  $7AD4,5 Check if the time is up
  $7ADC Scan keyboard
  $7AE0,2 Subtract $31 from the pressed key ASCII code, effectively mapping the "1" key to 0, "2" to 1, etc.
  $7AE5 Validate the pressed key by making sure that none of the bits older than the first two are set, effectively allowing values 0 through 3.
  $7AE9,2 Repeat if a valid key was not pressed.
@ $7AED label=game_mode_print
  $7AED Initialize delay counter.
@ $7AEF label=controls_input_delay_loop
  $7AEF Delay loop (purpose unclear).
@ $7AF4 isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
  $7AF4,2 PAPER BLACK; INK WHITE
  $7AF9,9 Print game mode dialog
@ $7B07 label=game_mode_input
c $7B07 Wait until the user chooses a valid game mode.
  $7B0A Scan keyboard
  $7B0E,2 Subtract $31 from the pressed key ASCII code, effectively mapping the "1" key to 0, "2" to 1, etc.
  $7B13 Validate the pressed key by making sure that none of the bits older than the first three are set, effectively allowing values 0 through 7.
  $7B17 Repeat if a valid key was not pressed.
@ $7B1A isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
  $7B1A,2 PAPER BLACK; INK WHITE
  $7B27 Print keyboard configuration
@ $7B30 label=instructions_print
N $7B30 Print instructions and wait for Enter key.
  $7B30 Print instructions text (#R$7882, 168 bytes) via ROM PR_STRING.
  $7B39 Initialize LAST_K to space character.
@ $7B3E label=instructions_input
N $7B3E Wait for user to press Enter.
  $7B3E Read last key pressed from LAST_K.
  $7B41 Scan keyboard via ROM routine.
  $7B45 Loop until Enter ($0D) is pressed.
  $7B4A Exit loop when Enter detected.
  $7B4D,5 Clear overview mode flag (start game).
@ $7B57 label=switch_to_overview_mode
c $7B57 Switch to overview/demo mode on timeout.
D $7B57 Called when the control selection timer expires without user input.
  $7B57 Set overview mode flag to $01 (enabled).
  $7B5C,5 Restore stack pointer and return to caller.
u $7B61
@ $8000 label=status_line_1
@ $8000 isub=DEFM EXT_ATTR_PAPER,COLOR_BLACK
t $8000
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
@ $802F isub=DEFM EXT_ATTR_INK,COLOR_YELLOW
T $802F INK YELLOW
@ $8031 label=status_line_2
@ $8031 isub=DEFM EXT_ATTR_AT,$01,$02
t $8031
T $8031 AT 1,2
@ $8034 isub=DEFM EXT_ATTR_INK,COLOR_YELLOW
T $8034 INK YELLOW
T $8036
@ $8040 isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $8040 INK WHITE
@ $8042 isub=DEFM EXT_ATTR_AT,$01,$12
T $8042 AT 1,18
T $8045
@ $804F label=status_line_3
@ $804F isub=DEFM EXT_ATTR_AT,$13,$12
t $804F
T $804F AT 19,18
@ $8052 label=status_line_3_text
t $8052
T $8052
@ $805A label=status_line_4
@ $805A isub=DEFM EXT_ATTR_AT,$14,$04
t $805A
T $805A AT 20,4
@ $805D isub=DEFM EXT_ATTR_INK,COLOR_WHITE
T $805D INK WHITE
@ $805F label=status_line_4_end
u $805F End marker for status_line_4 length calculation
@ $8063 label=data_terrain_profiles
b $8063 Array [15] of terrain element definitions (16 bytes each).
N $8063 Each byte of the element defines the relative terrain width
  $8063 Terrain 1
  $8073 Terrain 2 (special, pre-bridge)
  $8083 Terrain 3 (special, bridge)
  $8093 Terrain 4 (special, post-bridge)
  $80A3 Terrain 5
  $80B3 Terrain 6
  $80C3 Terrain 7
  $80D3 Terrain 8
  $80E3 Terrain 9
  $80F3 Terrain 10
  $8103 Terrain 11
  $8113 Terrain 12 (river narrows)
  $8123 Terrain 13 (river widens)
  $8133 Terrain 14
  $8143,16 Terrain 15
@ $8153 label=msg_game_over
t $8153 Game Over message.
@ $8182 label=msg_credits
t $8182
  $818D,1 Trademark UDG symbol
  $81A8,1 Copyright symbol
  $81AF,7 Activision logo UDG symbols
B $81E4
T $81E8
B $825C
@ $825D label=udg_data
b $825D
D $825D #UDGTABLE { #FONT$825D,13 } TABLE#
@ $82C5 label=all_ff
b $82C5
@ $82F5 label=sprite_erasure
b $82F5
@ $8331 label=sprite_terrain_pre_post_bridge
b $8331
@ $8351 label=sprite_road_and_bridge_pixels
b $8351
@ $8371 label=sprite_road_attributes
b $8371
u $8391
@ $83B1 label=sprite_plane
b $83B1
N $83B1 #UDGTABLE { #UDGARRAY2,14,4,2;$83B1-$83B2-1-16(*plane-f1) | #UDGARRAY2,14,4,2;$83C1-$83C2-1-16(*plane-f2) | #UDGARRAY2,14,4,2;$83D1-$83D2-1-16(*plane-f3) | #UDGARRAY2,14,4,2;$83E1-$83E2-1-16(*plane-f4) } TABLE#
N $83B1 #UDGTABLE { #UDGARRAY2,14,4,2;$83B1-$83B2-1-16(*plane-f1) | #UDGARRAY2,14,4,2;$83C1-$83C2-1-16(*plane-f2) | #UDGARRAY2,14,4,2;$83D1-$83D2-1-16(*plane-f3) | #UDGARRAY2,14,4,2;$83E1-$83E2-1-16(*plane-f4) } TABLE#
  $83B1,16,2 Frame 1
@ $83BB ofix=DEFB $92,$00
  $83C1,16,2 Frame 2
@ $83CB ofix=DEFB $24,$80
  $83D1,16,2 Frame 3
  $83E1,16,2 Frame 4
@ $83F1 label=sprite_plane_banked
b $83F1
N $83F1 #UDGTABLE { #UDGARRAY2,14,4,2;$83F1-$83F2-1-16(*plane-banked-f1) | #UDGARRAY2,14,4,2;$8401-$8402-1-16(*plane-banked-f2) | #UDGARRAY2,14,4,2;$8411-$8412-1-16(*plane-banked-f3) | #UDGARRAY2,14,4,2;$8421-$8422-1-16(*plane-banked-f4) | #UDGARRAY*plane-f1,50;plane-banked-f1;plane-banked-f2;plane-banked-f3;plane-banked-f4;plane-f4;plane-banked-f4;plane-banked-f3;plane-banked-f2;plane-banked-f1(plane) } TABLE#
  $83F1,16,2 Frame 1
  $8401,16,2 Frame 2
  $8411,16,2 Frame 3
  $8421,16,2 Frame 4
@ $8431 label=sprite_missile
b $8431
  $8431,8,1 Frame 1
  $8439,8,1 Frame 2
  $8441,8,1 Frame 3
  $8449,8,1 Frame 4
@ $8451 label=sprite_missile_trail
b $8451
@ $8471 label=sprite_explosion_f1
b $8471
N $8471 #UDGTABLE { #UDGARRAY2,14,4,2;$8471-$8472-1-16(*explosion-f1) } TABLE#
  $8471,16,2
@ $8481 label=sprite_explosion_f2
b $8481
N $8481 #UDGTABLE { #UDGARRAY2,14,4,2;$8481-$8482-1-16(*explosion-f2) } TABLE#
  $8481,16,2
@ $8491 label=sprite_explosion_f3
b $8491
N $8491 #UDGTABLE { #UDGARRAY2,14,4,2;$8491-$8492-1-16(*explosion-f3) | #UDGARRAY*explosion-f1,50;explosion-f2;explosion-f3;explosion-f2(explosion) } TABLE#
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
t $8561
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
N $85B3 #UDGTABLE { #UDGARRAY3,14,4,3;$85B3-$85B6-1-16(*helicopter-reg-left-f1) | #UDGARRAY3,14,4,3;$85CB-$85CF-1-16(*helicopter-reg-left-f2) | #UDGARRAY3,14,4,3;$85E3-$85E6-1-16(*helicopter-reg-left-f3) | #UDGARRAY3,14,4,3;$85FB-$85FE-1-16(*helicopter-reg-left-f4) } TABLE#
N $85B3 Array [4] of regular helicopter headed left sprites (3×1 tiles, 24 bytes).
  $85B3,24,3 Frame 1
  $85CB,24,3 Frame 2
  $85E3,24,3 Frame 3
  $85FB,24,3 Frame 4
N $8613 #UDGTABLE { #UDGARRAY3,13,4,3;$8613-$8616-1-16(*ship-left-f1) | #UDGARRAY3,13,4,3;$862B-$862E-1-16(*ship-left-f2) | #UDGARRAY3,13,4,3;$8643-$8646-1-16(*ship-left-f3) | #UDGARRAY3,13,4,3;$865B-$865E-1-16(*ship-left-f4) } TABLE#
N $8613 Array [4] of ship headed left sprites (each element is 3×1 tiles = 24 bytes).
  $8613,24,3 Frame 1
  $862B,24,3 Frame 2
  $8643,24,3 Frame 3
  $865B,24,3 Frame 4
N $8673 #UDGTABLE { #UDGARRAY3,14,4,3;$8673-$8676-1-16(*helicopter-adv-left-f1) | #UDGARRAY3,14,4,3;$868B-$868F-1-16(*helicopter-adv-left-f2) | #UDGARRAY3,14,4,3;$86A3-$86A6-1-16(*helicopter-adv-left-f3) | #UDGARRAY3,14,4,3;$86BB-$86BE-1-16(*helicopter-adv-left-f4) } TABLE#
N $8673 Array [4] of advanced helicopter headed left sprites (each element is 3×1 tiles = 24 bytes).
  $8673,24,3 Frame 1
  $868B,24,3 Frame 2
  $86A3,24,3 Frame 3
  $86BB,24,3 Frame 4
N $86D3 #UDGTABLE { #UDGARRAY3,60,4,3;$86D3-$86D6-1-16(*tank-left-f1) | #UDGARRAY3,60,4,3;$86EB-$86EE-1-16(*tank-left-f2) | #UDGARRAY3,60,4,3;$8703-$8706-1-16(*tank-left-f3) | #UDGARRAY3,60,4,3;$871B-$871E-1-16(*tank-left-f4) } TABLE#
N $86D3 Array [4] of tank headed left sprites (each element is 3×1 tiles = 24 bytes).
  $86D3,24,3 Frame 1
  $86EB,24,3 Frame 2
  $8703,24,3 Frame 3
  $871B,24,3 Frame 4
N $8733 #UDGTABLE { #UDGARRAY3,12,4,3;$8733-$8736-1-16(*fighter-left-f1) | #UDGARRAY3,12,4,3;$874B-$874E-1-16(*fighter-left-f2) | #UDGARRAY3,12,4,3;$8763-$8766-1-16(*fighter-left-f3) | #UDGARRAY3,12,4,3;$877B-$877E-1-16(*fighter-left-f4) } TABLE#
N $8733 Array [4] of fighter headed left sprites (each element is 3×1 tiles = 24 bytes).
  $8733,24,3 Frame 1
@ $8736 ofix=DEFB $00,$40,$00
@ $8739 ofix=DEFB $70,$C0,$00
  $874B,24,3 Frame 2
  $8763,24,3 Frame 3
  $877B,24,3 Frame 4
@ $8793 label=sprite_enemies_right
b $8793 Array [5] arrays of enemy headed right sprites (each element is 3×1 tiles × 4 frames = 96 bytes).
N $8793 #UDGTABLE { #UDGARRAY3,14,4,3;$8793-$8796-1-16(*helicopter-reg-right-f1) | #UDGARRAY3,14,4,3;$87AB-$87AE-1-16(*helicopter-reg-right-f2) | #UDGARRAY3,14,4,3;$87C3-$87C6-1-16(*helicopter-reg-right-f3) | #UDGARRAY3,14,4,3;$87DB-$87DE-1-16(*helicopter-reg-right-f4) | #UDGARRAY*helicopter-reg-right-f1,50;helicopter-reg-right-f2;helicopter-reg-right-f3;helicopter-reg-right-f4;helicopter-reg-left-f4;helicopter-reg-left-f3;helicopter-reg-left-f2;helicopter-reg-left-f1(helicopter-reg) } TABLE#
N $8793 Array [4] of regular helicopter headed right sprites (each element is 3×1 tiles = 24 bytes).
N $8793 #UDGTABLE { #UDGARRAY3,13,4,3;$87F3-$87F6-1-16(*ship-right-f1) | #UDGARRAY3,13,4,3;$880B-$880E-1-16(*ship-right-f2) | #UDGARRAY3,13,4,3;$8823-$8826-1-16(*ship-right-f3) | #UDGARRAY3,13,4,3;$883B-$883E-1-16(*ship-right-f4) | #UDGARRAY*ship-right-f1,50;ship-right-f2;ship-right-f3;ship-right-f4;ship-left-f4;ship-left-f3;ship-left-f2;ship-left-f1(ship) } TABLE#
N $8793 #UDGTABLE { #UDGARRAY3,14,4,3;$8853-$8856-1-16(*helicopter-adv-right-f1) | #UDGARRAY3,14,4,3;$886B-$886E-1-16(*helicopter-adv-right-f2) | #UDGARRAY3,14,4,3;$8883-$8886-1-16(*helicopter-adv-right-f3) | #UDGARRAY3,14,4,3;$889B-$889E-1-16(*helicopter-adv-right-f4) | #UDGARRAY*helicopter-adv-right-f1,50;helicopter-adv-right-f2;helicopter-adv-right-f3;helicopter-adv-right-f4;helicopter-adv-left-f4;helicopter-adv-left-f3;helicopter-adv-left-f2;helicopter-adv-left-f1(helicopter-adv) } TABLE#
N $8793 #UDGTABLE { #UDGARRAY3,60,4,3;$88B3-$88B6-1-16(*tank-right-f1) | #UDGARRAY3,60,4,3;$88CB-$88CE-1-16(*tank-right-f2) | #UDGARRAY3,60,4,3;$88E3-$88E6-1-16(*tank-right-f3) | #UDGARRAY3,60,4,3;$88FB-$88FE-1-16(*tank-right-f4) | #UDGARRAY*tank-right-f1,50;tank-right-f2;tank-right-f3;tank-right-f4;tank-left-f4;tank-left-f3;tank-left-f2;tank-left-f1(tank) } TABLE#
  $8793,24,3 Frame 1
  $87AB,24,3 Frame 2
  $87C3,24,3 Frame 3
  $87DB,24,3 Frame 4
N $87F3 Array [4] of ship headed right sprites (each element is 3×1 tiles = 24 bytes).
  $87F3,24,3 Frame 1
  $880B,24,3 Frame 2
  $8823,24,3 Frame 3
  $883B,24,3 Frame 4
N $8853 Array [4] of advanced helicopter headed right sprites (each element is 3×1 tiles = 24 bytes).
  $8853,24,3 Frame 1
  $886B,24,3 Frame 2
  $8883,24,3 Frame 3
  $889B,24,3 Frame 4
N $88B3 Array [4] of tank headed right sprites (each element is 3×1 tiles = 24 bytes).
  $88B3,24,3 Frame 1
  $88CB,24,3 Frame 2
  $88E3,24,3 Frame 3
  $88FB,24,3 Frame 4
N $8913 #UDGTABLE { #UDGARRAY3,12,4,3;$8913-$8916-1-16(*fighter-right-f1) | #UDGARRAY3,12,4,3;$892B-$892E-1-16(*fighter-right-f2) | #UDGARRAY3,12,4,3;$8943-$8946-1-16(*fighter-right-f3) | #UDGARRAY3,12,4,3;$895B-$895E-1-16(*fighter-right-f4) | #UDGARRAY*fighter-right-f1,50;fighter-right-f2;fighter-right-f3;fighter-right-f4;fighter-left-f4;fighter-left-f3;fighter-left-f2;fighter-left-f1(fighter) } TABLE#
N $8913 Array [4] of fighter headed right sprites (each element is 3×1 tiles = 24 bytes).
  $8913,24,3 Frame 1
@ $8916 ofix=DEFB $80,$00,$00
@ $8919 ofix=DEFB $C3,$80,$00
@ $891F ofix=DEFB $4F,$C0,$00
  $892B,24,3 Frame 2
@ $893A ofix=DEFB $0F,$00,$00
  $8943,24,3 Frame 3
  $895B,21,3 Frame 4
@ $8972 label=sprite_balloon
b $8972 Array [4] of balloon sprites (2×2 tiles, 32 bytes).
N $8972 #UDGTABLE { #UDGARRAY2,14,4,2;$8972-$898A-1-16(*balloon-f1) | #UDGARRAY2,14,4,2;$8992-$89AA-1-16(*balloon-f2) | #UDGARRAY2,14,4,2;$89B2-$89CA-1-16(*balloon-f3) | #UDGARRAY2,14,4,2;$89D2-$89EA-1-16(*balloon-f4) | #UDGARRAY*balloon-f1,50;balloon-f2;balloon-f3;balloon-f4;balloon-f3;balloon-f2(balloon) } TABLE#
  $8972,32,2 Frame 1
  $8992,32,2 Frame 2
  $89B2,32,2 Frame 3
  $89D2,32,2 Frame 4
@ $89F2 label=terrain_edge_left
b $89F2
  $89F2,2,2 10 pixels
  $89F4,2,2 12 pixels
  $89F6,2,2 14 pixels
  $89F8,2,2 16 pixels
@ $89FA label=terrain_edge_right
b $89FA
  $89FA,2,2 16 pixels
  $89FC,2,2 14 pixels
  $89FE,2,2 12 pixels
  $8A00,2,2 10 pixels
@ $8A02 label=do_fire
c $8A02 Generate firing sound effect.
D $8A02 Produces the "pew" sound when the player fires a missile by toggling the speaker port rapidly.
  $8A02 Loop 8 times for sound duration.
@ $8A04 label=do_fire_pulse_loop
  $8A04 Turn speaker ON (cyan border flash).
  $8A08 Initialize delay counter for sound frequency.
@ $8A0A label=do_fire_delay_loop
  $8A0A Delay loop for sound frequency.
  $8A0D Turn speaker OFF.
  $8A11,9 Delay and loop for next sound pulse.
@ $8A1B label=scroll_attribute_row
c $8A1B Scroll the bottom attribute row left by 1 pixel.
D $8A1B Shifts the pixels in the bottom visible row (#R$5800-1 down) left by 1 bit. Used during terrain scrolling.
  $8A1B Start at #R$5800-1 (bottom-right of visible area), loop 8 rows.
@ $8A20 label=scroll_attr_outer_loop
  $8A20 Set up inner loop for 32 bytes.
@ $8A23 label=scroll_attr_inner_loop
  $8A23 Rotate byte left, advance, loop 32 times.
  $8A28,10 Move up one row ($E0 bytes back), continue outer loop.
@ $8A33 label=init_udg
c $8A33 Initialize UDG and screen attributes.
D $8A33 Sets border to black, fills lower screen attributes with white-on-black, and copies UDG graphics to the UDG area.
  $8A33 Set border to black via OUT to port $FE.
@ $8A37 ignoreua=$5A40
  $8A37 Fill $C0 (192) attribute bytes starting at $5A40 with $07 (white on black).
@ $8A39 nowarn
@ $8A3C label=init_udg_loop
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
@ $8AB8 label=sprite_helicopter_rotor_left
b $8AB8
@ $8AC8 label=sprite_helicopter_rotor_right
b $8AC8
u $8AD8
@ $8B08 label=collision_dispatcher_ptr
g $8B08 Pointer to #R$6136 (collision dispatcher)
W $8B08
@ $8B0A label=previous_object_coordinates
g $8B0A
W $8B0A
@ $8B0C label=object_coordinates
g $8B0C Highest byte is the vertical coordinate, lowest byte is the horizontal.
W $8B0C
@ $8B0E label=render_sprite_ptr
g $8B0E
W $8B0E
@ $8B10 label=render_old_sprite_ptr
g $8B10
W $8B10
@ $8B12 label=render_new_screen_addr
g $8B12
W $8B12
@ $8B14 label=render_old_screen_addr
g $8B14
W $8B14
@ $8B16 label=render_sprite_ptr_out
g $8B16
W $8B16
u $8B18
@ $8B1A label=render_object_width
g $8B1A
s $8B1B
@ $8B1E label=render_sprite
c $8B1E Render a sprite at position from #R$8B0A.
D $8B1E Calculates the correct animation frame from position and renders the sprite.
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
D $8B3C Main rendering routine that copies sprite data to screen, checking for pixel collisions.
R $8B3C I:A Sprite width in tiles
R $8B3C I:BC Sprite size in bytes
R $8B3C I:D  Frame number and some other info
R $8B3C I:E  Screen attributes
R $8B3C I:HL Pointer to the sprite array
  $8B3C,5 Save DE, store width, call set_sprite_attributes.
  $8B44 Calculate frame index from E bits 1-2.
  $8B4B Prepare for frame loop.
@ $8B4D label=render_object_frame_loop
  $8B4D Add frame offset to HL, loop until done.
  $8B51,6 Store sprite pointers to render_old_sprite_ptr and render_sprite_ptr_out.
@ $8B58 label=render_object_entry
  $8B58 Save DE, load object_coordinates.
  $8B5D,3 Calculate screen address for new position.
  $8B63,7 Calculate screen address for old position.
  $8B6D Jump to render loop.
@ $8B70 label=render_row_loop
c $8B70 Process one row of sprite rendering.
D $8B70 Handles screen boundary wrapping for the new object position and calls the sprite renderer.
  $8B70 Check if new Y position crosses character boundary.
  $8B7D If crossing third-of-screen boundary, adjust screen address by $7E0.
  $8B85,12 Store new screen address and continue.
@ $8B94 label=adjust_new_screen_third
c $8B94 Adjust screen address for third-of-screen crossing.
D $8B94 Subtracts $E0 to move screen pointer up one character row.
  $8B94,12 HL -= $E0 (adjust for character row boundary).
@ $8BA3 label=adjust_old_position
c $8BA3 Process old position screen address adjustment.
D $8BA3 Similar boundary handling for the old (erasure) position.
  $8BA3,9 Check if old Y position crosses character boundary.
  $8BAF If crossing third-of-screen boundary, adjust by $7E0.
  $8BB7,12 Store adjusted address.
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
u $8C4A
@ $8FFC label=sprite_tank_shell_explosion
b $8FFC
  $8FFC,32,2 Frame 1
  $901C,32,2 Frame 2
  $903C,32,2 Frame 3
  $905C,32,2 Frame 4
  $907C,32,2 Frame 5
  $909C,32,2 Frame 6
@ $90BC label=state_score_player_1_low
t $90BC
@ $90BE label=state_score_player_1_mid
t $90BE
@ $90C0 label=state_score_player_1_high
t $90C0
@ $90C2 label=state_score_player_2_low
t $90C2
@ $90C4 label=state_score_player_2_mid
t $90C4
@ $90C6 label=state_score_player_2_high
t $90C6
t $90C8
t $90CE
@ $90E0 label=add_points
c $90E0 Add score points for a hit target
D $90E0 Adds points encoded in A (divided by 10). High nibble = tens, low nibble = units.
R $90E0 I:A Number of points to add divided by 10.
  $90E0,11 Extract high nibble (tens), skip if zero.
@ $90EE label=add_points_tens_loop
  $90EE,8 Add 20 points per tens digit, loop.
@ $90F8 label=add_points_units_entry
  $90F8 Extract low nibble (units), return if zero.
@ $90FE label=add_points_units_loop
  $90FE,10 Add 10 points per units digit, loop.
@ $9109 label=add_life
c $9109 Add a life to the current player.
D $9109 Increments the current player's life count and triggers the bonus life sound effect.
  $9119,2 Set CONTROLS_BIT_BONUS_LIFE to trigger bonus sound.
@ $9122 label=update_score
c $9122 Update and print score for current player.
D $9122 Adds points to the current player's score and refreshes the on-screen display. The update type determines which digit to increment: type 1 = 100,000s, type 2 = 10,000s, etc. Type 4 is special and awards a bonus life.
R $9122 I:A Update type (1=player 1, 2=player 2, 4=both)
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
  $913B Load #R$90BC (player 1 score), add offset C to get digit pointer.
  $9140 Save offset to D, load digit, increment it.
  $9144 If digit > '9' ($3A), jump to #R$9191 for carry.
  $914A Store incremented digit, fall through to print.
@ $914B label=print_player_1_score_digit
@ $914B isub=LD A,EXT_ATTR_INK
c $914B Print a digit from player 1's score.
D $914B Prints a single score digit at the correct screen position using ROM RST $10 character output.
R $914B I:D Digit offset (0-5, used to calculate column).
R $914B I:HL Pointer to the digit character.
  $914B Set INK to player 1 color (yellow).
@ $914E isub=LD A,COLOR_PLAYER_1
@ $9151 isub=LD A,EXT_ATTR_PAPER
  $9151 Set PAPER to black.
@ $9154 isub=LD A,COLOR_BLACK
@ $9157 isub=LD A,EXT_ATTR_AT
  $9157 Set cursor position to row 1.
  $915D Calculate column = offset + 5, print column position.
  $9161 Load digit from score buffer and print it.
  $9163 Switch to channel 2 (main screen) and return.
@ $9169 label=inc_player_2_score_digit
c $9169 Increase a digit in the player 2's score.
D $9169 Increments the ASCII digit at the specified offset in player 2's score buffer. If the digit overflows past '9', it jumps to the carry routine. Otherwise prints the updated digit.
R $9169 I:C Offset of the digit to increase (0=leftmost, 5=rightmost).
R $9169 O:D Offset of the digit (passed to print routine).
  $9169 Load #R$90C2 (player 2 score), add offset C to get digit pointer.
  $916E Save offset to D, load digit, increment it.
  $9172 If digit > '9' ($3A), jump to #R$91A9 for carry.
  $9178 Store incremented digit, fall through to print.
@ $9179 label=print_player_2_score_digit
@ $9179 isub=LD A,EXT_ATTR_INK
c $9179 Print a digit from player 2's score.
D $9179 Prints a single score digit at the correct screen position using ROM RST $10 character output.
R $9179 I:D Digit offset (0-5, used to calculate column).
R $9179 I:HL Pointer to the digit character.
  $9179 Set INK to player 2 color (cyan).
@ $917C isub=LD A,COLOR_PLAYER_2
@ $917F isub=LD A,EXT_ATTR_AT
  $917F Set cursor position to row 1.
  $9185 Calculate column = offset + 21, print column position.
  $9189 Load digit from score buffer and print it.
  $918B Switch to channel 2 (main screen) and return.
@ $9191 label=carry_player_1_score_digit
c $9191 Handle carry for player 1's score digit.
D $9191 When a digit overflows past '9', this routine sets it to '0' and propagates the carry to the next higher digit by recursively calling update_score.
R $9191 I:D Offset of the overflowed digit.
R $9191 I:HL Pointer to the overflowed digit.
  $9191 Write '0' to the overflowed digit.
  $9193 Check if this is the leftmost digit (offset 0): A = 6-D+1, if A == 7 then return.
  $9199 Return if leftmost digit (no more digits to carry into).
  $919A Save HL/DE, call #R$9122 to increment next higher digit.
  $919F Open channel 1 (upper screen) for printing.
  $91A4 Restore HL/DE, jump to #R$914B to print the '0' digit.
@ $91A9 label=carry_player_2_score_digit
c $91A9 Handle carry for player 2's score digit.
D $91A9 When a digit overflows past '9', this routine sets it to '0' and propagates the carry to the next higher digit by recursively calling update_score.
R $91A9 I:D Offset of the overflowed digit.
R $91A9 I:HL Pointer to the overflowed digit.
  $91A9 Write '0' to the overflowed digit.
  $91AB Check if this is the leftmost digit (offset 0): A = 6-D+1, if A == 7 then return.
  $91B1 Return if leftmost digit (no more digits to carry into).
  $91B2 Save HL/DE, call #R$9122 to increment next higher digit.
  $91B7 Open channel 1 (upper screen) for printing.
  $91BC Restore HL/DE, jump to #R$9179 to print the '0' digit.
@ $91C1 label=print_score_player_2
@ $91C1 isub=LD A,EXT_ATTR_INK
c $91C1 Print player 2's score on the status line.
D $91C1 Displays player 2's full score area including "P2" label and leading zero.
  $91C1 Set INK to player 2 color (cyan).
@ $91C4 isub=LD A,COLOR_PLAYER_2
@ $91C7 isub=LD BC,L90C8 - state_score_player_2_low
  $91C7 Print 6-digit score from #R$90C2 via ROM PR_STRING.
  $91D0 Print trailing '0' after score.
@ $91D3 isub=LD A,EXT_ATTR_AT
  $91D3 Position cursor at row 1, column 18.
  $91DC Print "P2" label.
  $91E2 Switch to channel 2 (main screen) and return.
@ $91E8 label=print_player_2_score_area
c $91E8 Print player 2 score area or high score on status line.
D $91E8 In 2-player mode, prints player 2's score. In 1-player mode, prints the high score for the current starting bridge.
  $91E8 Open channel 1 (upper screen).
@ $91ED isub=LD A,EXT_ATTR_AT
  $91ED Position cursor at row 1, column 21.
  $91F6 If 2-player mode, jump to #R$91C1 to print player 2 score.
@ $91F9 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $91FE isub=LD A,EXT_ATTR_INK
  $91FE Set INK to white (for high score display).
@ $9201 isub=LD A,COLOR_WHITE
  $9204 Calculate high score address: base (#R$90C8) + ((game_mode AND $FE) * 3). Print 6-digit high score with leading '0'.
@ $9225 isub=LD A,EXT_ATTR_AT
  $9225 Position cursor at row 1, column 18.
  $922E,11 Print "HI" label, switch to channel 2 (main screen).
@ $923A label=state_game_mode
b $923A The game mode storing the number of players in the first bit and the starting bridge in the next two.
  $923A,1
@ $923B label=state_lives_player_1
g $923B Number of player 1 lives.
@ $923C label=state_lives_player_2
g $923C Number of player 2 lives.
@ $923D label=state_player
b $923D Current player
@ $923E label=print_lives
c $923E Print lives for current player.
D $923E Displays the remaining lives as plane UDG symbols at row 20, column 18. Uses the appropriate player color (yellow for player 1, cyan for player 2).
  $923E,5 If current player is player 2, jump to #R$9277.
@ $9241 isub=CP PLAYER_2
@ $9246 isub=LD A,EXT_ATTR_INK
  $9246 Set INK to player 1 color (yellow).
@ $9249 isub=LD A,COLOR_PLAYER_1
  $924C Load player 1 lives count and fall through.
@ $924F label=print_lives_continue
c $924F Continue printing lives after count has been loaded.
D $924F Positions cursor and prints plane symbols for each life. Pads with spaces to clear any previous display.
R $924F I:A Number of lives.
  $924F Store lives count in B for loop counter.
@ $9250 isub=LD A,EXT_ATTR_AT
  $9250 Position cursor at row 20, column 18.
  $9259 If lives count is 0, skip to padding.
@ $925F label=print_lives_loop
  $925F Print ✈ UDG symbol, loop B times.
@ $9264 label=print_lives_padding
c $9264 Print six spaces to clear old lives display.
D $9264 Ensures any previously displayed lives that no longer exist are erased.
  $9264,18 Print 6 space characters.
@ $9277 label=print_lives_player_2
@ $9277 isub=LD A,EXT_ATTR_INK
c $9277 Player 2 branch of #R$923E.
D $9277 Sets player 2 color and loads player 2 lives count before jumping to common display code.
R $9277 O:A Number of lives.
  $9277 Set INK to player 2 color (cyan).
@ $927A isub=LD A,COLOR_PLAYER_2
  $927D,6 Load player 2 lives count and jump to #R$924F.
@ $9283 label=ptr_state_controls
g $9283 Pointer to #R$6BB0
W $9283 Pointer to #R$6BB0
g $9285
W $9285
g $9287
W $9287
g $9289
W $9289
g $928B
W $928B
@ $928D label=set_sprite_attributes
c $928D Set screen attributes for sprite area.
D $928D Calculates the attribute cells covered by a sprite and fills them with the specified color.
R $928D I:A Sprite width in tiles
R $928D I:E Screen attributes
  $928D,92 Calculate old position attribute area and fill.
@ $92EA label=set_attr_old_outer_loop
@ $92EB label=set_attr_old_inner_loop
@ $92F1 nowarn
@ $92FF label=set_attr_new_position_entry
  $92FF,73 Calculate new position attribute area and fill.
@ $9348 label=set_attr_new_outer_loop
@ $9349 label=set_attr_new_inner_loop
@ $934F nowarn
@ $935D label=handle_zero_attributes
c $935D Return point when attributes are zero (skip attribute setting).
c $9367 Early exit from old position attribute loop.
c $936B Early exit from new position attribute loop.
@ $936F label=set_attr_wrap_old
c $936F Handle attribute wrap for old position at screen third boundary.
  $936F Adjust HL by $03DF, restore and save BC.
@ $9375 label=set_attr_wrap_old_loop
  $9375 Fill attribute row, advance pointer, loop.
  $937A Restore BC, adjust HL, loop back to outer.
@ $9388 label=set_attr_wrap_new
c $9388 Handle attribute wrap for new position at screen third boundary.
  $9388 Adjust HL by $03DF, restore and save BC.
@ $938E label=set_attr_wrap_new_loop
  $938E Fill attribute row, advance pointer, loop.
  $9393 Restore BC, adjust HL, loop back to outer.
@ $93A1 label=compare_scores
c $93A1 Compare two 6-digit scores.
D $93A1 Compares score at HL with score at DE, digit by digit.
R $93A1 I:HL Pointer to first score (6 ASCII digits)
R $93A1 I:DE Pointer to second score (6 ASCII digits)
R $93A1 O:A Result: 0 if equal, 1 if HL < DE, $FF if HL > DE
  $93A1 Initialize digit counter to 6.
@ $93A3 label=compare_scores_loop
  $93A3 Compare digits, return if different, advance pointers, loop.
  $93B7,1 Return 0 (scores equal).
c $93B8 Return 1 (first score less than second).
c $93BB Return $FF (first score greater than second).
@ $93BE label=update_high_score
c $93BE Update high score table from current player score.
D $93BE Compares player 1's score with the appropriate high score slot and updates if higher.
@ $93C1 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $93EC isub=LD BC,state_score_player_2_low - state_score_player_1_low
@ $93F2 label=check_player2_high_score
c $93F2 Check if player 2 score beats player 1 score.
D $93F2 For 2-player games, copies player 2 score to player 1 slot if higher.
@ $9404 isub=LD BC,state_score_player_2_low - state_score_player_1_low
@ $940A label=clear_screen
c $940A Clear the screen by setting all pixel bytes to $00 and all attributes to the value set in #REGd.
R $940A I:D Attribute value.
C $940D,2 Clear the $18 of 256-byte blocks (6144 bytes) of pixels
@ $940F label=clear_scr_block
C $940F,2 256-byte counter
@ $9411 label=clear_scr_byte
C $9414,2 ...loop until the counter is zero
C $9417,2 Process next block
C $9419,2 Set the $03 of 256-byte blocks (768 bytes) of attribute
@ $941B label=clear_scr_attr
C $941D,2 ...loop until the counter is zero
C $9420,2 Process next block
@ $9423 label=ld_lives
c $9423 Load current player lives
R $9423 O:HL Pointer to the current player lives
@ $9429 isub=CP PLAYER_2
u $9430
@ $9500 label=level_terrains
b $9500 Array [48] of level terrain data (256 bytes each).
N $9500 Array [64] of terrain rows (4 bytes each):
N $9500 Byte 1 is the terrain type (see #R$8063).
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
b $C600 Array [?] island data (3 bytes each).
  $C600,108,3
@ $C800 label=level_objects
b $C800 Byte 1: lowest 3 bits - object type (OBJECT_*), bit 3 - rock (then the 2 lowest bits are the rock number); Byte 2 - position.
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
