    # Load the base address for IO. 0x00007f00.
    lui     x5, 0x8
    addi    x5, x5, 0xffffff00
    # Write to the LED portion of the memory
    addi    x6, x0, 0x6436
    sw      x6, 0(x5)


    # Read switches and write to LEDs.
    li      t0, 0x00007f00
    lw      t1, 4(t0)
    sw      t1, 0(t0)

    .eqv IO_BASE        0x7f00
    .eqv BUTTON_OFFSET  0x24
    .eqv BUTTON_MASK    0x0a

    li      t0, IO_BASE
wait_for_btn:
    lw      t1, BUTTON_OFFSET(t0)
    andi    t1, t1, BUTTON_MASK
    beq     t1, zero, wait_for_btn
button_pressed:
    addi    t2, t0, 1
    ebreak







    #UART Example

    .eqv IO_BASE            0x7f00
    .eqv TX_OFFSET          0x8
    .eqv RX_STATUS          0x14
    .eqv RX_DATA            0x10
    .eqv RX_DATA_AVAILABLE  0x1
    .eqv TX_BUSY            0x1
    .eqv RECIEVED_VAL       0x20

    li      t0, IO_BASE
    li      t3, RECIEVED_VAL
read_byte:
    lw      t1, RX_STATUS(t0)     # Read UART RX status
    andi    t1, t1, RX_DATA_AVAILABLE   # Mask the RX data available bit
    beq     x0, t1, read_byte    # If it is zero (no byte) go back and wait
byte_received:
    lw      t2, RX_DATA(t0)       # Read the data that was received (t2)
    bne     t2, t3, read_byte
received:
    ebreak


    .eqv COL            0x26
    .eqv ROW            0x0d
    .eqv VGA_BASE_ADDR  0x00008000

    li      t0, VGA_BASE_ADDR
    li      t1, ROW
    li      t2, COL
    slli    t1, t1, 9
    slli    t2, t2, 2
    add     t3, t0, t1
    add     t3, t3, t2
    sw      t3, 0(t0)


