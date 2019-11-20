.data
str1: .asciiz "Please input your name "	
str2: .asciiz "Please input the last 4 digits of your ID "
str3: .asciiz "Your name is "
str4: .asciiz "Your last 4 digits of your ID is "
#This creates a 30 character space for your name
name: .space 30

.text
#I will print out string 1 
addi $v0, $0, 4 
la $a0, str1
syscall

#Read in your name
addi $v0, $0, 8
la, $a0, name
addi $a1, $0, 30
syscall

#I will print out string 2
addi $v0, $0, 4
la $a0, str2
syscall

#Read in ID
addi $v0, $0, 5
syscall
#t0 = my ID
add $t0, $v0, 0

#Print my name
addi $v0, $0, 4
la $a0, str3
syscall
addi $v0, $0, 4
la $a0, name 
syscall

#Print my ID
addi $v0, $0, 4
la $a0, str4
syscall
addi $v0, $0, 1
add $a0, $t0, 0
syscall
