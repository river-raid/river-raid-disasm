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
@ $5D43 label=L5D43
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
@ $5E40 isub=LD BC,data_unused_805F - status_line_4
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
  $5EBC Display updated lives count
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
@ $5EF6 label=L5EF6
g $5EF6
@ $5EF7 label=L5EF7
g $5EF7
W $5EF7
@ $5EF9 label=L5EF9
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
@ $5F65 label=L5F65
g $5F65
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
@ $5F81 label=L5F81
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
@ $5F8D label=L5F8D
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
  $62D7,3 Return $11 in E (fuel depot Y offset).
@ $62DA label=advance_object
c $62DA Increase vertical coordinate of the object by the value of #R$5F64.
R $62DA I:B Current coordinate
R $62DA O:B New coordinate
@ $62E0 label=retract_object
c $62E0 Decrease vertical coordinate of the object by the value of #R$5F64.
R $62E0 I:B Current coordinate
R $62E0 O:B New coordinate
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
s $693B
@ $693C label=handle_terrain_element_1_eq_3
c $693C
@ $6947 label=handle_terrain_element_1_eq_2
c $6947
@ $694D label=increase_bridge_index
c $694D Increase bridge index and handle overflow by resetting to the first bridge.
R $694D O:A Always set to 0
  $694D Reset Y-position
  $6954 Increase bridge index
  $695B,2 Check for overflow
@ $6963 label=next_bridge_index_overflow
c $6963
  $6963,5 Reset bridge index
@ $696B label=handle_island
c $696B
R $696B I:A The six highest bits of the fourth byte of the terrain element.
@ $6978 label=locate_island_element
@ $697A ofix=JR NZ,$6978
@ $6990 label=render_island_line
c $6990
  $6990,7 Next island line.
  $6994
@ $69A0 label=L6990_locate_sprite
  $69A0 Point #REGhl to the element of #R$8063 with the index defined by #R$5EFA.
  $69A4,9 Point #REGhl to the profile line with the index defined by #R$5F7D.
c $6A3F
c $6A45
@ $6A4A label=get_player_2_bridge
c $6A4A Get player 2's bridge progress
D $6A4A Helper routine that loads player 2's bridge progress into B, replacing player 1's value.
  $6A4A,4 Load player 2's bridge progress into B.
@ $6A4F label=render_terrain_row
c $6A4F
  $6A54 Point #REGhl to the #R$9500 array.
  $6A57,3 Level terrain array size (64 elements × 4 bytes each)
@ $6A60 label=locate_level_terrain
  $6A60 Point #REGhl to the element of #R$9500 with the index defined by #R$5EF0.
  $6A64 Next fragment
  $6A6D If it's the last fragment, advance to the next level
  $6A72,3 Terrain fragment size (4 bytes)
@ $6A79 label=locate_level_terrain_fragment
  $6A79,4 Point #REGhl to the fragment of the current #R$9500 element with the index defined by #R$5F76.
@ $6AA3 label=render_terrain_fragment
@ $6AAF label=locate_terrain_fragment
  $6AAF Point #REGhl to the element of #R$8063 with the index defined by #R$5F77.
  $6AB3 Next line
  $6ABA If it's the last line, advance to the next fragment.
  $6ABF Point #REGhl to byte of the current terrain fragment defined by #R$5F7D.
  $6AC5 Load the value of the current terrain row offset into #REGb. The value loaded into #REGc is unused.
  $6AC9 Load the value of the current terrain profile byte into #REGa.
  $6ACA Jump to handling a special terrain fragment.
  $6ACF,1 Now #REGa contains the coordinate of the left terrain edge.
  $6AD3 For some reason, subtract 16 from the coordinate of the left terrain edge.
  $6AD5,1 Store the result in #REGd to reuse it in multiple operations with #REGa.
  $6ADA Point #REGhl to #R$89F2.
  $6ADD Restore the coordinate of the left terrain edge into #REGa.
  $6ADE Use only the lowest three bits of the coordinate.
  $6AE0 Shift the remaining bits right and left effectively discarding the lowest bit and store the result into #REGc. Why not just make AND 6 instead of AND 7 above?
  $6AE5 Restore the coordinate of the left terrain edge into #REGa.
  $6AE6 Point #REGhl to the element of #R$89F2 defined by #REGc.
  $6AE7 Temporarily store the pointer in #REGde.
  $6AE8 Copy the coordinate of the left terrain edge into #REGc.
  $6AE9,3 Point #REGhl screen address of the beginning of the terrain line being currently rendered.
  $6AEE Calculate the number of full tiles corresponding to the coordinate of the left terrain edge.
  $6AF4 Calculate the address where the terrain edge needs to be rendered.
  $6AF5 Now #REGhl points to the element of #R$89F2 to be rendered, and #REGde contains the address of the screen where it needs to be rendered.
  $6AF6 Why on earth is the edge represented by two bytes?
  $6AF9 Copy the bytes. The 0th element of #R$89F2 contains a 10px sprite, the 1th one contains a 12px sprite and so on. So effectively by extracting 16 from the edge coordinate earlier and adding 10 later we are rendering the terrain edge of the size 6px less than defined. Why?
  $6AFB Restore #REGde back to the screen address of beginning of the edge.
  $6AFD Copy the coordinate of the left terrain edge into #REGb.
  $6AFE,6 Again, calculate the number of full tiles corresponding to the coordinate of the left edge.
@ $6B06 label=fill_terrain_left_loop
@ $6B4B label=fill_terrain_right_loop
@ $6B58 label=state_terrain_element_4_eq_1
c $6B58 A=2C-D
R $6B58 I:C TODO: what is the meaning of this parameter?
R $6B58 I:D Left terrain coordinate.
R $6B58 O:A Right terrain coordinate.
@ $6B5E label=state_terrain_element_4_eq_2
c $6B5E A=C+D
R $6B5E I:C River width.
R $6B5E I:D Left terrain coordinate.
R $6B5E O:A Right terrain coordinate.
@ $6B63 label=ld_fragment_canal_adjacent_to_river
c $6B63 Load the sprite and the attributes of the line of the half of the canal adjacent to the river.
@ $6B6B label=ld_fragment_canal_adjacent_to_road
c $6B6B Load the sprite and the attributes of the line of the half of the canal adjacent to the road.
@ $6B73 label=ld_fragment_road
c $6B73 Load the sprite and the attributes of the line of the road and bridge.
@ $6B7B label=handle_special_terrain_fragment
c $6B7B Handle special terrain fragments (pre and post-bridge canal and the road with the bridge) which have different color attributes than the rest of the terrain fragments.
@ $6B8F label=handle_special_terrain_fragment_continue
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
c $6BD2
@ $6BDB label=int_handler
c $6BDB Non-maskable interrupt handler
  $6BE4,6 Check if H was pressed
@ $6BED label=handle_controls
c $6BED
  $6BED,5 Check if H was pressed
@ $6BF8 isub=BIT CONTROLS_BIT_FIRE,(HL)
@ $6BFD isub=BIT CONTROLS_BIT_BONUS_LIFE,(HL)
@ $6C05 isub=BIT CONTROLS_BIT_EXPLODING,(HL)
@ $6C0D isub=BIT CONTROLS_BIT_LOW_FUEL,(HL)
  $6C13 Distill the state down to CONTROLS_BIT_SPEED_DECREASED and CONTROLS_BIT_SPEED_ALTERED.
  $6C15 Check if only CONTROLS_BIT_SPEED_DECREASED is set.
  $6C1A Check if only CONTROLS_BIT_SPEED_ALTERED is set.
  $6C1F,5 Check if both bits are set.
@ $6C24 label=int_return
c $6C24 Return from the non-maskable interrupt handler
u $6C2B
@ $6C30 label=state_bit4_counter
g $6C30 Bit4 frame counter
@ $6C31 label=do_bonus_life
c $6C31 Do something about bit4
@ $6C52 label=bit4_finish
c $6C52 Finish doing something about bit4
  $6C5A,2 Reset CONTROLS_BIT_BONUS_LIFE
c $6C5D
@ $6C7A label=explosion_counter
g $6C7A Explosion frame counter
@ $6C7B label=beep_explosion
c $6C7B Render explosion
@ $6CAD label=explosion_render_finish
c $6CAD Finish rendering explosion
@ $6CB5 isub=RES CONTROLS_BIT_EXPLODING,(HL)
c $6CB8
c $6CD6
@ $6CF4 label=do_low_fuel
c $6CF4 Render the low fuel signal
@ $6D17 label=overview
c $6D17
@ $6D23 isub=LD D,COLOR_BLUE<<3|COLOR_GREEN
C $6D23,2 PAPER BLUE; INK GREEN
@ $6D2E isub=LD BC,status_line_2 - status_line_1
@ $6D48 isub=LD BC,data_unused_805F - status_line_4
@ $6DB2 isub=LD A,EXT_ATTR_INK
  $6DB2 INK BLACK
@ $6DB5 isub=LD A,COLOR_BLACK
@ $6DB8 isub=LD A,EXT_ATTR_PAPER
  $6DB8 PAPER BLACK
@ $6DBB isub=LD A,COLOR_BLACK
@ $6DBE isub=LD A,EXT_ATTR_AT
  $6DBE,9 AT 1,31
c $6DDD
@ $6DEB label=init_starting_bridge
c $6DEB
c $6DEB
c $6DEB Initializes the starting bridge based on the value of #R$923A using #R$5D3F for the lookup.
  $6DEE Shift the game mode right discarding the bit corresponding to the number of players and leaving the ones corresponding to the starting bridge.
  $6DF0 Point to the beginning of the list
  $6DF3 Advance to the element corresponding to the game mode.
  $6DF7,1 Get the starting bridge number
@ $6DFF label=consume_fuel
c $6DFF
@ $6E02 isub=AND METRONOME_INTERVAL_CONSUME_FUEL
@ $6E0E isub=AND FUEL_CHECK_INTERVAL
@ $6E16 isub=CP FUEL_LEVEL_EMPTY
@ $6E1B isub=AND FUEL_LEVEL_LOW
@ $6E40 label=add_fuel
c $6E40
@ $6E49 isub=AND FUEL_LEVEL_ALMOST_FULL
@ $6E4B isub=CP FUEL_LEVEL_ALMOST_FULL
@ $6E5C isub=ADD A,FUEL_INTAKE_AMOUNT
@ $6E61 isub=AND FUEL_LEVEL_LOW
@ $6E86 label=register_low_fuel
c $6E86 Register low fuel level
  $6E89,2 Set CONTROLS_BIT_LOW_FUEL
@ $6E8C label=register_sufficient_fuel
c $6E8C Register sufficient fuel level
  $6E8F,2 Reset CONTROLS_BIT_LOW_FUEL
@ $6E92 label=signal_fuel_level_excessive
c $6E92
@ $6E9C label=explode_fragment
c $6E9C Explode a single fragment
R $6E9C I:BC Pointer to the fragment to explode.
@ $6E9F isub=SET CONTROLS_BIT_EXPLODING,(HL)
  $6EA1,2 Reset CONTROLS_BIT_FIRE
@ $6EAB label=add_object_to_set
c $6EAB Adds object bytes to the set in the following order: C, B, D.
R $6EAB I:B Mostly $00
R $6EAB I:C Object X-position
R $6EAB I:D Object definition
R $6EAB I:HL Pointer to #R$5F00
@ $6EAC isub=CP SET_MARKER_EMPTY_SLOT
@ $6EB1 isub=CP SET_MARKER_END_OF_SET
@ $6EBC label=write_object_to_set
c $6EBC
c $6EBC
R $6EBC I:A Current value at the address
R $6EBC I:B Mostly $00
R $6EBC I:C Object X-position
R $6EBC I:D Object definition
R $6EBC I:HL Pointer to the element of #R$5F00
@ $6EC1 isub=CP SET_MARKER_END_OF_SET
@ $6EC5 isub=LD (HL),SET_MARKER_END_OF_SET
@ $6EC8 label=render_explosions
c $6EC8
@ $6ED5 isub=CP SET_MARKER_EMPTY_SLOT
@ $6EDA isub=CP SET_MARKER_END_OF_SET
@ $6EF4 isub=AND VIEWPORT_HEIGHT
@ $6EF6 isub=CP VIEWPORT_HEIGHT
@ $6F30 isub=LD A,COLLISION_MODE_NONE
@ $6F63 label=ld_sprite_explosion_f1
c $6F63 Load frame 1 of the explosion sprite.
R $6F63 O:DE Pointer to the sprite.
@ $6F67 label=ld_sprite_explosion_f2
c $6F67 Load frame 2 of the explosion sprite.
R $6F67 O:DE Pointer to the sprite.
@ $6F6B label=ld_sprite_explosion_f3
c $6F6B Load frame 3 of the explosion sprite.
R $6F6B O:DE Pointer to the sprite.
@ $6F6F label=ld_sprite_explosion_erasure
c $6F6F Load explosion erasure sprite.
R $6F6F O:DE Pointer to the sprite.
@ $6F73 label=init_exploding_fragments_ptr
c $6F73
c $6F7A
@ $6F80 isub=LD A,COLLISION_MODE_NONE
@ $6F80 label=next_row
c $6F80 This routine gets called when the screen scrolls by another fragment
@ $6F88 isub=LD DE,SIZE_LEVEL_SLOTS
@ $6F91 label=locate_level
  $6F91,4 Have #REGhl point to the level defined by #REGa
@ $6FAB isub=BIT SLOT_BIT_ROCK,D
@ $6FB1 isub=AND SLOT_MASK_OBJECT_TYPE
@ $6FB3 isub=CP OBJECT_FUEL
@ $6FBB label=render_rock
c $6FBB Render rock
R $6FBB I:D Some info (probably, sprite array index)
R $6FBB I:E Some info (probably, position)
@ $6FBC isub=AND SLOT_MASK_OBJECT_TYPE
@ $6FC2 isub=LD BC,SPRITE_ROCK_FRAME_SIZE
@ $6FC8 label=locate_rock_element
@ $6FDD isub=LD A,SPRITE_ROCK_WIDTH_TILES
@ $6FDF isub=LD DE,SPRITE_ROCK_HEIGHT_PIXELS<<8|SPRITE_ROCK_ATTRIBUTES
@ $6FE6 label=ld_enemy_sprites_right
c $6FE6 Load array of arrays of enemy headed right sprites.
R $6FE6 O:HL Pointer to the array of arrays of sprites.
c $6FEA
@ $6FF6 label=render_enemy
@ $6FF6 isub=CP OBJECT_BALLOON
c $6FF6 Render enemy
R $6FF6 I:A Object type
R $6FF6 I:D Object definition
R $6FF6 I:E Object X-position
@ $6FFB isub=CP OBJECT_FIGHTER
@ $7000 isub=CP OBJECT_TANK
@ $7016 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7019 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
@ $701C isub=AND SLOT_MASK_OBJECT_TYPE
@ $701E isub=CP OBJECT_SHIP
@ $7023 isub=CP OBJECT_FIGHTER
@ $7028 isub=CP OBJECT_TANK
@ $702D isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $702F isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $7038 isub=LD E,SPRITE_SHIP_ATTRIBUTES
@ $7038 label=ld_attributes_ship
c $7038 Load ship screen attributes.
R $7038 O:E Attributes
@ $703B isub=LD E,SPRITE_FIGHTER_ATTRIBUTES
@ $703B label=ld_attributes_fighter
c $703B Load fighter screen attributes.
R $703B O:E Attributes
@ $703E isub=LD E,SPRITE_TANK_ATTRIBUTES
@ $703E label=ld_attributes_tank
c $703E Load tank screen attributes.
R $703E O:E Attributes
@ $7040 isub=BIT SLOT_BIT_TANK_ON_BANK,D
@ $7043 isub=LD E,SPRITE_TANK_ON_BANK_ATTRIBUTES
@ $7046 label=blending_mode_xor_nop
c $7046
@ $7048 nowarn
  $7048,3 Put "XOR B" into #R$8C3C
@ $704D nowarn
  $704D,3 Put "NOP" into #R$8C1B
@ $7051 label=render_fuel
c $7051 Render fuel station
R $7051 I:E X position
@ $7060 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
@ $7063 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
@ $7065 isub=LD DE,SPRITE_FUEL_STATION_HEIGHT_PIXELS<<8|SPRITE_FUEL_STATION_ATTRIBUTES
@ $706C label=render_balloon
c $706C Render balloon
R $706C I:E X position
@ $7072 isub=LD A,COLLISION_MODE_NONE
@ $7082 isub=LD BC,SPRITE_BALLOON_FRAME_SIZE
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
  $7101,3 If type is 0, jump to L71A2.
@ $7104 label=operate_ship_or_helicopter
c $7104 Ship or helicopter operation routine.
N $7104 Animates the helicopter rotor on each other metronome tick. Advances the object by 2 pixels on each metrinome tick until it approaches the bank closer than 16 pixels, then inverts the object orientation.
@ $7107 isub=AND HELICOPTER_ANIMATION_METRONOME_MASK
@ $7109 isub=CP HELICOPTER_ANIMATION_METRONOME_VALUE
@ $710E isub=BIT SLOT_BIT_ORIENTATION,D
@ $7113 label=ship_or_helicopter_left_advance
c $7113
@ $7128 label=operate_ship_or_helicopter_continue
@ $713E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7141 isub=LD E,SPRITE_3BY1_ENEMY_ATTRIBUTES
@ $7144 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7146 isub=CP OBJECT_SHIP
@ $714B isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $714D isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $7155 isub=LD C,FIGHTER_POSITION_LEFT_INIT
@ $7155 label=fighter_left_reset
c $7155
@ $7158 label=operate_fighter
c $7158 Fighter operation routine.
N $7158 Advances the fighter by 4 pixels on each metronome tick and renders it using the XOR blending mode. When a fighter reaches the screen margin, resets its position.
@ $715C isub=BIT SLOT_BIT_ORIENTATION,D
@ $7161 label=fighter_left_advance
@ $7166 isub=CP FIGHTER_POSITION_LEFT_LIMIT
@ $716B label=operate_fighter_continue
@ $717B isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7181 isub=LD A,COLLISION_MODE_FIGHTER
@ $7186 isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_FIGHTER_ATTRIBUTES
@ $7192 label=fighter_right_advance
c $7192
@ $7197 isub=CP FIGHTER_POSITION_RIGHT_LIMIT
@ $719F isub=LD C,FIGHTER_POSITION_RIGHT_INIT
@ $719F label=fighter_right_reset
c $719F
c $71A2
@ $71A5 isub=AND METRONOME_INTERVAL_1
@ $71A7 isub=CP METRONOME_INTERVAL_1
@ $71FE isub=ADD A,SPRITE_SHELL_EXPLOSION_ATTRIBUTES
@ $7201 isub=LD BC,SPRITE_SHELL_EXPLOSION_FRAME_SIZE_BYTES
@ $7204 isub=LD D,SPRITE_SHELL_EXPLOSION_HEIGHT_PIXELS
@ $7206 isub=LD A,SPRITE_SHELL_EXPLOSION_WIDTH_TILES
@ $720E label=finish_tank_shell_explosion
c $720E
@ $721C isub=RES TANK_SHELL_BIT_EXPLODING,A
c $7224
@ $7225 isub=CP OBJECT_BALLOON
@ $722D isub=AND BALLOON_ANIMATION_METRONOME_MASK
@ $722F isub=CP BALLOON_ANIMATION_METRONOME_VALUE
@ $7235 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7237 isub=CP OBJECT_HELICOPTER_REG
@ $723C isub=CP OBJECT_HELICOPTER_ADV
@ $7248 label=ld_sprite_helicopter_rotor_right
c $7248
R $7248 O:HL Pointer to the sprite
@ $724C label=animate_object
c $724C
@ $724D isub=AND SLOT_MASK_OBJECT_TYPE
@ $724F isub=CP OBJECT_HELICOPTER_REG
@ $7254 isub=CP OBJECT_HELICOPTER_ADV
@ $7259 label=animate_helicopter
c $7259
@ $7265 isub=BIT SLOT_BIT_ORIENTATION,D
@ $727D isub=LD DE,SPRITE_ROTOR_HEIGHT_PIXELS<<8|SPRITE_ROTOR_ATTRIBUTES
@ $7280 isub=LD BC,SPRITE_ROTOR_FRAME_SIZE
@ $7283 isub=LD A,SPRITE_ROTOR_WIDTH_TILES
c $728B
@ $7290 isub=LD A,TANK_SHELL_ACTIVE
@ $7290 label=set_tank_shell_active
c $7290 Set tank shell state to active (tank is at firing position)
@ $7296 label=operate_tank
c $7296
R $7296 I:D OBJECT_DEFINITION
@ $7299 isub=AND METRONOME_INTERVAL_1
@ $729B isub=CP METRONOME_INTERVAL_1
@ $72A6 isub=BIT SLOT_BIT_TANK_ON_BANK,D
@ $72D2 isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $72D8 isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $72DA isub=LD DE,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS<<8|SPRITE_TANK_ATTRIBUTES
@ $72E6 label=blenging_mode_xor_xor
c $72E6
@ $72E8 nowarn
  $72E8 Put "XOR B" into #R$8C1B
@ $72EB nowarn
  $72EB,3 Put "XOR B" into #R$8C3C
@ $72EF label=blenging_mode_or_or
c $72EF
@ $72F1 nowarn
  $72F1 Put "OR B" into #R$8C1B
@ $72F4 nowarn
  $72F4,3 Put "OR B" into #R$8C3C
@ $72F8 label=invert_tank_offset_delta
c $72F8 Decreases the value of XYZ stored in #REGc by $20. Called if the tank is oriented left in order to compensate for the previous operation of adding $10.
R $72F8 I:C Previous value of XYZ.
R $72F8 O:C New value of XYZ.
c $72FD
@ $7302 label=operate_tank_on_bank
c $7302
R $7302 I:D OBJECT_DEFINITION
@ $730A isub=BIT SLOT_BIT_ORIENTATION,D
@ $731D isub=BIT TANK_SHELL_BIT_FLYING,A
@ $7322 isub=BIT TANK_SHELL_BIT_EXPLODING,A
@ $7327 isub=CP TANK_SHELL_STATE_UNITIALIZED
@ $732C isub=RES TANK_SHELL_BIT_EXPLODING,A
@ $732E isub=SET TANK_SHELL_BIT_FLYING,A
@ $7337 isub=BIT SLOT_BIT_ORIENTATION,D
@ $7343 label=init_tank_shell_state
c $7343 Initialize tank shell state.
R $7343 I:D OBJECT_DEFINITION
R $7343 O:A Shell state with the speed and orientation bits initialized.
  $7348 Copy the orientation bit from the object definition to the shell state.
@ $7349 isub=AND 1<<SLOT_BIT_ORIENTATION
  $734C,5 Derive the speed from the interrupt counter (sort of a PRNG).
  $7353,1 Make sure the speed is never zero.
c $7358
c $735E
@ $7361 isub=CP TANK_SHELL_ACTIVE
c $7380
@ $7383 label=tank_shell_state
g $7383
@ $7384 label=tank_shell_trajectory_step
g $7384
@ $7385 label=tank_shell_coordinates
g $7385
W $7385
@ $7387 label=invert_shell_coordinate_delta
c $7387
@ $738E label=invert_helicopter_missle_offset
c $738E Invert the previously calculated helicopter missile offset for right-oriented objects.
@ $738F isub=ADD A,HELICOPTER_MISSILE_STEP*2
@ $7393 label=operate_helicopter_missile
c $7393 Operates helicopter missile.
@ $73A3 isub=SUB HELICOPTER_MISSILE_STEP
@ $73A7 isub=AND VIEWPORT_HEIGHT
@ $73A9 isub=CP VIEWPORT_HEIGHT
@ $73B1 isub=BIT SLOT_BIT_ORIENTATION,A
@ $73BE isub=LD A,COLLISION_MODE_HELICOPTER_MISSILE
@ $73C3 isub=LD A,SPRITE_HELICOPTER_MISSILE_WIDTH_TILES
@ $73C5 isub=LD E,SPRITE_HELICOPTER_MISSILE_ATTRIBUTES
@ $73D0 label=remove_helicopter_missile
c $73D0 Removes helicopter missile.
c $73D8
@ $73DD label=render_helicopter_missile
c $73DD
@ $73E0 isub=CP GAMEPLAY_MODE_SCROLL_IN
@ $7415 label=handle_collision_mode_helicopter_missile
c $7415
@ $7441 label=operate_tank_shell
c $7441
@ $7444 isub=BIT TANK_SHELL_BIT_FLYING,A
@ $7452 isub=CP TANK_SHELL_TRAJECTORY_MAX_STEP
@ $746F isub=AND TANK_SHELL_MASK_SPEED
@ $7476 isub=BIT SLOT_BIT_ORIENTATION,D
@ $7484 isub=LD A,COLLISION_MODE_NONE
@ $748A isub=AND VIEWPORT_HEIGHT
@ $748C isub=CP VIEWPORT_HEIGHT
@ $7494 isub=LD DE,SPRITE_SHELL_HEIGHT_PIXELS<<8|SPRITE_SHELL_ATTRIBUTES
@ $7497 isub=LD A,SPRITE_SHELL_WIDTH_TILES
@ $7499 isub=LD BC,SPRITE_SHELL_FRAME_SIZE_BYTES
c $74A0
@ $74C6 label=render_tank_shell_explosion
c $74C6
@ $74D1 isub=RES TANK_SHELL_BIT_FLYING,A
@ $74D3 isub=SET TANK_SHELL_BIT_EXPLODING,A
@ $74E4 label=remove_tank_shell
c $74E4
c $74EE
@ $7520 isub=LD A,POINTS_TANK
  $7529,2 Set CONTROLS_BIT_BONUS_LIFE
@ $752B isub=SET CONTROLS_BIT_EXPLODING,(HL)
c $7546
@ $754C label=operate_fuel
c $754C
@ $7565 isub=AND VIEWPORT_HEIGHT
@ $7567 isub=CP VIEWPORT_HEIGHT
@ $7577 isub=LD BC,SPRITE_FUEL_STATION_FRAME_SIZE
@ $757D isub=AND METRONOME_INTERVAL_ANIMATE_FUEL
@ $757F isub=ADD A,SPRITE_FUEL_STATION_ATTRIBUTES
@ $7582 isub=LD A,SPRITE_FUEL_STATION_WIDTH_TILES
c $758A
@ $75A2 label=ship_or_helicopter_right_advance
c $75A2
@ $75BA label=ld_enemy_sprites
c $75BA Load array of enemy sprites.
R $75BA I:D OBJECT_DEFINITION
R $75BA I:HL Pointer to the array of sprites
  $75BD,3 Enemy sprite array size (3×1 tiles × 8 bytes/tile × 4 frames)
@ $75C0 isub=BIT SLOT_BIT_ORIENTATION,D
@ $75CB label=ld_enemy_sprites_loop
@ $75D0 label=handle_object_proximity
c $75D0 Handles the situation when a ship or a helicopter is in close proximity to another object.
D $75D0 If it approaches a river bank or a fuel station, it will invert its orientation. But if it's the the player, it won't.
R $75D0 I:BC Object coordinates
  $75D4,4 Return if the object is located in the top half of the screen. Otherwise, the other object may be the player and should be ignored.
@ $75EC isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
  $7604,4 Invert object orientation
@ $7605 isub=XOR 1<<SLOT_BIT_ORIENTATION
@ $7613 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7615 isub=CP OBJECT_SHIP
@ $761A isub=LD D,SPRITE_3BY1_ENEMY_HEIGHT_PIXELS
@ $761C isub=LD A,SPRITE_3BY1_ENEMY_WIDTH_TILES
@ $761E isub=LD BC,SPRITE_3BY1_ENEMY_FRAME_SIZE
@ $7627 label=init_viewport_ptr
c $7627 Point #R$5F60 to the head of #R$5F00.
@ $762E label=remove_object_from_viewport
c $762E
@ $762F isub=LD (HL),SET_MARKER_EMPTY_SLOT
@ $7632 isub=AND SLOT_MASK_OBJECT_TYPE
@ $7634 isub=CP OBJECT_TANK
@ $7639 isub=LD A,TANK_SHELL_INACTIVE
@ $763E isub=BIT SLOT_BIT_TANK_ON_BANK,D
@ $7649 label=operate_baloon
c $7649
@ $769D isub=LD A,SPRITE_BALLOON_WIDTH_TILES
@ $769F isub=LD BC,SPRITE_BALLOON_FRAME_SIZE
@ $76A2 isub=LD E,SPRITE_BALLOON_ATTRIBUTES
@ $76A4 isub=LD D,SPRITE_BALLOON_HEIGHT_PIXELS
@ $76AC label=jp_operate_viewport_objects
c $76AC A useless procedure that unconcditionally jumps to #R$708E.
c $76AF
c $76DA
u $7727
@ $7800 label=tmp_control_type
b $7800 Control type chosen from the dialog before the validation
@ $7801 label=state_overview_mode
b $7801 Overview mode flag ($00 - No, $01 - Yes)
@ $7802 label=controls_timer
w $7802 Stores the number of remaining iterations before the control choice dialog switches to overview mode
@ $7804 label=clear_and_setup
c $7804
@ $7808 isub=LD D,COLOR_BLACK<<3|COLOR_WHITE
C $7808,2 PAPER BLACK; INK WHITE
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
  $7AED The purpose of this block is really unclear
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
  $7B27,9 Print keyboard configuration
@ $7B30 label=instructions_print
@ $7B3E label=instructions_input
  $7B41,4 Scan keyboard
  $7B48 Loop until Enter is pressed
  $7B4D,5 Switch to the non-overview mode
@ $7B57 label=switch_to_overview_mode
c $7B57
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
@ $805F label=data_unused_805F
u $805F Unused data bytes
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
@ $8451 label=L8451
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
c $8A02 Invoked from the interrupt handler when FIRE is pressed
c $8A1B
@ $8A33 label=init_udg
c $8A33
R $8A33 Sets BORDER to BLACK, sets screen attributes to WHITE-on-BLACK and copies #R$825D to the UDG area.
@ $8A39 nowarn
@ $8A3C label=init_udg_loop
@ $8A4E label=calculate_pixel_address
c $8A4E
R $8A4E I:B Vertical coordinate of the object in pixels.
R $8A4E I:C Horizontal coordinate of the object in pixels.
R $8A4E O:B Horizontal coordinate of the object in pixels relative to its tile.
R $8A4E O:HL Screen address corresponding to the coordinates.
C $8A54,6 Load the number of the third of the screen corresponding to the vertical coordinate of the object into #REGa.
C $8A5A,5 Load the starting address of the third of the screen into #REGhl.
C $8A5F,4 Leave only the 6 lowest bits in #REGb which define the coordinate of the object relative to its third of the screen.
C $8A63,2 Unset the 3 lowest bits, so now #REGa contains the coordinate of starting tile relative to its third of the screen.
C $8A66,6 Multiply the value of #REGa by 4 and put into #REGde which makes the offset of the starting tile address from its third of the screen.
C $8A6C,2 Now #REGhl contains the screen address of the tile.
C $8A6E,4 Leave only the 3 lowest bits in #REGb which define the coordinate of the object relative to it tile.
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
@ $8B10 label=L8B10
g $8B10
W $8B10
@ $8B12 label=L8B12
g $8B12
W $8B12
@ $8B14 label=L8B14
g $8B14
W $8B14
@ $8B16 label=L8B16
g $8B16
W $8B16
u $8B18
@ $8B1A label=render_object_width
g $8B1A
s $8B1B
@ $8B1E label=render_sprite
c $8B1E
R $8B1E I:A  Sprite width in tiles
R $8B1E I:BC Sprite frame size
R $8B1E I:D  Frame number
R $8B1E I:E  Screen attributes
R $8B1E I:HL Pointer to the sprite array
@ $8B3C label=render_object
c $8B3C
R $8B3C I:A  Sprite width in tiles
R $8B3C I:BC Sprite size in bytes
R $8B3C I:D  Frame number and some other info
R $8B3C I:E  Screen attributes
R $8B3C I:HL Pointer to the sprite array
c $8B70
c $8B94
c $8BA3
c $8BC6
c $8C0B
@ $8C1B label=L8C1B
c $8C1B
@ $8C3B label=handle_collision_mode_none
@ $8C3C label=L8C3C
c $8C3C
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
R $90E0 I:A Number of points to add divided by 10.
@ $9109 label=add_life
c $9109 Add a life to the current player
  $9119,2 Set CONTROLS_BIT_BONUS_LIFE
  $9119,2 Set CONTROLS_BIT_BONUS_LIFE
@ $9122 label=update_score
c $9122
R $9122 I:A (can be 1, 2 or 4)
@ $9136 isub=CP PLAYER_2
@ $913B label=inc_player_1_score_digit
c $913B Increase a digit in the player 1's score.
R $913B I:C Offset of the digit to increase.
R $913B O:D Offset of the digit to increase.
  $9145,2 Check for digit overflow (the value got beyond the 0-9 ASCII range).
@ $914B label=print_player_1_score_digit
@ $914B isub=LD A,EXT_ATTR_INK
  $914B INK of Player 1 color
@ $914E isub=LD A,COLOR_PLAYER_1
@ $9151 isub=LD A,EXT_ATTR_PAPER
  $9151 PAPER BLACK
@ $9154 isub=LD A,COLOR_BLACK
@ $9157 isub=LD A,EXT_ATTR_AT
  $9157,6 AT 1,...
@ $9169 label=inc_player_2_score_digit
c $9169 Increase a digit in the player 2's score.
R $9169 I:C Offset of the digit to increase.
R $9169 O:D Offset of the digit to increase.
  $9173,2 Check for digit overflow (the value got beyond the 0-9 ASCII range).
@ $9179 label=print_player_2_score_digit
@ $9179 isub=LD A,EXT_ATTR_INK
  $9179 INK of Player 2 color
@ $917C isub=LD A,COLOR_PLAYER_2
@ $917F isub=LD A,EXT_ATTR_AT
  $917F,6 AT 1,...
@ $9191 label=carry_player_1_score_digit
c $9191 Carry
R $9191 I:D Offset of the digit to carry.
R $9191 I:HL Pointer to the digit.
  $9191 Write "0" to the overflown digit.
  $9193 Check if #REGd is equal to 0 in a very weird way: set #REGa to 6.
  $9195 Subtract #REGd from it.
  $9196 Increase #REGa by one.
  $9197,2 Check if we got 7 (which is only possible if #REGd is 0).
@ $91A9 label=carry_player_2_score_digit
c $91A9 Carry
R $91A9 I:D Offset of the digit to carry.
R $91A9 I:HL Pointer to the digit.
@ $91C1 label=print_score_player_2
@ $91C1 isub=LD A,EXT_ATTR_INK
c $91C1
  $91C1 INK of Player 2 color
@ $91C4 isub=LD A,COLOR_PLAYER_2
@ $91C7 isub=LD BC,L90C8 - state_score_player_2_low
  $91C7 Print score.
  $91D0 "0"
@ $91D3 isub=LD A,EXT_ATTR_AT
  $91D3 AT 1,18
  $91DC,6 "P2"
@ $91E8 label=print_player_2_score_area
c $91E8 Print player 2 score area on status line
@ $91ED isub=LD A,EXT_ATTR_AT
  $91ED,9 AT 1,21
@ $91F9 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $91FE isub=LD A,EXT_ATTR_INK
  $91FE,6 INK WHITE
@ $9201 isub=LD A,COLOR_WHITE
@ $9225 isub=LD A,EXT_ATTR_AT
  $9225,9 AT 1,18
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
c $923E Print lives.
@ $9241 isub=CP PLAYER_2
@ $9246 isub=LD A,EXT_ATTR_INK
  $9246,6 INK of Player 1 color
@ $9249 isub=LD A,COLOR_PLAYER_1
@ $924F label=print_lives_continue
c $924F Continue printing lives after the value has been loaded into #REGa.
R $924F I:A Number of lives.
@ $9250 isub=LD A,EXT_ATTR_AT
  $9250,9 AT 20,18
@ $925F label=print_lives_loop
  $925F,3 Print the ✈ UDG symbol
@ $9264 label=print_lives_padding
c $9264 Print six spaces
@ $9277 label=print_lives_player_2
@ $9277 isub=LD A,EXT_ATTR_INK
c $9277 The player 2 branch of the #R$923E routine.
R $9277 O:A Number of lives.
  $9277,6 INK of Player 2 color
@ $927A isub=LD A,COLOR_PLAYER_2
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
c $928D
R $928D I:A Sprite width in tiles
R $928D I:E Screen attributes
@ $92F1 nowarn
@ $934F nowarn
@ $935D label=handle_zero_attributes
c $9367
c $936B
c $936F
c $9388
c $93A1
c $93B8
c $93BB
c $93BE
@ $93C1 isub=BIT GAME_MODE_BIT_TWO_PLAYERS,A
@ $93EC isub=LD BC,state_score_player_2_low - state_score_player_1_low
c $93F2
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
