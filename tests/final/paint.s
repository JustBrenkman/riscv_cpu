###########################################################################
#
# paint.s
#
# Version 1.0
#
# This is a very simple paint program, using the RISCV cpu.
#
# Memory Organization:
#   0x0000-0x1fff : text
#   0x2000-0x3fff : data
#   0x7f00-0x7fff : I/O
#   0x8000-0xbfff : VGA
#
# Created - 4/14/2020
# Author - Ben Brenkman
#
# Registers:
#   x0:      Zero
#   ra (x1): return address
#   sp (x2): stack pointer (starts at 0x3ffc)
#   gp (x3): global pointer (to data: 0x2000)
#   tp (x4): thread pointer (to I/O: 0x7f00)
#   x10-x11: function arguments/return values
#
###########################################################################

.globl _start
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

_start:
main:
    # Setup stack pointer to 0x3ffc.
    lui     sp, 4
    addi    sp, sp, -4
    
    # Setup the global pointer to 0x2000
    lui     gp, 2

    # Setup the IO pointer to 0x7f00
    addi    tp, tp, 0x7f
    slli    tp, tp, 8

    jal     clear_screen

loop:
    jal     process_btns
    j       loop

process_btns:
    # Push onto the stack.
    addi    sp, sp, -4
    # Save the previous return address.
    sw      ra, 0(sp)

    # Read the button values.
    lw      s0, BUTTONS(tp)

    # Proccess buttons here.
process_btnl:
    # Mask button, if button is not pressed
    # skip and check the next button.
    andi    t0, s0, BTNL
    beq     t0, zero, no_btnl_pressed

    lw      t0, %lo(btnl_pressed)(gp)
    bne     t0, zero, exit_btns

    # If the button isn't pressed update the flag.
    # get the pointer to the word in memory and set it
    # to 1.
    addi    t1, gp, %lo(btnl_pressed)
    addi    t0, zero, 1
    sw      t0, 0(t1)

    # Decrement the row variable if greater than zero.
    addi    t4, gp, %lo(current_row)
    lw      t3, 0(t4)
    # If the current row is 0 don't do anything.
    beq     t3, zero, exit_btns
    addi    t3, t3, -1
    sw      t3, 0(t4)

    # Only process one button at a time.
    j       exit_btns
    

no_btnl_pressed:
    # BTNL pressed lfag is set to 0.
    addi    t1, gp, %lo(btnl_pressed)
    sw      zero, 0(t1)
    # Fall through to process_btnr.

process_btnr:
    # Mask button, if button is not pressed
    # skip and check the next button.
    andi    t0, s0, BTNR
    beq     t0, zero, no_btnr_pressed

    lw      t0, %lo(btnr_pressed)(gp)
    bne     t0, zero, exit_btns

    # If the button isn't pressed update the flag.
    # get the pointer to the word in memory and set it
    # to 1.
    addi    t1, gp, %lo(btnr_pressed)
    addi    t0, zero, 1
    sw      t0, 0(t1)

    # Decrement the row variable if greater than zero.
    addi    t4, gp, %lo(current_row)
    lw      t3, 0(t4)
    # If the current row is the last row don't do anything.
    beq     t4, t5, exit_btns
    addi    t3, t3, 1
    sw      t3, 0(t4)

    # Only process one button at a time.
    j       exit_btns
    

no_btnr_pressed:
    # BTNL pressed lfag is set to 0.
    addi    t1, gp, %lo(btnr_pressed)
    sw      zero, 0(t1)
    # Fall through to process_btnu.

process_btnu:
    # Mask button, if button is not pressed
    # skip and check the next button.
    andi    t0, s0, BTND
    beq     t0, zero, no_btnu_pressed

    lw      t0, %lo(btnu_pressed)(gp)
    bne     t0, zero, exit_btns

    # If the button isn't pressed update the flag.
    # get the pointer to the word in memory and set it
    # to 1.
    addi    t1, gp, %lo(btnu_pressed)
    lw      t0, 0(t1)
    addi    t0, t0, 1
    sw      t0, 0(t1)

    # Decrement the row variable if greater than zero.
    addi    t4, gp, %lo(current_col)
    lw      t3, 0(t4)
    # If the current row is the last row don't do anything.
    beq     t4, t5, exit_btns
    addi    t3, t3, 1
    sw      t3, 0(t4)

    # Only process one button at a time.
    j       exit_btns
    

no_btnu_pressed:
    # BTNL pressed lfag is set to 0.
    addi    t1, gp, %lo(btnu_pressed)
    sw      zero, 0(t1)
    # Fall through to process_btnd.

process_btnd:
    # Mask button, if button is not pressed
    # skip and check the next button.
    andi    t0, s0, BTNU
    beq     t0, zero, no_btnd_pressed

    lw      t0, %lo(btnd_pressed)(gp)
    bne     t0, zero, exit_btns

    # If the button isn't pressed update the flag.
    # get the pointer to the word in memory and set it
    # to 1.
    addi    t1, gp, %lo(btnd_pressed)
    lw      t0, 0(t1)
    addi    t0, t0, 1
    sw      t0, 0(t1)

    # Decrement the row variable if greater than zero.
    addi    t4, gp, %lo(current_col)
    lw      t3, 0(t4)
    # If the current row is 0 don't do anything.
    beq     t3, zero, exit_btns
    addi    t3, t3, -1
    sw      t3, 0(t4)

    # Only process one button at a time.
    j       exit_btns
    

no_btnd_pressed:
    # BTNL pressed lfag is set to 0.
    addi    t1, gp, %lo(btnd_pressed)
    sw      zero, 0(t1)
    # Fall through to process_btnr.

process_btnc:
    # Mask button, if button is not pressed
    # skip and check the next button.
    andi    t0, s0, BTNC
    beq     t0, zero, no_btnc_pressed

    lw      t0, %lo(btnc_pressed)(gp)
    bne     t0, zero, exit_btns

    # If the button isn't pressed update the flag.
    # get the pointer to the word in memory and set it
    # to 1.
    addi    t1, gp, %lo(btnc_pressed)
    lw      t0, 0(t1)
    addi    t0, t0, 1
    sw      t0, 0(t1)

    # Read color from switches and draw pixel on screen.
    lw      a0, SWITCHES(tp)
    jal     draw_pixel

    # Only process one button at a time.
    j       exit_btns
    

no_btnc_pressed:
    # BTNL pressed lfag is set to 0.
    addi    t1, gp, %lo(btnc_pressed)
    sw      zero, 0(t1)
    # Fall through to exit_btns.

exit_btns:
    # Load previous return address from stack
    lw ra, 0(sp)
    # Pop the stack.
    addi sp, sp, 4
    ret

# Draws a pixel in with the color specified in a0.
draw_pixel:
    # Determine background color and set the char color.
    li      t1, 0xfff
    xori    t2, a0, -1
    and     t2, t2, t1
    slli    a0, a0, 12
    or      a0, a0, t2
    sw      a0, CHAR_COLOR(tp)

    # Load VGA base address.
    li      t0, VGA_BASE_ADDRESS

    # Load current col, multiple by 4 and add to the
    # VGA base address.
    lw      t1, %lo(current_col)(gp)
    slli    t1, t1, 2
    add     t0, t0, t1

    # Load current row, multiple by 512 and add to the
    # VGA base address with the col amount.
    lw      t1, %lo(current_row)(gp)
    slli    t1, t1, 9
    add     t0, t0, t1

    li      t1, SPACE_CHAR
    sw      t1, 0(t0)
    ret


clear_screen:
    # Create black background
    li      t0, 0xfff
    # Set background color
    sw      t0, CHAR_COLOR(tp)
    li      t0, VGA_BASE_ADDRESS
    addi    t1, x0, SPACE_CHAR	
    li      t2, VGA_ADDRESS_SIZE
    add     t2, t2, t0
write_char_loop:
    # Write every pixel to be space (clear screen).
    sw      t1, 0(t0)
    addi    t0, t0, 4
    beq     t0, t2, exit_clear_screen
    j       write_char_loop
exit_clear_screen:
    # Go back to to the main function.
    ret

.data
    current_col:
        .word 0
    current_row:
        .word 0
    btnl_pressed:
        .word 0
    btnr_pressed:
        .word 0
    btnu_pressed:
        .word 0
    btnd_pressed:
        .word 0
    btnc_pressed:
        .word 0
