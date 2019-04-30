* = $0801

!zone constants
  
DEFAULT_PLAYER_SHIELDS            = 3
DEFAULT_PLAYER_MOVE_COOLDOWN      = 2
DEFAULT_PLAYER_FIRE_COOLDOWN      = 6
POWEREDUP_PLAYER_MOVE_COOLDOWN    = 1
POWEREDUP_PLAYER_FIRE_COOLDOWN    = 4
SHIELD_SPAR_COLOR                 = 1
FIRE_SPAR_COLOR                   = 2
SPEED_SPAR_COLOR                  = 6
SPARS_TO_WIN_LEVEL                = 5
NO_EXTRA_SPAR_SPAWN_CHANCE        = $c8
MAX_EXTRA_SPAWNED_SPARS           = 5
MAX_PLAYER_SHIELDS                = 9
UNENCRYPTED_SCROLLTEXT_CHARACTERS = 96
NUMBER_TO_PETSCII_ADJUSTMENT      = $30
PLAYER_SCORE_DIGITS               = 8


!zone mod_flags
  
pristine = 1                 ; Set to exactly rebuild original crossroads 2.prg .

!ifndef pristine {
  always_show_credits = 1    ; Compile out checks for type-in or compute mag and always show credits.
  minimum_escalation = 9     ; Set minimum escalation to make early levels faster.
  remove_dead_code = 1       ; Remove several examples of unreachable code.
  ;show_timing_info = 1
}


!zone internal_values

; Critical character codes.
c_empty = $20
c_spar = $3f 
c_player = $40

; Facing directions.
dir_down = 0
dir_up = 1
dir_right = 2
dir_left = 3

; Enemy types.
et_egghead = 0
et_vacuum = 1
et_tagteam1 = 2
et_tagteam2 = 3
et_mutant = 4
et_lemonshark = 5
et_skull = 6
et_chomper = 7
et_monkey = 8
et_rubberhead1 = 9
et_thrower = 10
et_archer = 11
et_dog = 12
et_rubberhead2 = 13
et_flea = 14
et_lion = 15
et_player = 16
et_bullet = 17
et_worm = 18
et_spear = 19

; Special enemy IDs.
eid_last_player = $1
eid_first_enemy = $0c

; Offset $7FF for BC4
 

!zone hardware_addresses

; C64 Hardware addresses.
ram_rom_mapping          = $01
jiffy255_clock           = $a1
jiffy_clock              = $a2
pressed_key_code         = $cb
stack                    = $0100
screen                   = $0400
vic_sprite_pointer_array = $07f8

character_rom_base       = $d000  ; When mapped by ram_rom_mapping
vic_sprite_coord_array   = $d000
vic_sprite_x_hibits      = $d010 
vic_sprite_enable        = $d015
vic_screen_control_2     = $d016
vic_sprite_double_height = $d017 
vic_select_buffers       = $d018
vic_sprite_color_array   = $d027
vic_sprite_priority_bits = $d01b
vic_sprite_double_width  = $d01d

vic_border_color         = $d020
vic_background_color     = $d021
vic_extra_bg_col_3       = $d024
sid_voice1_high_freq     = $d401
sid_voice1_control       = $d404
sid_voice1_att_dec       = $d405

sid_voice3_low_freq      = $d40e
sid_voice3_high_freq     = $d40f
sid_voice3_control       = $d412
sid_volume_filter        = $d418
sid_voice3_oscillator_ro = $d41b
colors                   = $d800
port_2_joystick          = $dc00
port_1_joystick          = $dc01
cia_timer_control        = $dc0e

; OS ROUTINE
output_string_at_yyaa_until_zero_or_quote = $ab1e


sound_buffer          = $1f46

!zone "Game data"
  
copy_of_character_rom = $2800
udgs_base             = $2a00

; Explosion status bytes; arrays of 8 bytes, one per possible explosion.
explosion_or_implosion          = $4020
explosion_status                = $4028
explosion_count_up_array        = $4030
explosion_base_sprite_pointer   = $4040
explosion_sprite_pointer_offset = $4048
exploding_entity_index          = $4058

game_status_flags               = $4060

; AI/Vision buffers - arrays of 4 bytes, one per facing.
vision_char_seen_indir          = $4061
vision_dist_seen_indir          = $4065
vision_saw_friendly_flag   = $4069
ai_direction_votes              = $406d
ai_fire_bullet_in_direction_score= $407f
slot_udg_loaded_into            = $4096
vision_entityId_seen_indir      = $40ae

; Entity maps. Entities 0 and 1 are player, 2-12 are player bullets, 13+ are enemies.
; Each is an array of 255 values, although it is unlikely 255 entities would be viable.
entity_enemy_type     = $4100        ; Index into enemy type lists.
entity_base_charno    = $4200
entity_bullet_type    = $4300        ; Type of bullet we fire. If MSB set, we _are_ a bullet.
entity_color_and_flags= $4400        ; Four bits color, four bits AI flags.
entity_status_byte    = $4500        ; See bitmap below.
entity_shields        = $4600        ; Number of shields entity has.
p2_shields            = $4601
entity_upd_cooldown   = $4700        ; Frequency with which entity is updated.
entity_vision_distance= $4800        ; Number of squares vision routine scans ahead.
entity_data_cdlow     = $4900
entity_type_fired_me  = $4a00
entity_bullet_speed   = $4b00        ; Frequency with which entity's bullets are updated.
entity_score_awarded  = $4c00        ; Score value for entity.
entity_upd_countdown  = $4d00        ; Used to count down loops until next update.
entity_x_coords       = $4e00        ; X coordinate.
entity_y_coords       = $4f00        ; Y coordinate.
entity_spars_eaten    = $5000        ; How many spars entity has eaten and should drop on death.
entity_facing         = $5100        ; Direction being faced

screen_line_address_lowbytes  = $6000 ; Array of screen line addresses built during initialization.
screen_line_address_highbytes = $6019
player_1_score_digits         = $6040 ; Player 1, player 2, and high score in BCD.
player_2_score_digits         = $6048
high_score_digits             = $6050

; Entity_id_buffer: 2D array the same size as screen, where each byte holds the entity-id of the 
; entity that was most recently in that cell. Note that they are not cleared when the entity moves
; on, because this should only be used when a collision is confirmed on the screen.
entity_id_buffer              = $c000


; It's a 6502 game. It loves zero page global variables.
temp_entity_x_coord               = $03
last_facing_for_joystick_position = $04
processing_entity_number          = $05
proposed_entity_x_coord           = $07
proposed_entity_y_coord           = $08
entity_number_that_hit_player     = $09
last_enemy_processed              = $0d
p1_lives                          = $11
p2_lives                          = $12
p1_shields_copy                   = $14
p2_shields_copy                   = $15
last_entity_killed_by_overpopulation = $39
enemy_sweep_count                 = $3c ; How many times enemy update looped in last 4-jiffy period.
escalation                        = $3f ; Target number of enemy updates in 4-jiffy period, increases with time.
difficulty                        = $41 ; Number of times enemy update loop repeats before waiting.
udg_number_to_load                = $44
interrupt_counter                 = $46 ; Number of times ISR has run.
level_units_b                     = $47
max_enemy_entity                  = $48
player_move_cooldown_counter      = $49 ; 
level_number_byte                 = $4b
oldest_bullet_entity_id           = $4c
player_fire_cooldown_counter      = $4e
spar_animation_timer              = $52
player_sound_flag                 = $66
spars_spawned_by_0d33             = $6b
fast_updates_count                = $6c
show_credits                      = $6d
enemies_left_to_spawn             = $6e
extra_enemies_spawnable           = $8e
player_has_ticked                 = $a8
player_move_cooldown              = $aa
level_bcd_tens                    = $b0
level_bcd_units                   = $b1
udg_slot_to_load_to               = $b9
player_fire_cooldown              = $be
current_map_color                 = $c3
current_wall_character            = $c4
last_processed_explosion          = $c9
current_spar_frame                = $ca
extra_enemy_spawn_chance          = $d7


; Entity status byte layout
; Bit 8/sign = 1 = entity is between squares
; Bit 6/$20  = 1 = immune to damage
esb_frozen             = $40 ; ( If set, $1572 and $185d jump out of entity's loop before processing. ) 
esb_invulnerable       = $20 ; ( If set, $1c17 and $1c50 skip steps that would reduce entity's shield. )
esb_brave              = $10 ; ( If set, $15fb skips applying direction penalty for sighted entities. )
esb_randomdirbumps     = $08 ; ( If set, $1622 bumps current direction and randoms when critical seen. )
esb_secondframe        = $04 ; ( If set, $1292 offsets character used for entity. )
esb_bullet_chance_mask = $03 ; ( Masked off at $166d and a random 2-bit value is subtracted; if it goes 
                             ;   negative, fire. )



; Color flags (high byte)
; Bit 6 = invisible
csf_aggressive     = $40   ;  ( If 1, $165b adds proximity bonus when non-vacuum entity seen )
csf_visible        = $20   ;  ( If 0, $1273 sets drawing color to 0 )
csf_collects_spars = $10   ;  ( If 1, $15db applies direction votes when spars seen )

;to "xroads2.d64", d64
!to "xroads2.prg", cbm


!basic entry



!zone character_graphics
  
first_frames:

;Egghead

!byte %##..###.
!byte %.#.#..##
!byte %.#.###..
!byte %.#.#....
!byte %..####..
!byte %...#####
!byte %..##.##.
!byte %..#...##

;Vacuum

!byte %..###...
!byte %.##.##..
!byte %.####..#
!byte %..##..##
!byte %.#######
!byte %..###.##
!byte %###.##.#
!byte %.#..#...

; Tagteam 1

!byte %#.##....
!byte %#.#..###
!byte %.#####.#
!byte %..##.###
!byte %######..
!byte %..###.##
!byte %.##.##..
!byte %.#...##.

; Tagteam 2

!byte %........
!byte %##...###
!byte %#....#.#
!byte %#.######
!byte %######..
!byte %...#####
!byte %.##.##..
!byte %.#...##.

; Mutant

!byte %........     
!byte %..##....
!byte %..#.....
!byte %..##.###
!byte %.#####..
!byte %..##....
!byte %###.#...
!byte %.#...##.

; Lemonshark

!byte %.######.
!byte %##..####
!byte %#####...
!byte %####....
!byte %#####...
!byte %.#######
!byte %###..##.
!byte %#....###

; Skull

!byte %..####..
!byte %.###..#.
!byte %########
!byte %##.#.#.#
!byte %##......
!byte %##.#.#.#
!byte %.#######
!byte %.##...##

; Chomper

!byte %#####...
!byte %#.#####.
!byte %##.#.#.#
!byte %##......
!byte %##.#.#.#
!byte %.######.
!byte %####....
!byte %#..##...

; Monkey

!byte %##...###
!byte %#...##.#
!byte %#.######
!byte %######..
!byte %########
!byte %###.##..
!byte %##...##.
!byte %##....##

; Rubberhead 1

!byte %########
!byte %#...####
!byte %########
!byte %..####..
!byte %.######.
!byte %.######.
!byte %###.###.
!byte %#....###

; THrower

!byte %....###.
!byte %.#..#...
!byte %###.###.
!byte %.#..##..
!byte %.#######
!byte %.#..###.
!byte %.#.####.
!byte %.#.#..##

; Archer

!byte %###...##
!byte %##...#.#
!byte %###.#..#
!byte %########
!byte %###.#..#
!byte %###..#.#
!byte %##....##
!byte %###.....

; Dog

!byte %........
!byte %........
!byte %........
!byte %#.......
!byte %.#...##.
!byte %.#######
!byte %.#####..
!byte %.#...##.

; Rubberhead 2

!byte %..####..
!byte %..#..##.
!byte %..####..
!byte %..#.....
!byte %..#.....
!byte %..####..
!byte %.#.####.
!byte %.#...##.

; Flea

!byte %.#......
!byte %.#......
!byte %#.......
!byte %#.###...
!byte %#.#.####
!byte %.####...
!byte %..######
!byte %..##.##.

; Lion

!byte %###.....
!byte %#...####
!byte %#...#..#
!byte %########
!byte %######..
!byte %########
!byte %##....#.
!byte %#.....##

; Player

!byte %..###...
!byte %..###...
!byte %..##....
!byte %.#######
!byte %#.#####.
!byte %.##.#...
!byte %##..###.
!byte %###.##..

; Bullet

!byte %........
!byte %........
!byte %........
!byte %..####..
!byte %..####..
!byte %........
!byte %........
!byte %........

; Worm

!byte %........
!byte %........
!byte %.#...#..
!byte %#.#.#.#.
!byte %#.#.#.#.
!byte %...#...#
!byte %........
!byte %........

; Spear

!byte %........
!byte %........
!byte %......#.
!byte %########
!byte %......#.
!byte %........
!byte %........
!byte %........


second_frames:
!byte %.#..###.
!byte %.#.#..##
!byte %#..#####
!byte %.#.##...
!byte %..######
!byte %...####.
!byte %....#...
!byte %....##..

!byte %..###...
!byte %.##.##..
!byte %.#####.#
!byte %..##..##
!byte %########
!byte %..##..##
!byte %..#....#
!byte %..##....

!byte %..##....
!byte %#.#..###
!byte %.###.#.#
!byte %..##.###
!byte %.#####..
!byte %#.##....
!byte %...#....
!byte %...##...

!byte %........
!byte %.....###
!byte %##...#.#
!byte %#.######
!byte %######..
!byte %..###.##
!byte %...#....
!byte %...##...

!byte %........
!byte %..##....
!byte %..#.....
!byte %..#####.
!byte %.####...
!byte %..##....
!byte %..#.....
!byte %..##....

!byte %.######.
!byte %##..####
!byte %########
!byte %####....
!byte %########
!byte %.#######
!byte %..##....
!byte %..###...

!byte %..####..
!byte %.###..#.
!byte %#######.
!byte %########
!byte %##.#.#.#
!byte %########
!byte %.#######
!byte %...###..

!byte %#####...
!byte %#.#####.
!byte %########
!byte %##.#.#.#
!byte %########
!byte %.######.
!byte %.##.....
!byte %.###....

!byte %..#..###
!byte %.##.##.#
!byte %#..#####
!byte %########
!byte %..######
!byte %..####..
!byte %..##....
!byte %..###...

!byte %########
!byte %####...#
!byte %########
!byte %..####..
!byte %.######.
!byte %.######.
!byte %..###...
!byte %..####..

!byte %.#..###.
!byte %###.#...
!byte %.#..###.
!byte %.#..##..
!byte %.######.
!byte %.#..###.
!byte %.#..##..
!byte %....###.

!byte %###...##
!byte %##...#.#
!byte %###.#..#
!byte %########
!byte %###.#..#
!byte %###..#.#
!byte %####..##
!byte %#..##...

!byte %........
!byte %........
!byte %........
!byte %#.......
!byte %#....##.
!byte %########
!byte %.#####..
!byte %..###...

!byte %..####..
!byte %..#..#..
!byte %..#####.
!byte %..#.##..
!byte %..#.....
!byte %..####..
!byte %...#....
!byte %...##...

!byte %........
!byte %..##....
!byte %.#......
!byte %#.###...
!byte %#.#.####
!byte %.####...
!byte %..######
!byte %...##...

!byte %..#.....
!byte %###.####
!byte %#...#..#
!byte %########
!byte %#####...
!byte %########
!byte %.#..##..
!byte %.##.#...

!byte %..###...
!byte %..###...
!byte %..##....
!byte %.#######
!byte %.###.##.
!byte %..##....
!byte %..##....
!byte %..###...

!byte %........
!byte %........
!byte %........
!byte %..####..
!byte %..####..
!byte %........
!byte %........
!byte %........

!byte %........
!byte %........
!byte %...#...#
!byte %#.#.#.#.
!byte %#.#.#.#.
!byte %.#...#..
!byte %........
!byte %........

!byte %........
!byte %........
!byte %......#.
!byte %########
!byte %......#.
!byte %........
!byte %........
!byte %........

walls:

!byte %##.##.##
!byte %##....##
!byte %..####..
!byte %#.####.#
!byte %#.####.#
!byte %..####..
!byte %##....##
!byte %##.##.##

!byte %##.##.##
!byte %###..###
!byte %.######.
!byte %#.####.#
!byte %#.####.#
!byte %.######.
!byte %###..###
!byte %##.##.##

!byte %.######.
!byte %#......#
!byte %#......#
!byte %#......#
!byte %#......#
!byte %#......#
!byte %#......#
!byte %.######.

!byte %.##..##.
!byte %#.#..#.#
!byte %##....##
!byte %...##...
!byte %...##...
!byte %##....##
!byte %#.#..#.#
!byte %.##..##.

!byte %.######.
!byte %#......#
!byte %#..##..#
!byte %#.#..#.#
!byte %#.#..#.#
!byte %#..##..#
!byte %#......#
!byte %.######.

!byte %###..###
!byte %#.#..#.#
!byte %##.##.##
!byte %..#..#..
!byte %..#..#..
!byte %##.##.##
!byte %#.#..#.#
!byte %###..###

!byte %##.##.##
!byte %#..##..#
!byte %..####..
!byte %########
!byte %########
!byte %..####..
!byte %#..##..#
!byte %##.##.##

!byte %.######.
!byte %##....##
!byte %#.####.#
!byte %#.####.#
!byte %#.####.#
!byte %#.####.#
!byte %##....##
!byte %.######.

mod_base = $2fc0


* = $098d

!zone main_program
  
entry:

; Set up to use the SID as a fake random number generator.
  lda #$ff                  ; Set high frequency on both bytes
  sta sid_voice3_low_freq
  sta sid_voice3_high_freq
  lda #$80                  ; Enable noise wave
  sta sid_voice3_control
  
  lda #$01
  sta $02            ; Unused position in zero page
  lda #$c0
  sta self_mod_sta_base_address_lo   ; self modifying
  lda #$2f  
  sta self_mod_sta_base_address_hi   ; self modifying 
  lda #$03
  sta $06   ; Unused position in zero page
  

 
; Accumulate several arrays in screen space??
; $400 array - 10 + rand(3)
; $480 array - 8 + rand (3)
  
label_09ac
  ldx #$31

generate_random_arrays_loop

; $400 array - 10 + rand(3)
  jsr load_two_low_bits_of_osc3_to_accumulator
  clc
  adc #$0a
  sta screen, x
  
; $480 array - 8 + rand(3)  
  jsr load_two_low_bits_of_osc3_to_accumulator
  adc #$08
  sta screen+$80, x

  
; Generate a random number that is either 0, 1, or $ff.  
loop_until_first_array_not_3
  jsr load_two_low_bits_of_osc3_to_accumulator
  cmp #$03
  beq loop_until_first_array_not_3
  cmp #$02
  bne first_random_not_2
  lda #$ff

; Put it in $500 array at current position
first_random_not_2
  sta screen+$100, x

; Generate another random
label_09cf
  jsr load_two_low_bits_of_osc3_to_accumulator
  bne label_09db
  
; If it's not zero, check that its counterpart in the $500
; array is also not zero, and regenerate it if it is.
  tay
  lda screen+$100, x
  beq loop_until_first_array_not_3
  tya

label_09db
; If it's 3, reject it and generate again.
  cmp #$03
  beq label_09cf
; If it's 2, make it $ff.
  cmp #$02
  bne label_09e5
  lda #$ff

label_09e5
  sta $0580, x
; Result: $500 and $580 are now sequences of random values that are
; 0, 1, or ff; and where $500's is non zero if $580's is. 
  
  lda sid_voice3_oscillator_ro
  and #$0f    ; Random value 0-15..
  adc #$05    ; +5.
  sta $0600, x  ; Identical in $600 and $680 arrays.
  sta $0680, x
  dex              
  bpl generate_random_arrays_loop 
  
; ------------------ Random seeding loop ends here  
  
  lda #$1a
  sta $fb

label_09fc
 jsr inc_and_clear_smb_64bytes

label_09ff
 ldx #$31

label_0a01
 dec $0680, x
 bpl label_0a20
 lda $0600, x
 sta $0680, x
 
; Add each value in $500 array to parallel value in $400 array. 
 
 lda screen, x
 clc
 adc screen+$100, x
 sta screen, x
 
; Add each value in $580 array to parallel value in $480 array.

 lda screen+$80, x
 clc
 adc screen+$180, x
 sta screen+$80, x

label_0a20
 lda $06             ; This was set to 3 above.
 bne label_0a55
 lda screen, x
 bmi label_0a55
 pha
 and #$07            
 tay
 pla
 lsr
 lsr
 lsr
 sta $fc
 lda onebit_masks_zero_is_msb, y
 sta $fd
 lda screen+$80, x
 bmi label_0a55
 asl
 clc
 adc screen+$80, x
 adc $fc
 tay
 jsr self_modified_lda_plus_y
 ora $fd
 pha
 stx temp_entity_x_coord
 tya
 tax
 pla
 jsr self_modified_sta_plus_x
 ldx temp_entity_x_coord

label_0a55
 dex
 bpl label_0a01
 
 
 dec $06
 bpl label_09ff
 lda #$03
 sta $06
 dec $fb
 bmi label_0a67
 jmp label_09fc

label_0a67
 dec $02
 bmi label_0a6e
 jmp label_09ac

label_0a6e
 lda #$00
 sta cia_timer_control
 sta show_credits
 
!ifdef always_show_credits {
  inc show_credits
}
 lda #%01110011
 sta ram_rom_mapping   ; Make character ROM visible at d000
 ldx #$ec

; Copy character shapes from ROM to $2800
 
copy_character_rom
 lda character_rom_base-1, x
 sta copy_of_character_rom-1, x
 lda $d0eb, x        ; VICII register image??
 sta $28eb, x
 dex
 bne copy_character_rom
 ldx #$3f

label_0a8c
 lda walls, x
 sta $2930, x
 dex
 bpl label_0a8c
 
 
 lda #%01110111
 sta ram_rom_mapping   ; Make I/O visible at d000        
 lda #$01
 sta cia_timer_control
 lda #$1a
 sta vic_select_buffers

!ifndef always_show_credits { 
 ; Determine if the credits should be shown. Because Compute! magazine removed programmer's names from
 ; published programs, the credits are hidden and only displayed if the program is running from Compute!'s
 ; consumer disk loader or from a typed in program - not if it's running from a raw image, as the
 ; publishers would check.
 lda vic_extra_bg_col_3       
 cmp #$f6                 ; Check for BG col $f6 - this is presumably set by the Compute! disk loader.
 bne .no_compute_loader
 inc show_credits         ; If set, credits will be shown.
 
.no_compute_loader
 lda program_end          ; Check for a 0 at the end of the program. This was because Compute! padded 
 bne .no_type_in          ; their listings for type in programs with zeroes at the end.
 inc show_credits         ; If set, credits will be shown. 

.no_type_in
}

 lda #$01
 sta $fc

label_0ab7
 jsr inc_and_clear_smb_64bytes
 ldy $fc
 lda #$0f
 jsr label_0d58
 ldy #$00
 lda #$10
 jsr label_0d58
 ldy #$00
 lda #$11
 jsr label_0d58
 inc $fc
 lda $fc
 cmp #$0a
 bcc label_0ab7
 lda #$cc
 sta vic_screen_control_2   ; Set 40 column screen width 
 lda #$ff
 sta vic_sprite_enable   ; Enable all sprites
 lda #$00
 sta vic_background_color   ; Background color
 sta vic_border_color   ; Border color
 sta vic_sprite_priority_bits   ; Sprite priority register
 sta vic_sprite_double_width   ; Sprite double width
 sta vic_sprite_double_height   ; Sprite double height
 sta $d0cd   ; Register image??
 ldx #$07

.clear_explosions_and_highscore
 lda #$00
 sta explosion_status, x
 sta high_score_digits, x
 dex
 bpl .clear_explosions_and_highscore
 
 sta player_sound_flag
 sta $67
 ldx #$04
 tay
 sta game_status_flags
 stx spar_animation_timer             

 
generate_multiples_array
 sta screen_line_address_lowbytes, y          ; a=0
 pha                   ; pushed a
 txa                   ; 4
 sta screen_line_address_highbytes, y          
 iny              
 cpy #$19              ; generate 25 total values
 beq install_isr
 pla                   ; pulled a (0)
 clc
 adc #$28              ; adding 40 
 bcc generate_multiples_array
 inx
 bcs generate_multiples_array

install_isr
 sei  ;disable interrupts
 lda #<interrupt_service_routine   ; load address of our ISR
 sta $0314
 lda #>interrupt_service_routine
 sta $0315
 cli ;and restart interrupts

title_screen_init
   jsr clear_explosions
   ldx #$07
   stx last_enemy_processed
   stx max_enemy_entity
   stx spar_animation_timer
   sta game_status_flags

.clear_player_scores
  sta player_1_score_digits, x
  sta player_2_score_digits, x
  dex
  bpl .clear_player_scores

  tax
.clear_entities
  sta entity_shields, x
  sta entity_spars_eaten, x
  inx
  bne .clear_entities
  
  sta $ae
  sta $af
  sta level_bcd_tens
  dex
  stx extra_enemy_spawn_chance
  lda #$0a
  sta level_number_byte
  sta level_bcd_units
  lda #<msg_banner
  ldy #>msg_banner
  jsr output_string_at_yyaa_until_zero_or_quote
  jsr draw_new_map
  
   ldx #$0f

label_0b6c
   lda msg_start_at_level, x
   sta screen+$214, x
   lda #$0a
   sta colors+$214, x
   dex
   bpl label_0b6c
   jsr reset_entity_count_and_udgs

label_0b7d
    ldx #$00

label_0b7f
    stx $53
    lda #<label_1e96
    ldy #>label_1e96
    jsr output_string_at_yyaa_until_zero_or_quote

label_0b88
    lda #$00
    ldx $53                                     ; Get scrolltext position
    cpx #UNENCRYPTED_SCROLLTEXT_CHARACTERS      ; Are we within the unencrypted section?
    bcc .no_credit_decrypt
    txa                                         ; No. Move X, position we're on, to A
    sec
    sbc #UNENCRYPTED_SCROLLTEXT_CHARACTERS      ; and subtract to get the encrypted character number
    tay
    lda #$00
    sbc spar_images, y                          ; Initialize accumulator with the negative value from the 
                                                ; spar images corresponding to the position in the encrypted
                                                ; text

.no_credit_decrypt:
   clc
   adc main_scrolltext, x
   cmp #$f0
   bcc label_0ba8
   sta $3a
   inc $53
   bne label_0b88

label_0ba8
   sta screen+$4e
      lda $3a
   sta $d84e
      lda $53
      and #$01
      beq label_0bf2
      ldx pressed_key_code
      cpx #$03
      bne label_0bbf
   jmp title_screen_init

label_0bbf
   lda $eb81, x                 ; Unshifted character table?
   cmp #$31
   bcc label_0bcd
   cmp #$3a
   bcs label_0bcd
   sta $0623

label_0bcd
  lda port_2_joystick
  cmp #%01111111               ; Is joystick idle?
  beq handle_player_2_joystick
  and #%00010000               ; Is fire button down?
  beq label_0c2b
  jsr toggle_2_player_indicator

handle_player_2_joystick
  lda port_1_joystick
  cmp #$ff                     ; Joystick idle / timer bits??
  beq label_0bf2
  and #$10                     ; Is fire button down?
  bne label_0bef
  lda screen+$26               ; L of Player 2 lives display??
  cmp #c_empty
  beq label_0bf2
  bne label_0c2b

label_0bef
   jsr toggle_2_player_indicator

label_0bf2
   lda #$08
   sta $61
   lda #$00
   sta jiffy_clock

label_0bfa
   lda jiffy_clock
   cmp $61
   bcc label_0c15
   ldx $53
   inx
   cpx #UNENCRYPTED_SCROLLTEXT_CHARACTERS
   bcc label_0c12
   lda show_credits
   beq label_0c0f
   cpx #$73
   bcc label_0c12

label_0c0f
   jmp label_0b7d

label_0c12
   jmp label_0b7f

label_0c15
   jsr game_loop_enemies
   jmp label_0bfa

; --------------------------------------------------------------------   
   
!zone toggle_2_player_indicator

toggle_2_player_indicator
   lda screen+$26  ; Top left of screen 
   cmp #c_empty    ; If it's a space..
   beq .enable_2_player
   lda #c_empty    ; Make it a space
   !byte $2c       ; BIT NOP hack
.enable_2_player
   lda #c_player   ; Make it a player icon (potentially NOPped)
   sta screen+$26  ; Store back in top left of screen
   rts

; --------------------------------------------------------------------   
; LIKELY GAME SETUP ROUTINE   

label_0c2b
   ldx #$00
   ldy #$04
   sty p1_lives
   jsr init_player_x_shields_and_cooldowns
   lda screen+$26   ; Are we in 2 player mode (second player icon in
   cmp #c_player    ; top left of screen?)
   beq .start_2player
   ldy #$00         ; IF not, give player 2 zero lives

.start_2player
   sty p2_lives
   inx
   jsr init_player_x_shields_and_cooldowns
   lda screen+$223  ; Digit of level to start at
   sec
   sbc #$30         ; Subtract PETSCII offset to get actual number
   sta level_bcd_units
   sta level_units_b
   sta level_number_byte
   lda #<msg_status_bar_headers         ; Display top status line
   ldy #>msg_status_bar_headers
   jsr output_string_at_yyaa_until_zero_or_quote
   ldx #$27

.setup_lower_status_line_loop
   lda colors, x      ; Copy color info from top status line to bottom
   sta colors+$28, x
   lda #$20           ; Also blank bottom status line
   sta screen+$28, x
   dex
   bpl .setup_lower_status_line_loop
   
   jsr draw_new_map
   jsr update_status_bar

per_level_init

   ; Clear shields to 0 on all entities.
   lda #$00
   tax
.loop_clear_shields
   sta entity_shields, x
   inx
   bne .loop_clear_shields
   
   
   sta last_processed_explosion
   sta spars_spawned_by_0d33
   lda #$02
   sta oldest_bullet_entity_id
   sta difficulty
   sta fast_updates_count
   lda level_number_byte
   asl
   asl
   clc
   adc #$46
   bcs label_0c8c
   sta extra_enemy_spawn_chance

label_0c8c
   ldx #$0c
   stx last_enemy_processed
   dex
   stx last_entity_killed_by_overpopulation
   jsr reset_entity_count_and_udgs
   
   ; Check if player 1 is alive.
   lda p1_lives               ; Get player 1 lives
   beq .player_1_dead         ; Jump ahead if equal to 0.
   ; Spawn player 1.
   ldx #$00
   jsr spawn_player
.player_1_dead
   ; Check if player 2 is alive.
   lda p2_lives              ; Get player 2 lives
   beq .spawn_initial_spars   ; Jump ahead if equal to 0.
   ; Spawn player 2
   ldx #$01
   jsr spawn_player
   
   ; Spawn initial spars.
.initial_spars_to_spawn = $fe   
.spawn_initial_spars
   lda #$05                         ; Set up counter left to spawn.
   sta .initial_spars_to_spawn

.spawn_initial_spars_loop
   jsr set_xy_to_random_empty_space_coord   ; Pick a random empty space
   lda #c_spar                              ; Place a spar there
   jsr write_a_to_screen_position_xy
   lda #SHIELD_SPAR_COLOR                   ; Initial spars are always shield
   jsr write_a_to_colors_position_xy        ; Write shield color to colormap
   dec .initial_spars_to_spawn
   bne .spawn_initial_spars_loop            ; Loop until all spars spawned.
   
   lda #$f9
   sta jiffy255_clock

; Main game loop begins here. This is game loop part 1.   
   
!zone game_loop
  
game_loop:
   ldy pressed_key_code
   cpy #$06                ; Is F5, Pause, being pressed?
   bne label_0cdc          ; No, skip ahead.
   lda game_status_flags   ; Yes, flip paused bit.
   eor #$01
   sta game_status_flags
   
   ; Wait 16 jiffies after flipping pause bit. This is probably to avoid
   ; pause being constantly switched back and forth if the player holds F5 
   ; for more than 1/60 of a second.
.target_jiffytime = $fc
wait_16jiffies
  lda jiffy_clock           ; Get jiffy clock value
  clc                       ; Add 16
  adc #$0f                  
  sta .target_jiffytime     ; Note target time to finish waiting

.wait_16jiffies_loop
  lda jiffy_clock           ; Loop reading jiffy clock
  cmp .target_jiffytime     ; Until it reaches target time 
  bne .wait_16jiffies_loop  ; If it hasn't yet, continue loop.

label_0cdc
   lda game_status_flags
   beq .not_paused
   
   ; While paused, check for f1/f3 being pressed to change player color.
   ; For some bizarre reason we check on alternate jiffies for f1 and f3.
   lda jiffy_clock                ; Get jiffy clock
   and #$01                       ; Mask off last bit, 1 or 0
   tax
   tya
   cmp player_function_keys, x    ; Check for F1 or F3 according to parity of jiffy
   bne game_loop                  ; If not pressed, restart game loop
   lda p1_lives, x                ; Check player x is actually alive
   beq game_loop                  ; If not, can't change color, restart game loop
   inc player_color, x            ; Increment that player's color in stored array
   lda player_color, x            ; Load it from that array   
   ora #csf_visible               ; Turn on visible flag
   sta entity_color_and_flags, x  ; Update player in entity list
   jsr draw_entity_x              ; Redraw affected player
   jmp wait_16jiffies             ; Wait 16 jiffies to avoid bounce

.not_paused:
   lda interrupt_counter
   beq game_loop_reentry_from_players
   jsr update_player_bullets
   jmp game_loop_players          ; Go to game loop part 2, players

game_loop_reentry_from_players    ; .. Player handling branches back here
   lda jiffy255_clock             ; Check coarse timer 
   bmi done_escalation            ; If it's not reached zero, don't escalate yet.
   lda #$f9                       ; Reset to reach zero again in 7 ticks.
   sta jiffy255_clock
   inc escalation                 ; Increase escalation meter
!ifndef show_timing_info {
   bne done_escalation           
}
!ifdef show_timing_info {
   bne updated_escalation
}

 ; If it overflowed to zero..
   lda #$ff                       ; Set it to max
   sta escalation

!ifdef show_timing_info {
updated_escalation:
   ldx #5
   jsr display_hex_value
}
   
   
done_escalation:
   dec fast_updates_count         ; Count down "fast updates" for difficulty scaling.
   bne .fast_update               ; If fast updates still to do, do one.
   lda difficulty                 ; Reset fast update counter to difficuly.
   sta fast_updates_count
   
   lda jiffy_clock                ; Capture jiffy clock time.
   sta .target_jiffytime
   lda difficulty                 ; If difficulty is $ff, make all updates fast.
   cmp #$ff
   beq .fast_update

.wait_for_jiffy                   ; Wait for end of current jiffy.
   lda jiffy_clock
   cmp .target_jiffytime
   beq .wait_for_jiffy

.fast_update
   jsr game_loop_enemies
   
   lda sid_voice3_oscillator_ro
   bne .dont_spawn_spar
   lda sid_voice3_oscillator_ro
   cmp #NO_EXTRA_SPAR_SPAWN_CHANCE
   bcc .dont_spawn_spar
   lda spars_spawned_by_0d33
   cmp #MAX_EXTRA_SPAWNED_SPARS
   bcs .dont_spawn_spar
   inc spars_spawned_by_0d33
   jsr set_xy_to_random_empty_space_coord
   lda #c_spar
   jsr write_a_to_screen_position_xy
   jsr select_random_spar_type

.dont_spawn_spar
   jmp game_loop

; ------------------------------------------------------------------------
label_0d58
   ldx #$00
   stx $fd
   clc
   adc $fd       ; What?
   tax
   tya
   asl
   asl
   asl
   tay

label_0d65
   lda $2980, y
   jsr self_modified_sta_plus_x
   inx
   inx
   inx
   iny
   stx $fd
   cpx #$27
   bcc label_0d65
   rts

; -----------------------------------------------------------------------

load_udg_localvars
  lda udg_slot_to_load_to            ; "Slot number"
  clc                 
  ror                ; Divide by 2 and set carry if it was odd.
  ldx #$00           
  bcc label_0d80     ; Evens go at $xx00, odds go at $xx80.
  ldx #$80

label_0d80
  stx self_mod_sta_base_address_lo
  clc
  adc #$2a           ; A still holds slot number divided by 2, add 
                     ; base page.
  sta self_mod_sta_base_address_hi
  lda #$00
  ldx #$7f

.clear_128_bytes
   jsr self_modified_sta_plus_x
   dex
   bpl .clear_128_bytes
   lda udg_number_to_load
   asl    ; x2
   asl    ; x4
   asl    ; x8
   tay
   ldx #$00

load_one_udg
   lda first_frames, y
   jsr self_modified_sta_plus_x
   iny
   inx
   cpx #8                     ; 8 lines per character
   bne load_one_udg

load_second_frame_shifted_right
   lda second_frames-8, y     ; -8, because y is starting at 8 after previous
   lsr
   lsr
   lsr
   lsr
   jsr self_modified_sta_plus_x
   inx
   iny
   cpx #16                   ; 8 lines per character. 16, because x is 
                             ; starting at 8 after previous loop.
   bne load_second_frame_shifted_right

load_second_frame_shifted_left
   lda second_frames-16, y
   asl
   asl
   asl
   asl
   jsr self_modified_sta_plus_x
   inx
   iny
   cpx #24
   bne load_second_frame_shifted_left

load_second_frame_unshifted
   lda second_frames-24, y
   jsr self_modified_sta_plus_x
   inx
   iny
   cpx #32
   bne load_second_frame_unshifted
   jsr label_0de4
   ldy #$00
   ldx #$40
   jsr label_0e15
   ldy #$20
   ldx #$60
   jmp label_0e15

label_0de4
      lda #$00
      sta $fc

label_0de8
         txa
         sec
      sbc #$20
         tay
   jsr self_modified_lda_plus_y
      ldy $fc
   and onebit_masks_zero_is_msb, y
   cmp onebit_masks_zero_is_msb, y
      bne label_0e08
         txa
         tay
   jsr self_modified_lda_plus_y
      ldy $fc
         clc
   adc onebit_masks_zero_is_lsb, y
   jsr self_modified_sta_plus_x

label_0e08
         iny
      sty $fc
      cpy #$08
      bne label_0de8
         inx
      cpx #$40
      bne label_0de4
         rts

label_0e15
      stx $fc
      sty $fd
      lda #$04
      sta $fb

label_0e1d
      lda #$00
      sta temp_entity_x_coord

label_0e21
      lda #$00
      sta $fe

label_0e25
      lda $fe
         clc
      adc $fd
         tay
   jsr self_modified_lda_plus_y
      ldx temp_entity_x_coord
   and onebit_masks_zero_is_msb, x
   cmp onebit_masks_zero_is_msb, x
      bne label_0e4e
      lda $03
         clc
      adc $fc
         tay
   jsr self_modified_lda_plus_y
         clc
      ldx $fe
   adc onebit_masks_zero_is_lsb, x
         pha
         tya
         tax
         pla
   jsr self_modified_sta_plus_x

label_0e4e
      inc $fe
      lda $fe
      cmp #$08
      bne label_0e25
      inc temp_entity_x_coord
      lda temp_entity_x_coord
      cmp #$08
      bne label_0e21
      lda $fc
         clc
      adc #$08
      sta $fc
      lda $fd
         clc
      adc #$08
      sta $fd
      dec $fb
      bne label_0e1d
         rts

; --------------------------------------------------------------------         
         
self_modified_sta_plus_x

self_mod_sta_base_address_lo = * + 1
self_mod_sta_base_address_hi = * + 2

; Self modifying code here..
   sta $ffff, x
   rts

; ---------------------------------------------------------------------   
   
self_modified_lda_plus_y
   lda self_mod_sta_base_address_lo
   sta self_mod_lda_base_address_lo
   lda self_mod_sta_base_address_hi
   sta self_mod_lda_base_address_hi

self_mod_lda_base_address_lo = *+1
self_mod_lda_base_address_hi = *+2   
   
   lda $ffff, y
   rts

; ---------------------------------------------------------------------   
   
load_two_low_bits_of_osc3_to_accumulator
   lda sid_voice3_oscillator_ro
   and #$03
   rts

; ---------------------------------------------------------------------
   

!zone inc_and_clear_smb_64bytes

; Adds 64 to the current self-mod base address, and then clears 64 
; bytes of memory ahead of the new address.

inc_and_clear_smb_64bytes
   lda self_mod_sta_base_address_lo    ; Get current address low byte.
   clc                                 ; Add 64.
   adc #$40
   bcc .adding_64_no_carry             ; Did it trigger carry?
   inc self_mod_sta_base_address_hi    ; If so, increment address high byte.

.adding_64_no_carry
   sta self_mod_sta_base_address_lo    ; Write back address low byte.
   lda #$00                            ; Load a (value to store) with 0.
   ldx #$3e                            ; Load x (countdown) with 62.
              ; 62 is used instead of 64 because we will use BPL below,
              ; which will exit only when the countdown goes negative. 
              ; 62 will count down to 1, then 0, then -1, for 64 counts.

.clear_64bytes_loop
   jsr self_modified_sta_plus_x        ; Write 0 to base address 
   dex                                 ; Decrease countdown
   bpl .clear_64bytes_loop             ; If it's not -1, loop
   rts                                 ; We're done
   
; ----------------------------------------------------------------   
   
!ifndef remove_dead_code {
!byte $20,$58,$0F    ; JSR $0f58?
}

!zone draw_map
  
draw_new_map
   ; Choose a random map number 0-7 which is not the same as current.
   lda sid_voice3_oscillator_ro
   and #$07
   clc
   adc #$26
   cmp current_wall_character
   beq draw_new_map
   sta current_wall_character

   ; Choose a random color from those in the lookup table.  
.choose_map_color
   lda sid_voice3_oscillator_ro
   and #$07
   tax
   lda map_colors, x
   cmp current_map_color
   beq .choose_map_color
   sta current_map_color
   
   lda #$00
   sta $bb
   ldx level_bcd_units
   lda level_bcd_tens
   bne label_0ed2
   cpx #$05
   bcc label_0ee2

label_0ed2
   lda sid_voice3_oscillator_ro
   sta $bb

label_0ed7
   jsr load_two_low_bits_of_osc3_to_accumulator
   tax
   inx
   cpx $c8
   beq label_0ed7
   stx $c8

   
.current_x_coordinate = $fd
.current_drawing_character = $06
.current_bit_number = $03
.current_map_offset = $02
   
label_0ee2
   lda map_start_addresses, x
   sta .current_map_offset
   lda #$00
   sta .current_bit_number
   sta .current_x_coordinate
   ldy #$02

.draw_map_character
   ldx .current_map_offset
   lda $bb
   bmi label_0efb
   lda label_2006, x
   jmp label_0efe

label_0efb
   lda label_20e2, x



label_0efe
   ldx .current_bit_number
   and onebit_masks_zero_is_msb, x
   beq .draw_empty_space
   lda current_wall_character
   !byte $2c                 ; BIT skip hack
.draw_empty_space
   lda #$20               ; May be skipped
   sta .current_drawing_character
   ldx .current_x_coordinate
   jsr write_a_to_screen_position_xy
   lda current_map_color
   jsr write_a_to_colors_position_xy
   lda #$26
   sec
   sbc .current_x_coordinate
   tax
   lda .current_drawing_character
   jsr write_a_to_screen_position_xy
   lda current_map_color
   jsr write_a_to_colors_position_xy
   inc .current_bit_number
   inc .current_x_coordinate
   lda .current_bit_number
   cmp #$08
   bne .no_new_byte
   lda #$00
   sta .current_bit_number
   inc .current_map_offset

.no_new_byte
   lda .current_x_coordinate
   cmp #20
   bne .draw_map_character
   iny
   cpy #24
   beq .done_drawing_map
   lda #$00
   sta .current_x_coordinate
   beq .draw_map_character

.done_drawing_map
   ldx #$27

.copy_screen_forward
   lda screen+$50, x
   sta screen+$3c0, x
   lda current_map_color
   sta colors+$3c0, x
   dex
   bpl .copy_screen_forward
   rts

; ---------------------------------------------------------------------
         
!zone update_status_bar
  
; Offsets to the given scores, on the second line of the screen, from the start of screen memory.
  
sbpos_player1_score = 40
sbpos_player2_score = 67
sbpos_high_score = 53
sbpos_player1_lives = 51
sbpos_player2_lives = 78
sbpos_level_tens = 63
sbpos_level_ones = sbpos_level_tens + 1
sbpos_player1_shields = 49
sbpos_player2_shields = 76

update_status_bar:    
; Update the whole stats bar. First, player scores:

   ldx #PLAYER_SCORE_DIGITS-1            ; Count down player score digits
   clc                                   ; Set up for addition

.score_digits_loop
   lda player_1_score_digits, x          ; Load x'th digit of player score
   adc #NUMBER_TO_PETSCII_ADJUSTMENT     ; Convert it to PETSCII value
   sta screen+sbpos_player1_score, x     ; Store it in x'th index of screen starting at score position
   
   lda player_2_score_digits, x          ; Same for player 2 score
   adc #NUMBER_TO_PETSCII_ADJUSTMENT     ; (and for everything else below)
   sta screen+sbpos_player2_score, x
   
   lda high_score_digits, x              ; And for high score
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_high_score, x
   
   dex                                   ; Count down player score digits
   bpl .score_digits_loop                ; Go back to do rest of score

; Entry point used when scores don't need to be updated.
update_status_bar_not_scores:
   lda p1_lives                          ; Player 1 lives
   clc
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_player1_lives
   
   lda p2_lives                          ; Player 2 lives
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_player2_lives  
   
   lda level_bcd_tens
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_level_tens           ; Level tens
   
   lda level_bcd_units
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_level_ones           ; Level units

; Entry point for updating just the shields.
update_status_bar_just_shields:
   lda entity_shields                    ; Player 1 shields
   clc
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_player1_shields
   
   lda p2_shields                        ; Player 2 shields
   adc #NUMBER_TO_PETSCII_ADJUSTMENT
   sta screen+sbpos_player2_shields  
   rts

; ----------------------------------------------------------------------
   
; SELF MODIFYING CODE ALERT
!zone read_write_a_to_screen_buffer

.temp_acc_store = $0c

write_a_to_screen_position_xy
   sta .temp_acc_store
   lda #$9d        ; STA absolute, x
   sta .selfmod_instruction
   bne .calculate_screen_address

read_a_from_screen_position_xy
   lda #$bd        ; LDA absolute, x
   sta .selfmod_instruction

.calculate_screen_address
   lda screen_line_address_lowbytes, y
   sta .selfmod_instruction+1            
   lda screen_line_address_highbytes, y
   sta .selfmod_instruction+2
   lda .temp_acc_store        ; ??

.selfmod_instruction:
   lda $0400, x         ; This instruction is always changed above
   rts

; ----------------------------------------------------------------------         
         
!zone read_write_a_to_screen_adjacent_buffers

write_a_to_colors_position_xy
   sta $0c
   lda #$9d             ; STA absolute, x
   sta .selfmod_instruction2
   bne .calculate_color_address

read_a_from_colors_position_xy
   lda #$bd             ; LDA absolute, x
   sta .selfmod_instruction2

.calculate_color_address
   ; Get the screen address, which begins at $0400
   lda screen_line_address_lowbytes, y
   sta .selfmod_instruction2+1
   lda screen_line_address_highbytes, y
   clc
   adc #$d4 ; Add $d4 to the high byte to make it begin at $d800, colors
   sta .selfmod_instruction2+2

if_were_going_to_selfmodify_why_not_just_jump_in_from_another_routine:
   lda $0c
.selfmod_instruction2:
   lda $0400, x
   rts
   
; ---------------------------------------------------------------------
         
; Writes a to screen position plus $bc00, ie, $c000. This isn't a 
; significant address that I can see.. Not a separate zone because it
; reuses the self modified instruction above. Also, this uses the BIT
; skip hack where the previous ones didn't although they could have.
; Possibly the author added this in Crossroads 2 and didn't originally
; know about the BIT hack?

write_a_to_screen_entityId_buffer_position_xy
   sta $0c
   lda #$9d                ; STA absolute, x
   !byte $2c               ; BIT skipping hack
   
read_a_from_entityId_buffer_position_x_y
   lda #$bd                ; LDA absolute, x
    
   sta .selfmod_instruction2
   lda screen_line_address_lowbytes, y
   sta .selfmod_instruction2+1
   lda screen_line_address_highbytes, y
   clc
   adc #$bc
   sta .selfmod_instruction2+2
   jmp if_were_going_to_selfmodify_why_not_just_jump_in_from_another_routine

; -----------------------------------------------------------------   
   
!zone clear_explosions
  
clear_explosions:
  ldx #$07
  lda #$00

.explosion_clear_loop
  sta explosion_status, x
  sta vic_sprite_coord_array, x           ; Covers sprite coordinates 0-3
  sta vic_sprite_coord_array+8, x           ; Covers sprite coordinates 4-7
  dex
  bpl .explosion_clear_loop
  rts
    
; ---------------------------------------------------------------------         
         
!zone interrupt_service_routine
  
interrupt_service_routine:
  inc interrupt_counter
  ldx game_status_flags
  lda sound_buffer, x
  sta sid_volume_filter
  beq label_1028
  lda jiffy_clock 
  and #01
  bne label_102b
label_1028:
  jmp $ea31      ; Jump to system ISR

  
.currently_checking_player = $6a

label_102b:
  ldx #01
  stx .currently_checking_player
  
.isr_player_update:
  lda player_fire_cooldown_counter, x
  beq label_1035
  dec player_fire_cooldown_counter, x

label_1035:
  dec player_move_cooldown_counter, x
  bne label_1041
  lda player_move_cooldown, x
  sta player_move_cooldown_counter, x
  lda #01
  sta player_has_ticked, x
  
label_1041:
  lda player_sound_flag, x
  beq .isr_done_checking_player
  ldy sid_voice_offsets, x
  cmp #05
  bcc label_1067
  bne label_1054
  lda $68, x
  ldx #$21
  bne label_107a

label_1054:
  cmp #07
  beq label_105e
  lda $68, x
  ldx #$81
  bne label_107a

label_105e:
  lda $68, x
  clc
  adc #$f6
  ldx #$81
  bne label_107a
  
 label_1067:
  tax
  lda sid_voice3_oscillator_ro
  and label_1f41, x
  clc
  adc label_1f3d, x
  sta $8f
  lda label_1f39, x
  tax
  lda $8f 
  
label_107a:
  sta sid_voice1_high_freq, y
  lda #$09
  sta sid_voice1_att_dec, y
  lda #$00
  sta sid_voice1_control, y
  txa
  sta sid_voice1_control, y
  ldx .currently_checking_player
  dec $68, x
  bne .isr_done_checking_player
  lda #00
  sta player_sound_flag, x
  sta sid_voice1_control, y

.isr_done_checking_player:  
  dex
  dec .currently_checking_player
  bpl .isr_player_update
  
  
  dec $40
  bne dont_update_difficulty
  
  lda #$03
  sta $40
  lda escalation
  sec
  sbc enemy_sweep_count
  beq done_difficulty_check
  bcs .increase_difficulty
  dec difficulty
  bne done_difficulty_check      ; If it didnt' become zero, branch..

  inc difficulty           ; So it did become zero.. here it becomes one..
  bne done_difficulty_check      ; How would this not be true?
.increase_difficulty:
  inc difficulty
  bne done_difficulty_check      ; If it didn't become zero, branch..
  dec difficulty           ; It was zero, so here it becomes $ff.

done_difficulty_check:
!ifdef show_timing_info {
  ldx #20
  lda enemy_sweep_count
  jsr display_hex_value
  ldx #32
  lda difficulty
  jsr display_hex_value
}
  
  lda #00
  sta enemy_sweep_count

dont_update_difficulty:
  dec spar_animation_timer
  bne .dont_animate_spars
  lda #02
  sta spar_animation_timer
  
  ; Animate rotating spars.
  ldx current_spar_frame
  dex
  bpl .no_spar_frame_wraparound
  ldx #$02
.no_spar_frame_wraparound:
  stx current_spar_frame
  ldy multiply_by_8, x
  ldx #$07

.copy_new_spar_image:
  lda spar_images, y
  sta $29f8, x
  iny
  dex
  bpl .copy_new_spar_image

.dont_animate_spars:
  ldx #$07
  
.do_explosions_loop:
  lda explosion_status, x
  beq label_1143
  ldy explosion_or_implosion, x
  lda explosion_sprite_pointer_offset, x
  clc
  adc data_explosion_deltas, y
  cmp data_explosion_limits, y
  beq label_110f
  sta explosion_sprite_pointer_offset, x
  sec
  sbc #$02
  cmp data_explosion_limits, y
  bne label_1139
  ldy exploding_entity_index, x
  lda entity_status_byte, y
  and #$bf           ; Reset bit 7
  sta entity_status_byte, y
  jmp label_1139
  
label_110f:
  cpy #00
  beq .end_explosion
  lda $4038, x
  beq .end_explosion
  lda explosion_count_up_array, x
  clc
  adc #01
  cmp #$0f
  bcs .end_explosion
  sta explosion_count_up_array, x
  lda $4038, x
  adc #$f5
  bne label_1140
  
.end_explosion:  
  ; Clear explosion status entry
  lda #$00
  sta explosion_status, x       

  ; Sprite coord array is in pairs x/y, so multiply explosion number
  ; by 2 to get sprite number used for it  
  txa
  asl
  tay
  
  ; Move that sprite to y coordinate 0
  lda #$00
  sta vic_sprite_coord_array+1, y
  
 label_1139: 
  lda explosion_base_sprite_pointer, x
  clc
  adc explosion_sprite_pointer_offset, x
  
label_1140:
  sta vic_sprite_pointer_array, x
  
label_1143:
  dex
  bmi label_1149
  jmp .do_explosions_loop

label_1149:
  jmp $ea31    ; System interrupt service routine
  
; ----------------------------------------------------------------------
  

reset_entity_count_and_udgs
  lda #$00                         ; Set empty entity to 0
  sta max_enemy_entity
  sta $bc                          ; ?? 
  
; Reset UDG slot index array to $ff  
  ldx #$12
  lda #$ff
.reset_udg_index_array
  sta slot_udg_loaded_into, x
  sta $4083, x
  dex
  bpl .reset_udg_index_array
  
  lda #$00
  sta udg_slot_to_load_to
  lda #$10
  sta udg_number_to_load

.load_initial_udgs_loop     ; Load 13 initial UDGs from $10 upwards
  jsr load_udg_localvars    ; Actually load current UDG
  lda udg_slot_to_load_to   ; Add it to index array
  ldy udg_number_to_load
  sta slot_udg_loaded_into, y
  inc udg_number_to_load    ; Increment UDG and slot to load
  inc udg_slot_to_load_to
  cpy #$13                  ; Repeat if less than 13 loaded
  bcc .load_initial_udgs_loop
  
  ldx #$0c
  stx last_enemy_processed
  dex
  stx last_entity_killed_by_overpopulation
  lda sid_voice3_oscillator_ro
  and #$1f
  adc #$28
  sta enemies_left_to_spawn
  rts
         
; -------------------------------------------------------------------         

!zone spawn_enemy_maybe
  

spawn_enemy_maybe
   lda sid_voice3_oscillator_ro
   and #$0f
   tax
   lda level_number_byte
   cmp enemy_release_schedule, x
   bcc spawn_enemy_maybe
   lda slot_udg_loaded_into, x
   bpl label_11dc
   lda udg_slot_to_load_to
   cmp #$0a
   bcc label_11bd
   bne spawn_enemy_maybe
   cpx #$03
   beq spawn_enemy_maybe
   cpx #$04
      beq spawn_enemy_maybe
   lda $4099
      bmi label_11bd
   lda $4098
      bpl label_11bd
   lda $409a
      bmi label_11bd
      ldx #$02

label_11bd
      inc udg_slot_to_load_to
      lda udg_slot_to_load_to
   sta slot_udg_loaded_into, x
      stx udg_number_to_load
   jsr load_udg_localvars
      ldx udg_number_to_load
      lda level_number_byte
   cmp label_1fe2, x
      bcc label_11dc
   lda sid_voice3_oscillator_ro
      and #$03
      beq label_11dc
   sta $4083, x

label_11dc
      stx udg_number_to_load
   jsr set_xy_to_random_empty_space_coord
      lda udg_number_to_load
   jsr spawn_enemy_type_a_at_position_xy
      ldx $a3
      lda #$00
   jsr explode_entity_maybe
      ldx $a3
      lda udg_number_to_load
      cmp #$0c
      bne label_120f
      lda level_number_byte
      cmp #$14
      bcc label_120f
      lda #$02
   sta entity_upd_cooldown, x
      lda #$49
   sta entity_color_and_flags, x
      lda #$05
   sta entity_shields, x
      lda #$18
   sta entity_status_byte, x

label_120f
   lda extra_enemies_spawnable
   bpl erase_entity_x_from_screen
   lda #$00
   sta entity_shields, x
   rts

; --------------------------------------------------------------------

!zone erase_entity_x_from_screen
  
erase_entity_x_from_screen:
   ldy entity_y_coords, x
   lda entity_x_coords, x
   tax
   lda #$00
   jsr write_a_to_colors_position_xy
   lda #$00
   jmp write_a_to_screen_position_xy

; --------------------------------------------------------------------   
   
; Fire the two bullets which appear when a player spawns.

!zone fire_player_spawn_bullets_from_player_y
  
.temp_y_store = $0f
fire_player_spawn_bullets_from_player_y
   sty .temp_y_store          ; Store player number
   
   ; Fire the first bullet, which always goes upwards.
   lda #dir_up
   jsr fire_bullet_from_entity_y_in_direction_a
   
   ; Fire the second bullet, which goes the way the player starts.
   ldy .temp_y_store
   lda player_spawn_facing, y
   jmp fire_bullet_from_entity_y_in_direction_a
   
; ---------------------------------------------------------------------

sound_related_something
   cpy #$02
   bcs label_1246
   ldy #$00
   cmp #$05
   beq label_124f
   iny
   bne label_124f

label_1246
   ldy player_sound_flag
   beq label_124f
   ldy player_sound_flag+1
   bne label_1258
   iny

label_124f
   sta player_sound_flag, y
   lda #$14
   sta $0068, y
   rts

label_1258
      ldy #$00
      lda player_sound_flag
      cmp #$06
      beq label_124f
         iny
      lda $67
      cmp #$06
      beq label_124f
         rts
         
!ifndef remove_dead_code {
!byte $AA
}


; -----------------------------------------------------------------

char_to_write = $fb
side_to_write = $8d  
color_to_write = $fc

!zone draw_entity_x 
  
draw_entity_x:
   lda entity_color_and_flags, x
   sta color_to_write

draw_entity_x_override_color:
   lda entity_color_and_flags, x
   and #csf_visible
   bne label_1279
   lda #$00
   sta color_to_write

label_1279
   stx side_to_write
   lda entity_facing, x
   tay
   lda unknown_facing_table, y
   clc
   adc entity_base_charno, x
   sta char_to_write
   lda entity_status_byte, x
   bpl label_128f
   inc char_to_write

label_128f
   lda entity_status_byte, x
   and #esb_secondframe
   beq .no_charno_offset
   inc char_to_write
   inc char_to_write
   inc char_to_write

.no_charno_offset:
   stx temp_entity_x_coord
   jsr write_scrn_char_side_from_localvars_to_entity_x_coords
   ldx temp_entity_x_coord
   lda entity_status_byte, x
   bpl .no_second_half
   inc char_to_write

draw_second_half_of_midsquare_entity_x:
   jsr propose_forward_move_coords_for_entity_x
   ldx proposed_entity_x_coord
   ldy proposed_entity_y_coord
   jsr write_scrn_char_side_from_localvars_to_xy

.no_second_half:
   rts

; --------------------------------------------------------------------

!zone write_scrn_char_side_from_localvars_to_entity_x_coords
  
write_scrn_char_side_from_localvars_to_entity_x_coords
   lda entity_y_coords, x
   jsr wraparound_y_coordinate_a
   tay
   lda entity_x_coords, x
   jsr wraparound_x_coordinate_a
   tax


write_scrn_char_side_from_localvars_to_xy
   lda color_to_write
   jsr write_a_to_colors_position_xy
   lda char_to_write
   jsr write_a_to_screen_position_xy
   lda side_to_write
   jmp write_a_to_screen_entityId_buffer_position_xy

; --------------------------------------------------------------------   

!zone set_xy_to_random_empty_space_coord
  
.initial_rand = $fc
set_xy_to_random_empty_space_coord
   lda sid_voice3_oscillator_ro
   and #$1f        ;  random value 0-31.. 
   sta .initial_rand
   lda sid_voice3_oscillator_ro
   and #$07        ; add random value 0-7, to make 0-38.
   clc
   adc .initial_rand
   tax             ; store in x
   lda sid_voice3_oscillator_ro
   and #$0f        ; random value 0-15
   adc #$02        ; add 2 for 2 rows of status bar..
   sta .initial_rand
   lda sid_voice3_oscillator_ro
   and #$07        ; add random value 0-7 to make 2-24
   adc .initial_rand
   tay             
   jsr read_a_from_screen_position_xy ; get value at that position
   cmp #c_empty      ; is it blank?
   bne set_xy_to_random_empty_space_coord  ; if not, try again
   rts

; ----------------------------------------------------------------------

explode_entity_maybe
      sta $fc
         tay
      stx $fe
      lda #$05
      sta extra_enemies_spawnable
      cpy #$00
      bne label_130a
      dec extra_enemies_spawnable

label_130a
   ldx  label_1e9b, y

label_130d
   lda explosion_status, x
      beq label_133b
   lda explosion_or_implosion, x
      bne label_1328
      dec extra_enemies_spawnable
      bpl label_1328
      lda $fe
      cmp #$02
      bcc label_1322
         rts

label_1322
         clc
      adc #$05
         tax
      bne label_133b

label_1328
         dex
      bpl label_130d

label_132b
      ldx last_processed_explosion
         inx
      cpx #$08
      bcc label_1334
      ldx #$00

label_1334
      stx last_processed_explosion
   lda explosion_or_implosion, x
      beq label_132b

label_133b
      lda #$00
   sta explosion_count_up_array, x
      lda $fc
   sta explosion_or_implosion, x
      beq label_1359
      ldy entity_number_that_hit_player
      cpy #$0c
      bcs label_1359
      ldy $0a
   lda entity_shields, y
      bne label_1359
   lda entity_score_awarded, y
      bne label_1361

label_1359
      lda #$08
         tay
   jsr sound_related_something
      lda #$00

label_1361
   sta $4038, x
      ldy $fc
   lda label_1f1a, y
   sta explosion_sprite_pointer_offset, x
   lda sid_voice3_oscillator_ro
      and #$01
         tay
   lda label_1f09, y
   sta explosion_base_sprite_pointer, x
      lda $fe
   sta exploding_entity_index, x
         tay
   lda entity_color_and_flags, y
   sta vic_sprite_color_array, x
   lda entity_status_byte, y
      bmi label_138d
      lda #$00
      beq label_1396

label_138d
   lda entity_facing, y
         tay
      sta $fd
   lda label_1edb, y

label_1396
         clc
      adc #$14
      sta $fc
      ldy $fe
   lda entity_x_coords, y
      cmp #$1e
      bcs label_13b0
      lda #$ff
         sec
   sbc onebit_masks_zero_is_lsb, x
   and vic_sprite_x_hibits
   jmp label_13b6

label_13b0
   lda onebit_masks_zero_is_lsb, x
   ora vic_sprite_x_hibits

label_13b6
   sta vic_sprite_x_hibits              
   lda entity_x_coords, y
   asl
   asl
   asl
   clc
   adc $fc
   sta $fc
   txa
   asl
   tay
   lda $fc
   sta vic_sprite_coord_array, y
      ldy $fe
   lda entity_status_byte, y
      bmi label_13d7
      lda #$00
      beq label_13dc

label_13d7
      ldy $fd
   lda label_1edf, y

label_13dc
         clc
      adc #$2d
      sta $fc
      ldy $fe
   lda entity_y_coords, y
         asl
         asl
         asl
         clc
      adc $fc
      sta $fc
         txa
         asl
         tay
      lda $fc
   sta vic_sprite_coord_array+1, y
   inc explosion_status, x
         rts

; --------------------------------------------------------------------

!zone spawn_enemy_type_a_at_position_xy
  
.temp = $04

spawn_enemy_type_a_at_position_xy
   sta .temp
   tya
   pha
   txa
   pha
   jsr find_free_enemy_entity_in_x_and_locals
   lda .temp
   jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
   pla
   sta entity_x_coords, x
   pla
   sta entity_y_coords, x
   jsr load_two_low_bits_of_osc3_to_accumulator
   sta entity_facing, x
   lda #$01
   sta entity_upd_countdown, x
   lda #$00
   sta entity_spars_eaten, x           
   rts

; ----------------------------------------------------------------

!zone find_free_enemy_entity_in_x_and_locals
  
find_free_enemy_entity_in_x_and_locals
  ldx #$0c   ; $c seems to be the first offset for enemy entities.
  
; Look for an entity with zero shields (dead) to reuse its position. 
.find_zero_shield_entity
  lda entity_shields, x
  beq .found_zero_shield_entity
  inx
  bne .find_zero_shield_entity ; Keep looking until X wraps to zero..
   
; X wrapped to zero? Bugger, there's no free space. Move the 
; overpopulation kill pointer forwards by one, and wrap it around
; if also goes off the end. 
  
  ldx last_entity_killed_by_overpopulation      ; Entity max?
  inx                    
  bne .no_overpop_wrap
  ldx #$0c               ; Reuse 1st entity??

.no_overpop_wrap

; Wipe the unlucky entity off the screeen, and drop any spars it's 
; holding.
  stx last_entity_killed_by_overpopulation
  jsr blank_out_entity_x_nondestructive
  ldx last_entity_killed_by_overpopulation
  jsr drop_spars_from_entity_x
  ldx last_entity_killed_by_overpopulation

.found_zero_shield_entity
  cpx max_enemy_entity               ; If found entity no was less than current max,
  bcc .empty_entity_already_existed  ; leave it alone.
  stx max_enemy_entity               ; Else, update max to found entity number.

.empty_entity_already_existed
  stx $a3                      ; I'm not sure when/if this is used..
  rts

; -----------------------------------------------------------------
; Some kind of new entity setup??         
         
!zone load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
  
load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
   tay
   sta entity_enemy_type, x
   lda enemy_type_colors, y
   sta entity_color_and_flags, x
   lda enemy_initial_status, y
   sta entity_status_byte, x
   lda enemy_data_a, y
   sta entity_type_fired_me, x
   lda enemy_bullet_types, y
   sta entity_bullet_type, x
   lda enemy_data_cd, y
   pha
   and #$0f
   sta entity_data_cdlow, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta entity_bullet_speed, x
   lda enemy_data_low_shields_high_score, y
   pha
   and #$0f
   sta entity_shields, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta entity_score_awarded, x
   lda enemy_data_low_vision_high_update_cooldown, y
   pha
   and #$0f
   sta entity_vision_distance, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta entity_upd_cooldown, x
   lda slot_udg_loaded_into, y
   asl
   asl
   asl
   asl
   clc
   adc #$40
   sta entity_base_charno, x
   rts

; -------------------------------------------------------------------         
         
!zone blank_out_entity_x_nondestructive

; Deletes entity x from screen by overwriting with a space, with 
; color and side values determined by local var values. Goes to 
; great lengths to avoid overwriting x in the process.  
blank_out_entity_x_nondestructive
   lda #c_empty
   sta char_to_write
   txa
   pha
   jsr write_scrn_char_side_from_localvars_to_entity_x_coords
   pla
   tax
   lda entity_status_byte, x
   bpl .no_second_half
   jmp draw_second_half_of_midsquare_entity_x

.no_second_half
   rts

; --------------------------------------------------------------------
   
!zone give_player_x_score_for_entity_y
  
give_player_x_score_for_entity_y
   lda entity_score_awarded, y
   ldy multiply_by_8, x
   clc
   adc player_1_score_digits+5, y
   sta player_1_score_digits+5, y
   jsr score_update
   jmp update_status_bar
   
; ---------------------------------------------------------------------

!zone score_update
  
.saved_player_number = $07
.current_rollover_digit = $fc  

score_update
   stx .saved_player_number
   lda #$05
   sta .current_rollover_digit  
   clc
   adc multiply_by_8, x
   tax

.bcd_rollover_loop
   lda player_1_score_digits, x   ; Get current digit 
   cmp #$0a                       ; Is it over 10?
   bcc .no_bcd_rollover           ; If not, don't continue.
   sec                            ; Yes. Subtract 10 to get proper digit
   sbc #$0a
   sta player_1_score_digits, x   ; Store corrected digit
   dex                            ; And increase next digit
   inc player_1_score_digits, x
   inx
   bne .bcd_rollover_loop         ; Repeat ("digit" might have been 20+..)

.no_bcd_rollover
   dex                            ; Proceed to next digit
   dec .current_rollover_digit
   bpl .bcd_rollover_loop
   
   
   ldx .saved_player_number
   ldy multiply_by_8, x
   lda $6043, y
   lsr
   cmp $ae, x
   beq .no_extra_life
   sta $ae, x
   
   ; Gives player an extra life, capped at 9.
   lda p1_lives, x     ; Get player lives
   clc                 ; Add 1
   adc #$01
   cmp #$0a            ; If 10 or more
   bcc .no_lives_cap   ; Ok, else
   lda #$09            ; Reduce to 9

.no_lives_cap
   sta p1_lives, x

.no_extra_life
   ldx #$00
   stx $fc

label_150f
   lda player_1_score_digits, y
   cmp high_score_digits, x
      bcc label_1526
      beq label_151e

label_1519
   sta high_score_digits, x
      dec $fc

label_151e
         iny
         inx
      cpx #$06
      bcc label_150f
      beq label_152a

label_1526
      cmp $fc
      bcc label_1519

label_152a
   ldx .saved_player_number
   rts

; ---------------------------------------------------------------------         
         
; ENEMIES GAME LOOP. This is game loop part 3, and the only part that runs on
; the title screen.

!zone game_loop_enemies

game_loop_enemies:
   lda enemies_left_to_spawn      ; Do we still have enemies to spawn?
   beq .initial_spawns_done       ; If not, just do random spawns.
   jsr spawn_enemy_maybe          ; If so, spawn an enemy.
   lda extra_enemies_spawnable    ; After that, do we have scope to spawn extra enemies?                               
   bmi done_enemy_spawning        ; If no, we're done with spawning. 
   dec enemies_left_to_spawn      ; Otherwise, think about spawning one.

.initial_spawns_done
   lda sid_voice3_oscillator_ro   ; Get random value
   bne done_enemy_spawning        ; If it's not zero (3/4 chance), don't spawn.
   lda sid_voice3_oscillator_ro   ; Get another random value
   cmp extra_enemy_spawn_chance   ; Compare to level spawn chance.
   bcs done_enemy_spawning        ; If higher, don't spawn. 
   jsr spawn_enemy_maybe          ; Otherwise, spawn an enemy.

; Actual enemy processing. For speed, we only run ONE enemy's AI each cycle.
; However, we can skip over any number of ineligible enemies along the way. 
      
done_enemy_spawning
   inc last_enemy_processed   ; Move to next active enemy.
   ldx last_enemy_processed   ; Load active enemy number.
   cpx max_enemy_entity       ; Compare to max entity.
   bcc process_entity_x_no_return  ; If it's LESS, treat as regular entity 
                                   ; processing. If the entity is dead, frozen, 
                                   ; or not ticked, this will return to $1549.
                                   ; If an entity is processed, this will eventually 
                                   ; tail call to draw_entity_x, which will RTS
                                   ; and return to $0d33. 
                                   
   beq .maybe_prune_last_dead_entity  ; If it's EQUAL, process the enemy as 
                                      ; normal if it's alive, but if it's dead,
                                      ; lower the max. This means that each 
                                      ; cycle the max will tend towards the 
                                      ; number of active entities.
   bcs .reset_enemy_sweep

.maybe_prune_last_dead_entity
   lda entity_shields, x              ; Is the entity at the max point alive?
   bne process_entity_x_not_dead      ; Yes, process it as usual.
   dec max_enemy_entity               ; Otherwise, lower the max.

.reset_enemy_sweep
   ldx #$0b                           ; Set last enemy to $0b, one entity before
   stx last_enemy_processed           ; the start of possible enemies.
   inc enemy_sweep_count
   rts

; -------------------------------------------------------------------         
         
!zone enemy_update_maybe
  
process_entity_x_no_return
   lda entity_shields, x         ; If entity is dead, don't update it.
   beq done_enemy_spawning

process_entity_x_not_dead
   lda entity_status_byte, x     ; Check frozen bit?
   and #esb_frozen               ; If set, don't update,
   bne done_enemy_spawning       ; nor count this as the updated enemy this cycle.
   
   dec entity_upd_countdown, x   ; Update entity's tick countdown.
   bne done_enemy_spawning       ; If not 0, no further update, and this isn't
                                 ; the updated enemy this cycle.
                                 
   lda entity_upd_cooldown, x    ; If 0, reset to cooldown.
   sta entity_upd_countdown, x
   lda entity_spars_eaten, x
   bpl .do_enemy_update
   lda #$00                      ; Not sure how spars eaten would go negative??
   sta entity_spars_eaten, x
   jmp draw_entity_x

.do_enemy_update:
   lda entity_status_byte, x     ; Are we between squares?
   bpl .full_enemy_update                ; If not, do a full update.
                                 ; Otherwise, all we can do is move forward.
   jmp move_forward_and_redraw_entity_x
   
   
.full_enemy_update
   lda entity_bullet_type, x     ; Check if we are a bullet, or a monster.
   bpl .creature_ai              ; If we're a monster, go do smarter stuff.

.stored_entity_number = $13   
   
; We are a bullet.

update_bullet:
   stx .stored_entity_number
   jsr load_a_with_screen_at_entity_x_forward_coords
   ldx .stored_entity_number
   cmp #c_empty                 ; Are we moving into empty space?
   bne .bullet_hit_something    ; No?
   jmp clear_bit_3_on_entity_x_and_draw ; If we are, just move forward.  

.bullet_hit_something
   ldy entity_bullet_type, x
   bmi label_15ad                 ; A still holds screen value at this point??
   dec difficulty                 ; Decrease difficulty??
   bne label_15ad
   inc difficulty

label_15ad
   cmp #c_player
   bcc .bullet_hit_wall
   jsr blank_out_entity_x_nondestructive
   ldx .stored_entity_number
   jsr set_0a_and_y_to_entityid_that_x_collides_with
   jmp process_collision_between_09_and_0a

   
; If a bullet hit a wall, just kill it - set shields to 0 and delete it from the screen.
  
.bullet_hit_wall
   lda #$00
   sta entity_shields, x
   jmp blank_out_entity_x_nondestructive

; ------------------------------------------------------------------   
   
.creature_ai
   jsr load_vision_buffers_entity_x
   ldy #dir_left

.check_direction_y
   ldx last_enemy_processed
   lda vision_char_seen_indir, y
   cmp #c_spar                            ; Did we see something with LESS value than a spar?
   bcc .saw_nothing_interesting           ; It's not interesting.
   cmp #c_player                          ; Did we see the player OR GREATER?
   bcs .saw_entity                        ; Count it as an entity seen.
   lda entity_color_and_flags, x          ; If we're here, we saw a spar.
   and #csf_collects_spars                ; Are we interested in them?
   beq .saw_nothing_interesting           ; If not, ignore it.
   jsr apply_proximity_bonus_in_direction_y ; If so, add proximity votes.

.saw_nothing_interesting
   dey                                          ; Check next direction.
   bpl .check_direction_y                        
   jmp .end_voting_prefer_existing_avoid_uturn  ; If all done, end voting.

.saw_entity
   ldx vision_entityId_seen_indir, y     ; Get entity we saw.
   lda entity_enemy_type, x              ; What type it is?
   cmp #et_bullet                        ; Is it LESS than bullet (ie, not a bullet?)
   bcc .saw_non_projectile               ; Go to non projectile.
   cmp #et_worm                          ; Is it a worm (which is bullet+1)?
   beq .saw_non_projectile               ; Go to non projectile.
   ldx last_enemy_processed              ; Get our status byte.
   lda entity_status_byte, x
   and #esb_brave                        ; Are we "brave" (don't care about other entities?)
   bne .brave                            ; If so, don't avoid entity.
   jsr apply_double_proximity_penalty_in_direction_y_and_single_in_opposite

.brave
   lda entity_bullet_type, x
   cmp #et_worm
   beq .saw_nothing_interesting
!ifndef remove_dead_code {
   beq .generate_fire_chance            ;  bug?? never reached, if Z is true, we already branched above.
}
 
.saw_non_projectile              ; a should be holding seen enemy type from $15e9.
                                 ; On fall through from above, it is holding bullet
                                 ; type??
   ldx last_enemy_processed
   cmp entity_enemy_type, x      ; Is it the same as me?
   beq .saw_critical_type
   cmp entity_data_cdlow, x      
   beq .saw_critical_type
   cmp entity_type_fired_me, x
   bne .didnt_see_critical_type         

.saw_critical_type
   lda #$01                                ; Flag that we saw a critical type in this direction.
   sta vision_saw_friendly_flag, y
   lda entity_status_byte, x
   and #esb_randomdirbumps                
   beq .saw_nothing_interesting
   tya
   tax
   inc ai_direction_votes, x
   jsr bump_random_direction_votes
   jsr bump_random_direction_votes
   jmp .saw_nothing_interesting

.didnt_see_critical_type
   ldx vision_entityId_seen_indir, y
   lda entity_enemy_type, x
   cmp #et_vacuum           ; Vacuums are scary because of their death attack.
   bne .not_vacuum          ; If it was a vacuum we saw..
   lda entity_facing, x     ; If it's facing in this direction..
   tax
   tya
   cmp opposite_facing, x   
   beq .run_away            ; Run away!

.not_vacuum                          ; (Or if vacuum that's not facing this way)
   ldx last_enemy_processed          ; Look at our colorflags
   lda entity_color_and_flags, x     ; If MSB is not set
   bpl .approach_or_wander           ; Consider approach, else run away.

.run_away
   ldx last_enemy_processed
   jsr apply_double_proximity_penalty_in_direction_y_and_single_in_opposite
   bne .generate_fire_chance

.approach_or_wander
   lda entity_color_and_flags, x
   and #csf_aggressive
   beq .generate_fire_chance
   jsr apply_proximity_bonus_in_direction_y

.generate_fire_chance                                      
   lda entity_status_byte, x                       ; Get firing chance from our status byte.
   and #esb_bullet_chance_mask
   sta temp_entity_x_coord
   jsr load_two_low_bits_of_osc3_to_accumulator
   sec                                             ; Subtract a random two bit value.
   sbc temp_entity_x_coord                         ; Later, whether or not we fire will be determined
   sta ai_fire_bullet_in_direction_score, y        ; by whether the subtracted value was greater than the 
                                                   ; firing chance.
   jmp .saw_nothing_interesting                    

; -- Everything above goes back to .saw_nothing_interesting until all directions are checked.
   
.end_voting_prefer_existing_avoid_uturn
   ldx last_enemy_processed           ; Find existing direction we're facing.
   lda entity_facing, x
   tax
   tay
   inc ai_direction_votes, x          ; Add one vote to direction we're facing.
   ldx opposite_facing, y             ; Add two votes against direction we're not facing (ie, avoid 
   dec ai_direction_votes, x          ;  u-turns if possible.)
   dec ai_direction_votes, x          ; Note that 1/2 votes is relatively little compared to proximity bonuses.
   jsr bump_random_direction_votes

.tied_best_direction
   jsr bump_random_direction_votes

.best_direction = $0e  
.most_direction_votes = $fd   
   
.find_best_direction
   ldy #dir_left                       ; Loop through facings again
   sty .best_direction                 ; Set left (3) as initial best direction
   lda ai_direction_votes, y
   dey
   sta .most_direction_votes

.find_best_direction_loop
   lda ai_direction_votes, y           ; Got votes for this facing 
   cmp .most_direction_votes           ; Is it more than current best?
   bcc .not_best_direction             ; Nope, do nothing.
   beq .tied_best_direction            ; Tie - cast a random vote then restart this loop.
   sta .most_direction_votes           ; Yes, it's the new best direction.
   sty .best_direction

.not_best_direction                    
   dey                                 ; Try the next direction 
   bpl .find_best_direction_loop       ; Repeat until all directions tried.
   
   
   ldy .best_direction                 ; Check what's in the best direction.
   lda vision_dist_seen_indir, y       ; Is there something next to us in that direction?
   cmp #$01
   bne .nothing_adjacent
   lda vision_char_seen_indir, y
   beq label_16c3                      ; ?? Not sure how it would end up being zero, but hey.
   cmp #$1b                            ; Open square bracket. Not sure how one of those would show up either.
   bcc label_16c3
   cmp #c_spar                         ; Is it a spar or higher? (An player or entity)
   bcs .nothing_adjacent               ; If so, don't care about it.
   lda #$01                            ; Otherwise, we screwed up, lower votes in this direction to 1
   sta ai_direction_votes, y           ; And pick a new best direction.
   bne .find_best_direction            ; Always taken, but BNE is more efficient than JMP.

label_16c3
   jmp .normal_end_enemy_processing

.nothing_adjacent                              ; Do we want to fire?
   ldy #dir_left                               ; Loop through directions.

.generate_fire_chance_loop
   sty last_facing_for_joystick_position            
   cpy .best_direction                         ; If it's the direction we've decided to move,
   beq .dont_fire_direction_were_going         ; Don't fire in that direction.
   jsr consider_firing                         ; Otherwise, go to subroutine to consider firing.

.dont_fire_direction_were_going
   ldy last_facing_for_joystick_position
   dey                                         ; Try next direction.
   bpl .generate_fire_chance_loop
            
   
   lda .best_direction             
   ldx last_enemy_processed
   cmp entity_facing, x                        ; See which way we're facing.
   beq .already_facing_best_direction          ; If we're already facing the target direction, stay that way.
   sta entity_facing, x                        ; Otherwise, spend this cycle turning.
   jsr draw_entity_x
   jmp .maybe_fire_way_we_turned               ; Since we're just turning, maybe firing isn't such a dumb idea.

.already_facing_best_direction
   ldx last_enemy_processed
   ldy .best_direction
   lda vision_dist_seen_indir, y               ; Second stage adjacency check. 
   cmp #$01                                    ; We only checked for walls/spars etc, above.                                          
   beq .saw_entity_adjacent                    
   lda entity_enemy_type, x                    ; Are we a vacuum?
   cmp #et_vacuum
   bne label_174b              
                                               ; If we are a vacuum..
   lda vision_char_seen_indir, y               ; What did we see?
   cmp #c_player                               ; Is it the player or an enemy?
   bcc .calm_vacuum                            ; If not, calm down.
   lda #$03                                    ; If yes, chaaaaaarge!
   sta entity_upd_countdown, x                 ; Set update frequency and cooldown to 3
   sta entity_upd_cooldown, x
   ldx vision_entityId_seen_indir, y           ; Get facing of the thing we saw.
   lda entity_facing, x
   sta $0a
   tay
   lda opposite_facing, y                      ; Take opposite of that facing.
   cmp .best_direction                         ; If that's best direction (it's already moving away)
   beq .already_fleeing_vacuum
   ldy entity_status_byte, x                   ; If it's between squares
   bmi label_172e
   ldy .best_direction                         ; Otherwise, have entity we saw run away.  
   lda opposite_facing, y                      ; Get opposite of our facing
   sta entity_facing, x                        ; and turn other entity to face it.
   jmp draw_entity_x                           ; Then draw it (note: vacuum itself did nothing this cycle)

.already_fleeing_vacuum
   lda entity_status_byte, x                   ; X is still our target, from $170c above. 
   bpl label_173e                               

label_172e
   jsr move_forward_and_redraw_entity_x
   ldx $8d
   lda entity_status_byte, x                  
   ora #esb_secondframe
   sta entity_status_byte, x
   jmp draw_entity_x

label_173e
   jmp clear_bit_3_on_entity_x_and_draw

.calm_vacuum
   ldx last_enemy_processed                      ; Reload ID of vacuum
   lda #$09                                      ; And set cooldowns to 9 again.
   sta entity_upd_countdown, x
   sta entity_upd_cooldown, x

label_174b
   jmp .maybe_fire_intended_direction

.saw_entity_adjacent
   lda vision_char_seen_indir, y                 ; What did we see adjacent?
   cmp #c_spar                                   ; Was it a spar?
   bne label_1770
   inc entity_spars_eaten, x                     ; We ate it
   inc entity_shields, x                         ; We get a shield for doing so
   lda entity_enemy_type, x
   cmp #et_skull                                 ; Are we a skull?
   bne .no_skull_speedup                         ; If not, branch. 
   lda #$03                                      ; If yes, we get a speed up for eating a spar.
   sta entity_upd_cooldown, x

.no_skull_speedup
   lda #$04                                      ; Play "spar eaten" sound
   tay
   jsr sound_related_something
   jmp .maybe_fire_intended_direction

label_1770
      bcs label_1775
   jmp .end_voting_prefer_existing_avoid_uturn

label_1775
   lda vision_saw_friendly_flag, y          ; Was it a special type?
   bne .moved_into_special_type
   lda vision_entityId_seen_indir, y             ; Load collision variables and process collision
   sta $0a
   stx entity_number_that_hit_player
   jsr process_collision_between_09_and_0a
   ldx last_enemy_processed
   lda entity_shields, x                         ; Done with collision, how's our shield?
   beq .we_died_in_collision                     ; If it's zero, we killed ourselves..
   ldx $0a                                       ; How's the other guy's shield?
   lda entity_shields, x
   beq .maybe_fire_intended_direction            ; If we killed them, maybe we could fire this way.
   bne .normal_end_enemy_processing              ; Otherwise, just continue as normal.

.moved_into_special_type
   ldx vision_entityId_seen_indir, y             ; What type was it?
   lda entity_enemy_type, x
   cmp #et_tagteam2                              ; Was it a tag team?
   bne .normal_end_enemy_processing              ; If not, just don't move.
   ldx last_enemy_processed
   lda entity_enemy_type, x                      ; What type are we?
   cmp #et_mutant                                ; Are we a mutant?
   bne .normal_end_enemy_processing              ; Then don't worry.
   lda entity_spars_eaten, x 
   pha                                           ; Push number of spars we ate. 
   lda #$00                                      ; And kill ourselves.
   sta entity_shields, x
   sty $0a                                       ; Save direction we moved into tagmate.
   jsr blank_out_entity_x_nondestructive
   ldy $0a                                 
   ldx vision_entityId_seen_indir, y             ; Get creature we moved into.
   lda entity_status_byte, x                     ; Get its status.
   and #$80                                      ; Turn off "between squares" flag.
   pha
   lda #et_tagteam1                              ; Replace it with a tagteam type 1.
   jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
   pla                                           ; Add its old flags to tagteam type1 flags.
   ora entity_status_byte, x
   and #$bf
   sta entity_status_byte, x
   pla
   clc
   adc entity_spars_eaten, x                     ; Add spars we previously ate to spars it ate.
   sta entity_spars_eaten, x                     
   jmp draw_entity_x                             ; And draw it.

.normal_end_enemy_processing
      ldx last_enemy_processed
   jsr flip_bit_3_on_status_of_entity_x
   jmp draw_entity_x

.maybe_fire_intended_direction
   ldx last_enemy_processed
   jsr clear_bit_3_on_entity_x_and_draw
   jmp .maybe_fire_way_we_turned

apply_proximity_bonus_in_direction_y
   lda #$28                       ; 40
   sec
   sbc vision_dist_seen_indir, y
   clc
   adc ai_direction_votes, y
   sta ai_direction_votes, y

.we_died_in_collision
   rts

; -------------------------------------------------------------------
         
apply_proximity_penalty_in_direction_y
   lda #$28      ; 40
   sec
   sbc vision_dist_seen_indir, y  ; a = 40-(4065 entry)
   sta temp_entity_x_coord       ; $03 = 40-(4065 entry)
   lda ai_direction_votes, y  ; a = (406d entry)
   sec
   sbc temp_entity_x_coord       ; a = (406d entry)-40-(4065 entry)
   sta ai_direction_votes, y
   rts

; ------------------------------------------------------------------         
         
.maybe_fire_way_we_turned
   ldy .best_direction

consider_firing:
   lda ai_fire_bullet_in_direction_score, y
   bmi label_1811
   rts

label_1811
   jsr find_free_enemy_entity_in_x_and_locals
   tya
   ldy last_enemy_processed
   jsr fire_bullet_as_entity_x_in_direction_y
   lda #$06
   tay
   jmp sound_related_something

bump_random_direction_votes
   jsr load_two_low_bits_of_osc3_to_accumulator
   tax
   inc ai_direction_votes, x
   rts

apply_double_proximity_penalty_in_direction_y_and_single_in_opposite
   jsr apply_proximity_penalty_in_direction_y
   jsr apply_proximity_penalty_in_direction_y
   tya
   pha
   lda opposite_facing, y
   tay
   jsr apply_proximity_penalty_in_direction_y
   pla
   tay
   rts
         
; -------------------------------------------------------------------

!zone game_loop_players
  
; PLAYER PROCESSING. This is game loop part 2, called in the main game 
; loop from $0d08.
  

checking_player_number = $3a         
         
game_loop_players                    
   ldx #$01                    ; Player 2 is checked first and we 
   stx checking_player_number  ; count down.

.check_players_loop
   ldx checking_player_number
   lda player_has_ticked, x     ; Has player been ticked by ISR?
   beq .dont_process_player     ; No, don't process them.
   lda p1_lives, x              ; Is player alive?
   beq .dont_process_player     ; No, don't process them?
   lda #$00                     ; Mark tick as used up.
   sta player_has_ticked, x
   lda entity_status_byte, x    ; Is bit 7 set on player?
   and #esb_frozen
   bne .dont_process_player     ; If so, don't process them.
   jsr player_movement          ; Calls to actually do processing.
   jsr player_firing

.dont_process_player
   dec checking_player_number  ; Decrement player check number and loop.
   bpl .check_players_loop
      
   lda entity_spars_eaten       ; Get p1's collected spars.
   clc
   adc entity_spars_eaten+1     ; Add p2's collected spars.
   cmp #SPARS_TO_WIN_LEVEL                    
   bcc .level_not_complete      ; If <5, level isn't complete. 
   jmp end_of_level

.level_not_complete
   lda p1_lives                 ; Is player 1 alive?
   bne .game_not_over           ; If yes, game isn't over.
   lda p2_lives                 ; Is player 2 alive?
   bne .game_not_over           ; If yes, game isn't over.
   jmp show_game_over           ; Game IS over..

.game_not_over
   jmp game_loop_reentry_from_players

; ----------------------------------------------------------------

!zone player_movement

joystick_input = $4d
.joystick_requested_facing = $04

player_movement:
   lda port_2_joystick, x ; If x is 1 actually reads port 1 joystick
   sta joystick_input    ; Save joystick value.
   stx processing_entity_number
   and #$0f               ; Mask off lower 4 bits, which are movement.
   sec
   sbc #$05               ; Values 0-4 are invalid as joystick input.
   tay
   lda joystick_offset_table, y
   sta .joystick_requested_facing
   bmi .joystick_idle     ; Invalid/idle joystick positions get $80 
                          ; from the table, which has MSB set and so 
                          ; is considered negative and triggers BMI.
   lda entity_facing, x   ; Get our current facing?
   cmp .joystick_requested_facing ; Same facing as joystick requests?
   bne .player_needs_turn     ; If not, we need to turn.
   lda entity_status_byte, x
   bpl .move_player_forward

label_1899
   jmp move_forward_and_redraw_entity_x

.joystick_idle
   ldx processing_entity_number      
   jmp draw_entity_x                 ; EXITS
      
.old_facing = $06
 
.player_needs_turn
   lda entity_facing, x
   tay
   sta .old_facing
   lda entity_status_byte, x
   bmi label_18c4
   
   ; Check we're not turning into a wall.
   ; Get screen contents at next square in proposed direction.
   ldy .joystick_requested_facing
   jsr propose_direction_y_move_coords_for_entity_x
   jsr load_a_with_screen_at_proposed_coords
   ldx processing_entity_number
   
   ; If empty/spar/enemy, ok to turn.
   cmp #c_empty
   beq .complete_player_turn
   cmp #c_spar                 ; Sets carry if a >= $3f..
   bcs .complete_player_turn
   
   ; Abandon turn and move forward instead.
   lda .old_facing
   sta last_facing_for_joystick_position
   bcc .move_player_forward

label_18c4
   lda opposite_facing, y
   cmp last_facing_for_joystick_position
   bne label_1899
   jsr propose_forward_move_coords_for_entity_x
   jsr copy_proposed_coords_to_actual_coords_entity_x

.complete_player_turn
   lda last_facing_for_joystick_position
   sta entity_facing, x
   jmp .joystick_idle

.color_of_entered_space = $42   
   
.move_player_forward
   ; Find the character and color of the space the player is moving 
   ; into.
   jsr load_a_with_screen_at_entity_x_forward_coords
   pha
   jsr read_a_from_colors_position_xy
   and #$0f
   sta .color_of_entered_space
   ldx processing_entity_number
   pla
   
   ; See what's there.
   cmp #c_empty                    ; Empty, no problem.
   beq .player_no_collision
   cmp #c_spar                     ; A spar, process collecting it.
   beq .player_collected_spar
   cmp #c_spar                     ; Higher than a spar, it's a wall.
   bcc .player_walked_into_solid
   
   ; Uh-oh. We walked into another entity. Find what it was from the 
   ; entityID map.
   jsr set_0a_and_y_to_entityid_that_x_collides_with
   cpy #eid_last_player+1          ; EntityID<2: walked into another player!
   bcc .player_walked_into_solid   ; Treat them as a wall.
   
   lda entity_enemy_type, y
   cmp #et_dog
   beq .player_walked_into_solid
   cpy #eid_first_enemy
   bcs .player_walked_into_enemy
   lda entity_facing, y
   ldx $3a
   cmp entity_facing, x
   beq .player_walked_into_solid

.player_walked_into_enemy
   jsr process_collision_between_09_and_0a
   ldy $0a
   lda entity_shields, y
   bne .enemy_player_walked_into_didnt_die
   ldx entity_number_that_hit_player
   jmp give_player_x_score_for_entity_y

.enemy_player_walked_into_didnt_die
    rts

.player_collected_spar
   inc entity_spars_eaten, x
   lda .color_of_entered_space
   cmp #SHIELD_SPAR_COLOR
   beq .player_collected_shield_spar
   cmp #SPEED_SPAR_COLOR
   beq .player_collected_speed_spar
   lda #POWEREDUP_PLAYER_FIRE_COOLDOWN              ; Fire spar collected
   sta player_fire_cooldown, x
   bne .player_collected_shield_spar

.player_collected_speed_spar
   lda #POWEREDUP_PLAYER_MOVE_COOLDOWN
   sta player_move_cooldown, x

.player_collected_shield_spar
   ldy #$01
   lda #$04
   jsr sound_related_something
   ldy entity_shields, x   ; Add 1 shield to entity x
   iny
   cpy #MAX_PLAYER_SHIELDS+1                ; Cap at 9
   bcc .no_shield_cap
   ldy #MAX_PLAYER_SHIELDS

.no_shield_cap
   tya
   sta entity_shields, x
   jsr update_status_bar_just_shields
   jmp .player_no_collision

!ifndef remove_dead_code {   
!byte $D0,$06
}


.player_walked_into_solid
   jsr flip_bit_3_on_status_of_entity_x
   jmp .joystick_idle

.player_no_collision
   ldx processing_entity_number
   jmp clear_bit_3_on_entity_x_and_draw

; ---------------------------------------------------------------------   
   
!zone propose_forward_move_coords_for_entity_x
  
propose_forward_move_coords_for_entity_x
   ldy entity_facing, x

propose_direction_y_move_coords_for_entity_x
   lda entity_x_coords, x
   clc
   adc facing_offset_table_horz, y
   jsr wraparound_x_coordinate_a
   sta proposed_entity_x_coord
   lda entity_y_coords, x
   clc
   adc facing_offset_table_vert, y
   jsr wraparound_y_coordinate_a
   sta proposed_entity_y_coord
   rts

; -----------------------------------------------------------------
; If accumulator is 0-38 (valid x locations), leave unchanged.
; If negative, set to 38 (left wrap).
; If 39 or more, set to 0 (right wrap).
 
!zone wraparound_x_coordinate_a
  
wraparound_x_coordinate_a
  bpl .no_left_wrap
  lda #$26

.no_left_wrap
  cmp #$27
  bcc .no_right_wrap
  lda #$00

.no_right_wrap
  rts

; ----------------------------------------------------------------
         
; If accumulator is 2-24 (valid y locations on screen after status 
; bar), leave unchanged.
; If it's 1 (one line off the top), wrap around to 24. If it's 
; over 24, wrap around to 2.

!zone wraparound_y_coordinate_a
  
wraparound_y_coordinate_a
  cmp #$01            ; Accumulator != 1?
  bne .no_top_wrap
  lda #$18

.no_top_wrap
  cmp #$19            ; Accumulator < $19 (25?)
  bcc .no_bottom_wrap
  lda #$02

.no_bottom_wrap
  rts

; ----------------------------------------------------------------

!zone flip_top_bit_and_clear_third_bit_of_entity_x_status
  
flip_top_bit_and_clear_third_bit_of_entity_x_status
   lda entity_status_byte, x
   eor #$80
   sta entity_status_byte, x
   lda entity_status_byte, x
   and #$fb
   sta entity_status_byte, x
   rts

; -----------------------------------------------------------------         
         
!zone kill_respawn_player
  
reduce_player_x_lives
   dec p1_lives, x
   jsr init_player_x_shields_and_cooldowns
   
spawn_player
  lda level_number_byte
  lsr
!ifdef minimum_escalation {
  cmp #minimum_escalation
  bcs .minimum_escalation_ok
  lda #minimum_escalation
.minimum_escalation_ok:
}
  sta escalation
!ifdef show_timing_info {
  txa
  pha
  ldx #5
  lda escalation
  jsr display_hex_value
  pla
  tax
}
  
  stx processing_entity_number
  lda p1_lives, x
  beq .player_dead_dead
  lda #et_player
  jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
  lda p1_shields_copy, x
  sta entity_shields, x
  lda #$01
  sta player_move_cooldown_counter, x
  sta player_fire_cooldown_counter, x
  lda player_color, x
  ora #csf_visible
  sta entity_color_and_flags, x
  lda player_spawn_xcoord, x
  sta proposed_entity_x_coord
  lda #$17
  sta proposed_entity_y_coord
  jsr copy_proposed_coords_to_actual_coords_entity_x
  lda player_spawn_facing, x
  sta entity_facing, x
  lda #$00
  jsr explode_entity_maybe
  ldx processing_entity_number
  jsr load_a_with_screen_at_proposed_coords
  ldx processing_entity_number
  cmp #c_empty
  beq .player_spawn_clear
  cmp #c_spar
  bne .player_spawned_on_entity
  inc entity_spars_eaten, x
  bne .player_spawn_clear

.player_spawned_on_entity  ; If player spawned on entity, kill it.
   jsr set_0a_and_y_to_entityid_that_x_overlaps
   ldx $0a
   jsr blank_out_entity_x_nondestructive
   ldx $0a
   lda #$00
   sta entity_shields, x
   jsr drop_spars_from_entity_x

.player_spawn_clear
   ldy processing_entity_number
   jsr fire_player_spawn_bullets_from_player_y

.player_dead_dead
   jmp update_status_bar_not_scores   ; Tail call RTS

; ------------------------------------------------------------------
   

!zone load_vision_buffers_entity_x

.considering_facing = $fc
.distance_countdown = $fd
.max_distance = $02

load_vision_buffers_entity_x
   stx processing_entity_number
   lda entity_vision_distance, x
   sta .distance_countdown
   sta .max_distance
   ldy #$03
   sty .considering_facing

label_1a1d
   lda #$a0
   sta ai_direction_votes, y
   lda #$00
   sta vision_dist_seen_indir, y
   sta vision_saw_friendly_flag, y
   sta ai_fire_bullet_in_direction_score, y
   dey
   bpl label_1a1d
   sta $42
   ldx processing_entity_number
   ldy entity_enemy_type, x
   lda $4083, y
   bpl .look_one_way
   inc $42

.temp_x_coord = $03
.temp_y_coord = $fb      
      
.look_one_way
   ldx processing_entity_number
   lda entity_x_coords, x
   sta .temp_x_coord
   lda entity_y_coords, x
   sta .temp_y_coord

.trace_distance_loop
   ldy .considering_facing
   lda .temp_x_coord
   clc
   adc facing_offset_table_horz, y
   jsr wraparound_x_coordinate_a
   tax
   sta .temp_x_coord
   lda .temp_y_coord
   clc
   adc facing_offset_table_vert, y
   jsr wraparound_y_coordinate_a
   tay
   sta .temp_y_coord
   jsr read_a_from_screen_position_xy
   ldx .considering_facing
   sta vision_char_seen_indir, x
   inc vision_dist_seen_indir, x
   lda vision_char_seen_indir, x
   cmp #c_empty
   bne .seen_something
   dec .distance_countdown
   bne .trace_distance_loop
   beq .done_looking_this_way

.seen_something
   cmp #$40
   bcc .done_looking_this_way
   ldx .temp_x_coord
   jsr read_a_from_entityId_buffer_position_x_y
   inc $42
   ldx .considering_facing
   sta vision_entityId_seen_indir, x

.done_looking_this_way
   dec .considering_facing
   bmi .done_looking
   lda .max_distance
   sta .distance_countdown
   jmp .look_one_way

.done_looking
   ldx processing_entity_number
   lda $42
   beq label_1aa1
   lda #$20
   sta $42

label_1aa1
   lda entity_color_and_flags, x
   and #$df              ; Clear bit 6
   ora $42               ; But reset it, if $42 was set above
   sta entity_color_and_flags, x
   rts

; ------------------------------------------------------------------

!zone show_game_over
  
show_game_over:

; Draw game over message on screen. Make it flash by copying value
; of jiffy clock into color map at location of message.

   ldx #$08                   ; Length of message
.game_over_print_loop
   lda game_over_message, x
   beq .game_over_skip_letter
   sta screen+$217, x
   lda jiffy_clock
   sta colors+$217, x
.game_over_skip_letter
   dex
   bpl .game_over_print_loop
   
   jsr show_press_f7
   beq .game_over_f7_pressed
   jmp done_escalation
 
.game_over_f7_pressed
   lda #$93              ; Clear screen
   jsr $ffd2             ; OS print character call
   jmp title_screen_init

; ---------------------------------------------------------------   
   

!zone copy_proposed_coords_to_actual_coords_entity_x
  
copy_proposed_coords_to_actual_coords_entity_x
   lda proposed_entity_x_coord
   sta entity_x_coords, x
   lda proposed_entity_y_coord
   sta entity_y_coords, x
   rts
   
; ---------------------------------------------------------------

!zone update_player_bullets
  
update_player_bullets:
   ldx #$02
   lda #$00
   sta interrupt_counter

.check_bullets_loop
   lda entity_shields, x
   beq .no_bullet
   lda entity_status_byte, x
   bpl label_1aef
   jsr move_forward_and_redraw_entity_x
   jmp label_1af2

label_1aef
   jsr update_bullet

label_1af2
   ldx $13

.no_bullet
   inx
   cpx #$0c
   bne .check_bullets_loop
   rts
         
; -------------------------------------------------------------------

!zone read_from_entityId_buffer
  
.tempstore_x = $09

set_0a_and_y_to_entityid_that_x_collides_with
  stx .tempstore_x
  jsr propose_forward_move_coords_for_entity_x

  ; Using this entry point doesn't update tempstore_x, so clobbers x?
set_0a_and_y_to_entityid_at_proposed_coord 
  ldx proposed_entity_x_coord
  ldy proposed_entity_y_coord 
  bne label_1b0e            ; ?? A should never be 0 here.

set_0a_and_y_to_entityid_that_x_overlaps
  stx .tempstore_x          
  ldy entity_y_coords, x
  lda entity_x_coords, x
  tax

label_1b0e
  jsr read_a_from_entityId_buffer_position_x_y
  tay
  ldx .tempstore_x
  sty $0a

label_1b16
  rts

; -------------------------------------------------------------------

!zone player_firing
  
.bullet_direction = $fe
  
player_firing
   lda joystick_input  ; We count on this having been set up by 
                       ; player_movement which was called immediately before.
   and #$10            ; Does player want to fire?
   bne label_1b16      ; No, exit.
   ldy checking_player_number ; .. And on this having been set up by 
                              ; game_loop_player which is calling us.
   lda player_fire_cooldown_counter, y
   beq .player_fires   
   rts

.player_fires
   lda #$05
   jsr sound_related_something
   ldy checking_player_number
   lda player_fire_cooldown, y
   sta player_fire_cooldown_counter, y
   lda entity_facing, y

fire_bullet_from_entity_y_in_direction_a
   sta .bullet_direction
   sty processing_entity_number
   
; Find a free bullet entity slot   
   
   ldx #$02
.find_bullet_slot_loop
   lda entity_shields, x
   beq .found_bullet_slot
   inx
   cpx #$0c
   bne .find_bullet_slot_loop
      
; No free bullet found. Wipe out oldest bullet   
   
   ldx oldest_bullet_entity_id
   stx $fd
   jsr blank_out_entity_x_nondestructive
   ldx oldest_bullet_entity_id  ; Increment old bullet id and wrap 
   inx                          ; around at 13..
   cpx #$0c
   bne .no_old_bullet_wrap
   ldx #$02

.no_old_bullet_wrap
   stx oldest_bullet_entity_id
   ldx $fd

.found_bullet_slot
   lda .bullet_direction
   ldy processing_entity_number
   stx $8d

fire_bullet_as_entity_x_in_direction_y:
   sta entity_facing, x
   lda entity_bullet_speed, y
   pha
   lda entity_bullet_type, y
   stx processing_entity_number
   sty $fd
   jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
   pla
   sta entity_upd_cooldown, x
   lda #$01
   sta entity_upd_countdown, x
   ldy $fd
   lda entity_enemy_type, x
   cmp #$12
   bne label_1b88
   lda entity_enemy_type, y
   sta entity_type_fired_me, x

label_1b88
   lda entity_color_and_flags, x
   and #$f0
   ora entity_color_and_flags, y
   sta entity_color_and_flags, x
   lda entity_status_byte, y
   and #$40
   beq label_1b9f
   lda #$20
   sta entity_shields, x

label_1b9f
   ldy entity_facing, x
   ldx $fd
   jsr propose_direction_y_move_coords_for_entity_x
   ldx processing_entity_number
   jsr copy_proposed_coords_to_actual_coords_entity_x
   ldx $fd
   lda entity_status_byte, x
   bpl label_1bbb
   ldx processing_entity_number
   jsr propose_forward_move_coords_for_entity_x
   jsr copy_proposed_coords_to_actual_coords_entity_x

label_1bbb
   lda $fd
   cmp #$02
   bcs label_1bc6
   ldx processing_entity_number
   sta entity_bullet_type, x

label_1bc6
   jsr load_a_with_screen_at_proposed_coords
   ldx processing_entity_number
   cmp #c_empty        ; empty
   beq label_1beb
   cmp #c_player       ; player
   bcs label_1bd9
   lda #$00       ; collided with something else, die      
   sta entity_shields, x
   rts

label_1bd9
   stx entity_number_that_hit_player      
   jsr set_0a_and_y_to_entityid_at_proposed_coord
   jsr process_collision_between_09_and_0a
   ldx $0a
   lda entity_shields, x
   bmi label_1bea
   bne label_1bf8

label_1bea
         rts

label_1beb
   lda entity_bullet_type, x
      bmi label_1bf8
      inc difficulty
      bne label_1bf8
      lda #$ff
      sta difficulty

label_1bf8
   jmp draw_entity_x

 ; --------------------------------------------------------------------
!zone collision_handling
 
process_collision_between_09_and_0a:

.first_colliding_entity = $09
.second_colliding_entity = $0a

   ldy .second_colliding_entity
   lda entity_bullet_type, y
   cmp #et_worm
   bne label_1c33
   ldx .first_colliding_entity
   lda entity_status_byte, x
   and #esb_invulnerable
   beq label_1c33

   lda entity_shields, x
   cmp #$14
   bcs label_1c33

   lda entity_facing, y
   tay
   lda entity_facing, x
   cmp opposite_facing, y
   beq label_1c33

   ldy entity_facing, x
   lda opposite_facing, y
   sta entity_facing, x
   lda #$01
   ldx .first_colliding_entity
   ldy entity_bullet_type, x
   jmp sound_related_something           ; EXIT

label_1c33
   ldx .second_colliding_entity
   dec entity_shields, x
   lda #$01
   jsr explode_entity_maybe
   ldy #$03
   ldx .first_colliding_entity
   lda entity_status_byte, x
   and #esb_invulnerable
   beq label_1c4c
   dec entity_shields, x
   
!byte $2c                 ; BIT skip hack
label_1c4c
   ldy #$07
   sty $0b
   lda entity_enemy_type, x
   cmp #et_vacuum
   beq .vacuum_instant_death
   lda entity_bullet_type, x
   bmi label_1c7c
   cmp #$02
   bcs label_1c7c
   lda entity_shields, x
   cmp #$02
   bcc label_1c7c

.vacuum_instant_death
      ldx .second_colliding_entity
      lda #$00
   sta entity_shields, x
      beq label_1c7c             ;; ??
   lda entity_status_byte, x
      and #esb_invulnerable
      beq label_1c7c
      lda #$01
   jsr explode_entity_maybe

label_1c7c
   ldx .second_colliding_entity
   lda entity_shields, x
   bne .second_entity_survived
   lda $0b
   cmp #$07
   beq label_1c8d
   lda #$02
   sta $0b

label_1c8d
   jsr blank_out_entity_x_nondestructive
   ldx .second_colliding_entity
   jsr drop_spars_from_entity_x

.second_entity_survived
   ldx .first_colliding_entity
   lda entity_shields, x
   bne .first_entity_survived
   jsr blank_out_entity_x_nondestructive
   ldx .first_colliding_entity
   jsr drop_spars_from_entity_x

.first_entity_survived
   ldx .first_colliding_entity
   cpx #$02
   bcs .first_entity_wasnt_player
   jsr update_status_bar_just_shields
   lda entity_shields, x
   bmi .player_life_lost
   bne .first_entity_wasnt_player    ;

.player_life_lost
   jmp reduce_player_x_lives

.first_entity_wasnt_player
   lda entity_bullet_type, x
   cmp #$02
   bcs label_1cc9
   ldy $0a
   ldx entity_shields, y
   bne label_1cc9
   tax
   jsr give_player_x_score_for_entity_y

label_1cc9
      ldy #$02
      ldx .first_colliding_entity
      cpx #$0c
      bcs label_1cd2
         dey

label_1cd2
      ldx .second_colliding_entity
      cpx #$0c
      bcs label_1cd9
         dey

label_1cd9
   lda $0b
   jsr sound_related_something
   ldx .second_colliding_entity
   cpx #$02
   bcs reused_rts
   jsr update_status_bar_just_shields
   lda entity_shields, x
   beq .player_life_lost
   bmi .player_life_lost

reused_rts
   rts

; --------------------------------------------------------------------         
         
!zone drop_spars_from_entity_x

; Called when an entity dies. Find the number of spars it's supposed
; to drop and drop them in random empty locations.

.spars_left_to_drop = $fe

drop_spars_from_entity_x:
   lda entity_spars_eaten, x   ; Get and store number to drop
   sta .spars_left_to_drop
   lda #$00                      ; Reset number to drop in entity array
   sta entity_spars_eaten, x

.drop_spars_loop:
   dec .spars_left_to_drop       ; Count down number left to drop 
   bmi reused_rts                ; If all done, return via nearby rts(!)
   jsr set_xy_to_random_empty_space_coord ; Find a random space 
   lda #c_spar    ; spar                  ; Draw a spar there 
   jsr write_a_to_screen_position_xy
   jsr select_random_spar_type            ; Choose random spar type/color
   bne .drop_spars_loop

; --------------------------------------------------------------------   
   
!zone end_of_level
  
end_of_level
   jsr clear_explosions
   ldx #$01

.check_player_x
   ldy multiply_by_8, x
   
   ; Check if player x is active/alive; don't process if not.
   lda p1_lives, x            ; Check if player is alive/active.
   beq .player_x_dead         ; If not, don't process.
   
   ; Award players points equal to number of spars they ate x5.
   lda entity_spars_eaten, x  ; Get number of spars they ate
   asl                        ; x2
   asl                        ; x4
   clc
   adc entity_spars_eaten, x  ; Add once more for x5
   adc player_1_score_digits+5, y  ; Add this to player's score
   sta player_1_score_digits+5, y
   
   ; Reset player's spars eaten count for the new level.
   lda #$00
   sta entity_spars_eaten, x
   
   
   lda level_units_b
   cmp level_number_byte
   bne .player_x_dead
   asl
   asl
   adc $6044, y
   sec
   sbc #$04
   sta $6044, y

.player_x_dead
   jsr score_update
   dex
   bpl .check_player_x
   
   ; Increment level
   ldx level_bcd_units           ; Get level units           
   inx                         ; Add 1
   cpx #10                     ; Did it go over 10?
   bcc .no_level_bcd_tens_increase ; No, so no carry
   ldx #$00                    ; Carry, set units to 0
   inc level_bcd_tens              ; And carry 1 to the tens
.no_level_bcd_tens_increase
   stx level_bcd_units           ; Store new units

   ; Wait for user to press F7.
.wait_for_f7
   jsr show_press_f7
   bne .wait_for_f7
   
   jsr update_status_bar
   jsr draw_new_map
   lda entity_shields
   sta p1_shields_copy
   lda p2_shields
   sta p2_shields_copy
   inc level_number_byte
   jmp per_level_init

; -------------------------------------------------------------------   
   
!zone move_forward_and_redraw_entity_x
  
.temp_x_store = $13

move_forward_and_redraw_entity_x
   stx .temp_x_store
   jsr blank_out_entity_x_nondestructive
   ldx .temp_x_store
   jsr propose_forward_move_coords_for_entity_x
   jsr copy_proposed_coords_to_actual_coords_entity_x
   jsr flip_top_bit_and_clear_third_bit_of_entity_x_status
   jmp draw_entity_x

; -------------------------------------------------------------------   
   
!zone clear_bit_3_on_entity_x_and_draw
  
.stored_x_value = $13
clear_bit_3_on_entity_x_and_draw
   stx .stored_x_value
   lda entity_status_byte, x
   and #$fb  ; Clear bit 3
   sta entity_status_byte, x
   jsr flip_top_bit_and_clear_third_bit_of_entity_x_status
   jsr draw_entity_x
   ldx .stored_x_value
   jmp draw_entity_x_override_color

; ---------------------------------------------------------------   
  
!zone flip_bit_3_on_status_of_entity_x
 
flip_bit_3_on_status_of_entity_x
   lda entity_status_byte, x
   eor #esb_secondframe
   sta entity_status_byte, x
   rts

; --------------------------------------------------------------------         
         
!zone show_press_f7

; Shows the "Press F7" message. Also checks if F7 is actually being
; pressed and sets eq flag accordingly.
  
show_press_f7  
   ldx #$07                         ; 7 characters
.print_pressf7_loop
   lda press_f7_message, x          ; Get character of "PRESS F7"
   beq .pressf7_skip_letter         ; If zero, don't draw
   sta screen+$1c7, x               ; Put character on screen
   lda #$0a                         ; Set matching color cell to 10
   sta colors+$1c7, x
.pressf7_skip_letter
   dex                              ; Loop
   bpl .print_pressf7_loop
   
   lda pressed_key_code             ; Read pressed key
   cmp #$03                         ; Compare to F7 ($3)
   rts

; --------------------------------------------------------------------

; Choose a random type (color) for a newly spawned spar. Called
; directly after spawning a spar with x/y still holding its location.
; 3/4 chance of a shield spar. Otherwise, 50/50 fire or move spar.

!zone select_random_spar_type      
         
select_random_spar_type
   ; Always 3/4 chance of a shield spar.
   lda sid_voice3_oscillator_ro   ; Get random value from osc
   and #$03                       ; Mask off bits
   bne .select_shield_spar        ; If not 0 (3/4), shield spar.
   ; If level too low, always shield spar.
   lda #$02                       ; If level too low, always shield spar.
   cmp level_number_byte
   bcs .select_shield_spar       
   ; Select 50/50 between other two spar types.
   lda sid_voice3_oscillator_ro   ; Get random value from osc
   and #$01                       ; Mask off just one bit
   beq .select_speed_spar                ; If zero, spar type 6
   lda #FIRE_SPAR_COLOR                       ; Else, spar type 2
   !byte $2c              ; BIT skip hack
.select_speed_spar
   lda #SPEED_SPAR_COLOR
   !byte $2c              ; BIT skip hack
.select_shield_spar
   lda #SHIELD_SPAR_COLOR
   jmp write_a_to_colors_position_xy

; --------------------------------------------------------------------   
!zone load_a_with_screen_at_entity_x_forward_coords
 
load_a_with_screen_at_entity_x_forward_coords
   jsr propose_forward_move_coords_for_entity_x

!zone load_a_with_screen_at_proposed_coords
   
load_a_with_screen_at_proposed_coords
   ldx proposed_entity_x_coord
   ldy proposed_entity_y_coord
   jmp read_a_from_screen_position_xy
   
; ---------------------------------------------------------------------   

!zone init_player_x_shields_and_cooldowns
  
; Reset player x's shield and move/fire cooldown value to the default.
  
init_player_x_shields_and_cooldowns
  lda #DEFAULT_PLAYER_SHIELDS
  sta p1_shields_copy, x       
  lda #DEFAULT_PLAYER_MOVE_COOLDOWN
  sta player_move_cooldown, x
  lda #DEFAULT_PLAYER_FIRE_COOLDOWN
  sta player_fire_cooldown, x
  rts
 
;------------------------------------------------------------------

!ifdef show_timing_info {

!zone display_hex_value
display_hex_value:
    tay
    and #$0F
    clc
    cmp #10
    bcc .alpha_1
    sbc #9
    !byte $2c
.alpha_1    
    adc #NUMBER_TO_PETSCII_ADJUSTMENT
    sta screen+1, x
    tya
    lsr
    lsr
    lsr
    lsr
    clc
    cmp #10
    bcc .alpha_2
    sbc #9
    !byte $2c
.alpha_2
    adc #NUMBER_TO_PETSCII_ADJUSTMENT
    sta screen, x
    rts
}

!zone post_code_data
  
msg_banner:

!text $93,$1C,"    CROSSROADS II : ",$9C,"PANDEMONIUM      " 


!byte $1C,$C0,$1E,$20,$00

main_scrolltext:
!byte $F6

label_1e14:

!byte $2E,$2E,$2E,$03,$0F,$10,$19,$12,$09,$07
;     .   .   .   C   O   P   Y   R   I   G
!byte $08,$14,$20,$31,$39,$38,$38,$20
;     H   T   _   1   9   8   8   _
!byte $03,$0F,$0D,$10,$15,$14,$05,$21
;     C   O   M   P   U   T   E   !
!byte $20,$10,$15,$02,$0C,$09,$03,$01
;     _   P   U   B   L   I   C   A     
!byte $14,$09,$0F,$0E,$13,$F2,$2E,$2E
;     I   I   O   N   S   crl .   .
!byte $2E,$17,$05,$0C,$03,$0F,$0D,$05
;     .   W   E   L   C   O   M   E
!byte $20,$14,$0F,$20,$10,$01,$0E,$04
;     _   T   O   _   P   A   N   D
!byte $05,$0D,$0F,$0D,$09,$15,$0D,$F7
;     E   M   O   N   I   U   M   crl
!byte $2E,$2E,$2E,$10,$12,$05,$13,$13
;     .   .   .   P   R   E   S   S 
!byte $20,$06,$09,$12,$05,$20,$02,$15
;     _   F   I   R   E   _   B   U 
!byte $14,$14,$0F,$0E,$20,$14,$0F,$20
;     T   T   O   N   _   T   O   _ 
!byte $13,$14,$01,$12,$14
;     S   T   A   R   T

; This is the programmer's credit. Because Compute! removed the credit from the previous game, in this
; version it's encrypted by adding the hex value of the corresponding line from the spar graphics 
; (below) to the character code.

hidden_credit_text:
!byte $F5,$5E,$40,$4C,$7A,$61,$2C,$13,$14,$1D,$1E,$7F,$7E,$18,$19,$12,$14,$11,$76
;Key  $00 $30 $12 $1e $78 $48 $0c $00 $00 $18 $08 $7a $5e $10 $18 $00 $00 $0c $64
;Plain$f5 $2e $2e $2e $02 $19 $20 $13 $14 $05 $16 $05 $20 $08 $01 $12 P14 $05 $12
;     crl .   .   .   B   Y   _   S   T   E   V   E   _   H   A   R   T   E   R

msg_start_at_level:
!byte $13,$14,$01,$12,$14,$20,$01,$14
;     S   T   A   R   T   _   A   T
!byte $20,$0C,$05,$16,$05,$0C,$20,$31
;     _   L   E   V   E   L   _  


label_1e96:
!byte $13,$11,$1D,$14,$00

label_1e9b:
!byte $04,$07

msg_status_bar_headers:

!ifndef show_timing_info {
!text $13,$1C,"PLAYER 1 ",$96,"S ",$9e,"L",$1f,"   HIGH  ",$1e,"LEVEL ",$1c,"PLAYER 2 ",$96,"S ",$9e,"L",$00
}

!ifdef show_timing_info {
!text $13,$1C,"ESC      ",$96,"S ",$9e,"L",$1f," SWEEPS   ",$1e," LV  ",$1c,"DIFF     ",$96,"S ",$9e,"L",$00
}


;!byte ,$50,$4C,$41,$59,$45,$52,$20
;       P   L   A   Y   E   R   _
;!byte $31,$20,$96,$53,$20,$9E,$4C,$1F
;       1   _   ctl  
;!byte $20,$20,$20,$48,$49,$47,$48,$20
;!byte $20,$1E,$4C,$45,$56,$45,$4C,$20
;!byte $1C,$50,$4C,$41,$59,$45,$52,$20
;!byte $32,$20,$96,$53,$20,$9E,$4C,$00

map_start_addresses:
!byte $00,$00,$37,$6e,$A5

map_colors:
!byte $02,$04,$05
!byte $06,$08,$09,$0B,$0E

label_1edb:
!byte $00,$00,$04,$FC

label_1edf:
!byte $04,$FC,$00,$00

; Gives X and Y coordinate offsets represented by each of the four
; facings: 0 down, 1 up, 3 right, 4 left. $FF serves as -1.
facing_offset_table_horz:
!byte $00,$00,$01,$FF

facing_offset_table_vert:
!byte $01,$FF,$00,$00

; Used in routines above to look up facing value from joystick bitmap.
; Note that 5 is subtracted before the value is used as the index 
; because joystick values 0-4 are all impossible.
joystick_offset_table:
!byte $00       ; %0101, down+right => down
!byte $01       ; %0110, up+right   => up       
!byte $02       ; %0111, right      => right
!byte $80       ; %1000, impossible (up+down+left) => idle
!byte $00       ; %1001, left+down  => down
!byte $01       ; %1010, left+up    => up
!byte $03       ; %1011, left       => left
!byte $80       ; %1100, impossible (up+down)
!byte $00       ; %1101, down
!byte $01       ; %1110, up
!byte $80       ; %1111, idle

onebit_masks_zero_is_msb:
!byte $80,$40,$20,$10,$08,$04,$02 ; $01 is reused from the next array

onebit_masks_zero_is_lsb:
!byte $01,$02,$04,$08,$10,$20,$40,$80

player_function_keys:
!byte $04  ; F1
!byte $05  ; F3

player_spawn_xcoord:
!byte $01,$25

label_1f09:
!byte $C0,$DB

unknown_facing_table:
!byte $08,$0C,$00
!byte $04

opposite_facing:
!byte $01,$00,$03,$02

player_spawn_facing:
!byte $02,$03

multiply_by_8:
!byte $00,$08,$10

player_color:
!byte $02,$05

label_1f1a:
!byte $19,$03

data_explosion_limits:
!byte $02,$1a

data_explosion_deltas:
!byte $FF,$01

spar_images:
  
!byte %........
!byte %..##....
!byte %...#..#.
!byte %...####.
!byte %.####...
!byte %.#..#...
!byte %....##..
!byte %........

!byte %........
!byte %...##...
!byte %....#...
!byte %.####.#.
!byte %.#.####.
!byte %...#....
!byte %...##...
!byte %........

!byte %........
!byte %....##..
!byte %.##..#..
!byte %.#.##...
!byte %...##.#.
!byte %..#..##.
!byte %..##....
!byte %........

sid_voice_offsets:
!byte $00

label_1f39:
!byte $07,$21,$81,$11

label_1f3d:
!byte $11,$03,$00,$10

label_1f41:
!byte $40,$07,$1F,$0F,$07


possible_sound_buffer:             
!byte $8F,$00

;Enemy data tables:

non = $7f
bul = $11
wrm = $12
spr = $13
na = $ff

;                                                 EGG VAC TT1 TT2 MUT LSK SKL CHM MKY RH1 THR ARC DOG RH2 FLI LON PLY BLT WRM SPR
enemy_release_schedule:                     !byte $01,$07,$11,$08,$02,$04,$05,$03,$05,$06,$04,$08,$01,$09,$01,$01
enemy_data_cd:                              !byte $00,$01,$13,$02,$32,$07,$00,$05,$1F,$80,$3B,$2A,$09,$40,$05,$08,$10,$00,$20,$00
enemy_data_low_shields_high_score:          !byte $32,$83,$94,$32,$22,$44,$75,$55,$52,$73,$64,$85,$11,$64,$11,$33,$04,$01,$21,$01
enemy_data_low_vision_high_update_cooldown: !byte $88,$9B,$5D,$77,$96,$69,$5A,$58,$6F,$FF,$9C,$8F,$A7,$6D,$C6,$88,$21,$21,$4A,$21
enemy_data_a:                               !byte $06,$FF,$04,$04,$03,$0E,$00,$0E,$FF,$12,$FF,$FF,$10,$12,$07,$FF,$FF,$FF
enemy_bullet_types:                         !byte non,non,bul,non,bul,non,non,non,bul,wrm,spr,spr,non,wrm,non,non,bul,na ,bul,na
enemy_type_colors:                          !byte $7E,$75,$7A,$AA,$BA,$77,$71,$72,$A9,$34,$BC,$7B,$A9,$7D,$B6,$68,$22,$22,$60,$20
enemy_initial_status:                       !byte $58,$40,$52,$48,$79,$40,$50,$58,$5A,$53,$7A,$5A,$68,$62,$78,$58,$62,$20,$21,$20

label_1fe2:
!byte $05,$12,$1E,$06
!byte $09,$0C,$11,$0E,$10,$1A,$18,$18
!byte $CF,$1C,$08,$0B,$00,$00,$32

game_over_message:
!byte $07,$01,$0D,$05,$00,$0F,$16,$05,$12
;     G   A   M   E   _   O   V   E   R

press_f7_message:
!byte $10,$12,$05,$13,$13,$00,$06,$37
;     P   R   E   S   S   _   F   7

label_2006:
!byte $FF,$BF,$E0,$20,$00,$FA,$AA,$A8
!byte $20,$00,$AA,$FF,$EA,$80,$08,$AB
!byte $FE,$8A,$80,$08,$AB,$BF,$88,$82
!byte $00,$BB,$A0,$00,$00,$00,$FB,$A0
!byte $08,$0A,$00,$AA,$BF,$8A,$88,$08
!byte $AE,$BE,$8A,$00,$28,$8E,$BA,$EA
!byte $08,$00,$BE,$AA,$E8,$02,$00,$FF
!byte $BE,$D0,$00,$24,$80,$01,$38,$00
!byte $09,$C0,$00,$42,$00,$05,$90,$00
!byte $4D,$FB,$F7,$00,$00,$0D,$DB,$FB
!byte $10,$20,$1F,$6A,$FD,$00,$00,$0A
!byte $BB,$FD,$22,$20,$0F,$AA,$00,$00
!byte $00,$0E,$AA,$00,$08,$A0,$0A,$BA
!byte $00,$AB,$AF,$F8,$00,$01,$FF,$FB
!byte $E8,$80,$20,$23,$FE,$FA,$80,$00
!byte $AF,$FB,$FA,$80,$A0,$A8,$0A,$08
!byte $80,$A0,$D8,$0E,$00,$00,$00,$D8
!byte $0E,$08,$80,$A0,$A8,$0A,$0A,$80
!byte $A0,$AF,$FB,$FA,$00,$00,$AB,$FB
!byte $F0,$00,$00,$AF,$7A,$EA,$14,$22
!byte $BD,$5F,$A8,$00,$02,$FF,$BF,$F0
!byte $00,$01,$80,$00,$00,$00,$01,$80
!byte $00,$00,$00,$01,$80,$00,$00,$00
!byte $01,$80,$00,$00,$00,$01,$80,$00
!byte $00,$00,$01,$80,$00,$00,$00,$01
!byte $FF,$BF,$F0,$00,$00,$EF,$AF,$E2
!byte $02,$00,$BF,$BE,$DA,$00,$21,$AE
!byte $BB,$D0,$08,$01

label_20e2:
!byte $FF,$FE,$00,$00
!byte $20,$BB,$FA,$08,$80,$00,$23,$DE
!byte $0B,$A0,$00,$82,$00,$0F,$A0,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$0E,$E0,$00,$82
!byte $00,$0A,$A0,$00,$AB,$BE,$08,$00
!byte $20,$BA,$BA,$08,$28,$00,$BA,$EA
!byte $08,$00,$20,$F7,$EF,$F0,$00,$00
!byte $BB,$EB,$80,$00,$08,$EA,$EA,$82
!byte $A8,$A8,$8A,$EE,$82,$22,$A8,$EE
!byte $EA,$80,$20,$08,$E8,$AF,$E0,$A2
!byte $02,$FB,$E0,$20,$00,$02,$BF,$A1
!byte $E0,$02,$10,$BD,$A1,$08,$02,$10
!byte $BD,$A1,$00,$5A,$1F,$B5,$A0,$08
!byte $02,$00,$F7,$5F,$F0,$44,$00,$BD
!byte $40,$08,$14,$00,$B5,$40,$0B,$55
!byte $FF,$84,$00,$0B,$D5,$FD,$A0,$44
!byte $1A,$DD,$5C,$80,$00,$1B,$FD,$5C
!byte $80,$04,$1F,$AD,$FF,$0A,$D1,$1E
!byte $E0,$44,$81,$D1,$1A,$D0,$44,$0D
!byte $D1,$1A,$04,$44,$B5,$51,$18,$14
!byte $44,$FF,$F5,$D8,$00,$41,$BE,$FF
!byte $D8,$28,$05,$3A,$80,$48,$08,$05
!byte $BE,$80,$4A,$0B,$FD,$BE,$80,$58
!byte $0B,$F5,$BE,$80,$00,$2B,$FD,$BE
!byte $20,$08,$0A,$00,$BE,$A0,$08,$08
!byte $00,$FD,$BF,$D0,$00,$00,$AD,$7F
!byte $D8,$10,$41,$BD,$75,$D8,$10,$41

program_end:


