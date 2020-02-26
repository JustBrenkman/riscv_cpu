`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: riscv_pipeline_tb.v
//
//  Author: Mike Wirthlin
//  
//  Version 1.2 (2/14/2020)
//   - Change the text below to reflect the version in the testbench output
//     search for "RISCV PIPELINE TESTBENCH V"
//   
//////////////////////////////////////////////////////////////////////////////////

module riscv_pipeline_tb();

	reg clk, rst;
	wire [31:0] tb_PC, tb_ALUResult, tb_Address, tb_dWriteData, tb_WriteBackData;
	wire tb_MemRead, tb_MemWrite;

	reg [31:0] tb_dReadData;
    reg [31:0] tb_instruction;
	integer i;
	wire [31:0] error_count;
	
	localparam instruction_memory_filename = "pipeline_nop_inst.txt";
	localparam data_memory_filename = "pipeline_nop_data.txt";
	localparam EBREAK_INSTRUCTION = 32'h00100073;
	localparam TEXT_SEGMENT_START_ADDRESSS = 32'h00000000; // 32'h00400000;
	localparam INSTRUCTION_MEMORY_WORDS = 128;
	// Data memory
	localparam DATA_MEMORY_WORDS = 64;
	localparam DATA_SEGMENT_START_ADDRESSS = 32'h00002000;
	localparam DATA_SEGMENT_END_ADDRESSS = DATA_SEGMENT_START_ADDRESSS + DATA_MEMORY_WORDS*4-1;

	riscv_basic_pipeline #(.INITIAL_PC(TEXT_SEGMENT_START_ADDRESSS))  
						riscv(.clk(clk), .rst(rst), .instruction(tb_instruction), .PC(tb_PC), 
							.ALUResult(tb_ALUResult), .dAddress(tb_Address), .dWriteData(tb_dWriteData), .dReadData(tb_dReadData),
							.MemRead(tb_MemRead), .MemWrite(tb_MemWrite), .WriteBackData(tb_WriteBackData) );
							
	riscv_sim_model #(.INITIAL_PC(TEXT_SEGMENT_START_ADDRESSS), .DATA_MEMORY_START_ADDRESSS(DATA_SEGMENT_START_ADDRESSS) ) 
						riscv_model(.tb_clk(clk), .tb_rst(rst), .tb_PC(tb_PC), .tb_Instruction(tb_instruction), .tb_ALUResult(tb_ALUResult),
							.tb_dAddress(tb_Address), .tb_dWriteData(tb_dWriteData), .tb_dReadData(tb_dReadData), 
							.tb_MemRead(tb_MemRead), .tb_MemWrite(tb_MemWrite), .tb_WriteBackData(tb_WriteBackData),
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
	localparam MAX_INSTRUCTIONS = 2000;
	initial begin
		$display("===== RISCV PIPELINE TESTBENCH V1.20 =====");
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

		for(i=0;i<MAX_INSTRUCTIONS && !(tb_instruction === EBREAK_INSTRUCTION) ; i = i+1) begin
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