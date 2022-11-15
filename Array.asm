.data
myArray: .space 12 #reserving space for 12 bytes, in other words 3 integers
.text
addi $s0, $zero, 4
addi $s1, $zero, 10
addi $s2, $zero, 20

sw $s0, myArray
sw $s1, myArray + 4
sw $s2, myArray + 8

lw $a0, myArray + 8 #Loading word from myArray[2]
addi $v0, $zero, 1
syscall

exit:
addi $v0, $zero, 10
syscall
