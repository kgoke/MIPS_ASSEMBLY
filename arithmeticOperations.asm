	.data	# tells assembler to expect data
n1:	.asciiz "\n"
	.text	# tells compiler to expect code

main:
	li 	$t0, 2		# loads 2 into t0
	li 	$t1, 7		# loads 7 into t1
	li 	$t2, 5		# loads 5 into t2
	li 	$t3, 8		# loads 8 into t3

	add 	$a0, $t0, $t3	# a0 = t0 + t3
	li 	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li	$v0, 4		# loads 4 into v0 to print string
	la	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	addi	$a0, $t2, 17	# a0 = t2 + 17
	li	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li	$v0, 4		# loads 4 into v0 to print string
	la	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	sub	$a0, $t0, $t1	# a0 = t0 - t1
	li	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li 	$v0, 4		# loads 4 into v0 to print a string
	la	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	mult	$t1, $t2	# [Hi- Lo] = t1 * t2
	mflo	$a0		# a0 = t1 * t2 (Lo reg)
	li	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

   	li 	$v0, 4		# loads 4 into v0 to print a string
	la 	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	mfhi 	$a0		# a0 = t1 * t2 (Hi reg)
	li 	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li 	$v0, 4		# loads 4 into v0 to print a string
	la 	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	div	$t1, $t2	# [Hi Lo] = t1 / t2
	mflo	$a0		# a0 = t1 /t2 (Lo reg)
	li 	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

    	li 	$v0, 4		# loads 4 into v0 to print a string
	la 	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	mfhi	$a0		# a0 = t1/ t2 (Hi reg)
	li	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li	$v0, 4		# loads 4 into v0 to print string
	la	$a0, n1		# loads n1 into a0
	syscall			# call to OS

	mul	$a0, $t1, $t2	# a0 = t1 * t2	[Lo reg]
	li 	$v0, 1		# loads 1 into v0 to print int
	syscall			# call to OS

	li	$v0, 10		# loads 10 into v0 to quit
	syscall			# call to OS
	
