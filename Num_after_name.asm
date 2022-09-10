# @file: Num_after_name.asm
# @author: Keegan Goecke
# @date: 2022-09-09
# @brief: Ask user for name and number and returns name and number+100
    .data 
yourname: .asciiz "Please Enter Your Name\n" 
name: .space 16 
nameprint:.asciiz "Your name is\n" 
yournumber:.asciiz "Please Enter a number\n" 
numberprint:.asciiz "Your number is now\n" 

    .globl main 
    .text 
main: 
    li $v0,4 # loads in string
    la $a0,yourname # loads yourname into a0
    syscall

    li $v0,8    #loads in string
    la $a0,name #loads name into a0
    li $a1,16   # closes
    syscall

    li $v0,4    # loads in string
    la $a0, yournumber  # loads yournumber into a0
    syscall

    li $v0, 5 # loads in integer
    syscall
    move $t0, $v0   #moves v0 to t0
    addi $t0, $t0, 100  #adds 100 to t0

    li $v0,4 #loads in string
    la $a0,nameprint # loads nameprint into a0
    syscall
    li $v0,4 # loads in string
    la $a0,name # loads name into a0
    syscall

    li $v0,4 #loads in string
    la $a0, numberprint #loads numberprint into a0
    syscall
    li $v0, 1 #loads in integer
    move $a0, $t0 #moves t0 into a0
    syscall

    li $v0,10 # exits program
    syscall