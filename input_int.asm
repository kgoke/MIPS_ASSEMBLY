	.data # tells assembler to expect data
prompt: .asciiz "Enter a number: "
respon: .asciiz "You entered: "
endl:	.asciiz ".\n"
    .text

main:
	li $v0, 4	# load 4 into v0 to print a string
	la $a0, prompt	# loads promt into a0
	syscall		# call to OS

	li $v0, 5	# load 5 into v0 to input a int
	syscall		# call to OS
	move $t0, $v0	# moves int into t0

	li $v0, 4	# load 4 into v0 to print a string
	la $a0, respon	# loads respon into a0
	syscall		# call to OS

	li $v0, 1	# loads 1 into v0 to print an int
	move $a0, $t0 	# moves data in t0 into a0
	syscall		# call to OS

	li $v0, 4	# load 4 into v0 to print a string
	la $a0, endl	# moves endl into a0
	syscall
	
	li $v0, 10	# loads 10 into v0 to quit
	syscall		# call to OS

