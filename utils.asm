# File: utils.asm
# Purpose: To define utilities which will be used in MIPS programs.
# Author: William a.k.a Karlan
.data #Data for display
display: .word 0x10010000 #static data
white: .word 0x00FFFFFF
black: .word 0x00000000
red: .word 0x00FF0000
lime: .word 0x0000FF00
blue: .word 0x000000FF
yellow: .word 0x00FFFF00
cyan: .word 0x0000FFFF
magenta: .word 0x00FF00FF
silver: .word 0x00C0C0C0
gray: .word 0x00808080
maroon: .word 0x00800000
olive: .word 0x00808000
green: .word 0x00008000
purple: .word 0x00800080
teal: .word 0x00008080
navy: .word 0x00000080
.text
Exit:
addi $v0, $zero, 10
syscall
nop
PrintString: #Print string located at address $a0
addi $v0, $zero, 4
syscall
jr $ra
nop
PrintInteger: #Print integer stored in $a0
addi $v0, $zero, 1
syscall
jr $ra
nop
PrintCharacter: #Print character stored in $a0
addi $v0, $zero, 11
syscall
jr $ra
nop
ReadInteger: #Read integer into $v0
addi $v0, $zero, 5
syscall
jr $ra
nop
PrintNewline:
addi $a0, $zero, 0xA
addi $v0, $zero, 11
syscall
jr $ra
nop
DisplayBox: #display is the label to the address of the bitmap display. $a0 should contain the box number. $a1 should contain the color
mul $a0, $a0, 4
sw $a1, display($a0)
jr $ra
nop
