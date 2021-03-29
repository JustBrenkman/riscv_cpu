`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: tb_download.v
//
//  Author: Mike Wirthlin
//  
//  Version 1.3 (3/25/19)
//
//   
//////////////////////////////////////////////////////////////////////////////////

module tb_download();

	reg tb_clk100, tb_rst;
	reg tb_BTNC, tb_BTNU, tb_BTNR, tb_BTND, tb_BTNL;
	reg [15:0] tb_SW;
    reg [15:0] tb_LED;
    reg [7:0] tb_AN, tb_seg;
    reg [2:0] tb_rgb0, tb_rgb1;
	reg [3:0] tb_VGA_R, tb_VGA_G, tb_VGA_B;	
    reg tb_TX_OUT, tb_RX_IN, tb_VGA_HS, tb_VGA_VS;

	riscv_io_system 	#(.DEBOUNCE_BITS(3), .TIMER_CLOCK_REDUCTION(5000))  // shorten debounce time and clock counter time
		riscv_io(
		.AN(tb_AN),.BTNC(tb_BTNC),.BTND(tb_BTND),.BTNL(tb_BTNL),.BTNR(tb_BTNR),.BTNU(tb_BTNU),
		.CLK100MHZ(tb_clk100),.CPU_RESETN(tb_rst),
		.LED(tb_LED),.RGB0(tb_rgb0),.RGB1(tb_rgb1),.SEG(tb_seg),.SW(tb_SW),
		.UART_RXD_OUT(tb_TX_OUT),.UART_TXD_IN(tb_RX_IN),
		.VGA_B(tb_VGA_B),.VGA_G(tb_VGA_G),.VGA_HS(tb_VGA_HS),.VGA_R(tb_VGA_R),.VGA_VS(tb_VGA_VS));
	//defparam riscv_io.DEBOUNCE_BITS = 2;
    //parameter CLK_DIVIDE = 2;
    //parameter BAUD_RATE = 115200;
    //parameter PARITY = 0;
	
	initial begin
	
        //shall print %t with scaled in ns (-9), with 2 precision digits, and would print the " ns" string
		$timeformat(-9, 0, " ns", 20);
		$display("*** Start of Simulation ***");

		#5 tb_rst = 0;  				// Provide initial reset
		tb_BTNC = 0;
		tb_BTNU=0;
		tb_BTNR=0;
		tb_BTND=0;
		tb_BTNL=0;
		tb_SW = 0;
		#5 tb_clk100 = 1;					// Issue first clock (while resetting)
		#5 tb_clk100 = 0; tb_rst = 1; 		// Lower clock and reset to prepare for simulation
	
		forever begin
			#5 tb_clk100 = 1;	#5 tb_clk100 = 0;			
		end

	end  // end initial

	// I/O inputs
	initial begin
	
		// Set I/O inputs to default value (do nothing)
		#10
		tb_BTNC = 0;
		tb_BTNU=0;
		tb_BTNR=0;
		tb_BTND=0;
		tb_BTNL=0;
		tb_SW = 0;
		tb_RX_IN = 1;

		// Check to see if the switches are copied to the LEDs (write to LEDs occured at 2490ns)
		#990
		tb_SW = 32'h000a5a5;
		#2000
		tb_SW = 32'h00000000;
		// Wait until the LEDs are no longer zero (i.e., the update worked)
		wait (tb_LED != 0);
		
		// Load new color into left colored LED
		// Press BTNL 
		#1000
		tb_SW = 16'ha5a;
		#100
		tb_BTNL = 1;
		#5000
		tb_BTNL = 0;
		tb_SW = 16'h0000;
		wait (tb_rgb1 != 0s);
		
		// Load new color into right colored LED
		// Press BTNR
		#1000
		tb_SW = 16'h5a5;
		#100
		tb_BTNR = 1;
		#5000
		tb_BTNR = 0;
		tb_SW = 16'h0000;
		wait (tb_rgb0 != 0);

		// Clear timer
		#1000
		tb_BTNU = 1;
		#5000
		tb_BTNU = 0;
		
		// Load new characrte to the screen (BTND)
		#1000
		tb_SW = 16'h0030;
		#100
		tb_BTND = 1;
		#5000
		tb_BTND = 0;
		tb_SW = 16'h0000;
		// Wait until the start bit comes out
		wait (tb_TX_OUT);

		// Transmit a character to the system (using RX system) - 'Z' or 0x5A (01011010)
		// Baud rate = 115200 so baud period is 8680 ns
		#1000
		tb_RX_IN = 0;  // start bit
		#8680
		tb_RX_IN = 0;  // Bit 0
		#8680
		tb_RX_IN = 1;
		#8680
		tb_RX_IN = 0;
		#8680
		tb_RX_IN = 1;
		#8680
		tb_RX_IN = 1;
		#8680
		tb_RX_IN = 0;
		#8680
		tb_RX_IN = 1;
		#8680
		tb_RX_IN = 0;  // Bit 7
		#8680
		tb_RX_IN = 0;  // Parity
		#8680
		tb_RX_IN = 1;  // Stop bit
		#8680
		tb_RX_IN = 1;  // Stay high

		// Clear the screen by pressing BTNC
		// Load new characrte to the screen (BTND)
		#1000
		tb_SW = 16'h0020;
		#100
		tb_BTNC = 1;
		#5000
		tb_BTNC = 0;
		tb_SW = 16'h0000;

		// Wait until the start bit comes out
		// Check to see if the switches are copied to the LEDs (write to LEDs occured at 2490ns)
		#990
		tb_SW = 16'hffff;
		// Wait until the LEDs are 0xffff (this will happen after execuytiung clear scren)
		wait (tb_LED == 16'hffff);

		$finish;
		

	end

	// Finish Condition
	always@(negedge tb_clk100) begin
		if (tb_LED == 16'h55aa) begin
			$display("*** Finish at time %t ****", $time);
			$finish;
		end
	end
	
	
endmodule