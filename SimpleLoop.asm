.text
.globl main
main:
    li $t0, 10 # number of iterations
    li $t1, 0 # t1 is our counter [i]
    li $t2, 17 # t2 holds value ot modify
loop:
    beq $t1, $t0, end # if t1 == 10 end loop
    add $t2, $t2, $t1
    addi $t1, $t1, 1 # add 1 to t1
    j loop # jumb back to the top
end:
    li $v0,10
    syscall