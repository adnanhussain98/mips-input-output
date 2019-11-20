.data 
str1: .asciiz "Please input a 3 digit number "	
ans: .asciiz " The product is "

.text
#print str1
addi $v0, $0, 4
la $a0, str1
syscall

#read in a number
addi $v0, $0, 5
syscall
#t0 is the number you store
add $t0, $v0, 0
mul $t0, $t0, 2

#print 4 times
addi $s0, $0, 4
loop:
	add $s0, $s0, -1
	addi $v0, $0, 4
	la $a0, ans
	syscall
	addi $v0, $0, 1
	add $a0, $t0, 0
	syscall
	
bgez $s0, loop
