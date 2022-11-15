.data
prompt: .asciiz "Enter number: \n"
result: .asciiz "Result: "
.text
jal getNumber
nop
move $t0, $v0

jal getNumber
nop
move $t1, $v0

div $t0, $t1
mfhi $a1

jal printInteger
nop

exit:
li $v0, 10
syscall

getNumber:
addi $v0, $zero, 4
la $a0, prompt
syscall #Prints prompt
addi $v0, $zero, 5
syscall #Retrieves number from user
jr $ra
nop

printInteger:
addi $v0, $zero, 4
la $a0, result
syscall 
move $a0, $a1
addi $v0, $zero, 1 
syscall #Prints integer
jr $ra