///////////////////////////////////////////////////////////////////////////////////////////////
//
// riscv_io_system.v
//
// Top-level system with RISCV, I/O, memoriess, and simulation model.
//
// Version 1.0 (3/27/2020)
//
///////////////////////////////////////////////////////////////////////////////////////////////
import typePack::*;

module riscv_io_system (AN,BTNC,BTND,BTNL,BTNR,BTNU,CLK100MHZ,CPU_RESETN,
	LED,RGB0,RGB1,SEG,SW,UART_RXD_OUT,UART_TXD_IN,VGA_B,VGA_G,VGA_HS,VGA_R,VGA_VS);

	// Top-level parameters
	parameter INPUT_CLOCK_RATE = 100000000;
	parameter TEXT_MEMORY_FILENAME = "test_io_inst.txt";
	parameter DATA_MEMORY_FILENAME = "test_io_data.txt";
	parameter INSTRUCTION_BRAMS = 2;
	parameter DATA_BRAMS = 2;
	parameter TEXT_START_ADDRESS = 32'h00000000; 
	parameter DATA_START_ADDRESS = 32'h00002000;
	parameter VGA_START_ADDRESS  = 32'h00008000;
	parameter VGA_ADDR_BITS = 14; // address 16384 bytes
	parameter IO_START_ADDRESS   = 32'h00007f00;
	parameter IO_SIZE_BYTES = 256;
	parameter DEBOUNCE_BITS = 19;   // 50 MHz clock (20 ns). Target about 10 ms. 10 ms / 20 ns. Need about 19 bits
	parameter CLK_DIVIDE = 2;
	parameter BAUD_RATE = 115200;
	parameter PARITY = 1'd0;
	parameter TIMER_CLOCK_REDUCTION = 1;  // used to reduce number of clocks per tick for simulation speed
	parameter [11:0] DEFAULT_FOREGROUND_COLOR = 12'b111111110000;  // yellow
	parameter [11:0] DEFAULT_BACKGROUND_COLOR = ~DEFAULT_FOREGROUND_COLOR; // blue
	// I/O base offests
	parameter [7:0] LED_BASE_OFFSET 	   = 8'h00;
	parameter [7:0] SWITCH_BASE_OFFSET     = 8'h04;
	parameter [7:0] TX_BASE_OFFSET         = 8'h08;
	parameter [7:0] RX_DATA_BASE_OFFSET    = 8'h10;
	parameter [7:0] RX_STATUS_BASE_OFFSET  = 8'h14;
	parameter [7:0] SEVEN_SEG_BASE_OFFSET  = 8'h18;
	parameter [7:0] TRI_LED_0_BASE_OFFSET  = 8'h1C; 
	parameter [7:0] TRI_LED_1_BASE_OFFSET  = 8'h20;
	parameter [7:0] BUTTON_BASE_OFFSET     = 8'h24;
	parameter [7:0] TIMER_BASE_OFFSET      = 8'h30;
	parameter [7:0] CHAR_COLOR_BASE_OFFSET = 8'h34;

	// Top-level ports
	output [7:0]AN;
	input BTNC;
	input BTND;
	input BTNL;
	input BTNR;
	input BTNU;
	input CLK100MHZ;
	input CPU_RESETN;
	output [15:0]LED;
	output [2:0]RGB0;
	output [2:0]RGB1;
	output [7:0]SEG;  //SEG[7]=DP
	input [15:0]SW;
	output UART_RXD_OUT;
	input UART_TXD_IN;
	output [3:0]VGA_B;
	output [3:0]VGA_G;
	output VGA_HS;
	output [3:0]VGA_R;
	output VGA_VS;

	
	localparam MCM_CLOCK_RATE =  INPUT_CLOCK_RATE / CLK_DIVIDE;
	localparam TIMER_CLOCKS_PER_MS = MCM_CLOCK_RATE / (1000 * TIMER_CLOCK_REDUCTION);


	////////////////////////////////////////////////////////////////////
	// Reset generation. Operates directly 100 MHz clock.
	////////////////////////////////////////////////////////////////////

	// Right shifting shift register (least signicant bit is ~reset)
	reg [7:0] reset_sr = 0;
	always@(posedge CLK100MHZ)
		reset_sr <= {1'b1,reset_sr[7:1]};
    wire dcm_reset;
	assign dcm_reset = ~reset_sr[0];
    
    reg rst = 1;
    reg cpu_reset_d, cpu_reset_dd = 0;
	wire mcm_locked;
	always@(posedge CLK100MHZ) begin
	   cpu_reset_d <= ~CPU_RESETN;
	   cpu_reset_dd <= cpu_reset_d;
	   if (~mcm_locked)
	       rst <= 1;
	   else
	       rst <= cpu_reset_dd;
	end
    
	
	////////////////////////////////////////////////////////////////////
	// Clock Generation (divide by 2)
	////////////////////////////////////////////////////////////////////
	
	wire mcm_pwrdwn = 0;
	wire clk0,clk,clkfb,clkfb_buf;
	localparam CLKFBOUT_MULT_F = 8.000;
	localparam CLKOUT0_DIVIDE_F = CLKFBOUT_MULT_F * CLK_DIVIDE;
	MMCME2_BASE mmcm(.RST(dcm_reset),.CLKIN1(CLK100MHZ),.LOCKED(mcm_locked),.PWRDWN(mcm_pwrdwn),.CLKOUT0(clk0),.CLKFBOUT(clkfb),.CLKFBIN(clkfb_buf),
		// unconnected
		.CLKFBOUTB(),.CLKOUT0B(),.CLKOUT1(),.CLKOUT1B(),.CLKOUT2(),.CLKOUT2B(),.CLKOUT3(),.CLKOUT3B(),.CLKOUT4(),.CLKOUT5(),.CLKOUT6());
	defparam mmcm.CLKIN1_PERIOD = 10.0;
	defparam mmcm.CLKFBOUT_MULT_F = CLKFBOUT_MULT_F;
	defparam mmcm.CLKOUT0_DIVIDE_F = CLKOUT0_DIVIDE_F;
	BUFG bufg1(.I(clk0),.O(clk));
	BUFG bufg2(.I(clkfb),.O(clkfb_buf));


	////////////////////////////////////////////////////////////////////
	// Synchronizers for buttons and switches
	////////////////////////////////////////////////////////////////////
	reg [4:0] btn_d, btn_dd=0;
	reg [15:0] sw_d, sw_dd=0;
	always@(posedge clk) begin
		btn_d <= { BTNU,BTNR,BTND,BTNL,BTNC};
		btn_dd <= btn_d;
		sw_d <= SW; 
		sw_dd <= sw_d;
	end

	////////////////////////////////////////////////////////////////////
	// debouncers for buttons and switches
	////////////////////////////////////////////////////////////////////
	reg [DEBOUNCE_BITS-1:0] debounce_counter=0;
	reg [4:0] btn_deb;
	reg [15:0] sw_deb;
	always@(posedge clk) begin
		debounce_counter <= debounce_counter + 1;
		if(debounce_counter == 0) begin
			btn_deb <= btn_dd;
			sw_deb <= sw_dd;
		end
	end

	////////////////////////////////////////////////////////////////////
	// RISC-V
	////////////////////////////////////////////////////////////////////
	wire iMemRead, MemRead, MemWrite;
	// Use the don't touch attribute so the signals don't change names so that the
	// simulatin model can be added after synthesis.
	(* dont_touch  = "yes" *) wire [31:0] dAddress, dReadData, dWriteData, ALUResult,WriteBackData;
	wire [31:0] PC;
	reg [31:0] instruction;

	////////////////////////////////////////////////////////////////////
	//  Do not edit the following attribute. It will be uncommented by
	//  a script during the build process. This attribute is not used
	//  during regular debug and download but then it is added when
	//  synthesizing so that the riscV is not included.
	//
	// (* black_box *)
	//
	////////////////////////////////////////////////////////////////////
    riscv_final  #(.INITIAL_PC(TEXT_START_ADDRESS)) riscv (
		.clk(clk),
		.rst(rst),
		.iMemRead(iMemRead),
		.dAddress(dAddress),
		.dReadData(dReadData),
		.dWriteData(dWriteData), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite),
		.PC(PC),
		.instruction(instruction),
		.ALUResult(ALUResult),
		.WriteBackData(WriteBackData) ); 

	////////////////////////////////////////////////////////////////////
	// Memories
	////////////////////////////////////////////////////////////////////
	localparam INSTRUCTION_WORDS = INSTRUCTION_BRAMS*1024;
	localparam DATA_WORDS = DATA_BRAMS*1024;
	localparam INSTRUCTION_ADDR_BITS = 11 + INSTRUCTION_BRAMS; // 1 BRAM = 2^12 (11:0)
	localparam DATA_ADDR_BITS = 11 + DATA_BRAMS;
	
	// Instruction memory (use property to make sure it is mapped to a BRAM)
    (* rom_style = "block" *) reg [31:0] inst_memory [0:INSTRUCTION_WORDS-1];
	// Data memory
    reg [31:0] data_memory [0:DATA_WORDS-1];
    wire io_space_mem, data_space_mem;
	wire vga_address_mem;
	reg io_space_wb, data_space_wb, valid_upper_vga_address_wb;
	reg [31:0] io_memory_read;
	reg [31:0] data_memory_read_wb;

	// Initialize memories
    initial
    begin
        $readmemh(TEXT_MEMORY_FILENAME,inst_memory);
        $readmemh(DATA_MEMORY_FILENAME,data_memory);
		// synthesis translate_off
		if (^inst_memory[0] === 1'bX)
			$display("**** Top-Level I/O System: Error - Instruction memory file '%s' failed to load ****",TEXT_MEMORY_FILENAME);
		else
			$display("**** Top-Level I/O System: Instruction memory file '%s' loaded ****",TEXT_MEMORY_FILENAME);
		if (^data_memory[0] === 1'bX)
			$display("**** Top-Level I/O System: Error - Simulation model instruction memory %s failed to load****",DATA_MEMORY_FILENAME);
		else
			$display("**** Top-Level I/O System: Data memory file '%s' loaded ****",DATA_MEMORY_FILENAME);
		// synthesis translate_on
    end

	// Instruction Memory Read (synchronous)
	wire valid_upper_text_address = 
		(PC[31:INSTRUCTION_ADDR_BITS] == TEXT_START_ADDRESS[31:INSTRUCTION_ADDR_BITS]);

    always @(posedge clk)
    begin
		// Force a reset on the synchronous output register. This will act sort of like act
		// "NOP" in the pipeline for the first instruction.
		if (rst)   
			instruction <= 0;// only supports reset to zero, not a non-zero value
        else if(iMemRead == 1 && valid_upper_text_address)
            instruction <= inst_memory[PC[INSTRUCTION_ADDR_BITS-1:2]];            
    end

	////////////////////////////////////////////////////////////////////
	// Data Read Mux
	////////////////////////////////////////////////////////////////////
	wire [31:0] char_value_read;


	// Data address
	assign data_space_mem = 
		(dAddress[31:DATA_ADDR_BITS] == DATA_START_ADDRESS[31:DATA_ADDR_BITS]);
	//assign data_space_mem = (dAddress[31:16] == 16'h1000);
	
	// I/O decoding
	localparam IO_ADDR_BITS = $clog2(IO_SIZE_BYTES);	
	//assign io_space_mem = (dAddress[31:16] == 16'h8000);
	assign io_space_mem = (dAddress[31:IO_ADDR_BITS] == IO_START_ADDRESS[31:IO_ADDR_BITS]);


	// VGA Decoding
	//localparam VGA_ADDR_BITS = 14; // address 16384 bytes
	assign vga_address_mem =
		(dAddress[31:VGA_ADDR_BITS] == VGA_START_ADDRESS[31:VGA_ADDR_BITS]);
	wire [VGA_ADDR_BITS-1:0] vga_char_address = dAddress[VGA_ADDR_BITS-1:0];

	// Pipeline registers for decoding logic
	always@(posedge clk) begin
		data_space_wb = data_space_mem;
		io_space_wb = io_space_mem;
		valid_upper_vga_address_wb = vga_address_mem;
	end
	
	// Data Memory Read (synchronous)
    always @(posedge clk)
    begin
        if(MemWrite == 1 && data_space_mem)
            data_memory[dAddress[DATA_ADDR_BITS-1:2]] <= dWriteData;
        data_memory_read_wb <= data_memory[dAddress[DATA_ADDR_BITS-1:2]];   
    end
	
	// Mux for reading
	assign dReadData = data_space_wb ? data_memory_read_wb :
					   io_space_wb ? io_memory_read :
					   valid_upper_vga_address_wb ? char_value_read :
					   0;

	// I/O System
    io_system  #(
	// Top-level parameters
	.INPUT_CLOCK_RATE(MCM_CLOCK_RATE),
	.BAUD_RATE(BAUD_RATE),
	.PARITY(PARITY),
	.TIMER_CLOCK_REDUCTION(TIMER_CLOCK_REDUCTION),
	.DEFAULT_FOREGROUND_COLOR(DEFAULT_FOREGROUND_COLOR),
	.DEFAULT_BACKGROUND_COLOR(DEFAULT_BACKGROUND_COLOR),
	.LED_BASE_OFFSET(LED_BASE_OFFSET),
	.SWITCH_BASE_OFFSET(SWITCH_BASE_OFFSET),
	.TX_BASE_OFFSET(TX_BASE_OFFSET),
	.RX_DATA_BASE_OFFSET(RX_DATA_BASE_OFFSET),
	.RX_STATUS_BASE_OFFSET(RX_STATUS_BASE_OFFSET),
	.SEVEN_SEG_BASE_OFFSET(SEVEN_SEG_BASE_OFFSET),
	.TRI_LED_0_BASE_OFFSET(TRI_LED_0_BASE_OFFSET),
	.TRI_LED_1_BASE_OFFSET(TRI_LED_1_BASE_OFFSET),
	.BUTTON_BASE_OFFSET(BUTTON_BASE_OFFSET),
	.TIMER_BASE_OFFSET(TIMER_BASE_OFFSET),
	.CHAR_COLOR_BASE_OFFSET(CHAR_COLOR_BASE_OFFSET),
	.VGA_ADDR_BITS(VGA_ADDR_BITS)
	) 
		io (
		.clk(clk),
		.rst(rst),
		.dAddress(dAddress), 
		.dWriteData(dWriteData), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.io_memory_read(io_memory_read), 
		.char_value_read(char_value_read), 
		.io_space_mem(io_space_mem), 
		.vga_address_mem(vga_address_mem),
		.btn_deb(btn_deb), 
		.sw_deb(sw_deb),
		.AN(AN),.LED(LED),.RGB0(RGB0),.RGB1(RGB1),.SEG(SEG),.UART_RXD_OUT(UART_RXD_OUT),.UART_TXD_IN(UART_TXD_IN),
		.VGA_B(VGA_B),.VGA_G(VGA_G),.VGA_HS(VGA_HS),.VGA_R(VGA_R),.VGA_VS(VGA_VS)
		);
		

	


	// BEGIN_SIM_MODEL
	// synthesis translate_off

	////////////////////////////////////////////////////////////////////
	// Simulation
	// 
	// This section begins the non-synthesizable simulation code for this
	// I/O system. This code is used to allow testbench simulation of the system.
	// This simulation code will be extracted and inserted into the flattened
	// synthesized version of this I/O system so students can simulate their
	// system and take advantage of these testbench debugging resources.
	// 
	// Note that the simulation model will be inserted into the post synthesized
	// design and many signals will be optimized away/renamed. The only signals
	// that should be used are top-level ports or signals that go into the RISC-V
	// processor.
	//
	// This simulation code should be written using conventional verilog and not
	// any SystemVerilog.
	//
	////////////////////////////////////////////////////////////////////

	// Don't print anything until the reset is over.
	reg reset_gone_high = 0;
	reg reset_gone_low = 0;
	always@(negedge CLK100MHZ) 
	begin
		if (rst && !reset_gone_high) begin
			reset_gone_high = 1;
			$display("Reset issued at time %0t",$time );
		end
		if (~rst && reset_gone_high) begin
			reset_gone_low = 1;
			$display("Reset released at time %0t",$time );
			reset_gone_high = 0;
		end
	end

	// Address in wb stage (pipeline this so we know what should be written back)
	reg [31:0] dAddress_wb;
	reg MemRead_wb;
	always@(posedge clk) begin
		dAddress_wb <= dAddress;
		MemRead_wb <= MemRead;
	end
	
	// I/O Write Messages
	always@(negedge clk) 
	begin
		if (dAddress[31:IO_ADDR_BITS] == IO_START_ADDRESS[31:IO_ADDR_BITS]) begin
			// I/O Writes
			if (MemWrite) begin
				case (dAddress[5:2]) 
					LED_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to LEDs",$time, dWriteData);
					//SWITCH_BASE_OFFSET - No writing to switches
					TX_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to TX",$time, dWriteData);
					//RX_DATA_BASE_OFFSET
					//RX_STATUS_BASE_OFFSET
					SEVEN_SEG_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to Seven Segment Display",$time, dWriteData);
					TRI_LED_0_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to Tri-Color LED 0",$time, dWriteData);
					TRI_LED_1_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to Tri-Color LED 1",$time, dWriteData);
					//BUTTON_BASE_OFFSET
					TIMER_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to Timer",$time, dWriteData);
					CHAR_COLOR_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h to Character Default Color",$time, dWriteData);
					default : $display("%0t:Writing 0x%h to I/O Address 0x%h",$time, dWriteData, dAddress);
				endcase
			end
		end
	end

	// I/O Read Messages
	always@(negedge clk) 
	begin
		if (dAddress_wb[31:IO_ADDR_BITS] == IO_START_ADDRESS[31:IO_ADDR_BITS]) begin
			// I/O Writes
			if (MemRead_wb) begin
				case (dAddress_wb[5:2]) 
					LED_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from LEDs",$time, dReadData);
					SWITCH_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Switches",$time, dReadData);
					TX_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from TX",$time, dReadData);
					RX_DATA_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from RX Data",$time, dReadData);
					RX_STATUS_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from RX status",$time, dReadData);
					SEVEN_SEG_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Seven Segment Display",$time, dReadData);
					TRI_LED_0_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Tri-Color LED 0",$time, dReadData);
					TRI_LED_1_BASE_OFFSET[5:2] : $display("%0t:Writing 0x%h from Tri-Color LED 1",$time, dReadData);
					BUTTON_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Buttons",$time, dReadData);
					TIMER_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Timer",$time, dReadData);
					CHAR_COLOR_BASE_OFFSET[5:2] : $display("%0t:Reading 0x%h from Character Default Color",$time, dReadData);
					default : $display("%0t:Reading 0x%h from I/O Address 0x%h",$time, dReadData, dAddress_wb);
				endcase
			end
		end
	end
			
	always@(negedge clk) 
	begin
		// VGA Writes
		if (dAddress[31:VGA_ADDR_BITS] == VGA_START_ADDRESS[31:VGA_ADDR_BITS] && MemWrite)
			$display("%0t:Writing 0x%h to VGA at address 0x%h",$time, dWriteData, dAddress);
		// VGA Reads
		if (dAddress_wb[31:VGA_ADDR_BITS] == VGA_START_ADDRESS[31:VGA_ADDR_BITS] && MemRead_wb)
			$display("%0t:Reading 0x%h from VGA at address 0x%h",$time, dReadData, dAddress_wb);
					
	end
	

	// Simulation model
	riscv_download_sim_model #(.INITIAL_PC(TEXT_START_ADDRESS), 
							.DATA_MEMORY_START_ADDRESSS(DATA_START_ADDRESS), 
							.INSTRUCTION_MEMORY_WORDS(2048),
							.DATA_MEMORY_WORDS(2048),
							.PRINT_INSTRUCTIONS(0)
							) 
						riscv_model(
							.tb_clk(clk), 
							.tb_rst(rst), 
							.rtl_PC(PC), 
							.rtl_Instruction(instruction), 
							.rtl_iMemRead(iMemRead),
							.rtl_ALUResult(ALUResult),
							.rtl_dAddress(dAddress), 
							.rtl_dWriteData(dWriteData), 
							.rtl_dReadData(dReadData), 
							.rtl_MemRead(MemRead), 
							.rtl_MemWrite(MemWrite), 
							.rtl_WriteBackData(WriteBackData),
							.inst_mem_filename(TEXT_MEMORY_FILENAME), 
							.data_mem_filename(DATA_MEMORY_FILENAME)
							);


	// synthesis translate_on	
	// END_SIM_MODEL

endmodule