`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: tb_paint.v
//
//  Author: Mike Wirthlin
//  
//  Version 1.0 (3/31/20)
//
//   
//////////////////////////////////////////////////////////////////////////////////

module tb_paint();

	reg tb_clk100, tb_rst;
	reg tb_BTNC, tb_BTNU, tb_BTNR, tb_BTND, tb_BTNL;
	reg [15:0] tb_SW;
    reg [15:0] tb_LED;
    reg [7:0] tb_AN, tb_seg;
    reg [2:0] tb_rgb0, tb_rgb1;
	reg [3:0] tb_VGA_R, tb_VGA_G, tb_VGA_B;	
    reg tb_TX_OUT, tb_RX_IN, tb_VGA_HS, tb_VGA_VS;

	parameter TEXT_MEMORY_FILENAME = "paint_inst.txt";
	parameter DATA_MEMORY_FILENAME = "paint_data.txt";

	riscv_io_system 	#(.DEBOUNCE_BITS(3), .TIMER_CLOCK_REDUCTION(5000), // shorten debounce time and clock counter time
							.TEXT_MEMORY_FILENAME(TEXT_MEMORY_FILENAME), .DATA_MEMORY_FILENAME(DATA_MEMORY_FILENAME))
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

		//
		$display("Waiting for last write to VGA for clear screen");
		#600000   // ends at 574320
		//wait();

		// Press the right button (move cursor right)
		$display("Pressing BNTR (move cursor right)");
		tb_BTNR = 1;
		#2000
		tb_BTNR = 0;
		#4000
		
		// Press the right button (move cursor right)
		$display("Pressing BNTR (move cursor right)");
		tb_BTNR = 1;
		#2000
		tb_BTNR = 0;
		#4000
		
		// Press the down button (move cursor down)
		$display("Pressing BNTD (move cursor down)");
		tb_BTND = 1;
		#2000
		tb_BTND = 0;
		#4000
		
		// Press the down button (move cursor down)
		$display("Pressing BNTD (move cursor down)");
		tb_BTND = 1;
		#2000
		tb_BTND = 0;
		#4000

		// Set the switches to 0xff0 (yellow)
		$display("Setting switches to 0xff0 (yellow)");
		tb_SW = 16'h0ff0;
		#1000
		// Press btnc (draw character)
		// Address = 0x8000 + 0x2 << 2 + 0x2 << 9 = 0x8408
		$display("Pressing BNTC (draw space character at 2,2 or 0x8408)");
		tb_BTNC = 1;
		#2000
		tb_BTNC = 0;
		#4000

		// Press the left button (move cursor left)
		$display("Pressing BNTL (move cursor left)");
		tb_BTNL = 1;
		#2000
		tb_BTNL = 0;
		#4000
				
		// Press the up button (move cursor up)
		$display("Pressing BNTU (move cursor up)");
		tb_BTNU = 1;
		#2000
		tb_BTNU = 0;
		#4000
		
		// Set the switches to 0xf0f (purple)
		$display("Setting switches to 0xf0f (purple)");
		tb_SW = 16'h0f0f;
		#1000
		// Press btnc (draw character)
		// Address = 0x8000 + 0x1 << 2 + 0x1 << 9 = 0x8204
		$display("Pressing BNTC (draw space character at 1,1 or )");
		tb_BTNC = 1;
		#2000
		tb_BTNC = 0;
		#4000
		
		
		#20000

		$finish;
		

	end
	
endmodule