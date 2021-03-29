####################################################################################3#
#
# test_io.s
#
# Version V1.3
#
# This simple test program demonstrates the operation of all of the I/O 
# interfaces available to the I/O sub-system. 
#
# Memory Organization:
#   0x0000-0x1fff : text
#   0x2000-0x3fff : data
#   0x7f00-0x7fff : I/O
#   0x8000-0xbfff : VGA
#
# Registers:
#   x0:      Zero
#   ra (x1): return address
#   sp (x2): stack pointer (starts at 0x3ffc)
#   gp (x3): global pointer (to data: 0x2000)
#   tp (x4): thread pointer (to I/O: 0x7f00)
#   x10-x11: function arguments/return values
#
####################################################################################3#
.globl  main

.text

# I/O address offset constants
.eqv LEDS 0x0
.eqv SWITCHES 0x4
.eqv TX_READ_STATUS 0x8
.eqv TX_WRITE_DATA 0x8
.eqv RX_DATA 0x10
.eqv RX_STATUS 0x14
.eqv SEVEN_SEG 0x18
.eqv TRI_COLOR_LD16 0x20
.eqv TRI_COLOR_LD17 0x1c
.eqv BUTTONS 0x24
.eqv TIMER 0x30
.eqv CHAR_COLOR 0x34

# I/O mask constants
.eqv BTNU 0x10
.eqv BTNR 0x8
.eqv BTND 0x4
.eqv BTNL 0x2
.eqv BTNC 0x1
.eqv TX_BUSY 0x1
.eqv RX_DATA_PRESENT 0x1
.eqv RX_BUSY 0x2
.eqv RX_ERROR 0x4
.eqv CHAR_ADDR_INC_MODE 0x10000
.eqv CHAR_ADDR_COLUMN_MASK 0x7f
.eqv CHAR_ADDR_ROW_MASK 0xf80
.eqv CHAR_ADDR_ROW_SHIFT 7
.eqv CHAR_CHARACTERS 2400 # 80x30
.eqv SPACE_CHAR	 0x20 # ASCII value for a space
.eqv LAST_COLUMN 79
.eqv LAST_ROW 29

# VGA constants
.eqv VGA_BASE_ADDRESS 0x8000
.eqv VGA_ADDRESS_SIZE 0x4000


main:
	# Setup the stack: sp = 0x3ffc
	lui sp, 4						# 4 << 12 = 0x4000
	addi sp, sp, -4					# 0x4000 - 4 = 0x3ffc
	
	# setup the global pointer to the data segment (2<<12 = 0x2000)
	lui gp, 2

	# setup the pointer to the I/O space (0x7f00) 
	addi tp, tp, 0x7f 	# tp=0x7f
	slli tp, tp, 8		# tp=0x7f00

			
loop:								# Repeating loop to check status

	jal switch_to_led				# Call switch_to_led
	jal copy_timer_to_ssdisplay 	# Call copy_timer_to_ssdisplay
	jal process_buttons				# Call process_buttons
	jal uart_loop_back				# Call uart_loop_back
	j loop							# Go back to start of loop

	#################################################################
	# This subroutine will read the switches and write the result
	# back to the LEDs.
	#################################################################
switch_to_led:
	lw t0, SWITCHES(tp)				# Read switches (switch_to_led)
	sw t0, LEDS(tp)					# Write switch data to LEDs
	ret

	#################################################################
	# This subroutine will read the timer and display the result
	# on the seven segment display.
	#################################################################
copy_timer_to_ssdisplay:
	lw t0, TIMER(tp)				# Read timer (copy_timer_to_ssdisplay)
	sw t0, SEVEN_SEG(tp)			# Write timer data to seven segment display
	ret

	#################################################################
	# This subroutine will read the buttons and perform
	# button-specific functions. Note that since this function will
	# call other subroutines, the return address needs to be saved on
	# the stack.
	#
	# Register Usage
	#  s0: Holds the button read. Should not be overwritten by 
	#      called functions (constant during subroutine)
	#  t0: temporary mask register (no need to save)
	#  t1: temporary address register
	#
	#################################################################
process_buttons:
	addi sp, sp, -4					# Change stack pointer
	sw ra, 0(sp)					# Save return address

	lw s0, BUTTONS(tp)				# Read buttons

	# Check each button individually

	# BNTU: clears the milisecond timer
check_btnu:
	andi t0, s0, BTNU				# Mask button U
	beq t0, x0, check_btnl
	# clear the timer (write zero to timer)
	sw x0, TIMER(tp)
	# Fall through to BTNL

	# BTNL: Load left tri-colored LED with color on switches
check_btnl:
	andi t0, s0, BTNL				# Mask button L
	beq t0, x0, check_btnr
	# Read switches
	lw t0, SWITCHES(tp)				# t0: Read switches (only looking at bottom 12 switches)
	sw t0, TRI_COLOR_LD16(tp)
	# Fall through to BTNR

	# BTNR: Load right tri-colored LED with color on switches
check_btnr:
	andi t0, s0, BTNR				# Mask button R
	beq t0, x0, check_btnc
	# Read switches
	lw t0, SWITCHES(tp)				# t0: Read switches (only looking at bottom 12 switches)
	sw t0, TRI_COLOR_LD17(tp)
	# Fall through to BTNC

	# BTNC: Clear the screen with the color specified by switches
check_btnc:
	andi t0, s0, BTNC				# Mask button C
	beq t0, x0, check_btnd
	# read the switches to determine the color of the background
	lw t0, SWITCHES(tp)				# Read switches
	# Mask the relevant bits
	li t1, 0xfff	
	and a0, t0, t1
	jal clear_screen_color
	# Fall through to BTND
	
	# BTND: Write a character to the screen at the current position
check_btnd:
	andi t0, s0, BTND				# Mask button D
	beq t0, x0, no_btnd_pressed
	# See if the button is still being pressed from last iteration. 
	# If so, ignore this and skip (wait until the button hasn't been pressed yet).
	lw t0, %lo(btnd_pressed)(gp)
	# If it is not zero then it means we are still on a previous button press
	bne t0, x0, exit_buttons
	# This is a new button press. Update the flag and perform write character
	addi t1, gp, %lo(btnd_pressed)
	addi t0, x0, 1
	sw t0, 0(t1)
	# Read the switches to determine character to display
	lw a0, SWITCHES(tp)
	# Mask character bits
	andi a0, a0, 0xff
	jal write_character
	
	# Write to the TX if it is not busy
	lw t0, TX_READ_STATUS(tp)			# Read TX status
	andi t0, t0, TX_BUSY				# Mask BUSY bit
	bne t0, x0, exit_buttons
	# Write character to TX
	sw a0, TX_WRITE_DATA(tp)
	j exit_buttons	# Skip over clearing btnd flag
	
	# wait for buttond to be released so we don't keep writing 
	# characters to the screen
no_btnd_pressed:
	# Clear btnd_pressed flag
	addi t1, gp, %lo(btnd_pressed)
	sw x0, 0(t1)	
exit_buttons:
	lw ra, 0(sp)					# Restore return address
	addi sp, sp, 4					# Update stack pointer
	ret

	#################################################################
	# Clear screen with a constant color
	#
	#  This subroutine will set the global background color to the color
	#  sent as a parameter in a0. It will set the global forground color
	#  to the inverse of the background color. It will then write the 
	#  'space' character to all VGA locations (0x20) so that the background
	#  color will be displayed on the screen. It will also reset the
	#  current_character_column and current_character_row global variables
	#  so that subsequent chracter writes will occur in the top-left 
	#  corner of the screen.
	#
	#  The color to write for the background is given in a0
	#
	#################################################################
clear_screen_color:
	# Create color mask
	li t1, 0xfff	
	# Determine the foregraound color (inverse from background color)
	xori t2, a0, -1					
	and t2, t2, t1					# mask result
	# Shift the background color to its spot
	slli a0, a0, 12					# shift to proper spot
	or a0, a0, t2					# mix foreground and background
	# set the foreground/background colors
	sw a0, CHAR_COLOR(tp)
	# t0 is the variable pointer. It starts at the VGA space and goes up
	li t0, VGA_BASE_ADDRESS
	# t1 is the space character
	addi t1, x0, SPACE_CHAR	
	# t2 is the terminal pointer (i.e., the first pointer value that should NOT be written to)
	li t2, VGA_ADDRESS_SIZE			# Start with the number of words
	add t2, t2, t0					# Add the starting address with number of words
write_char_loop:
	sw t1, 0(t0)
	addi t0, t0, 4					# Go to next pixel
	beq t0, t2, exit_clear_screen
	j write_char_loop
exit_clear_screen:
	# reset the current_character_address
	addi t1, gp, %lo(current_character_column)
	sw x0, 0(t1)
	addi t1, gp, %lo(current_character_row)
	sw x0, 0(t1)
	ret

	#################################################################
	# Write character with default color to screen.
	# 
	#  This subroutine will place the character at the current location
	#  indicated by the global variables 'current_character_column' and
	#  'current_character_row'. These variables will be updated so that
	#  the next character is placed in the next location. This will manage
	#  wrapping across lines and wrapping to the top of the screen.
	#
	#  The character to write is sent in register a0
	#
	#################################################################
write_character:
	# determine location to write the character
	li t1, VGA_BASE_ADDRESS
	# Load the current column variable
	lw t2, %lo(current_character_column)(gp)
	slli t2, t2, 2		# shift left by 2 (multiply by 4)
	add t1, t1, t2		# add to the current address
	# Load the current row variable
	lw t2, %lo(current_character_row)(gp)
	slli t2, t2, 9     # 7 column bits + 2 bits offset
	add t1, t1, t2
	# Store character (loaded in a0) at proper location
	sw a0, 0(t1)

	# increment position of current character (t1=address, t2=column, t3=row, t4=temp)	
	#   Load the current column variable
	lw t2, %lo(current_character_column)(gp)
	# See if it is the last column
	addi t4, x0, LAST_COLUMN
	beq t2, t4, increment_row
	# Not last column, increment the column by 1
	addi t2, t2, 1
	j write_current_character_column
	
increment_row:
	# End of column, need to set column back to zero
	addi t2, x0, 0
	#   Load the current row variable
	lw t3, %lo(current_character_row)(gp)
	# See if we are at the last row
	addi t4, x0, LAST_ROW
	beq t3, t4, reset_row
	# Not the last row, incrment row by 1
	addi t3, t3, 1
	j write_current_character_row
	
reset_row:
	# start row over at 0
	addi t3, x0, 0	
write_current_character_row:
	# Update current row with new value
	addi t1, gp, %lo(current_character_row)
	sw t3, (t1)	
write_current_character_column:
	# Update current column with new value
	addi t1, gp, %lo(current_character_column)
	sw t2, (t1)
	ret


	#################################################################
	# This subroutine will see if there is a character on the UART RX
	# and then send it out on the UART TX. It will also write the character
	# on the screen at the current position
	#################################################################
uart_loop_back:
	addi sp, sp, -4					# Change stack pointer
	sw ra, 0(sp)					# Save return address
	# Check to see if TX is busy. If so, just ignore the RX (since you
	# can't send anything anyway).
	lw t0, TX_READ_STATUS(tp)			# Read TX status
	andi t0, t0, TX_BUSY				# Mask BUSY bit
	bne t0, x0, end_uart_loop_back
	# Check to see if there is something in the RX buffer
	lw t0, RX_STATUS(tp)				# Read RX status
	andi t0, t0, RX_DATA_PRESENT
	beq t0, x0, end_uart_loop_back		# exit if there is no data
	# There is data: read the data and send it over the TX
	lw t0, RX_DATA(tp)
	sw t0, TX_WRITE_DATA(tp)
	# Write the character to the screen
	mv a0, t0
	jal write_character
end_uart_loop_back:
	lw ra, 0(sp)					# Restore return address
	addi sp, sp, 4					# Update stack pointer
	ret
	# It is a good idea to have three NOPs at the end of your program so the 
	# simulator doesn't crash if you simulate your program.
	nop
	nop
	nop

# Global data
.data

current_character_column:   # Indicates the pointer to the current column for printing characters
.word 0
current_character_row:		# Indicates the poitner to the current row for printing characters
.word 0
btnd_pressed:				# Status flag on whether the btnd is being pressed
.word 0
