      .data
one:  .asciiz "This is a string!"
      .text

main:
      li $v0, 4
      la $a0, one
      syscall
      
      li $v0, 10
      syscall
