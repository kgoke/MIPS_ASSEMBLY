# @file: Sum_1_10.asm
# @author: Keegan Goecke
# @date: 2022-09-09
# @brief: Sum of all numbers 1-10
.data
msg: .asciiz "Sum of all numbers 1-10: "

.text
.globl main
main:
    li $t0, 0 # stores coounter in $t0 starts at 0
    li $t1, 0 # stores sum in $t1 starts at 0
loop:
    addi $t0, $t0, 1    # adds 1 to counter
    add $t1, $t1, $t0   # adds counter to sum
    bne $t0, 10, loop   # branches back to loop if $t0 != 10

    li $v0, 4 # loads in a string
    la $a0, msg # loads msg into $a0
    syscall # print out msg

    li $v0, 1   # loads in a integer
    move $a0, $t1   # loads sum into $a0
    syscall # print out sum
end:
    li $v0,10   # exits program
    syscall