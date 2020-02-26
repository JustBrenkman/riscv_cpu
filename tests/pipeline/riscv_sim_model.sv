`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: riscv_pipeline_tb.v
//
//  Author: Mike Wirthlin
//  
//  Version 1.2 (1/29/2020)
//
//   
//////////////////////////////////////////////////////////////////////////////////

module riscv_sim_model #(parameter INITIAL_PC = 32'h00400000, DATA_MEMORY_START_ADDRESSS = 32'h10010000) 
	(tb_clk, tb_rst, tb_PC, tb_Instruction, tb_ALUResult, tb_dAddress, tb_dWriteData, 
	tb_dReadData, tb_MemRead, tb_MemWrite, tb_WriteBackData, inst_mem_filename, data_mem_filename, error_count);

	input tb_clk, tb_rst;
	input [31:0] tb_PC, tb_Instruction;
	input [31:0] tb_ALUResult;
	input [31:0] tb_dAddress;
	input [31:0] tb_dWriteData;
	input [31:0] tb_dReadData;
	input [31:0] tb_WriteBackData;
	input tb_MemRead, tb_MemWrite;
	input string inst_mem_filename, data_mem_filename;
	output [31:0] error_count;
	//input [31:0] pc_halt_address;
		
	// Internal shadow state
	logic [31:0] int_reg [31:0];
	typePack::instruction_t instruction_if, instruction_id, instruction_ex, instruction_mem, instruction_wb;
	logic [31:0] instruction;
	logic [31:0] if_PC, id_PC, ex_PC;
	logic [31:0] ex_read1, ex_read2, ex_operand2, ex_immediate, ex_s_immediate;
	logic [31:0] ex_branch_target, ex_alu_result;
	logic [31:0] mem_dAddress, mem_dWriteData, mem_branch_target, mem_alu_result;
	logic mem_branch_taken;
	logic [31:0] wb_writedata, wb_dReadData, wb_alu_result;
	logic wb_RegWrite;
	logic [31:0] pc_id, pc_ex, pc_mem, pc_wb;
	logic [31:0] tb_instruction_ex ,tb_instruction_mem, tb_instruction_wb;	
	logic mem_MemRead, mem_MemWrite;
	reg [31:0] errors=0;
	
	assign error_count = errors;
	
	localparam sim_model_version = "Version 1.2";

	function string dec_inst(input typePack::instruction_t i);
		case(i.itype.opcode)
			typePack::L: dec_inst = $sformatf("lw x%1d,0x%1h(x%1d)", i.itype.rd, {{20{i.itype.imm[11]}},i.itype.imm}, i.itype.rs1);
			typePack::S: dec_inst = $sformatf("sw x%1d,0x%1h(x%1d)", i.stype.rs2, {{20{i.stype.imm11_5[11]}}, i.stype.imm11_5, i.stype.imm4_0}, i.itype.rs1);
			typePack::BRANCH: dec_inst = $sformatf("beq x%1d,x%1d,0x%1h", i.btype.rs1, i.btype.rs2, 
				{{20{i.btype.imm12}},i.btype.imm12,i.btype.imm11,i.btype.imm10_5,i.btype.imm4_1,1'b0});
		typePack::OP: 
			unique case(i.rtype.funct3)
				typePack::OR : dec_inst = $sformatf("or x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
				typePack::AND : dec_inst = $sformatf("and x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
				typePack::XOR : dec_inst = $sformatf("xor x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
				typePack::SLT :dec_inst = $sformatf("slt x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
				typePack::ADD :
					if (i.rtype.funct7[5] == 1) dec_inst = $sformatf("sub x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
					else dec_inst = $sformatf("add x%1d,x%1d,x%1d", i.rtype.rd, i.rtype.rs1, i.rtype.rs2);
			endcase
		typePack::IMM: 
			unique case(i.itype.funct3)
				typePack::OR : dec_inst = $sformatf("ori x%1d,x%1d,0x%1h", i.itype.rd, i.itype.rs1,{{20{i.itype.imm[11]}},i.itype.imm});
				typePack::AND : dec_inst = $sformatf("andi x%1d,x%1d,0x%1h", i.itype.rd, i.itype.rs1,{{20{i.itype.imm[11]}},i.itype.imm});
				typePack::XOR : dec_inst = $sformatf("xori x%1d,x%1d,0x%1h", i.itype.rd, i.itype.rs1,{{20{i.itype.imm[11]}},i.itype.imm});
				typePack::SLT : dec_inst = $sformatf("slti x%1d,x%1d,0x%1h", i.itype.rd, i.itype.rs1,{{20{i.itype.imm[11]}},i.itype.imm});
				typePack::ADD : dec_inst = $sformatf("addi x%1d,x%1d,0x%1h", i.itype.rd, i.itype.rs1,{{20{i.itype.imm[11]}},i.itype.imm});
				endcase
			default dec_inst = "N/A";
		endcase
	endfunction

	function string stage_state(input [31:0] inst);
		automatic typePack::instruction_t i = inst;
		stage_state = $sformatf("%s",dec_inst(i));
	endfunction
	
	/* This function will copy each character of a string into a single array of bits
	   for use by readmemh for the Vivado simulator. The format of bit array must be as
	   follows:
	   - The last character of the string  must be located at [7:0] of the 
	   - The second to last character of the string must be located at [15:8] and so on
	   - The first character of the string must be located at [l*8-1:(l-1)*8]
	      where l is the number of characters in the array
	   - The location at [(l+1)*8-1:l*8] must be 0 (null terminated string)

	   logic [31: 0] a_vect;
logic [0 :31] b_vect;
logic [63: 0] dword;
integer sel;
a_vect[ 0 +: 8] // == a_vect[ 7 : 0]
a_vect[15 -: 8] // == a_vect[15 : 8]
b_vect[ 0 +: 8] // == b_vect[0 : 7]
b_vect[15 -: 8] // == b_vect[8 :15]
dword[8*sel +: 8] // variable part-select with fixed width

https://forums.xilinx.com/t5/Simulation-and-Verification/readmemh-doesn-t-support-string-as-the-filename/td-p/833603
	*/
	function reg [256*8-1:0] copy_string(string str);
		automatic int i;
		//$display("String:%s len=%1d",str,str.len());
		for (i=0;i<str.len();i=i+1) begin
			// Copy characters from the end of the string to the start
			copy_string[(i+1)*8-1 -: 8] = str.getc(str.len()-i-1);
			//$write("%c-0x%h-%1d ",str.getc(str.len()-i-1),copy_string[(i+1)*8-1 -: 8],i);
		end
		//$display();
		//$write("%d ",i);
		copy_string[(i+1)*8-1 -: 8] = 0;
		//$write(" %c-0x%h-%1d ",str.getc(i),copy_string[(i+1)*8-1 -: 8],i);
		//$display();
	endfunction
	
	function  print_string(reg [256*8-1:0] str);
		automatic int i;
		for (i=0;i<256;i=i+1) begin
			$write("0x%h-%1d ",str[(i+1)*8-1-:8],i);
			if (i%16 == 0)
				$display();
		end
		$display();
	endfunction

	initial begin
		$timeformat(-9, 0, " ns", 20);
		$display("===== RISC-V Pipeline Simulation Model %s =====", sim_model_version);
	end
	
	//////////////////////////////////////////////////////////////////////////////////
	//	Exit condition
	//////////////////////////////////////////////////////////////////////////////////
	/*
	always@(negedge tb_clk) begin
		if (tb_instruction_wb == EBREAK_INSTRUCTION) begin
			$display($sformatf("*** Finished by reaching EBREAK at time %0t ***",$time));
			if (errors)
				$display("*** Failed test with %1d errors ***",errors);
			else
				$display("*** Passed with no errors ***");
			$finish;
		end
	end
	*/
		
	// checking
	always@(negedge tb_clk) begin
		
		if ($time != 0) begin
			$write("%0t:",$time);
			if (errors > 0)
				$display(" (%0d errors)",errors);
			else
				$display("No Errors");
			
			$write("  IF: PC=0x%8h",tb_PC);
			if (if_PC != tb_PC) begin
				$display(" ** ERR** expecting PC=%h", if_PC);
				errors = errors + 1;
			end
			else $display();
				
			$write("  ID: PC=0x%8h I=0x%8h [%s]",pc_id,tb_Instruction, stage_state(tb_Instruction));
			if (tb_Instruction != instruction_if) begin
				$display(" ** ERR** expecting Instruction=%h", instruction_id);
				errors = errors + 1;
			end
			else $display();
			
			$write("  EX: PC=0x%8h I=0x%8h [%s] alu result=0x%h ",pc_ex,tb_instruction_ex,stage_state(tb_instruction_ex),tb_ALUResult);
			if (tb_ALUResult != ex_alu_result) begin
				$display(" ** ERR** expecting alu result=%h", ex_alu_result);
				errors = errors + 1;
			end
			else $display();

			$write("  MEM:PC=0x%8h I=0x%8h [%s] ",pc_mem,tb_instruction_mem, stage_state(tb_instruction_mem));
			if (tb_MemRead == 1'b0 && tb_MemWrite == 1'b0)
				if (mem_MemRead) begin 
					$write("*** ERR: No memory read ");
					errors = errors + 1;
				end else if (mem_MemWrite) begin
					$write("*** ERR: No memory write ");
					errors = errors + 1;
				end else $write("No memory read/write ");
			else if (tb_MemRead == 1'b1 && tb_MemWrite == 1'b0)
				if (!mem_MemRead) begin
					$write("*** ERR: No Memory read ***");
					errors = errors + 1;
				end else if (mem_MemWrite) begin
					$write("*** ERR: Need Memory Write ***");
					errors = errors + 1;
				end else if (tb_dAddress != mem_dAddress) begin
					$write("*** Err: Memory Read to address 0x%1h but expecting address 0x%1h",tb_dAddress,mem_dAddress);
					errors = errors + 1;
				end else $write("Memory Read from address 0x%1h ",tb_dAddress);  // Note: data not ready until next cycle
			else if (tb_MemRead == 1'b0 && tb_MemWrite == 1'b1)
				if (!mem_MemWrite) begin
					$write("*** ERR: No Memory write ***");
					errors = errors + 1;
				end else if (mem_MemRead) begin
					$write("*** ERR: Need Memory Read ***");
					errors = errors + 1;
				end else if (tb_dAddress != mem_dAddress) begin
					$write("*** Err: Memory Write to address 0x%1h but expecting address 0x%1h",tb_dAddress,mem_dAddress);
					errors = errors + 1;
				end else if (tb_dWriteData != mem_dWriteData) begin
					$write("*** Err: Memory Write value 0x%1h but expecting value 0x%1h",tb_dWriteData,mem_dWriteData);
					errors = errors + 1;
				end else $write("Memory Write 0x%1h to address 0x%1h ",tb_dWriteData,tb_dAddress);
			else begin
				$write("*** ERROR: simultaneous read and write ");
				errors = errors + 1;				
			end
			$display();

			$write("  WB: PC=0x%8h I=0x%8h [%s] ",pc_wb,tb_instruction_wb,stage_state(tb_instruction_wb));
			$write("WriteBackData=0x%h ",tb_WriteBackData);
			if (!(tb_WriteBackData === wb_writedata)) begin
				$display(" ** ERR** expecting to write back data=%h", wb_writedata);
				errors = errors + 1;
			end else if (^tb_WriteBackData === 1'bX || ^wb_writedata === 1'bX) begin
				$display(" ** ERR** Write back data is undefined=%h", wb_writedata);
				errors = errors + 1;
			end else $display();
		end
	end

	localparam NOP_INSTRUCTION = 32'h00000013; // addi x0, x0, 0
	
	//////////////////////////////////////////////////////////////////////////////////
	// pipeline
	//////////////////////////////////////////////////////////////////////////////////
	always@(posedge tb_clk) begin
		if (tb_rst) begin
			//instruction_if <= NOP_INSTRUCTION;
			//instruction_id <= NOP_INSTRUCTION;
			instruction_ex <= NOP_INSTRUCTION;
			instruction_mem <= NOP_INSTRUCTION;
			instruction_wb <= NOP_INSTRUCTION;
			pc_id <= 32'bx;
			pc_ex <= 32'bx;
			pc_mem <= 32'bx;
			pc_wb <= 32'bx;
			tb_instruction_ex <= NOP_INSTRUCTION;
			tb_instruction_mem <= NOP_INSTRUCTION;
			tb_instruction_wb <= NOP_INSTRUCTION;
		end
		else begin
			//instruction_id <= instruction_if;
			instruction_ex <= instruction_id;
			instruction_mem <= instruction_ex;
			instruction_wb <= instruction_mem;
			pc_id <= tb_PC;
			pc_ex <= pc_id;
			pc_mem <= pc_ex;
			pc_wb <= pc_mem;
			tb_instruction_ex <= tb_Instruction;
			tb_instruction_mem <= tb_instruction_ex;
			tb_instruction_wb <= tb_instruction_mem;
		end
	end

	// IF
	always@(posedge tb_clk or posedge tb_rst) begin
		if (tb_rst)
			if_PC <= INITIAL_PC;
		else begin
			if (mem_branch_taken)
				if_PC <= mem_branch_target;			
			else
				if_PC <= if_PC + 4;			
			id_PC <= if_PC;
		end
	end
	
	// Instruction Memory
	localparam INSTRUCTION_MEMORY_WORDS = 1024;  // 4x1024 - 4096 bytes
	logic [31:0] instruction_memory[INSTRUCTION_MEMORY_WORDS-1:0];
	reg [256*8-1:0] i_filename;
	initial begin
		i_filename = copy_string(inst_mem_filename);
		//i_filename = "pipeline_nop.txt";   print_string(i_filename);
		//$readmemh("pipeline_nop.txt", instruction_memory);
		$readmemh(i_filename, instruction_memory);
		if (^instruction_memory[0] === 1'bX) begin
			$display($sformatf("**** Error: RISC-V Simulation model instruction memory '%s' failed to load****",inst_mem_filename));
		end
		else
			$display($sformatf("**** RISC_V Simulation model: Loaded instruction memory '%s' ****",inst_mem_filename));
	end

	// Instruction memory read (synchronous read). No writes
	// Read every clock cycle (even if we will end up ignoring NOP instructions that are read)
	always@(posedge tb_clk) begin
		if (tb_rst) begin
		  instruction <= NOP_INSTRUCTION;  // Initialize instruction with "NOP"
		end
	    else begin
		  instruction <= instruction_memory[(if_PC - INITIAL_PC) >> 2];
		end
	end
	assign instruction_id = instruction;
	
	// ID
	always@(posedge tb_clk) begin
		if (tb_rst) begin
			// clear contents of registers
			for (int i = 0; i < 32; i=i+1)
				int_reg[i] = 0;
			ex_read1 <= 0;
			ex_read2 <= 0;
		end
		else begin
			// register reads
			ex_read1 <= int_reg[instruction_id.rtype.rs1];
			ex_read2 <= int_reg[instruction_id.rtype.rs2];
			// register writes
			if (wb_RegWrite) 
			begin				
				int_reg[instruction_wb.rtype.rd] = wb_writedata;
				if (instruction_id.rtype.rs1 == instruction_wb.rtype.rd)
					ex_read1 <= wb_writedata;
				if (instruction_id.rtype.rs2 == instruction_wb.rtype.rd)
					ex_read2 <= wb_writedata;					
			end
			ex_PC <= id_PC;
		end
	end

	// EX
	always@(*) begin
			ex_branch_target = ex_PC + 
				{{20{instruction_ex.btype.imm12}}, instruction_ex.btype.imm11, 
					instruction_ex.btype.imm10_5, instruction_ex.btype.imm4_1,1'b0};
				//{{20{id_instruction[31]}},id_instruction[7],id_instruction[30:25],id_instruction[11:8],1'b0};
			// Immediate
			ex_immediate = {{20{instruction_ex.itype.imm[11]}},instruction_ex.itype.imm};
			ex_s_immediate = {{20{instruction_ex.stype.imm11_5[11]}},instruction_ex.stype.imm11_5,instruction_ex.stype.imm4_0};
	
			ex_operand2 = 
						(instruction_ex.itype.opcode == typePack::S) ?  ex_s_immediate : 
						(instruction_ex.itype.opcode == typePack::IMM ||
						 instruction_ex.itype.opcode == typePack::L) ? ex_immediate :
						ex_read2;

					// ALU
			case(instruction_ex.itype.opcode)
				typePack::L: ex_alu_result = ex_read1 + ex_operand2;
				typePack::S: ex_alu_result = ex_read1 + ex_operand2;
				typePack::BRANCH: ex_alu_result = ex_read1 - ex_operand2;
				default: // R or Immediate instructions
					case(instruction_ex.itype.funct3)
						typePack::ADD: 
							if (instruction_ex.rtype.opcode == typePack::OP && instruction_ex.rtype.funct7 ==  7'b0100000)
								ex_alu_result = ex_read1 - ex_operand2;
							else
								ex_alu_result = ex_read1 + ex_operand2;
						typePack::SLT: ex_alu_result = ($signed(ex_read1) < $signed(ex_operand2)) ? 32'd1 : 32'd0;
						typePack::AND: ex_alu_result = ex_read1 & ex_operand2;
						typePack::OR: ex_alu_result = ex_read1 | ex_operand2;
						typePack::XOR: ex_alu_result = ex_read1 ^ ex_operand2;
						default: ex_alu_result = ex_read1 + ex_operand2;
					endcase
			endcase
	end
	
	
	always@(posedge tb_clk) begin
		if (tb_rst) begin
			mem_branch_target <= 0;
			mem_alu_result <= 0;
			mem_dWriteData <= 0;
		end
		else begin
			mem_branch_target <= ex_branch_target;
			mem_alu_result <= ex_alu_result;
			mem_dWriteData <= ex_read2;
		end
	end
	
	// Mem
	assign mem_branch_taken = (instruction_mem.itype.opcode == typePack::BRANCH && mem_alu_result == 0);
	// Data memory
	localparam DATA_MEMORY_WORDS = 256;
	assign mem_dAddress = mem_alu_result;
	reg [256*8-1:0] d_filename;
	
	// Data Memory
	logic [31:0] data_memory[DATA_MEMORY_WORDS-1:0];

	initial begin
		d_filename = copy_string(data_mem_filename);
		$readmemh(d_filename, data_memory);
		//$readmemh("pipe_data_memory.txt", data_memory);
		if (^data_memory[0] === 1'bX) begin
			$display($sformatf("**** Error: RISC-V Simulation model data memory '%s' failed to load****",data_mem_filename));
			//$finish;
		end
		else 
			$display($sformatf("**** RISC-V Simulation model: Loaded data memory '%s' ****",data_mem_filename));
	end

	assign mem_MemRead = (instruction_mem.itype.opcode == typePack::L);
	assign mem_MemWrite = (instruction_mem.itype.opcode == typePack::S);
	always@(posedge tb_clk) begin
		if (tb_rst) begin
			wb_dReadData <= 0;
			wb_dReadData <= 0;
			wb_alu_result <= 0;
		end
		else begin
			if (mem_MemRead)
				wb_dReadData <= data_memory[(mem_dAddress - DATA_MEMORY_START_ADDRESSS) >> 2];
			if (mem_MemWrite)
				data_memory[(mem_dAddress - DATA_MEMORY_START_ADDRESSS) >> 2] <= mem_dWriteData;
			wb_alu_result <= mem_alu_result;
		end
	end
	
	
	// WB
	assign wb_writedata = (instruction_wb.itype.opcode == typePack::L) ? wb_dReadData : wb_alu_result;
	assign wb_RegWrite = ((instruction_wb.itype.opcode == typePack::OP || 
					instruction_wb.itype.opcode == typePack::IMM ||
					instruction_wb.itype.opcode == typePack::L)) && 
					(instruction_wb.itype.rd != 0);
		
	
endmodule