* = $0801
sid_voice3_low_freq = $d40e
sid_voice3_high_freq = $d40f
sid_voice3_control = $d412
sid_voice3_oscillator_ro = $d41b
output_string_at_yyaa_until_zero_or_quote = $ab1e
port_2_joystick = $dc00
port_1_joystick = $dc01
explosion_status = $4028
player_1_score_digits = $6040
player_2_score_digits = $6048
high_score_digits = $6050
p1_shields = $4600
p2_shields = $4601
p1_lives = $11
p2_lives = $12
level_tens = $b0
level_units = $b1
jiffy_clock = $a2


screen = $0400


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


!zone mobile_graphics
  
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

entry:

; Set up to use the SID as a fake random number generator.
  lda #$ff                  ; Set high frequency on both bytes
  sta sid_voice3_low_freq
  sta sid_voice3_high_freq
  lda #$80                  ; Enable noise wave
  sta sid_voice3_control
  
  lda #$01
  sta $02   ; Unused position in zero page
  lda #$c0
  sta self_mod_sta_base_address_lo   ; self modifying
  lda #$2f  
  sta self_mod_sta_base_address_hi   ; self modifying 
  lda #$03
  sta $06   ; Unused position in zero page

label_09ac
  ldx #$31

label_09ae
  jsr load_two_low_bits_of_osc3_to_accumulator
  clc
  adc #$0a
  sta screen, x
  jsr load_two_low_bits_of_osc3_to_accumulator
  adc #$08
  sta screen+$80, x

loop_until_osc3_low_bits_are_not_both_one
  jsr load_two_low_bits_of_osc3_to_accumulator
  cmp #$03
  beq loop_until_osc3_low_bits_are_not_both_one
  cmp #$02
  bne label_09cc
  lda #$ff

label_09cc
  sta screen+$100, x

label_09cf
  jsr load_two_low_bits_of_osc3_to_accumulator
  bne label_09db
  tay
  lda $0500, x
  beq loop_until_osc3_low_bits_are_not_both_one
  tya

label_09db
  cmp #$03
  beq label_09cf
  cmp #$02
  bne label_09e5
  lda #$ff

label_09e5
  sta $0580, x
  lda sid_voice3_oscillator_ro
  and #$0f
  adc #$05
  sta $0600, x
  sta $0680, x
  dex
  bpl label_09ae
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
 lda $0400, x
 clc
 adc $0500, x
 sta $0400, x
 lda $0480, x
 clc
 adc $0580, x
 sta $0480, x

label_0a20
 lda $06
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
 stx $03
 tya
 tax
 pla
 jsr self_modified_sta_plus_x
 ldx $03

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
 sta $dc0e
 sta $6d
 lda #$73
 sta $01
 ldx #$ec

label_0a7b
 lda $cfff, x
 sta $27ff, x
 lda $d0eb, x
 sta $28eb, x
 dex
 bne label_0a7b
 ldx #$3f

label_0a8c
 lda $094d, x
 sta $2930, x
 dex
 bpl label_0a8c
 lda #$77
 sta $01
 lda #$01
 sta $dc0e
 lda #$1a
 sta $d018
 lda $d024
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
 sta $d016
 lda #$ff
 sta $d015
 lda #$00
 sta $d021   ; Background color
 sta $d020   ; Border color
 sta $d01b   ; Sprite priority register
 sta $d01d   ; Sprite double width
 sta $d017   ; Sprite double height
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
 sta $4060
 stx $52

label_0b0e
   sta $6000, y
   pha
   txa
   sta $6019, y
   iny
   cpy #$19
   beq label_0b24
   pla
   clc
   adc #$28
       bcc label_0b0e
          inx
       bcs label_0b0e

label_0b24
         sei
       lda #$15
    sta $0314
       lda #$10
    sta $0315
         cli

label_0b30
   jsr clear_explosions
       ldx #$07
       stx $0d
      stx $48
      stx $52
    sta $4060

label_0b3e
    sta player_1_score_digits, x
    sta player_2_score_digits, x
          dex
       bpl label_0b3e
          tax

label_0b48
    sta p1_shields, x
    sta $5000, x
          inx
       bne label_0b48
       sta $ae
       sta $af
       sta level_tens
          dex
       stx $d7
       lda #$0a
       sta $4b
       sta level_units
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
    jsr label_114c

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
    sbc $1f20, y

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
      ldx $cb
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
  beq handle_player_1_joystick
  and #%00010000               ; Is fire button down?
  beq label_0c2b
  jsr label_0c1b

handle_player_1_joystick
  lda port_1_joystick
  cmp #$ff                     ; Joystick idle / timer bits??
  beq label_0bf2
  and #$10                     ; Is fire button down?
  bne label_0bef
  lda $0426                    ; L of Player 2 lives display??
  cmp #$20
  beq label_0bf2
  bne label_0c2b

label_0bef
   jsr label_0c1b

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

label_0c1b
   lda $0426       ; Screen, letter L of Player 2 lives???
   cmp #$20
   beq label_0c25
   lda #$20
   !byte $2c       ; BIT $40A9 ??
label_0c25
   lda #$40        ; A9 40
   sta $0426
   rts

label_0c2b
   ldx #$00
   ldy #$04
   sty p1_lives
   jsr load_3_2_6_to_14_aa_be_with_x_offset
   lda $0426        ; Letter L of player 2 lives??
   cmp #$40
   beq label_0c3d
   ldy #$00

label_0c3d
      sty p2_lives
         inx
   jsr load_3_2_6_to_14_aa_be_with_x_offset
   lda $0623
         sec
      sbc #$30
      sta level_units
      sta $47
      sta $4b
      lda #$9d
      ldy #$1e
   jsr output_string_at_yyaa_until_zero_or_quote
      ldx #$27

label_0c58
   lda $d800, x
   sta $d828, x
      lda #$20
   sta $0428, x
         dex
      bpl label_0c58
   jsr label_0ea7
   jsr update_status_bar

label_0c6c
      lda #$00
         tax

label_0c6f
   sta p1_shields, x
         inx
      bne label_0c6f
      sta $c9
      sta $6b
      lda #$02
      sta $4c
      sta $41
      sta $6c
      lda $4b
         asl
         asl
         clc
      adc #$46
      bcs label_0c8c
      sta $d7

label_0c8c
      ldx #$0c
      stx $0d
         dex
      stx $39
   jsr label_114c
      lda p1_lives
      beq label_0c9f
      ldx #$00
   jsr label_19a8

label_0c9f
      lda p2_lives
      beq label_0ca8
      ldx #$01
   jsr label_19a8

label_0ca8
      lda #$05
      sta $fe

label_0cac
   jsr label_12d2
      lda #$3f
   jsr label_0fa5
      lda #$01
   jsr label_0fc5
      dec $fe
      bne label_0cac
      lda #$f9
      sta $a1

label_0cc1
      ldy $cb
      cpy #$06
      bne label_0cdc
   lda $4060
      eor #$01
   sta $4060

label_0ccf
  lda jiffy_clock      
  clc
  adc #$0f
  sta $fc

.wait_16jiffies_loop
  lda jiffy_clock      
  cmp $fc
  bne .wait_16jiffies_loop

label_0cdc
   lda $4060
   beq label_0d01
   lda jiffy_clock
   and #$01
   tax
   tya
   cmp $1f05, x
   bne label_0cc1
   lda p1_lives, x
   beq label_0cc1
   inc $1f18, x
   lda $1f18, x
   ora #$20
   sta $4400, x
   jsr label_1269
   jmp label_0ccf

label_0d01
      lda $46
      beq label_0d0b
   jsr label_1ad9
   jmp label_183a

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
      dec $6c
      bne label_0d33
      lda $41
      sta $6c
      lda jiffy_clock
      sta $fc
      lda $41
      cmp #$ff
      beq label_0d33

label_0d2d
      lda jiffy_clock
      cmp $fc
      beq label_0d2d

label_0d33
   jsr label_152d
   lda sid_voice3_oscillator_ro
      bne label_0d55
   lda sid_voice3_oscillator_ro
      cmp #$c8
      bcc label_0d55
      lda $6b
      cmp #$05
      bcs label_0d55
      inc $6b
   jsr label_12d2
      lda #$3f
   jsr label_0fa5
   jsr label_1db0

label_0d55
   jmp label_0cc1

label_0d58
   ldx #$00
   stx $fd
   clc
   adc $fd
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

label_0d76
  lda $b9
  clc
  ror
  ldx #$00
  bcc label_0d80
  ldx #$80

label_0d80
  stx self_mod_sta_base_address_lo
  clc
  adc #$2a
  sta self_mod_sta_base_address_hi
  lda #$00
  ldx #$7f

label_0d8d
   jsr self_modified_sta_plus_x
   dex
   bpl label_0d8d
   lda $44
   asl
   asl
   asl
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
      sta $03

label_0e21
      lda #$00
      sta $fe

label_0e25
      lda $fe
         clc
      adc $fd
         tay
   jsr self_modified_lda_plus_y
      ldx $03
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
      inc $03
      lda $03
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
   bcc .adding_64_no_carry                      ; Did it trigger carry?
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
      ldx level_units
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

label_0f08 = $0f08
label_0fed = $0fed
label_1c4c = $1c4c
label_1dca = $1dca
label_1dc7 = $1dc7


  
label_0efe
      ldx $03
      and $1ef6, x
      beq label_0f08
      lda $c4
      bit $20a9
      sta $06
      ldx $fd
   jsr label_0fa5
      lda $c3
   jsr label_0fc5
      lda #$26
         sec
      sbc $fd
         tax
      lda $06
   jsr label_0fa5
      lda $c3
   jsr label_0fc5
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
   lda level_units
   adc #$30 
   sta screen+64  ; Level units

update_status_bar_just_shields:
   lda p1_shields      ; Player 1 shields
   clc
   adc #$30
   sta screen+49
   lda p2_shields      ; Player 2 shields
   adc #$30
   sta screen+76  
   rts

; ----------------------------------------------------------------------
   
label_0fa5
      sta $0c
      lda #$9d
   sta $0fc1
      bne label_0fb3

label_0fae
      lda #$bd
   sta $0fc1

label_0fb3
   lda $6000, y
   sta $0fc2
   lda $6019, y
   sta $0fc3
      lda $0c
   lda $0400, x
         rts

; ----------------------------------------------------------------------         
         
label_0fc5
      sta $0c
      lda #$9d
   sta $0fe4
      bne label_0fd3

label_0fce
      lda #$bd
   sta $0fe4

label_0fd3
   lda $6000, y
   sta $0fe5
   lda $6019, y
         clc
      adc #$d4
   sta $0fe6

label_0fe2
      lda $0c
   lda $0400, x
         rts
         

label_0fe8
      sta $0c
      lda #$9d
   bit $bda9
   sta $0fe4
   lda $6000, y
   sta $0fe5
   lda $6019, y
         clc
      adc #$bc
   sta $0fe6
   jmp label_0fe2

; -----------------------------------------------------------------   
   
clear_explosions
  ldx #$07
  lda #$00

.explosion_clear_loop
   sta explosion_status, x
   sta $d000, x           ; Covers sprite coordinates 0-3
   sta $d008, x           ; Covers sprite coordinates 4-7
   dex
   bpl .explosion_clear_loop
   rts
    
; ---------------------------------------------------------------------         
         
!byte $E6,$46,$AE,$60,$40,$BD,$46,$1F
!byte $8D,$18,$D4,$F0,$06,$A5,$A2,$29
!byte $01,$D0,$03,$4C,$31,$EA,$A2,$01
!byte $86,$6A,$B5,$4E,$F0,$02,$D6,$4E
!byte $D6,$49,$D0,$08,$B5,$AA,$95,$49
!byte $A9,$01,$95,$A8,$B5,$66,$F0,$53
!byte $BC,$38,$1F,$C9,$05,$90,$1B,$D0
!byte $06,$B5,$68,$A2,$21,$D0,$26,$C9
!byte $07,$F0,$06,$B5,$68,$A2,$81,$D0
!byte $1C,$B5,$68,$18,$69,$F6,$A2,$81
!byte $D0,$13,$AA,$AD,$1B,$D4,$3D,$41
!byte $1F,$18,$7D,$3D,$1F,$85,$8F,$BD
!byte $39,$1F,$AA,$A5,$8F,$99,$01,$D4
!byte $A9,$09,$99,$05,$D4,$A9,$00,$99
!byte $04,$D4,$8A,$99,$04,$D4,$A6,$6A
!byte $D6,$68,$D0,$07,$A9,$00,$95,$66
!byte $99,$04,$D4,$CA,$C6,$6A,$10,$92
!byte $C6,$40,$D0,$1F,$A9,$03,$85,$40
!byte $A5,$3F,$38,$E5,$3C,$F0,$10,$B0
!byte $08,$C6,$41,$D0,$0A,$E6,$41,$D0
!byte $06,$E6,$41,$D0,$02,$C6,$41,$A9
!byte $00,$85,$3C,$C6,$52,$D0,$1C,$A9
!byte $02,$85,$52,$A6,$CA,$CA,$10,$02
!byte $A2,$02,$86,$CA,$BC,$15,$1F,$A2
!byte $07,$B9,$20,$1F,$9D,$F8,$29,$C8
!byte $CA,$10,$F6,$A2,$07,$BD,$28,$40
!byte $F0,$5C,$BC,$20,$40,$BD,$48,$40
!byte $18,$79,$1E,$1F,$D9,$1C,$1F,$F0
!byte $19,$9D,$48,$40,$38,$E9,$02,$D9
!byte $1C,$1F,$D0,$38,$BC,$58,$40,$B9
!byte $00,$45,$29,$BF,$99,$00,$45,$4C
!byte $39,$11,$C0,$00,$F0,$19,$BD,$38
!byte $40,$F0,$14,$BD,$30,$40,$18,$69
!byte $01,$C9,$0F,$B0,$0A,$9D,$30,$40
!byte $BD,$38,$40,$69,$F5,$D0,$14,$A9
!byte $00,$9D,$28,$40,$8A,$0A,$A8,$A9
!byte $00,$99,$01,$D0,$BD,$40,$40,$18
!byte $7D,$48,$40,$9D,$F8,$07,$CA,$30
!byte $03,$4C,$E2,$10,$4C,$31,$EA

label_114c
      lda #$00
      sta $48
      sta $bc
      ldx #$12
      lda #$ff

label_1156
   sta $4096, x
   sta $4083, x
         dex
      bpl label_1156
      lda #$00
      sta $b9
      lda #$10
      sta $44

label_1167
   jsr label_0d76
      lda $b9
      ldy $44
   sta $4096, y
      inc $44
      inc $b9
      cpy #$13
      bcc label_1167
      ldx #$0c
      stx $0d
         dex
      stx $39
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
      lda $4b
   cmp $1f48, x
      bcc label_118a
   lda $4096, x
      bpl label_11dc
      lda $b9
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
      inc $b9
      lda $b9
   sta $4096, x
      stx $44
   jsr label_0d76
      ldx $44
      lda $4b
   cmp $1fe2, x
      bcc label_11dc
   lda sid_voice3_oscillator_ro
      and #$03
      beq label_11dc
   sta $4083, x

label_11dc
      stx $44
   jsr label_12d2
      lda $44
   jsr label_13fa
      ldx $a3
      lda #$00
   jsr label_12fb
      ldx $a3
      lda $44
      cmp #$0c
      bne label_120f
      lda $4b
      cmp #$14
      bcc label_120f
      lda #$02
   sta $4700, x
      lda #$49
   sta $4400, x
      lda #$05
   sta p1_shields, x
      lda #$18
   sta $4500, x

label_120f
      lda $8e
      bpl label_1219
      lda #$00
   sta p1_shields, x
         rts

label_1219
   ldy $4f00, x
   lda $4e00, x
         tax
      lda #$00
   jsr label_0fc5
      lda #$00
   jmp label_0fa5

; --------------------------------------------------------------------   
   
label_122a
      sty $0f
      lda #$01
   jsr label_1b35
      ldy $0f
   lda $1f13, y
   jmp label_1b35

label_1239
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

label_1269
   lda $4400, x
      sta $fc

label_126e
   lda $4400, x
      and #$20
      bne label_1279
      lda #$00
      sta $fc

label_1279
      stx $8d
   lda $5100, x
         tay
   lda $1f0b, y
         clc
   adc $4200, x
      sta $fb
   lda $4500, x
      bpl label_128f
      inc $fb

label_128f
   lda $4500, x
      and #$04
      beq label_129c
      inc $fb
      inc $fb
      inc $fb

label_129c
      stx $03
   jsr label_12b5
      ldx $03
   lda $4500, x
      bpl label_12b4
      inc $fb

label_12aa
   jsr label_195e
      ldx $07
      ldy $08
   jsr label_12c3

label_12b4
         rts

label_12b5
   lda $4f00, x
   jsr label_1985
         tay
   lda $4e00, x
   jsr label_197a
         tax

label_12c3
      lda $fc
   jsr label_0fc5
      lda $fb
   jsr label_0fa5
      lda $8d
   jmp label_0fe8

label_12d2
   lda sid_voice3_oscillator_ro
      and #$1f
      sta $fc
   lda sid_voice3_oscillator_ro
      and #$07
         clc
      adc $fc
         tax
   lda sid_voice3_oscillator_ro
      and #$0f
      adc #$02
      sta $fc
   lda sid_voice3_oscillator_ro
      and #$07
      adc $fc
         tay
   jsr label_0fae
      cmp #$20
      bne label_12d2
         rts

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
   lda $4020, x
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
      ldx $c9
         inx
      cpx #$08
      bcc label_1334
      ldx #$00

label_1334
      stx $c9
   lda $4020, x
      beq label_132b

label_133b
      lda #$00
   sta $4030, x
      lda $fc
   sta $4020, x
      beq label_1359
      ldy $09
      cpy #$0c
      bcs label_1359
      ldy $0a
   lda p1_shields, y
      bne label_1359
   lda $4c00, y
      bne label_1361

label_1359
      lda #$08
         tay
   jsr label_1239
      lda #$00

label_1361
   sta $4038, x
      ldy $fc
   lda $1f1a, y
   sta $4048, x
   lda sid_voice3_oscillator_ro
      and #$01
         tay
   lda $1f09, y
   sta $4040, x
      lda $fe
   sta $4058, x
         tay
   lda $4400, y
   sta $d027, x
   lda $4500, y
      bmi label_138d
      lda #$00
      beq label_1396

label_138d
   lda $5100, y
         tay
      sta $fd
   lda $1edb, y

label_1396
         clc
      adc #$14
      sta $fc
      ldy $fe
   lda $4e00, y
      cmp #$1e
      bcs label_13b0
      lda #$ff
         sec
   sbc $1efd, x
   and $d010
   jmp label_13b6

label_13b0
   lda $1efd, x
   ora $d010

label_13b6
   sta $d010
   lda $4e00, y
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
   sta $d000, y
      ldy $fe
   lda $4500, y
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
   lda $4f00, y
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
   sta $d001, y
   inc explosion_status, x
         rts

label_13fa
      sta $04
         tya
         pha
         txa
         pha
   jsr label_1421
      lda $04
   jsr label_1447
         pla
   sta $4e00, x
         pla
   sta $4f00, x
   jsr load_two_low_bits_of_osc3_to_accumulator
   sta $5100, x
      lda #$01
   sta $4d00, x
      lda #$00
   sta $5000, x
         rts

label_1421
      ldx #$0c

label_1423
   lda p1_shields, x
      beq label_143e
         inx
      bne label_1423
      ldx $39
         inx
      bne label_1432
      ldx #$0c

label_1432
      stx $39
   jsr label_14a4
      ldx $39
   jsr label_1cef
      ldx $39

label_143e
      cpx $48
      bcc label_1444
      stx $48

label_1444
      stx $a3
         rts

label_1447
         tay
   sta $4100, x
   lda $1fba, y
   sta $4400, x
   lda $1fce, y
   sta $4500, x
   lda $1f94, y
   sta $4a00, x
   lda $1fa6, y
   sta $4300, x
   lda $1f58, y
         pha
      and #$0f
   sta $4900, x
         pla
         lsr
         lsr
         lsr
         lsr
   sta $4b00, x
   lda $1f6c, y
         pha
      and #$0f
   sta p1_shields, x
         pla
         lsr
         lsr
         lsr
         lsr
   sta $4c00, x
   lda $1f80, y
         pha
      and #$0f
   sta $4800, x
         pla
         lsr
         lsr
         lsr
         lsr
   sta $4700, x
   lda $4096, y
         asl
         asl
         asl
         asl
         clc
      adc #$40
   sta $4200, x
         rts

label_14a4
      lda #$20
      sta $fb
         txa
         pha
   jsr label_12b5
         pla
         tax
   lda $4500, x
      bpl label_14b7
   jmp label_12aa

label_14b7
         rts

label_14b8
   lda $4c00, y
   ldy $1f15, x
         clc
   adc $6045, y
   sta $6045, y
   jsr label_14cb
   jmp update_status_bar

label_14cb
      stx $07
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
      ldx $07
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
      ldx $07
         rts

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
      cmp $d7
      bcs label_1549
   jsr label_118a

label_1549
      inc $0d
      ldx $0d
      cpx $48
      bcc label_1563
      beq label_1555
      bcs label_155c

label_1555
   lda p1_shields, x
      bne label_1568
      dec $48

label_155c
      ldx #$0b
      stx $0d
      inc $3c
         rts

label_1563
   lda p1_shields, x
      beq label_1549

label_1568
   lda $4500, x
      and #$40
      bne label_1549
   dec $4d00, x
      bne label_1549
   lda $4700, x
   sta $4d00, x
   lda $5000, x
      bpl label_1587
      lda #$00
   sta $5000, x
   jmp label_1269

label_1587
   lda $4500, x
      bpl label_158f
   jmp label_1d68

label_158f
   lda $4300, x
      bpl label_15c4

label_1594
      stx $13
   jsr label_1dcf
      ldx $13
      cmp #$20
      bne label_15a2
   jmp label_1d7b

label_15a2
   ldy $4300, x
      bmi label_15ad
      dec $41
      bne label_15ad
      inc $41

label_15ad
      cmp #$40
      bcc label_15bc
   jsr label_14a4
      ldx $13
   jsr label_1afa
   jmp label_1bfb

label_15bc
      lda #$00
   sta p1_shields, x
   jmp label_14a4

label_15c4
   jsr label_1a10
      ldy #$03

label_15c9
      ldx $0d
   lda $4061, y
      cmp #$3f
      bcc label_15e0
      cmp #$40
      bcs label_15e6
   lda $4400, x
      and #$10
      beq label_15e0
   jsr label_17e9

label_15e0
         dey
      bpl label_15c9
   jmp label_1673

label_15e6
   ldx $40ae, y
   lda $4100, x
      cmp #$11
      bcc label_1609
      cmp #$12
      beq label_1609
      ldx $0d
   lda $4500, x
      and #$10
      bne label_1600
   jsr label_1828

label_1600
   lda $4300, x
      cmp #$12
      beq label_15e0
      beq label_1660

label_1609
      ldx $0d
   cmp $4100, x
      beq label_161a
   cmp $4900, x
      beq label_161a
   cmp $4a00, x
      bne label_1634

label_161a
      lda #$01
   sta $4069, y
   lda $4500, x
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
   lda $4100, x
      cmp #$01
      bne label_1648
   lda $5100, x
         tax
         tya
   cmp $1f0f, x
      beq label_164f

label_1648
      ldx $0d
   lda $4400, x
      bpl label_1656

label_164f
      ldx $0d
   jsr label_1828
      bne label_1660

label_1656
   lda $4400, x
      and #$40
      beq label_1660
   jsr label_17e9

label_1660
   lda $4500, x
      and #$03
      sta $03
   jsr load_two_low_bits_of_osc3_to_accumulator
         sec
      sbc $03
   sta $407f, y
   jmp label_15e0

label_1673
      ldx $0d
   lda $5100, x
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
      sty $04
      cpy $0e
      beq label_16d1
   jsr label_180b

label_16d1
      ldy $04
         dey
      bpl label_16c8
      lda $0e
      ldx $0d
   cmp $5100, x
      beq label_16e8
   sta $5100, x
   jsr label_1269
   jmp label_1809

label_16e8
      ldx $0d
      ldy $0e
   lda $4065, y
      cmp #$01
      beq label_174e
   lda $4100, x
      cmp #$01
      bne label_174b
   lda $4061, y
      cmp #$40
      bcc label_1741
      lda #$03
   sta $4d00, x
   sta $4700, x
   ldx $40ae, y
   lda $5100, x
      sta $0a
         tay
   lda $1f0f, y
      cmp $0e
      beq label_1729
   ldy $4500, x
      bmi label_172e
      ldy $0e
   lda $1f0f, y
   sta $5100, x
   jmp label_1269

label_1729
   lda $4500, x
      bpl label_173e

label_172e
   jsr label_1d68
      ldx $8d
   lda $4500, x
      ora #$04
   sta $4500, x
   jmp label_1269

label_173e
   jmp label_1d7b

label_1741
      ldx $0d
      lda #$09
   sta $4d00, x
   sta $4700, x

label_174b
   jmp label_17e1

label_174e
   lda $4061, y
      cmp #$3f
      bne label_1770
   inc $5000, x
   inc p1_shields, x
   lda $4100, x
      cmp #$06
      bne label_1767
      lda #$03
   sta $4700, x

label_1767
      lda #$04
         tay
   jsr label_1239
   jmp label_17e1

label_1770
      bcs label_1775
   jmp label_1673

label_1775
   lda $4069, y
      bne label_1794
   lda $40ae, y
      sta $0a
      stx $09
   jsr label_1bfb
      ldx $0d
   lda p1_shields, x
      beq label_17f6
      ldx $0a
   lda p1_shields, x
      beq label_17e1
      bne label_17d9

label_1794
   ldx $40ae, y
   lda $4100, x
      cmp #$03
      bne label_17d9
      ldx $0d
   lda $4100, x
      cmp #$04
      bne label_17d9
   lda $5000, x
         pha
      lda #$00
   sta p1_shields, x
      sty $0a
   jsr label_14a4
      ldy $0a
   ldx $40ae, y
   lda $4500, x
      and #$80
         pha
      lda #$02
   jsr label_1447
         pla
   ora $4500, x
      and #$bf
   sta $4500, x
         pla
         clc
   adc $5000, x
   sta $5000, x
   jmp label_1269

label_17d9
      ldx $0d
   jsr label_1d90
   jmp label_1269

label_17e1
      ldx $0d
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

label_17f7
      lda #$28
         sec
   sbc $4065, y
      sta $03
   lda $406d, y
         sec
      sbc $03
   sta $406d, y
         rts

label_1809
      ldy $0e

label_180b
   lda $407f, y
      bmi label_1811
         rts

label_1811
   jsr label_1421
         tya
      ldy $0d
   jsr label_1b5f
      lda #$06
         tay
   jmp label_1239

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

label_183a
      ldx #$01
      stx $3a

label_183e
      ldx $3a
      lda $a8, x
      beq label_1859
      lda p1_lives, x
      beq label_1859
      lda #$00
      sta $a8, x
   lda $4500, x
      and #$40
      bne label_1859
   jsr label_1879
   jsr label_1b17

label_1859
      dec $3a
      bpl label_183e
   lda $5000
         clc
   adc $5001
      cmp #$05
      bcc label_186b
   jmp label_1d0a

label_186b
      lda p1_lives
      bne label_1876
      lda p2_lives
      bne label_1876
   jmp label_1aac

label_1876
   jmp label_0d0b

label_1879
   lda port_2_joystick, x
      sta $4d
      stx $05
      and #$0f
         sec
      sbc #$05
         tay
   lda $1eeb, y
      sta $04
      bmi label_189c
   lda $5100, x
      cmp $04
      bne label_18a1
   lda $4500, x
      bpl label_18d9

label_1899
   jmp label_1d68

label_189c
      ldx $05
   jmp label_1269

label_18a1
   lda $5100, x
         tay
      sta $06
   lda $4500, x
      bmi label_18c4
      ldy $04
   jsr label_1961
   jsr label_1dd2
      ldx $05
      cmp #$20
      beq label_18d1
      cmp #$3f
      bcs label_18d1
      lda $06
      sta $04
      bcc label_18d9

label_18c4
   lda $1f0f, y
      cmp $04
      bne label_1899
   jsr label_195e
   jsr label_1ace

label_18d1
      lda $04
   sta $5100, x
   jmp label_189c

label_18d9
   jsr label_1dcf
         pha
   jsr label_0fce
      and #$0f
      sta $42
      ldx $05
         pla
      cmp #$20
      beq label_1959
      cmp #$3f
      beq label_191f
      cmp #$3f
      bcc label_1953
   jsr label_1afa
      cpy #$02
      bcc label_1953
   lda $4100, y
      cmp #$0c
      beq label_1953
      cpy #$0c
      bcs label_190f
   lda $5100, y
      ldx $3a
   cmp $5100, x
      beq label_1953

label_190f
   jsr label_1bfb
      ldy $0a
   lda p1_shields, y
      bne label_191e
      ldx $09
   jmp label_14b8

label_191e
         rts

label_191f
   inc $5000, x
      lda $42
      cmp #$01
      beq label_1936
      cmp #$06
      beq label_1932
      lda #$04
      sta $be, x
      bne label_1936

label_1932
      lda #$01
      sta $aa, x

label_1936
      ldy #$01
      lda #$04
   jsr label_1239
   ldy p1_shields, x
         iny
      cpy #$0a
      bcc label_1947
      ldy #$09

label_1947
         tya
   sta p1_shields, x
   jsr update_status_bar_just_shields
   jmp label_1959
!byte $D0,$06

label_1953
   jsr label_1d90
   jmp label_189c

label_1959
      ldx $05
   jmp label_1d7b

label_195e
   ldy $5100, x

label_1961
   lda $4e00, x
         clc
   adc $1ee3, y
   jsr label_197a
      sta $07
   lda $4f00, x
         clc
   adc $1ee7, y
   jsr label_1985
      sta $08
         rts

label_197a
      bpl label_197e
      lda #$26

label_197e
      cmp #$27
      bcc label_1984
      lda #$00

label_1984
         rts

label_1985
      cmp #$01
      bne label_198b
      lda #$18

label_198b
      cmp #$19
      bcc label_1991
      lda #$02

label_1991
         rts

label_1992
   lda $4500, x
      eor #$80
   sta $4500, x
   lda $4500, x
      and #$fb
   sta $4500, x
         rts

label_19a3
      dec p1_lives, x
   jsr load_3_2_6_to_14_aa_be_with_x_offset

label_19a8
      lda $4b
         lsr
      sta $3f
      stx $05
      lda p1_lives, x
      beq label_1a0d
      lda #$10
   jsr label_1447
      lda $14, x
   sta p1_shields, x
      lda #$01
      sta $49, x
      sta $4e, x
   lda $1f18, x
      ora #$20
   sta $4400, x
   lda $1f07, x
      sta $07
      lda #$17
      sta $08
   jsr label_1ace
   lda $1f13, x
   sta $5100, x
      lda #$00
   jsr label_12fb
      ldx $05
   jsr label_1dd2
      ldx $05
      cmp #$20
      beq label_1a08
      cmp #$3f
      bne label_19f6
   inc $5000, x
      bne label_1a08

label_19f6
   jsr label_1b05
      ldx $0a
   jsr label_14a4
      ldx $0a
      lda #$00
   sta p1_shields, x
   jsr label_1cef

label_1a08
      ldy $05
   jsr label_122a

label_1a0d
   jmp update_status_bar_not_scores

label_1a10
      stx $05
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
      ldx $05
   ldy $4100, x
   lda $4083, y
      bpl label_1a3e
      inc $42

label_1a3e
      ldx $05
   lda $4e00, x
      sta $03
   lda $4f00, x
      sta $fb

label_1a4a
      ldy $fc
      lda $03
         clc
   adc $1ee3, y
   jsr label_197a
         tax
      sta $03
      lda $fb
         clc
   adc $1ee7, y
   jsr label_1985
         tay
      sta $fb
   jsr label_0fae
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
      ldx $03
   jsr label_0fed
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
      ldx $05
      lda $42
      beq label_1aa1
      lda #$20
      sta $42

label_1aa1
   lda $4400, x
      and #$df
      ora $42
   sta $4400, x
         rts

label_1aac
      ldx #$08

label_1aae
   lda $1ff5, x
      beq label_1abb
   sta $0617, x
      lda jiffy_clock
   sta $da17, x

label_1abb
         dex
      bpl label_1aae
   jsr label_1d99
      beq label_1ac6
   jmp label_0d1b

label_1ac6
      lda #$93
   jsr $ffd2
   jmp label_0b30

label_1ace
      lda $07
   sta $4e00, x
      lda $08
   sta $4f00, x
         rts

label_1ad9
      ldx #$02
      lda #$00
      sta $46

label_1adf
   lda p1_shields, x
      beq label_1af4
   lda $4500, x
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

label_1afa
      stx $09
   jsr label_195e

label_1aff
      ldx $07
      ldy $08
      bne label_1b0e

label_1b05
      stx $09
   ldy $4f00, x
   lda $4e00, x
         tax

label_1b0e
   jsr label_0fed
         tay
      ldx $09
      sty $0a

label_1b16
         rts

label_1b17
      lda $4d
      and #$10
      bne label_1b16
      ldy $3a
   lda $004e, y
      beq label_1b25
         rts

label_1b25
      lda #$05
   jsr label_1239
      ldy $3a
   lda $00be, y
   sta $004e, y
   lda $5100, y

label_1b35
      sta $fe
      sty $05
      ldx #$02

label_1b3b
   lda p1_shields, x
      beq label_1b59
         inx
      cpx #$0c
      bne label_1b3b
      ldx $4c
      stx $fd
   jsr label_14a4
      ldx $4c
         inx
      cpx #$0c
      bne label_1b55
      ldx #$02

label_1b55
      stx $4c
      ldx $fd

label_1b59
      lda $fe
      ldy $05
      stx $8d

label_1b5f
   sta $5100, x
   lda $4b00, y
         pha
   lda $4300, y
      stx $05
      sty $fd
   jsr label_1447
         pla
   sta $4700, x
      lda #$01
   sta $4d00, x
      ldy $fd
   lda $4100, x
      cmp #$12
      bne label_1b88
   lda $4100, y
   sta $4a00, x

label_1b88
   lda $4400, x
      and #$f0
   ora $4400, y
   sta $4400, x
   lda $4500, y
      and #$40
      beq label_1b9f
      lda #$20
   sta p1_shields, x

label_1b9f
   ldy $5100, x
      ldx $fd
   jsr label_1961
      ldx $05
   jsr label_1ace
      ldx $fd
   lda $4500, x
      bpl label_1bbb
      ldx $05
   jsr label_195e
   jsr label_1ace

label_1bbb
      lda $fd
      cmp #$02
      bcs label_1bc6
      ldx $05
   sta $4300, x

label_1bc6
   jsr label_1dd2
      ldx $05
      cmp #$20
      beq label_1beb
      cmp #$40
      bcs label_1bd9
      lda #$00
   sta p1_shields, x
         rts

label_1bd9
      stx $09
   jsr label_1aff
   jsr label_1bfb
      ldx $0a
   lda p1_shields, x
      bmi label_1bea
      bne label_1bf8

label_1bea
         rts

label_1beb
   lda $4300, x
      bmi label_1bf8
      inc $41
      bne label_1bf8
      lda #$ff
      sta $41

label_1bf8
   jmp label_1269

label_1bfb
      ldy $0a
   lda $4300, y
      cmp #$12
      bne label_1c33
      ldx $09
   lda $4500, x
      and #$20
      beq label_1c33
   lda p1_shields, x
      cmp #$14
      bcs label_1c33
   lda $5100, y
         tay
   lda $5100, x
   cmp $1f0f, y
      beq label_1c33
   ldy $5100, x
   lda $1f0f, y
   sta $5100, x
      lda #$01
      ldx $09
   ldy $4300, x
   jmp label_1239

label_1c33
      ldx $0a
   dec p1_shields, x
      lda #$01
   jsr label_12fb
      ldy #$03
      ldx $09
   lda $4500, x
      and #$20
      beq label_1c4c
   dec p1_shields, x
   bit $07a0
      sty $0b
   lda $4100, x
      cmp #$01
      beq label_1c67
   lda $4300, x
      bmi label_1c7c
      cmp #$02
      bcs label_1c7c
   lda p1_shields, x
      cmp #$02
      bcc label_1c7c

label_1c67
      ldx $0a
      lda #$00
   sta p1_shields, x
      beq label_1c7c
   lda $4500, x
      and #$20
      beq label_1c7c
      lda #$01
   jsr label_12fb

label_1c7c
      ldx $0a
   lda p1_shields, x
      bne label_1c95
      lda $0b
      cmp #$07
      beq label_1c8d
      lda #$02
      sta $0b

label_1c8d
   jsr label_14a4
      ldx $0a
   jsr label_1cef

label_1c95
      ldx $09
   lda p1_shields, x
      bne label_1ca4
   jsr label_14a4
      ldx $09
   jsr label_1cef

label_1ca4
      ldx $09
      cpx #$02
      bcs label_1cb7
   jsr update_status_bar_just_shields
   lda p1_shields, x
      bmi label_1cb4
      bne label_1cb7

label_1cb4
   jmp label_19a3

label_1cb7
   lda $4300, x
      cmp #$02
      bcs label_1cc9
      ldy $0a
   ldx p1_shields, y
      bne label_1cc9
         tax
   jsr label_14b8

label_1cc9
      ldy #$02
      ldx $09
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
   jsr label_1239
      ldx $0a
      cpx #$02
      bcs label_1cee
   jsr update_status_bar_just_shields
   lda p1_shields, x
      beq label_1cb4
      bmi label_1cb4

label_1cee
         rts

label_1cef
   lda $5000, x
      sta $fe
      lda #$00
   sta $5000, x

label_1cf9
      dec $fe
      bmi label_1cee
   jsr label_12d2
      lda #$3f
   jsr label_0fa5
   jsr label_1db0
      bne label_1cf9

label_1d0a
   jsr clear_explosions
      ldx #$01

label_1d0f
   ldy $1f15, x
      lda p1_lives, x
      beq label_1d3b
   lda $5000, x
         asl
         asl
         clc
   adc $5000, x
   adc $6045, y
   sta $6045, y
      lda #$00
   sta $5000, x
      lda $47
      cmp $4b
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
   ldx level_units
   inx
   cpx #10
   bcc .no_level_tens_increase
   ldx #$00
   inc level_tens

.no_level_tens_increase
   stx level_units

label_1d4e
   jsr label_1d99
   bne label_1d4e
   jsr update_status_bar
   jsr label_0ea7
   lda p1_shields
   sta $14
   lda p2_shields
   sta $15
   inc $4b
   jmp label_0c6c

label_1d68
      stx $13
   jsr label_14a4
      ldx $13
   jsr label_195e
   jsr label_1ace
   jsr label_1992
   jmp label_1269

label_1d7b
      stx $13
   lda $4500, x
      and #$fb
   sta $4500, x
   jsr label_1992
   jsr label_1269
      ldx $13
   jmp label_126e

label_1d90
   lda $4500, x
      eor #$04
   sta $4500, x
         rts

label_1d99
      ldx #$07

label_1d9b
   lda $1ffe, x
      beq label_1da8
   sta $05c7, x
      lda #$0a
   sta $d9c7, x

label_1da8
         dex
      bpl label_1d9b
      lda $cb
      cmp #$03
         rts

label_1db0
   lda sid_voice3_oscillator_ro
      and #$03
      bne label_1dca
      lda #$02
      cmp $4b
      bcs label_1dca
   lda sid_voice3_oscillator_ro
      and #$01
      beq label_1dc7
      lda #$02
   bit $06a9
   bit $01a9
   jmp label_0fc5

label_1dcf
   jsr label_195e

label_1dd2
      ldx $07
      ldy $08
   jmp label_0fae

load_3_2_6_to_14_aa_be_with_x_offset
      lda #$03
      sta $14, x       
      lda #$02
      sta $aa, x
      lda #$06
      sta $be, x
      rts
 
msg_banner

!text $93,$1C,"    CROSSROADS II : ",$9C,"PANDEMONIUM      " 
 
!byte $1C,$C0,$1E,$20,$00,$F6

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
!byte $FC,$04,$FC,$00,$00,$00,$00,$01
!byte $FF,$01,$FF,$00,$00,$00,$01,$02
!byte $80,$00,$01,$03,$80,$00,$01,$80
!byte $80,$40,$20,$10,$08,$04,$02,$01
!byte $02,$04,$08,$10,$20,$40,$80,$04
!byte $05,$01,$25,$C0,$DB,$08,$0C,$00
!byte $04,$01,$00,$03,$02,$02,$03,$00
!byte $08,$10,$02,$05,$19,$03,$02,$1A
!byte $FF,$01

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
!byte %#..##...
!byte %...##.#.
!byte %..#.##..
!byte %..##....
!byte %........

!byte $00,$07,$21,$81,$11,$11
!byte $03,$00,$10,$40,$07,$1F,$0F,$07
!byte $8F,$00,$01,$07,$11,$08,$02,$04
!byte $05,$03,$05,$06,$04,$08,$01,$09
!byte $01,$01,$00,$01,$13,$02,$32,$07
!byte $00,$05,$1F,$80,$3B,$2A,$09,$40
!byte $05,$08,$10,$00,$20,$00,$32,$83
!byte $94,$32,$22,$44,$75,$55,$52,$73
!byte $64,$85,$11,$64,$11,$33,$04,$01
!byte $21,$01,$88,$9B,$5D,$77,$96,$69
!byte $5A,$58,$6F,$FF,$9C,$8F,$A7,$6D
!byte $C6,$88,$21,$21,$4A,$21,$06,$FF
!byte $04,$04,$03,$0E,$00,$0E,$FF,$12
!byte $FF,$FF,$10,$12,$07,$FF,$FF,$FF
!byte $7F,$7F,$11,$7F,$11,$7F,$7F,$7F
!byte $11,$12,$13,$13,$7F,$12,$7F,$7F
!byte $11,$FF,$11,$FF,$7E,$75,$7A,$AA
!byte $BA,$77,$71,$72,$A9,$34,$BC,$7B
!byte $A9,$7D,$B6,$68,$22,$22,$60,$20
!byte $58,$40,$52,$48,$79,$40,$50,$58
!byte $5A,$53,$7A,$5A,$68,$62,$78,$58
!byte $62,$20,$21,$20,$05,$12,$1E,$06
!byte $09,$0C,$11,$0E,$10,$1A,$18,$18
!byte $CF,$1C,$08,$0B,$00,$00,$32,$07
!byte $01,$0D,$05,$00,$0F,$16,$05,$12
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