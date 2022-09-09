# @file: Num_after_name.asm
# @author: Keegan Goecke
# @date: 2022-09-09
# @brief: Adds 100 after name
    .data 
yourname: .asciiz "Please Enter Your Name\n" 
name: .space 16 
nameprint:.asciiz "Your name is\n" 

    .globl main 
    .text 
main: 
    li $v0,4 
    la $a0,yourname 
    syscall 

    li $v0,8 
    la $a0,name 
    li $a1,16 
    syscall 

    li $v0,4 
    la $a0,nameprint 
    syscall 
    li $v0,4 
    la $a0,name 