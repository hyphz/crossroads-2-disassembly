* = $0801

c_empty = $20
c_spar = $3f 
c_player = $40

; Offset $7FF for BC4

 
 ; 1101 0000 1100 1101
 ;           ---- 1101 = $d00c    ?

; HARDWARE ADDRESSES

!zone hardware_addresses

ram_rom_mapping          = $01
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

explosion_or_implosion     = $4020
explosion_status      = $4028
explosion_count_up_array = $4030
explosion_base_sprite_pointer = $4040
explosion_sprite_pointer_offset     = $4048
exploding_entity_index= $4058
game_status_flags   = $4060
slot_udg_loaded_into  = $4096

; Entity maps. 
; Entities 0 and 1 are player
; 2-12 are player bullets
; 13+ are enemies

entity_enemy_type     = $4100
entity_base_charno    = $4200
entity_bullet_type    = $4300
entity_color          = $4400
entity_status_byte    = $4500
entity_shields        = $4600
p2_shields            = $4601
entity_x_coords       = $4e00
entity_y_coords       = $4f00
entity_spars_eaten    = $5000
entity_facing         = $5100

screen_line_address_lowbytes = $6000
screen_line_address_highbytes = $6019
player_1_score_digits = $6040
player_2_score_digits = $6048
high_score_digits     = $6050

temp_entity_x_coord               = $03
last_facing_for_joystick_position = $04
processing_entity_number          = $05
proposed_entity_x_coord           = $07
proposed_entity_y_coord           = $08
entity_number_that_hit_player     = $09
var_f_init_12                     = $0d
p1_lives                          = $11
p2_lives                          = $12
p1_shields_copy                   = $14
p2_shields_copy                   = $15
last_entity_killed_by_overpopulation                     = $39
var_d                             = $41
udg_number_to_load                = $44
interrupt_counter                 = $46
level_units_b                     = $47
found_empty_entity_number         = $48
player_move_cooldown_counter                     = $49
level_units_c                     = $4b
var_c                             = $4c
player_fire_cooldown_counter                     = $4e
spars_spawned_by_0d33             = $6b
var_e                             = $6c
player_has_ticked                   = $a8
player_move_cooldown              = $aa
level_tens                        = $b0
level_units_a                     = $b1
udg_slot_to_load_to               = $b9
player_fire_cooldown                 = $be
var_a_init_zero                   = $c9
level_x4_p70                      = $d7


; Entity status byte layout
; Bit 7/sign = entity is between squares
; 

;to "xroads2.d64", d64
!to "xroads2.prg", cbm


!byte %....#.##
!byte %....#...  
!byte %....#.#.
!byte %........
!byte %#..####. 
!byte %..##..#.
!byte %..##.#..
!byte %..##.#..
!byte %..##.#.#  
!byte %........
!byte %........
!byte %........


!zone character_graphics
  
first_frames:

!byte %##..###.
!byte %.#.#..##
!byte %.#.###..
!byte %.#.#....
!byte %..####..
!byte %...#####
!byte %..##.##.
!byte %..#...##

!byte %..###...
!byte %.##.##..
!byte %.####..#
!byte %..##..##
!byte %.#######
!byte %..###.##
!byte %###.##.#
!byte %.#..#...

!byte %#.##....
!byte %#.#..###
!byte %.#####.#
!byte %..##.###
!byte %######..
!byte %..###.##
!byte %.##.##..
!byte %.#...##.

!byte %........
!byte %##...###
!byte %#....#.#
!byte %#.######
!byte %######..
!byte %...#####
!byte %.##.##..
!byte %.#...##.

!byte %........     
!byte %..##....
!byte %..#.....
!byte %..##.###
!byte %.#####..
!byte %..##....
!byte %###.#...
!byte %.#...##.

!byte %.######.
!byte %##..####
!byte %#####...
!byte %####....
!byte %#####...
!byte %.#######
!byte %###..##.
!byte %#....###

!byte %..####..
!byte %.###..#.
!byte %########
!byte %##.#.#.#
!byte %##......
!byte %##.#.#.#
!byte %.#######
!byte %.##...##

!byte %#####...
!byte %#.#####.
!byte %##.#.#.#
!byte %##......
!byte %##.#.#.#
!byte %.######.
!byte %####....
!byte %#..##...

!byte %##...###
!byte %#...##.#
!byte %#.######
!byte %######..
!byte %########
!byte %###.##..
!byte %##...##.
!byte %##....##

!byte %########
!byte %#...####
!byte %########
!byte %..####..
!byte %.######.
!byte %.######.
!byte %###.###.
!byte %#....###

!byte %....###.
!byte %.#..#...
!byte %###.###.
!byte %.#..##..
!byte %.#######
!byte %.#..###.
!byte %.#.####.
!byte %.#.#..##

!byte %###...##
!byte %##...#.#
!byte %###.#..#
!byte %########
!byte %###.#..#
!byte %###..#.#
!byte %##....##
!byte %###.....

!byte %........
!byte %........
!byte %........
!byte %#.......
!byte %.#...##.
!byte %.#######
!byte %.#####..
!byte %.#...##.

!byte %..####..
!byte %..#..##.
!byte %..####..
!byte %..#.....
!byte %..#.....
!byte %..####..
!byte %.#.####.
!byte %.#...##.

!byte %.#......
!byte %.#......
!byte %#.......
!byte %#.###...
!byte %#.#.####
!byte %.####...
!byte %..######
!byte %..##.##.

!byte %###.....
!byte %#...####
!byte %#...#..#
!byte %########
!byte %######..
!byte %########
!byte %##....#.
!byte %#.....##

!byte %..###...
!byte %..###...
!byte %..##....
!byte %.#######
!byte %#.#####.
!byte %.##.#...
!byte %##..###.
!byte %###.##..

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
!byte %.#...#..
!byte %#.#.#.#.
!byte %#.#.#.#.
!byte %...#...#
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
 
 lda $0400, x
 clc
 adc $0500, x
 sta $0400, x
 
; Add each value in $580 array to parallel value in $480 array.

 lda $0480, x
 clc
 adc $0580, x
 sta $0480, x

label_0a20
 lda $06             ; This was set to 3 above.
 bne label_0a55
 lda $0400, x
 bmi label_0a55
 pha
 and #$07            
 tay
 pla
 lsr
 lsr
 lsr
 sta $fc
 lda $1ef6, y
 sta $fd
 lda $0480, x
 bmi label_0a55
 asl
 clc
 adc $0480, x
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
 sta $6d
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
 lda vic_extra_bg_col_3
 cmp #$f6
 bne label_0aac
 inc $6d

label_0aac
 lda $21be
 bne label_0ab3
 inc $6d

label_0ab3
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
 
 sta $66
 sta $67
 ldx #$04
 tay
 sta game_status_flags
 stx $52             

 
generate_multiples_array
 sta screen_line_address_lowbytes, y          ; a=0
 pha                   ; pushed a
 txa                   ; 4
 sta screen_line_address_highbytes, y          
 iny              
 cpy #$19              ; generate 25 total values
 beq label_0b24
 pla                   ; pulled a (0)
 clc
 adc #$28              ; adding 40 
 bcc generate_multiples_array
 inx
 bcs generate_multiples_array

label_0b24
 sei  ;disable interrupts
 lda #<interrupt_service_routine   ; load address of our ISR
 sta $0314
 lda #>interrupt_service_routine
 sta $0315
 cli ;and restart interrupts

label_0b30
   jsr clear_explosions
   ldx #$07
   stx var_f_init_12
   stx found_empty_entity_number
   stx $52
   sta game_status_flags

label_0b3e
  sta player_1_score_digits, x
  sta player_2_score_digits, x
  dex
  bpl label_0b3e
  tax

label_0b48
  sta entity_shields, x
  sta entity_spars_eaten, x
  inx
  bne label_0b48
  sta $ae
  sta $af
  sta level_tens
  dex
  stx level_x4_p70
  lda #$0a
  sta level_units_c
  sta level_units_a
  lda #<msg_banner
  ldy #>msg_banner
  jsr output_string_at_yyaa_until_zero_or_quote
  jsr label_0ea7
  ldx #$0f

label_0b6c
    lda $1e86, x
    sta $0614, x
    lda #$0a
    sta $da14, x
          dex
       bpl label_0b6c
    jsr reset_entity_count_and_udgs

label_0b7d
    ldx #$00

label_0b7f
      stx $53
    lda #$96
    ldy #$1e
    jsr output_string_at_yyaa_until_zero_or_quote

label_0b88
       lda #$00
       ldx $53
       cpx #$60
       bcc label_0b9a
          txa
         sec
       sbc #$60
          tay
       lda #$00
    sbc spar_images, y

label_0b9a
         clc
   adc $1e13, x
      cmp #$f0
      bcc label_0ba8
      sta $3a
      inc $53
      bne label_0b88

label_0ba8
   sta $044e
      lda $3a
   sta $d84e
      lda $53
      and #$01
      beq label_0bf2
      ldx pressed_key_code
      cpx #$03
      bne label_0bbf
   jmp label_0b30

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
  lda $0426                    ; L of Player 2 lives display??
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
      cpx #$60
      bcc label_0c12
      lda $6d
      beq label_0c0f
      cpx #$73
      bcc label_0c12

label_0c0f
   jmp label_0b7d

label_0c12
   jmp label_0b7f

label_0c15
   jsr label_152d
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
   jsr load_3_2_6_to_14_aa_be_with_x_offset
   lda screen+$26   ; Are we in 2 player mode (second player icon in
   cmp #c_player    ; top left of screen?)
   beq .start_2player
   ldy #$00         ; IF not, give player 2 zero lives

.start_2player
   sty p2_lives
   inx
   jsr load_3_2_6_to_14_aa_be_with_x_offset
   lda screen+$223  ; Digit of level to start at
   sec
   sbc #$30         ; Subtract PETSCII offset to get actual number
   sta level_units_a
   sta level_units_b
   sta level_units_c
   lda #$9d         ; Display top status line
   ldy #$1e
   jsr output_string_at_yyaa_until_zero_or_quote
   ldx #$27

.setup_lower_status_line_loop
   lda colors, x      ; Copy color info from top status line to bottom
   sta colors+$28, x
   lda #$20           ; Also blank bottom status line
   sta screen+$28, x
   dex
   bpl .setup_lower_status_line_loop
   
   jsr label_0ea7
   jsr update_status_bar

label_0c6c
   lda #$00
   tax

label_0c6f
   sta entity_shields, x
   inx
   bne label_0c6f
   sta var_a_init_zero
   sta spars_spawned_by_0d33
   lda #$02
   sta var_c
   sta var_d
   sta var_e
   lda level_units_c
   asl
   asl
   clc
   adc #$46
   bcs label_0c8c
   sta level_x4_p70

label_0c8c
   ldx #$0c
   stx var_f_init_12
   dex
   stx last_entity_killed_by_overpopulation
   jsr reset_entity_count_and_udgs
   lda p1_lives
   beq label_0c9f
   ldx #$00
   jsr label_19a8

label_0c9f
   lda p2_lives
   beq spawn_initial_spars
   ldx #$01
   jsr label_19a8

   
.initial_spars_to_spawn = $fe   
   
spawn_initial_spars
   lda #$05
   sta .initial_spars_to_spawn

.spawn_initial_spars_loop
   jsr set_xy_to_random_empty_space_coord
   lda #c_spar
   jsr write_a_to_screen_position_xy
   lda #$01          ; Spar type. Initial ones are always shield
   jsr write_a_to_colors_position_xy
   dec .initial_spars_to_spawn
   bne .spawn_initial_spars_loop
   lda #$f9
   sta $a1

game_loop:
   ldy pressed_key_code
   cpy #$06                ; Is F5, Pause, being pressed?
   bne label_0cdc          ; 
   lda game_status_flags   ; 
   eor #$01
   sta game_status_flags

   
.target_jiffytime = $fc

wait_16jiffies
  lda jiffy_clock      
  clc
  adc #$0f
  sta .target_jiffytime

.wait_16jiffies_loop
  lda jiffy_clock      
  cmp .target_jiffytime
  bne .wait_16jiffies_loop

label_0cdc
   lda game_status_flags
   beq label_0d01
   lda jiffy_clock
   and #$01
   tax
   tya
   cmp $1f05, x
   bne game_loop
   lda p1_lives, x
   beq game_loop
   inc $1f18, x
   lda $1f18, x
   ora #$20
   sta entity_color, x
   jsr draw_entity_x
   jmp wait_16jiffies

label_0d01
   lda interrupt_counter
   beq label_0d0b
   jsr label_1ad9
   jmp game_loop_players

label_0d0b
   lda $a1
   bmi label_0d1b
   lda #$f9
   sta $a1
   inc $3f
   bne label_0d1b
   lda #$ff
   sta $3f

label_0d1b
      dec var_e
      bne label_0d33
      lda var_d
      sta var_e
      lda jiffy_clock
      sta $fc
      lda var_d
      cmp #$ff
      beq label_0d33

label_0d2d
      lda jiffy_clock
      cmp $fc
      beq label_0d2d

label_0d33
   jsr label_152d
   lda sid_voice3_oscillator_ro
   bne .dont_spawn_spar
   lda sid_voice3_oscillator_ro
   cmp #$c8
   bcc .dont_spawn_spar
   lda spars_spawned_by_0d33
   cmp #$05
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
   and $1ef6, y
   cmp $1ef6, y
      bne label_0e08
         txa
         tay
   jsr self_modified_lda_plus_y
      ldy $fc
         clc
   adc $1efd, y
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
   and $1ef6, x
   cmp $1ef6, x
      bne label_0e4e
      lda $03
         clc
      adc $fc
         tay
   jsr self_modified_lda_plus_y
         clc
      ldx $fe
   adc $1efd, x
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
   
!byte $20,$58,$0F    ; JSR $0f58?

label_0ea7
   lda sid_voice3_oscillator_ro
   and #$07
   clc
   adc #$26
   cmp $c4
   beq label_0ea7
   sta $c4

label_0eb5
   lda sid_voice3_oscillator_ro
      and #$07
         tax
   lda $1ed3, x
      cmp $c3
      beq label_0eb5
      sta $c3
      lda #$00
      sta $bb
      ldx level_units_a
      lda level_tens
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

label_0ee2
   lda $1ece, x
      sta $02
      lda #$00
      sta $03
      sta $fd
      ldy #$02

label_0eef
      ldx $02
      lda $bb
      bmi label_0efb
   lda $2006, x
   jmp label_0efe

label_0efb
   lda $20e2, x



  
label_0efe
      ldx $03
      and $1ef6, x
      beq label_0f08
      lda $c4
      !byte $2c                 ; BIT skip hack
label_0f08
      lda #$20
      sta $06
      ldx $fd
   jsr write_a_to_screen_position_xy
      lda $c3
   jsr write_a_to_colors_position_xy
      lda #$26
         sec
      sbc $fd
         tax
      lda $06
   jsr write_a_to_screen_position_xy
      lda $c3
   jsr write_a_to_colors_position_xy
      inc $03
      inc $fd
      lda $03
      cmp #$08
      bne label_0f36
      lda #$00
      sta $03
      inc $02

label_0f36
      lda $fd
      cmp #$14
      bne label_0eef
         iny
      cpy #$18
      beq label_0f47
      lda #$00
      sta $fd
      beq label_0eef

label_0f47
      ldx #$27

label_0f49
   lda $0450, x
   sta $07c0, x
      lda $c3
   sta $dbc0, x
         dex
      bpl label_0f49
         rts

; ---------------------------------------------------------------------
         
!zone update_status_bar
  
update_status_bar:
   ldx #$07
   clc

.score_digits_loop
   lda player_1_score_digits, x
   adc #$30
   sta screen+40, x
   lda player_2_score_digits, x
   adc #$30
   sta screen+67, x
   lda high_score_digits, x
   adc #$30
   sta screen+53, x
   dex
   bpl .score_digits_loop

update_status_bar_not_scores:
   lda p1_lives        ; Player 1 lives
   clc
   adc #$30
   sta screen+51
   lda p2_lives       ; Player 2 lives
   adc #$30
   sta screen+78  
   lda level_tens
   adc #$30
   sta screen+63  ; Level tens
   lda level_units_a
   adc #$30 
   sta screen+64  ; Level units

update_status_bar_just_shields:
   lda entity_shields      ; Player 1 shields
   clc
   adc #$30
   sta screen+49
   lda p2_shields      ; Player 2 shields
   adc #$30
   sta screen+76  
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
         
!zone read_write_a_to_screen_entityId_buffers

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
         
; Writes a to screen position plus $bc00, ie, $c400. This isn't a 
; significant address that I can see.. Not a separate zone because it
; reuses the self modified instruction above. Also, this uses the BIT
; skip hack where the previous ones didn't although they could have.
; Possibly the author added this in Crossroads 2 and didn't originally
; know about the BIT hack?

write_a_to_screen_entityId_buffer_position_xy
   sta $0c
   lda #$9d                ; STA absolute, x
   !byte $2c               ; BIT skipping hack
   
read_a_from_screen_adjacant_buffer_position_xy
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

label_102b:
  ldx #01
  stx $6a
  
label_102f:
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
  lda $66, x
  beq label_1098
  ldy $1f38, x
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
  and $1f41, x
  clc
  adc $1f3d, x
  sta $8f
  lda $1f39, x
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
  ldx $6a
  dec $68, x
  bne label_1098
  lda #00
  sta $66, x
  sta sid_voice1_control, y

label_1098:  
  dex
  dec $6a 
  bpl label_102f
  dec $40
  bne label_10c0
  
  lda #$03
  sta $40
  lda $3f
  sec
  sbc $3c
  beq label_10bc
  bcs label_10b6
  dec var_d
  bne label_10bc

  inc var_d
  bne label_10bc
label_10b6:
  inc var_d
  bne label_10bc
  dec var_d

label_10bc:
  lda #00
  sta $3c

label_10c0:
  dec $52
  bne label_10e0
  lda #02
  sta $52
  ldx $ca
  dex
  bpl label_10cf
  ldx #$02
label_10cf:
  stx $ca
  ldy $1f15, x
  ldx #$07

label_10d6:
  lda $1f20, y
  sta $29f8, x
  iny
  dex
  bpl label_10d6

  label_10e0:
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
  sta found_empty_entity_number
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
  stx var_f_init_12
  dex
  stx last_entity_killed_by_overpopulation
  lda sid_voice3_oscillator_ro
  and #$1f
  adc #$28
  sta $6e
  rts
         
; -------------------------------------------------------------------         

label_118a
   lda sid_voice3_oscillator_ro
   and #$0f
   tax
   lda level_units_c
   cmp enemy_release_schedule, x
   bcc label_118a
   lda slot_udg_loaded_into, x
   bpl label_11dc
   lda udg_slot_to_load_to
   cmp #$0a
   bcc label_11bd
   bne label_118a
   cpx #$03
   beq label_118a
   cpx #$04
      beq label_118a
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
      lda level_units_c
   cmp $1fe2, x
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
   jsr label_12fb
      ldx $a3
      lda udg_number_to_load
      cmp #$0c
      bne label_120f
      lda level_units_c
      cmp #$14
      bcc label_120f
      lda #$02
   sta $4700, x
      lda #$49
   sta entity_color, x
      lda #$05
   sta entity_shields, x
      lda #$18
   sta entity_status_byte, x

label_120f
   lda $8e
   bpl erase_entity_x_from_screen
   lda #$00
   sta entity_shields, x
   rts

; --------------------------------------------------------------------

erase_entity_x_from_screen:
   ldy entity_y_coords, x
   lda entity_x_coords, x
   tax
   lda #$00
   jsr write_a_to_colors_position_xy
   lda #$00
   jmp write_a_to_screen_position_xy

; --------------------------------------------------------------------   
   
label_122a
      sty $0f
      lda #$01
   jsr label_1b35
      ldy $0f
   lda $1f13, y
   jmp label_1b35
   
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
   ldy $66
   beq label_124f
   ldy $67
   bne label_1258
   iny

label_124f
   sta $0066, y
   lda #$14
   sta $0068, y
   rts
   
; ---------------------------------------------------------------------

label_1258
      ldy #$00
      lda $66
      cmp #$06
      beq label_124f
         iny
      lda $67
      cmp #$06
      beq label_124f
         rts
!byte $AA

; -----------------------------------------------------------------

char_to_write = $fb
side_to_write = $8d  
color_to_write = $fc

!zone draw_entity_x 
  
draw_entity_x:
   lda entity_color, x
   sta color_to_write


   
draw_entity_x_override_color:
   lda entity_color, x
   and #$20
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
   and #$04
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
  
set_xy_to_random_empty_space_coord
   lda sid_voice3_oscillator_ro
   and #$1f        ;  random value 0-31.. 
   sta $fc
   lda sid_voice3_oscillator_ro
   and #$07        ; add random value 0-7, to make 0-38.
   clc
   adc $fc
   tax             ; store in x
   lda sid_voice3_oscillator_ro
   and #$0f        ; random value 0-15
   adc #$02        ; add 2 for 2 rows of status bar..
   sta $fc
   lda sid_voice3_oscillator_ro
   and #$07        ; add random value 0-7 to make 2-24
   adc $fc
   tay             
   jsr read_a_from_screen_position_xy ; get value at that position
   cmp #$20        ; is it blank?
   bne set_xy_to_random_empty_space_coord  ; if not, try again
   rts

; ----------------------------------------------------------------------

label_12fb
      sta $fc
         tay
      stx $fe
      lda #$05
      sta $8e
      cpy #$00
      bne label_130a
      dec $8e

label_130a
   ldx $1e9b, y

label_130d
   lda explosion_status, x
      beq label_133b
   lda explosion_or_implosion, x
      bne label_1328
      dec $8e
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
      ldx var_a_init_zero
         inx
      cpx #$08
      bcc label_1334
      ldx #$00

label_1334
      stx var_a_init_zero
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
   lda $4c00, y
      bne label_1361

label_1359
      lda #$08
         tay
   jsr sound_related_something
      lda #$00

label_1361
   sta $4038, x
      ldy $fc
   lda $1f1a, y
   sta explosion_sprite_pointer_offset, x
   lda sid_voice3_oscillator_ro
      and #$01
         tay
   lda $1f09, y
   sta explosion_base_sprite_pointer, x
      lda $fe
   sta exploding_entity_index, x
         tay
   lda entity_color, y
   sta vic_sprite_color_array, x
   lda entity_status_byte, y
      bmi label_138d
      lda #$00
      beq label_1396

label_138d
   lda entity_facing, y
         tay
      sta $fd
   lda $1edb, y

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
   sbc $1efd, x
   and vic_sprite_x_hibits
   jmp label_13b6

label_13b0
   lda $1efd, x
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
   lda $1edf, y

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
   sta $4d00, x
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
  cpx found_empty_entity_number
  bcc .empty_entity_already_existed
  stx found_empty_entity_number

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
   sta entity_color, x
   lda enemy_initial_status, y
   sta entity_status_byte, x
   lda enemy_data_a, y
   sta $4a00, x
   lda enemy_bullet_types, y
   sta entity_bullet_type, x
   lda enemy_data_cd, y
   pha
   and #$0f
   sta $4900, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta $4b00, x
   lda enemy_shields_and_xval, y
   pha
   and #$0f
   sta entity_shields, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta $4c00, x
   lda enemy_data_ef, y
   pha
   and #$0f
   sta $4800, x
   pla
   lsr
   lsr
   lsr
   lsr
   sta $4700, x
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
   lda #$20
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
   
label_14b8
   lda $4c00, y
   ldy $1f15, x
         clc
   adc $6045, y
   sta $6045, y
   jsr label_14cb
   jmp update_status_bar
   
; ---------------------------------------------------------------------

!zone score_update
  
.saved_player_number = $07

label_14cb
   stx .saved_player_number
   lda #$05
   sta $fc
   clc
   adc $1f15, x
   tax

label_14d6
   lda player_1_score_digits, x
   cmp #$0a
   bcc label_14ea
   sec
   sbc #$0a
   sta player_1_score_digits, x
   dex
   inc player_1_score_digits, x
   inx
   bne label_14d6

label_14ea
         dex
      dec $fc
      bpl label_14d6
      ldx proposed_entity_x_coord
   ldy $1f15, x
   lda $6043, y
         lsr
      cmp $ae, x
      beq label_150b
      sta $ae, x
      lda p1_lives, x
         clc
      adc #$01
      cmp #$0a
      bcc label_1509
      lda #$09

label_1509
      sta p1_lives, x

label_150b
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
      ldx proposed_entity_x_coord
         rts

; ---------------------------------------------------------------------         
         
label_152d
   lda $6e
   beq label_153a
   jsr label_118a
   lda $8e
   bmi label_1549
   dec $6e

label_153a
   lda sid_voice3_oscillator_ro
   bne label_1549
   lda sid_voice3_oscillator_ro
   cmp level_x4_p70
   bcs label_1549
   jsr label_118a

label_1549
      inc var_f_init_12
      ldx var_f_init_12
      cpx found_empty_entity_number
      bcc label_1563
      beq label_1555
      bcs label_155c

label_1555
   lda entity_shields, x
      bne label_1568
      dec found_empty_entity_number

label_155c
      ldx #$0b
      stx var_f_init_12
      inc $3c
         rts

; -------------------------------------------------------------------         
         
label_1563
   lda entity_shields, x
      beq label_1549

label_1568
   lda entity_status_byte, x
      and #$40
      bne label_1549
   dec $4d00, x
      bne label_1549
   lda $4700, x
   sta $4d00, x
   lda entity_spars_eaten, x
      bpl label_1587
      lda #$00
   sta entity_spars_eaten, x
   jmp draw_entity_x

label_1587
   lda entity_status_byte, x
      bpl label_158f
   jmp label_1d68

label_158f
   lda entity_bullet_type, x
      bpl label_15c4

label_1594
      stx $13
   jsr load_a_with_screen_at_entity_x_forward_coords
      ldx $13
      cmp #$20
      bne label_15a2
   jmp label_1d7b

label_15a2
   ldy entity_bullet_type, x
      bmi label_15ad
      dec var_d
      bne label_15ad
      inc var_d

label_15ad
      cmp #$40
      bcc label_15bc
   jsr blank_out_entity_x_nondestructive
      ldx $13
   jsr set_0a_and_y_to_entityid_that_x_collides_with
   jmp label_1bfb

label_15bc
      lda #$00
   sta entity_shields, x
   jmp blank_out_entity_x_nondestructive

label_15c4
   jsr label_1a10
      ldy #$03

label_15c9
      ldx var_f_init_12
   lda $4061, y
      cmp #$3f
      bcc label_15e0
      cmp #$40
      bcs label_15e6
   lda entity_color, x
      and #$10
      beq label_15e0
   jsr label_17e9

label_15e0
         dey
      bpl label_15c9
   jmp label_1673

label_15e6
   ldx $40ae, y
   lda entity_enemy_type, x
      cmp #$11
      bcc label_1609
      cmp #$12
      beq label_1609
      ldx var_f_init_12
   lda entity_status_byte, x
      and #$10
      bne label_1600
   jsr label_1828

label_1600
   lda entity_bullet_type, x
      cmp #$12
      beq label_15e0
      beq label_1660

label_1609
      ldx var_f_init_12
   cmp entity_enemy_type, x
      beq label_161a
   cmp $4900, x
      beq label_161a
   cmp $4a00, x
      bne label_1634

label_161a
      lda #$01
   sta $4069, y
   lda entity_status_byte, x
      and #$08
      beq label_15e0
         tya
         tax
   inc $406d, x
   jsr label_1820
   jsr label_1820
   jmp label_15e0

label_1634
   ldx $40ae, y
   lda entity_enemy_type, x
      cmp #$01
      bne label_1648
   lda entity_facing, x
         tax
         tya
   cmp $1f0f, x
      beq label_164f

label_1648
      ldx var_f_init_12
   lda entity_color, x
      bpl label_1656

label_164f
      ldx var_f_init_12
   jsr label_1828
      bne label_1660

label_1656
   lda entity_color, x
      and #$40
      beq label_1660
   jsr label_17e9

label_1660
   lda entity_status_byte, x
      and #$03
      sta temp_entity_x_coord
   jsr load_two_low_bits_of_osc3_to_accumulator
         sec
      sbc temp_entity_x_coord
   sta $407f, y
   jmp label_15e0

label_1673
      ldx var_f_init_12
   lda entity_facing, x
         tax
         tay
   inc $406d, x
   ldx $1f0f, y
   dec $406d, x
   dec $406d, x
   jsr label_1820

label_1689
   jsr label_1820

label_168c
      ldy #$03
      sty $0e
   lda $406d, y
         dey
      sta $fd

label_1696
   lda $406d, y
      cmp $fd
      bcc label_16a3
      beq label_1689
      sta $fd
      sty $0e

label_16a3
         dey
      bpl label_1696
      ldy $0e
   lda $4065, y
      cmp #$01
      bne label_16c6
   lda $4061, y
      beq label_16c3
      cmp #$1b
      bcc label_16c3
      cmp #$3f
      bcs label_16c6
      lda #$01
   sta $406d, y
      bne label_168c

label_16c3
   jmp label_17d9

label_16c6
      ldy #$03

label_16c8
      sty last_facing_for_joystick_position
      cpy $0e
      beq label_16d1
   jsr label_180b

label_16d1
      ldy last_facing_for_joystick_position
         dey
      bpl label_16c8
      lda $0e
      ldx var_f_init_12
   cmp entity_facing, x
      beq label_16e8
   sta entity_facing, x
   jsr draw_entity_x
   jmp label_1809

label_16e8
      ldx var_f_init_12
      ldy $0e
   lda $4065, y
      cmp #$01
      beq label_174e
   lda entity_enemy_type, x
      cmp #$01
      bne label_174b
   lda $4061, y
      cmp #$40
      bcc label_1741
      lda #$03
   sta $4d00, x
   sta $4700, x
   ldx $40ae, y
   lda entity_facing, x
      sta $0a
         tay
   lda $1f0f, y
      cmp $0e
      beq label_1729
   ldy entity_status_byte, x
      bmi label_172e
      ldy $0e
   lda $1f0f, y
   sta entity_facing, x
   jmp draw_entity_x

label_1729
   lda entity_status_byte, x
      bpl label_173e

label_172e
   jsr label_1d68
      ldx $8d
   lda entity_status_byte, x
      ora #$04
   sta entity_status_byte, x
   jmp draw_entity_x

label_173e
   jmp label_1d7b

label_1741
      ldx var_f_init_12
      lda #$09
   sta $4d00, x
   sta $4700, x

label_174b
   jmp label_17e1

label_174e
   lda $4061, y
      cmp #$3f
      bne label_1770
   inc entity_spars_eaten, x
   inc entity_shields, x
   lda entity_enemy_type, x
      cmp #$06
      bne label_1767
      lda #$03
   sta $4700, x

label_1767
      lda #$04
         tay
   jsr sound_related_something
   jmp label_17e1

label_1770
      bcs label_1775
   jmp label_1673

label_1775
   lda $4069, y
      bne label_1794
   lda $40ae, y
      sta $0a
      stx entity_number_that_hit_player
   jsr label_1bfb
      ldx var_f_init_12
   lda entity_shields, x
      beq label_17f6
      ldx $0a
   lda entity_shields, x
      beq label_17e1
      bne label_17d9

label_1794
   ldx $40ae, y
   lda entity_enemy_type, x
      cmp #$03
      bne label_17d9
      ldx var_f_init_12
   lda entity_enemy_type, x
      cmp #$04
      bne label_17d9
   lda entity_spars_eaten, x
         pha
      lda #$00
   sta entity_shields, x
      sty $0a
   jsr blank_out_entity_x_nondestructive
      ldy $0a
   ldx $40ae, y
   lda entity_status_byte, x
      and #$80
         pha
      lda #$02
   jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
         pla
   ora entity_status_byte, x
      and #$bf
   sta entity_status_byte, x
         pla
         clc
   adc entity_spars_eaten, x
   sta entity_spars_eaten, x
   jmp draw_entity_x

label_17d9
      ldx var_f_init_12
   jsr flip_bit_3_on_status_of_entity_x
   jmp draw_entity_x

label_17e1
      ldx var_f_init_12
   jsr label_1d7b
   jmp label_1809

label_17e9
      lda #$28
         sec
   sbc $4065, y
         clc
   adc $406d, y
   sta $406d, y

label_17f6
         rts

; -------------------------------------------------------------------
         
label_17f7
   lda #$28      ; 40
   sec
   sbc $4065, y  ; a = 40-(4065 entry)
   sta temp_entity_x_coord       ; $03 = 40-(4065 entry)
   lda $406d, y  ; a = (406d entry)
   sec
   sbc temp_entity_x_coord       ; a = (406d entry)-40-(4065 entry)
   sta $406d, y
   rts

; ------------------------------------------------------------------         
         
label_1809
      ldy $0e

label_180b
   lda $407f, y
      bmi label_1811
         rts

label_1811
   jsr find_free_enemy_entity_in_x_and_locals
         tya
      ldy var_f_init_12
   jsr label_1b5f
      lda #$06
         tay
   jmp sound_related_something

label_1820
   jsr load_two_low_bits_of_osc3_to_accumulator
         tax
   inc $406d, x
         rts

label_1828
   jsr label_17f7
   jsr label_17f7
         tya
         pha
   lda $1f0f, y
         tay
   jsr label_17f7
         pla
         tay
         rts
         
; -------------------------------------------------------------------

!zone game_loop_players

checking_player_number = $3a         
         
game_loop_players                    
   ldx #$01                     ; Player 2 is checked first and we 
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
   and #$40
   bne .dont_process_player     ; If so, don't process them.
   jsr player_movement               ; Calls to actually do processing.
   jsr player_firing

.dont_process_player
   dec checking_player_number  ; Decrement player check number and loop.
   bpl .check_players_loop
      
   lda entity_spars_eaten       ; Get p1's collected spars.
   clc
   adc entity_spars_eaten+1     ; Add p2's collected spars.
   cmp #$05                     
   bcc .level_not_complete      ; If <5, level isn't complete. 
   jmp label_1d0a

.level_not_complete
   lda p1_lives                 ; Is player 1 alive?
   bne .game_not_over           ; If yes, game isn't over.
   lda p2_lives                 ; Is player 2 alive?
   bne .game_not_over           ; If yes, game isn't over.
   jmp show_game_over           ; Game IS over..

.game_not_over
   jmp label_0d0b

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
   jmp label_1d68

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
   lda $1f0f, y
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
   cmp #$3f                        ; Higher than a spar, it's a wall.
   bcc .player_walked_into_solid
   
   ; Uh-oh. We walked into another entity. Find what it was from the 
   ; entityID map.
   jsr set_0a_and_y_to_entityid_that_x_collides_with
   cpy #$02                        ; EntityID<2: walked into another player!
   bcc .player_walked_into_solid   ; Treat them as a wall.
   
   lda entity_enemy_type, y
   cmp #$0c
   beq .player_walked_into_solid
   cpy #$0c
   bcs label_190f
   lda entity_facing, y
   ldx $3a
   cmp entity_facing, x
   beq .player_walked_into_solid

label_190f
   jsr label_1bfb
      ldy $0a
   lda entity_shields, y
      bne label_191e
      ldx entity_number_that_hit_player
   jmp label_14b8

label_191e
         rts

.player_collected_spar
   inc entity_spars_eaten, x
   lda .color_of_entered_space
   cmp #$01
   beq .player_collected_shield_spar
   cmp #$06
   beq .player_collected_speed_spar
   lda #$04                   ; Effect of a type 2 spar??
   sta player_fire_cooldown, x
   bne .player_collected_shield_spar

.player_collected_speed_spar
   lda #$01
   sta player_move_cooldown, x

.player_collected_shield_spar
   ldy #$01
   lda #$04
   jsr sound_related_something
   ldy entity_shields, x   ; Add 1 shield to entity x
   iny
   cpy #$0a                ; Cap at 9
   bcc .no_shield_cap
   ldy #$09

.no_shield_cap
   tya
   sta entity_shields, x
   jsr update_status_bar_just_shields
   jmp .player_no_collision
   
!byte $D0,$06

.player_walked_into_solid
   jsr flip_bit_3_on_status_of_entity_x
   jmp .joystick_idle

.player_no_collision
   ldx processing_entity_number
   jmp label_1d7b

; ---------------------------------------------------------------------   
   
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
         
reduce_player_x_lives
   dec p1_lives, x
   jsr load_3_2_6_to_14_aa_be_with_x_offset

   
; Called with x=0 and x=1 for player processing??   
   
label_19a8
  lda level_units_c
  lsr
  sta $3f
  stx processing_entity_number
  lda p1_lives, x
  beq .player_dead_dead
  lda #$10
  jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
  lda p1_shields_copy, x
  sta entity_shields, x
  lda #$01
  sta player_move_cooldown_counter, x
  sta player_fire_cooldown_counter, x
  lda $1f18, x
  ora #$20
  sta entity_color, x
  lda $1f07, x
      sta proposed_entity_x_coord
      lda #$17
      sta proposed_entity_y_coord
   jsr copy_proposed_coords_to_actual_coords_entity_x
   lda $1f13, x
   sta entity_facing, x
      lda #$00
   jsr label_12fb
      ldx processing_entity_number
   jsr load_a_with_screen_at_proposed_coords
      ldx processing_entity_number
      cmp #$20
      beq label_1a08
      cmp #$3f
      bne label_19f6
   inc entity_spars_eaten, x
      bne label_1a08

label_19f6
   jsr set_0a_and_y_to_entityid_that_x_overlaps
      ldx $0a
   jsr blank_out_entity_x_nondestructive
      ldx $0a
      lda #$00
   sta entity_shields, x
   jsr drop_spars_from_entity_x

label_1a08
      ldy processing_entity_number
   jsr label_122a

.player_dead_dead
   jmp update_status_bar_not_scores   ; Tail call RTS

; ------------------------------------------------------------------
   
label_1a10
      stx processing_entity_number
   lda $4800, x
      sta $fd
      sta $02
      ldy #$03
      sty $fc

label_1a1d
      lda #$a0
   sta $406d, y
      lda #$00
   sta $4065, y
   sta $4069, y
   sta $407f, y
         dey
      bpl label_1a1d
      sta $42
      ldx processing_entity_number
   ldy entity_enemy_type, x
   lda $4083, y
      bpl label_1a3e
      inc $42

label_1a3e
      ldx processing_entity_number
   lda entity_x_coords, x
      sta temp_entity_x_coord
   lda entity_y_coords, x
      sta $fb

label_1a4a
      ldy $fc
      lda temp_entity_x_coord
         clc
   adc facing_offset_table_horz, y
   jsr wraparound_x_coordinate_a
         tax
      sta temp_entity_x_coord
      lda $fb
         clc
   adc facing_offset_table_vert, y
   jsr wraparound_y_coordinate_a
         tay
      sta $fb
   jsr read_a_from_screen_position_xy
      ldx $fc
   sta $4061, x
   inc $4065, x
   lda $4061, x
      cmp #$20
      bne label_1a7c
      dec $fd
      bne label_1a4a
      beq label_1a8c

label_1a7c
      cmp #$40
      bcc label_1a8c
      ldx temp_entity_x_coord
   jsr read_a_from_screen_adjacant_buffer_position_xy
      inc $42
      ldx $fc
   sta $40ae, x

label_1a8c
      dec $fc
      bmi label_1a97
      lda $02
      sta $fd
   jmp label_1a3e

label_1a97
      ldx processing_entity_number
      lda $42
      beq label_1aa1
      lda #$20
      sta $42

label_1aa1
   lda entity_color, x
      and #$df
      ora $42
   sta entity_color, x
         rts

; ------------------------------------------------------------------

!zone show_game_over
  
show_game_over

; Draw game over message on screen. Make it flash by copying value
; of jiffy clock into color map at location of message.

   ldx #$08
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
   beq label_1ac6
   jmp label_0d1b

; --------------------------------------------------------------------   
   
label_1ac6
      lda #$93
   jsr $ffd2
   jmp label_0b30

; ---------------------------------------------------------------   
   

!zone copy_proposed_coords_to_actual_coords_entity_x
  
copy_proposed_coords_to_actual_coords_entity_x
   lda proposed_entity_x_coord
   sta entity_x_coords, x
   lda proposed_entity_y_coord
   sta entity_y_coords, x
   rts
   
; ---------------------------------------------------------------

label_1ad9
      ldx #$02
      lda #$00
      sta interrupt_counter

label_1adf
   lda entity_shields, x
      beq label_1af4
   lda entity_status_byte, x
      bpl label_1aef
   jsr label_1d68
   jmp label_1af2

label_1aef
   jsr label_1594

label_1af2
      ldx $13

label_1af4
         inx
      cpx #$0c
      bne label_1adf
         rts
         
; -------------------------------------------------------------------

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
  jsr read_a_from_screen_adjacant_buffer_position_xy
  tay
  ldx .tempstore_x
  sty $0a

label_1b16
  rts

; -------------------------------------------------------------------

!zone player_firing
  
  
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

label_1b35
   sta $fe
   sty processing_entity_number
   
; Find a free bullet entity slot   
   
   ldx #$02
.find_bullet_slot_loop
   lda entity_shields, x
   beq .found_bullet_slot
   inx
   cpx #$0c
   bne .find_bullet_slot_loop
   
   
      ldx var_c
      stx $fd
   jsr blank_out_entity_x_nondestructive
      ldx var_c
         inx
      cpx #$0c
      bne label_1b55
      ldx #$02

label_1b55
      stx var_c
      ldx $fd

.found_bullet_slot
      lda $fe
      ldy processing_entity_number
      stx $8d

label_1b5f
   sta entity_facing, x
   lda $4b00, y
         pha
   lda entity_bullet_type, y
      stx processing_entity_number
      sty $fd
   jsr load_enemy_type_a_data_into_entity_slot_x_with_last_loaded_udg
         pla
   sta $4700, x
      lda #$01
   sta $4d00, x
      ldy $fd
   lda entity_enemy_type, x
      cmp #$12
      bne label_1b88
   lda entity_enemy_type, y
   sta $4a00, x

label_1b88
   lda entity_color, x
      and #$f0
   ora entity_color, y
   sta entity_color, x
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
   jsr label_1bfb
   ldx $0a
   lda entity_shields, x
   bmi label_1bea
   bne label_1bf8

label_1bea
         rts

label_1beb
   lda entity_bullet_type, x
      bmi label_1bf8
      inc var_d
      bne label_1bf8
      lda #$ff
      sta var_d

label_1bf8
   jmp draw_entity_x

label_1bfb
      ldy $0a
   lda entity_bullet_type, y
      cmp #$12
      bne label_1c33
      ldx entity_number_that_hit_player
   lda entity_status_byte, x
      and #$20
      beq label_1c33
   lda entity_shields, x
      cmp #$14
      bcs label_1c33
   lda entity_facing, y
         tay
   lda entity_facing, x
   cmp $1f0f, y
      beq label_1c33
   ldy entity_facing, x
   lda $1f0f, y
   sta entity_facing, x
      lda #$01
      ldx entity_number_that_hit_player
   ldy entity_bullet_type, x
   jmp sound_related_something

label_1c33
      ldx $0a
   dec entity_shields, x
      lda #$01
   jsr label_12fb
      ldy #$03
      ldx entity_number_that_hit_player
   lda entity_status_byte, x
      and #$20
      beq label_1c4c
   dec entity_shields, x
!byte $2c                 ; BIT skip hack
label_1c4c
   ldy #$07
      sty $0b
   lda entity_enemy_type, x
      cmp #$01
      beq label_1c67
   lda entity_bullet_type, x
      bmi label_1c7c
      cmp #$02
      bcs label_1c7c
   lda entity_shields, x
      cmp #$02
      bcc label_1c7c

label_1c67
      ldx $0a
      lda #$00
   sta entity_shields, x
      beq label_1c7c
   lda entity_status_byte, x
      and #$20
      beq label_1c7c
      lda #$01
   jsr label_12fb

label_1c7c
      ldx $0a
   lda entity_shields, x
      bne label_1c95
      lda $0b
      cmp #$07
      beq label_1c8d
      lda #$02
      sta $0b

label_1c8d
   jsr blank_out_entity_x_nondestructive
      ldx $0a
   jsr drop_spars_from_entity_x

label_1c95
      ldx entity_number_that_hit_player
   lda entity_shields, x
      bne label_1ca4
   jsr blank_out_entity_x_nondestructive
      ldx entity_number_that_hit_player
   jsr drop_spars_from_entity_x

label_1ca4
      ldx entity_number_that_hit_player
      cpx #$02
      bcs label_1cb7
   jsr update_status_bar_just_shields
   lda entity_shields, x
      bmi label_1cb4
      bne label_1cb7

label_1cb4
   jmp reduce_player_x_lives

label_1cb7
   lda entity_bullet_type, x
      cmp #$02
      bcs label_1cc9
      ldy $0a
   ldx entity_shields, y
      bne label_1cc9
         tax
   jsr label_14b8

label_1cc9
      ldy #$02
      ldx entity_number_that_hit_player
      cpx #$0c
      bcs label_1cd2
         dey

label_1cd2
      ldx $0a
      cpx #$0c
      bcs label_1cd9
         dey

label_1cd9
      lda $0b
   jsr sound_related_something
      ldx $0a
      cpx #$02
      bcs reused_rts
   jsr update_status_bar_just_shields
   lda entity_shields, x
      beq label_1cb4
      bmi label_1cb4

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
   
label_1d0a
   jsr clear_explosions
    ldx #$01

label_1d0f
   ldy $1f15, x
      lda p1_lives, x
      beq label_1d3b
   lda entity_spars_eaten, x
         asl
         asl
         clc
   adc entity_spars_eaten, x
   adc $6045, y
   sta $6045, y
      lda #$00
   sta entity_spars_eaten, x
      lda level_units_b
      cmp level_units_c
      bne label_1d3b
         asl
         asl
   adc $6044, y
         sec
      sbc #$04
   sta $6044, y

label_1d3b
   jsr label_14cb
         dex
      bpl label_1d0f
   ldx level_units_a
   inx
   cpx #10
   bcc .no_level_tens_increase
   ldx #$00
   inc level_tens

.no_level_tens_increase
   stx level_units_a

label_1d4e
   jsr show_press_f7
   bne label_1d4e
   jsr update_status_bar
   jsr label_0ea7
   lda entity_shields
   sta p1_shields_copy
   lda p2_shields
   sta p2_shields_copy
   inc level_units_c
   jmp label_0c6c

label_1d68
      stx $13
   jsr blank_out_entity_x_nondestructive
      ldx $13
   jsr propose_forward_move_coords_for_entity_x
   jsr copy_proposed_coords_to_actual_coords_entity_x
   jsr flip_top_bit_and_clear_third_bit_of_entity_x_status
   jmp draw_entity_x

label_1d7b
      stx $13
   lda entity_status_byte, x
      and #$fb
   sta entity_status_byte, x
   jsr flip_top_bit_and_clear_third_bit_of_entity_x_status
   jsr draw_entity_x
      ldx $13
   jmp draw_entity_x_override_color

; ---------------------------------------------------------------   
   
flip_bit_3_on_status_of_entity_x
   lda entity_status_byte, x
   eor #$04
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

; Choose a random one from 3 types for a newly spawned spar. Called
; directly after spawning a spar with x/y still holding its location.
; New feature in Crossroads 2 so was probably added in?   

!zone select_random_spar_type      
         
select_random_spar_type
   ; Always 3/4 chance of a shield spar.
   lda sid_voice3_oscillator_ro   ; Get random value from osc
   and #$03                       ; Mask off bits
   bne .select_shield_spar        ; If not 0 (3/4), shield spar.
   ; If level too low, always shield spar.
   lda #$02                       ; If level too low, always shield spar.
   cmp level_units_c
   bcs .select_shield_spar       
   ; Select 50/50 between other two spar types.
   lda sid_voice3_oscillator_ro   ; Get random value from osc
   and #$01                       ; Mask off just one bit
   beq label_1dc7                 ; If zero, spar type 6
   lda #$02                       ; Else, spar type 2
   !byte $2c              ; BIT skip hack
label_1dc7
   lda #$06
   !byte $2c              ; BIT skip hack
.select_shield_spar
   lda #$01
   
   jmp write_a_to_colors_position_xy

; --------------------------------------------------------------------   
  
 
load_a_with_screen_at_entity_x_forward_coords
   jsr propose_forward_move_coords_for_entity_x

load_a_with_screen_at_proposed_coords
   ldx proposed_entity_x_coord
   ldy proposed_entity_y_coord
   jmp read_a_from_screen_position_xy
   
; ---------------------------------------------------------------------   

!zone load_3_2_6_to_14_aa_be_with_x_offset
  
load_3_2_6_to_14_aa_be_with_x_offset
      lda #$03
      sta p1_shields_copy, x       
      lda #$02
      sta player_move_cooldown, x
      lda #$06 
      sta player_fire_cooldown, x
      rts
 
msg_banner

!text $93,$1C,"    CROSSROADS II : ",$9C,"PANDEMONIUM      " 
 
!byte $1C,$C0,$1E,$20,$00,$F6

; these messages come out wrong when compiled due to mangled PETSCII


!text "...COPYRIGHT 1988 COMPUTE! PUBLICATIONS"

!text $F2,"...WELCOME TO PANDEMONIUM"

!text $F7,"...PRESS FIRE BUTTON TO START"
!text $F5,$5E,$40
!byte $4C,$7A,$61,$2C,$13,$14,$1D,$1E
!byte $7F,$7E,$18,$19,$12,$14,$11,$76
!byte $13,$14,$01,$12,$14,$20,$01,$14
!byte $20,$0C,$05,$16,$05,$0C,$20,$31
!byte $13,$11,$1D,$14,$00,$04,$07,$13
!byte $1C,$50,$4C,$41,$59,$45,$52,$20
!byte $31,$20,$96,$53,$20,$9E,$4C,$1F
!byte $20,$20,$20,$48,$49,$47,$48,$20
!byte $20,$1E,$4C,$45,$56,$45,$4C,$20
!byte $1C,$50,$4C,$41,$59,$45,$52,$20
!byte $32,$20,$96,$53,$20,$9E,$4C,$00
!byte $00,$00,$37,$6E,$A5,$02,$04,$05
!byte $06,$08,$09,$0B,$0E,$00,$00,$04
!byte $FC,$04,$FC,$00,$00

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



; This array is indexed into by startup loop.
!byte $80,$40,$20,$10,$08,$04,$02,$01
!byte $02,$04,$08,$10,$20,$40,$80,$04
!byte $05,$01,$25,$C0,$DB

unknown_facing_table:
!byte $08,$0C,$00
!byte $04,$01,$00,$03,$02,$02,$03,$00
!byte $08,$10,$02,$05,$19,$03

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

!byte $00,$07,$21,$81,$11,$11
!byte $03,$00,$10,$40,$07,$1F,$0F,$07


possible_sound_buffer:             
!byte $8F,$00

enemy_release_schedule:
!byte $01,$07,$11,$08,$02,$04,$05

!byte $03,$05,$06,$04,$08,$01,$09

!byte $01,$01

enemy_data_cd:
!byte $00,$01,$13,$02,$32,$07,$00
!byte $05,$1F,$80,$3B,$2A,$09,$40
!byte $05,$08,$10,$00,$20,$00

enemy_shields_and_xval:
!byte $32,$83
!byte $94,$32,$22,$44,$75,$55
!byte $52,$73
!byte $64


!byte $85,$11,$64,$11,$33,$04,$01
!byte $21,$01

enemy_data_ef:
!byte $88,$9B,$5D,$77,$96,$69
!byte $5A,$58,$6F,$FF,$9C

!byte $8F,$A7,$6D
!byte $C6,$88,$21,$21,$4A,$21

enemy_data_a:
!byte $06,$FF
!byte $04,$04,$03,$0E,$00

!byte $0E,$FF

!byte $12
!byte $FF,$FF,$10,$12,$07,$FF,$FF,$FF

enemy_bullet_types:
!byte $7F,$7F,$11,$7F,$11,$7F,$7F,$7F
!byte $11,$12,$13

!byte $13,$7F,$12,$7F,$7F
!byte $11,$FF,$11,$FF

enemy_type_colors:
!byte $7E,$75,$7A,$AA
!byte $BA,$77,$71,$72,$A9,$34,$BC

!byte $7B,$A9,$7D,$B6,$68,$22,$22,$60,$20

enemy_initial_status:
!byte $58,$40,$52,$48,$79,$40,$50,$58
!byte $5A,$53,$7A,$5A,$68,$62,$78,$58
!byte $62,$20,$21,$20,$05,$12,$1E,$06
!byte $09,$0C,$11,$0E,$10,$1A,$18,$18
!byte $CF,$1C,$08,$0B,$00,$00,$32
game_over_message:
!byte $07
!byte $01,$0D,$05,$00,$0F,$16,$05,$12

press_f7_message:
!byte $10,$12,$05,$13,$13,$00,$06,$37
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
!byte $BB,$D0,$08,$01,$FF,$FE,$00,$00
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

!basic entry