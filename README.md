# crossroads-2-disassembly

This is an attempt at reverse engineering the C64 game **Crossroads 2**, originally by Steve Harter and published as a type-in game in Compute! magazine in 1988.

Crossroads 2 was (is) an interesting game as it is an early example of a game in which all creatures, players and enemies, have similar rules applied to them and react in similar ways.

## Format

The existing ASM file is built with c64studio by George Rottensteiner, at http://www.georg-rottensteiner.de/en/index.html . It reproduces the original PRG file exactly.

## Notes

Labels are being amended as I work out what they mean, as are local variables on the zero page. 

### Dissassembly

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

### Hidden credits message

As mentioned in the interview with Steve Harter at https://kirk.is/2006/04/13/ , the game's author credit is hidden in Crossroads 2, because Compute! magazine removed the credit from Crossroads 1 before publication. The code therefore attempts to hide the credit when normally running the program (as the publishers would before approving it), and display it only if the program is running from the type-in, or from the published disk edition of Compute!

The author credit appears in the code at `$1e73`, but it is simply obfuscated by adding the value of the corresponding bitmap value from the graphics used for the shield spars (which start at `$1f20`). 

The actual display of the credit is controlled by a zero page variable at `$6d`. During initialization, this is set to 
0, but it is incremented in two circumstances:

* if the first byte after the end of the program (`$21be` by default) is zero. (According to the interview this is because, when Compute! printed type-in listings, they padded the end of the program with zeroes, meaning these would appear at the end of the program when it was loaded from the type-in)
* if the "VIC extra background color" is `$f6` (this is presumably the method of "detecting the loader from the disk version of Compute!" that was also mentioned in the interview)

If `$6d` remains 0 then the branch at `$0c09` causes the scrolltext to loop before the credit message appears, meaning the scrolltext reads only "...COPYRIGHT 1988 COMPUTE! MAGAZINE...WELCOME TO PANDEMONIUM...PRESS FIRE BUTTON TO START". If `$6d` has been incremented then a higher character limit is used and the text is deobfuscated as it is displayed, by code at `$0b97` which subtracts the appropriate spar image byte from the character code, adding "...BY STEVE HARTER" at the end of the scrolltext above.

Whether or not the credit appears on emulators differs based on how the emulator models the C64's initial memory state. 

### Unused text

Within the text block are the message "PLAYERS 1" and "PLAYERS 2" which are never used. These are possibly left over from the 
previous game?

### Timing

The timing of the game loop in Crossroads 2 is remarkably sophisticated. It is based on the C64's "jiffy clock", which ticks every 
1/60 of a second. There are two interacting routines: the main game loop, which starts at `$0cc1` and runs constantly, and the 
interrupt service routine at `$1015`, which interrupts the normal code every jiffy. The timing manager only runs during the actual 
game; the title screen always runs the game loop at the highest possible speed.

The enemy update code at `$152d` runs once every game loop, and updates **one** enemy each time around. Which enemy this is is 
determined round-robin by the value at `$0d`, which increments to the next active enemy each loop (with enemies that are frozen, 
exploding or dead not counted as active). When it reaches the last active enemy (stored in `$48`), it wraps around to the first. 

The sweep count is used by the ISR to determine the "difficulty value", at `$41`. Once the game loop has looped this number of times, 
it waits (at `$0d2d`) for the end of the current jiffy before proceeding. (Exactly how long this is could be very variable, of 
course.) 

The difficulty starts at 2, but is constantly adjusted during the game. This is done based on the "escalation value", which starts 
each level at the level number, and increases every 1530 jiffies (or every 25 seconds); this is counted using the second byte of 
the jiffy clock, at `$0d0b`. 

The interrupt service routine updates the difficulty every 4 jiffies. Every time the active enemy tracker wraps around, it 
increments the "sweep count" at `$3c`. At each update, the ISR clears this counter and checks if the sweep count within the 4-jiffy 
period matches the escalation value. If more sweeps than escalation were made, the difficulty is lowered and the game loop effectively 
slows down; if less sweeps than escalation were made, the difficulty is raised and the game loop effectively speeds up.



