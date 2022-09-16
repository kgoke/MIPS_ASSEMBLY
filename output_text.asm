      .data #tells assembler to expext data
one:  .asciiz "This is a string!"
      .text # tells assembler ot expect code

main:
      li $v0, 4   # loads 4 into v0 to get print a string
      la $a0, one # loads one into a0
      syscall     # calls to OS
      
      li $v0, 10  # loads 10 into v0 to quit
      syscall     # calls OS
