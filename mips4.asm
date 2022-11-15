.data
hello: .asciiz "Hello World"
.text
la $a0, hello
jal PrintString
nop
jal PrintNewline
nop
la $a0, hello
jal PrintString
nop
jal Exit
.data
.include "utils.asm"
