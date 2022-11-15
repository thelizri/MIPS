.data
display: 0x10010000
    output: .asciiz "Hello World\n"
.text
    main:
    li $t0, 0 				#i=0
    forLoop:
	jal writeFunction 		#calls our print function. loads next line into ra register
	nop
	addi $t0, $t0, 1  		#i++
	slti $t1, $t0, 10 		#$t1 = 1 if i<10
	bne $t1, $zero, forLoop		#go to forLoop if i<10
    exit:
        li $v0, 10
        syscall
    writeFunction:
        li $v0, 4
	la $a0, output
	syscall
	jr $ra 				#jumps back to the for loop
	nop
