# crossroads-2-disassembly

This is an attempt at reverse engineering the C64 game **Crossroads 2**, originally by Steve Harper and published as a type-in game in Compute! magazine in 1988.

Crossroads 2 was (is) an interesting game as it is an early example of a game in which all creatures, players and enemies, have similar rules applied to them and react in similar ways.

## Format

The existing ASM file is built with c64studio by George Rottensteiner, at http://www.georg-rottensteiner.de/en/index.html . It does not exactly regenerate the original .PRG 
file (which is also in the repository) at present due to some differences in how text is encoded, but all of the game code produced is 
identical to that in the original.

## Notes

Labels are being amended as I work out what they mean, as are local variables on the zero page. 

Some disassemblers and debuggers have trouble with some parts of the code due to the "BIT NOP trick", which is used in several 
places. That's this fellow:

~~~~
   beq .enable_2_player
   ...
   !byte $2c       ; BIT NOP hack
.enable_2_player
   lda #c_player   ; Make it a player icon 
~~~~

The trick here is that `lda #c_player` is a two byte instruction. `$2c` is the opcode for `bit $xxxx`, a three byte instruction 
which alters the flags but doesn't change anything in memory or any registers. So if the `beq` is taken, the CPU jumps to the `lda` 
instruction; if it is not, the CPU reads the `$2c` as a `bit` instruction with the two bytes of the `lda` instruction as the 
operand (which will be a random address, but it doesn't matter, since `bit` doesn't do anything except changing the flags). Most 
disassemblers, including the C64studio built-in one, barf at this and disassemble the code as the `bit` instruction with a jump 
into the middle of it, so this has to be manually corrected. 

The game also loads its own ISR for timing. Because the ISR isn't actually called by the code, but just loaded as a jump vector 
into the zero page ISR address bytes, some disassemblers - again, including the C64studio one - think it's data rather than code 
and don't disassemble it. So it's hand disassembled.

Also, some routines - mainly those for loading characters and reading and writing the screen - make use of self-modifying 
code to work around the 6502's limitations on indirect addressing. Fortunately, the original author was kind enough to put 
meaningful placeholder instructions in the locations in memory where the self-modifying code is built.


