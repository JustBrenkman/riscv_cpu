`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: riscv_final_tb.v
//
//  Author: Mike Wirthlin
//  
//  Version 1.2 (3/4/2020)
//   - Change the text below to reflect the version in the testbench output
//     search for "Version"
//   
//////////////////////////////////////////////////////////////////////////////////

module riscv_final_tb ();

	parameter instruction_memory_filename = "final_inst.txt";
	parameter data_memory_filename = "final_data.txt";
	parameter TEXT_SEGMENT_START_ADDRESSS = 32'h00000000; // 32'h00400000;
	parameter INSTRUCTION_MEMORY_WORDS = 1024;
	parameter DATA_MEMORY_WORDS = 2048;
	parameter DATA_SEGMENT_START_ADDRESSS = 32'h00002000;
	parameter DATA_SEGMENT_END_ADDRESSS = DATA_SEGMENT_START_ADDRESSS + DATA_MEMORY_WORDS*4-1;
	parameter MAX_INSTRUCTIONS = 1000000; //2000;

	reg clk, rst;
	wire [31:0] tb_PC, tb_ALUResult, tb_Address, tb_dWriteData, tb_WriteBackData;
	wire tb_MemRead, tb_MemWrite;
	wire tb_iMemRead;

	reg [31:0] tb_dReadData;
    reg [31:0] tb_instruction;
	integer i;
	wire [31:0] error_count;
	
	localparam EBREAK_INSTRUCTION = 32'h00100073;
	// Data memory

	riscv_final #(.INITIAL_PC(TEXT_SEGMENT_START_ADDRESSS))
						riscv(.clk(clk), .rst(rst), .instruction(tb_instruction), .iMemRead(tb_iMemRead), .PC(tb_PC),	
							.ALUResult(tb_ALUResult), .dAddress(tb_Address), .dWriteData(tb_dWriteData), .dReadData(tb_dReadData),
							.MemRead(tb_MemRead), .MemWrite(tb_MemWrite), .WriteBackData(tb_WriteBackData) );

	riscv_final_sim_model #(.INITIAL_PC(TEXT_SEGMENT_START_ADDRESSS), 
							.DATA_MEMORY_START_ADDRESSS(DATA_SEGMENT_START_ADDRESSS), 
							.INSTRUCTION_MEMORY_WORDS(INSTRUCTION_MEMORY_WORDS),
							.DATA_MEMORY_WORDS(DATA_MEMORY_WORDS)
							) 
						riscv_model(.tb_clk(clk), .tb_rst(rst), 
						.rtl_PC(tb_PC), .rtl_Instruction(tb_instruction), .rtl_iMemRead(tb_iMemRead),
							.rtl_ALUResult(tb_ALUResult),
							.rtl_dAddress(tb_Address), .rtl_dWriteData(tb_dWriteData), .rtl_dReadData(tb_dReadData), 
							.rtl_MemRead(tb_MemRead), .rtl_MemWrite(tb_MemWrite), .rtl_WriteBackData(tb_WriteBackData),
							.inst_mem_filename(instruction_memory_filename), .data_mem_filename(data_memory_filename),
							.error_count(error_count));

	// Instruction Memory
	reg [31:0] instruction_memory[INSTRUCTION_MEMORY_WORDS-1:0];
	localparam NOP_INSTRUCTION = 32'h00000013; // addi x0, x0, 0
	initial begin
		$readmemh(instruction_memory_filename, instruction_memory);
		if (^instruction_memory[0] === 1'bX) begin
			$display("**** Warning: Testbench failed to load the instruction memory. Make sure the %s file",instruction_memory_filename);
			$display("**** is added to the project.");
			$finish;
		end
		else
			$display("**** Testbench: Loaded instruction memory ****");
	end

	// Instruction memory read (synchronous read). No writes
	// Read every clock cycle (even if we will end up ignoring NOP instructions that are read)
	always@(posedge clk or posedge rst) begin
		if (rst) begin
		  tb_instruction <= NOP_INSTRUCTION;  // Initialize instruction with "NOP"
		end
	    else begin
			// Only read instruction if iMemRead is high
			if (tb_iMemRead)
				tb_instruction <= instruction_memory[(tb_PC-TEXT_SEGMENT_START_ADDRESSS) >> 2];
		end
	end
	

	// Data Memory
	reg [31:0] data_memory[DATA_MEMORY_WORDS-1:0];

	initial begin
		$readmemh(data_memory_filename, data_memory);
		if (^data_memory[0] === 1'bX) begin
			$display("**** Warning: Testbench failed to load the data memory. Make sure the %s file",data_memory_filename);
			$display("**** is added to the project.");
			$finish;
		end
		else
			$display("**** Testbench: Loaded data memory ****");
	end

	//////////////////////////////////////////////////////////////////////////////////
	// Data memory access
	//////////////////////////////////////////////////////////////////////////////////
	wire [31:0] local_dMem_Address;
	wire valid_dMem_Address;
	assign local_dMem_Address = (tb_Address-DATA_SEGMENT_START_ADDRESSS) >> 2;
	assign valid_dMem_Address = (tb_Address >= DATA_SEGMENT_START_ADDRESSS) && (tb_Address < DATA_SEGMENT_END_ADDRESSS);
	always@(posedge clk or posedge rst) begin
	   if (rst)
	       tb_dReadData <= 0; 
	   else
		if (tb_MemRead) begin
			if (valid_dMem_Address)
				tb_dReadData <= data_memory[local_dMem_Address];
			else
				tb_dReadData <= 32'hX;
		end else if (tb_MemWrite) begin
			if (valid_dMem_Address)
				data_memory[local_dMem_Address] <= tb_dWriteData;
			// If invalid just ignore write
		end
	end
	
	
	//////////////////////////////////////////////////////////////////////////////////
	//	Main
	//////////////////////////////////////////////////////////////////////////////////
	initial begin
		$display("===== RISCV FINAL TESTBENCH V 1.2 =====");
		$display(" use run -all");

		//////////////////////////////////
		//	Reset
		//$display("[%0tns]Reset", $time/1000.0);
		//dReadData = 0;
		rst <= 0;
		clk <= 0;
		#10;
		rst <= 1;
		#10;
		clk <= 1;
        #5;
        clk <= 0;
        rst <= 0;
        		
		#10;

		for(i=0;i<MAX_INSTRUCTIONS ; i = i+1) begin
			clk <=1; #5;
			clk <=0; #5;
		end

		if (i == MAX_INSTRUCTIONS) begin
			// Didn't reach EBREAK_INSTRUCTION
			$display("ERROR: Did not reach the EBREAK Instruction");
			if(error_count > 0)
				$display("ERROR: %1d instruction error(s) found!",error_count);
			else
				$display("No Instruction Errors");
		end
		else
			if(error_count > 0)
				$display("ERROR: %1d instruction error(s) found!",error_count);
			else 
				$display("You Passed!");
			
		
		$finish;
	end


endmodule