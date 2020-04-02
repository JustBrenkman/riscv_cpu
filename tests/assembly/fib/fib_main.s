#######################
#
# fib_template.asm
#
# Template for completing Fibinnoci sequence in lab 10
#
# Version 1.2
#
# Memory Organization:
#   0x0000-0x1fff : text
#   0x2000-0x3fff : data
# Registers:
#   x0: Zero
#   x1: return address
#   x2: stack pointer (starts at 0x3ffc)
#   x3: global pointer (to data: 0x2000)
#   x10-x11: function arguments/return values
#
#######################
.globl  main

.text
main:

	# Setup the stack: sp = 0x3ffc
	lui sp, 4		# 4 << 12 = 0x4000
	addi sp, sp, -4		# 0x4000 - 4 = 0x3ffc
	# setup the global pointer to the data segment (2<<12 = 0x2000)
	lui gp, 2
	
	# Prepare the loop to iterate over each Fibonacci call
	addi s0, x0, 0			# Loop index (initialize to zero)
	# This macro is used to compute the offset of 'fib_input' in the
	# data segment (x3) so we don't have to manually compute this offset.
	lw s1,%lo(fib_count)(gp)	 # Loop terminal count

FIB_LOOP:
	# Set up argument for call to iterative fibinnoci
	mv a0, s0
	jal iterative_fibinnoci
	# Save the result into s2
	mv s2, a0
	# Set up argument for call to recursive fibinnoci
	mv a0, s0	
	jal recursive_fibinnoci
	# Save the result into t3
	mv s3, a0
	
	# Determine index in circular buffer on where to store result
	andi s4, s0, 0xf	# keep lower 4 bits (between zero and fifteen)
	# multiply by 4 (shift left by 2) to get offset
	slli s4, s4, 2
	
	# Compute base pointer to iterative_data
	addi s5, x3, %lo(iterative_data)
	# add the offset into the table based on the current index
	add s5, s5, s4
	# Store result
	sw s2,(s5)
	
	# Compute base pointer to recursive_data
	addi s5, x3, %lo(recursive_data)
	add s5, s5, s4
	# Store result
	sw s3,(s5)
	
	# Increment pointer and see if we are done
	beq s0, s1, done
	addi s0, s0, 1
	j FIB_LOOP

done:
	
	# Now add the results and place in a0
	addi t0, x0, 0     	# Counter (initialize to zero)
	addi t1, x0, 16		# Terminal count for loop
	addi a0, x0, 0		# Intialize a0 t0 zero
	# create a pointer to the iterative data
	addi t2, gp, %lo(iterative_data)
	# create a pointer to the recursive data
	addi t3, gp, %lo(recursive_data)
	
final_add:
	lw t4, (t2)
	add a0, a0, t4
	lw t4, (t3)
	add a0, a0, t4
	addi t2, t2, 4		# increment pointer
	addi t3, t3, 4		# increment pointer
	addi t0, t0, 1
	blt t0, t1, final_add
	
	# Done here!
	ebreak


iterative_fibinnoci:

	# This is where you should create your iterative Fibinnoci function.
	# The input argument arrives in a0. You should create a new stack frame
	# and put your resul in a0 when you return.
	addi	sp,sp,-48	#,,
	sw	s0,44(sp)	#,
	addi	s0,sp,48	#,,
	sw	a0,-36(s0)	# a, a
# fact_iter.c:2:   if (a==0) return 0;
	lw	a5,-36(s0)		# tmp74, a
	bne	a5,zero,.L2	#, tmp74,,
# fact_iter.c:2:   if (a==0) return 0;
	li	a5,0		# _5,
	j	.L3		#
.L2:
# fact_iter.c:3:   if (a==1) return 1;
	lw	a4,-36(s0)		# tmp75, a
	li	a5,1		# tmp76,
	bne	a4,a5,.L4	#, tmp75, tmp76,
# fact_iter.c:3:   if (a==1) return 1;
	li	a5,1		# _5,
	j	.L3		#
.L4:
# fact_iter.c:4:   int fib_2 = 0;
	sw	zero,-20(s0)	#, fib_2
# fact_iter.c:5:   int fib_1 = 1;
	li	a5,1		# tmp77,
	sw	a5,-24(s0)	# tmp77, fib_1
# fact_iter.c:6:   int fib = 0;
	sw	zero,-28(s0)	#, fib
# fact_iter.c:7:   for (int i=2;i<=a;i++) {
	li	a5,2		# tmp78,
	sw	a5,-32(s0)	# tmp78, i
# fact_iter.c:7:   for (int i=2;i<=a;i++) {
	j	.L5		#
.L6:
# fact_iter.c:8:     fib = fib_1 + fib_2;
	lw	a4,-24(s0)		# tmp80, fib_1
	lw	a5,-20(s0)		# tmp81, fib_2
	add	a5,a4,a5	# tmp81, tmp79, tmp80
	sw	a5,-28(s0)	# tmp79, fib
# fact_iter.c:9:     fib_2 = fib_1;
	lw	a5,-24(s0)		# tmp82, fib_1
	sw	a5,-20(s0)	# tmp82, fib_2
# fact_iter.c:10:     fib_1 = fib;
	lw	a5,-28(s0)		# tmp83, fib
	sw	a5,-24(s0)	# tmp83, fib_1
# fact_iter.c:7:   for (int i=2;i<=a;i++) {
	lw	a5,-32(s0)		# tmp85, i
	addi	a5,a5,1	#, tmp84, tmp85
	sw	a5,-32(s0)	# tmp84, i
.L5:
# fact_iter.c:7:   for (int i=2;i<=a;i++) {
	lw	a4,-32(s0)		# tmp86, i
	lw	a5,-36(s0)		# tmp87, a
	ble	a4,a5,.L6	#, tmp86, tmp87,
# fact_iter.c:12:   return fib;
	lw	a5,-28(s0)		# _5, fib
.L3:
# fact_iter.c:13: }
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
	addi	sp,sp,48	#,,
	ret

    ret

# Calculate the fibinnoci number using a recursive algorithm
# Uses the stack to save the previous functions variables and
# return address before recursivelly calls itself.
recursive_fibinnoci:
	# Do our checks, if it is less than 2 return
	beqz a0, return_branch
	addi t4, a0, -1
	beqz t4, return_branch
	
	# increase stack pointer to account for 3 variables
	addi sp, sp, -12
	# save the return address, the calculated variable and the arguement
	sw ra, 0(sp)
	sw s0, 4(sp)
	sw s1, 8(sp)
	
	# Save our a0 because it will be overwritten
	mv s0, a0
	
	# Decrease a0 and call the recursive function
	addi a0, s0, -1
	jal recursive_fibinnoci
	# Save the returned value
	mv s1, a0
	
	# Decrease the original a0 which is in s0 by 2
	# And call the recursive function
	addi a0, s0, -2
	jal recursive_fibinnoci
	
	# Add the results together and put it in a0
	add a0, a0, s1

# Handles the stack managment for when the function has finished.
# Restores the saved variables and pops the stack.
return:
	# Save the return address, the calculated varialbe and the arguement
	lw ra, 0(sp)
	lw s0, 4(sp)
	lw s1, 8(sp)
	# Pop the stack
	addi sp, sp, 12
	ret

# unconditional branch
return_branch:
	ret
    
    ret
	nop
	nop
	nop


.data

# Indicates how many Fibonacci sequences to compute
fib_count:
	.word 15   # Perform Fibonacci sequence from 0 to 15
# Reserve 16 words for results of iterative sequences
iterative_data:
	.space 64 # reserve 16 words of 4 bytes each for a total of 64 bytes
# Reserve 16 words for results of recursive sequences
recursive_data:
	.space 64 # reserve 16 words of 4 bytes each for a total of 64 bytes
