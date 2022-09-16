main: 
      li $v0, 1   # loads 1 into v0 to print a 32bit integer
      li $a0, 17  # loads 17 into a0
      syscall     # calls OS
      
      li $a0, 71  # loads 71 into a0
      syscall     # calls OS
      
      li $v0, 10  # loads 10 into v0 to quit
      syscall     # calls OS
