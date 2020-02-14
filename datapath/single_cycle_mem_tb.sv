`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BYU
// Engineer: Andrew Wilson
// 
// Create Date: 01/30/2019 10:01:28 AM
// Design Name: RISCV Single Cycle Mem Test Bench
// Module Name: datapath_tb
// Description: 
// 
// Revision: v 1.5  
//   - Make sure to update the text for the testbench to reflect the version. Search
//     for the string "RISCV SINGLE CYCLE MEM TB"
//
//////////////////////////////////////////////////////////////////////////////////


module single_cycle_mem_tb(
	);
	
	logic clk;
	logic rst;
	logic [31:0] instruction;
	logic [31:0] PC;
	logic [31:0] dAddress;
	logic [31:0] dWriteData;
	logic [31:0] dReadData;
	logic MemWrite;
	logic MemRead;
	

//////////////////////////////////////////////////////////////////////////////////
//
//  Instantiate Desgin Under Test (DUT)
//
//////////////////////////////////////////////////////////////////////////////////

	riscv_single_cycle dut(.*);
	
//////////////////////////////////////////////////////////////////////////////////
//
//	Local Variable for Test Bench
//
//////////////////////////////////////////////////////////////////////////////////
	
	typePack::instruction_t INST; 
	
	localparam[31:0] INITIAL_PC = 32'h00400000;
	localparam[31:0] DATA_BASE = 32'h10010000;
	localparam INST_MEMORY_SIZE = 256;
	localparam DATA_MEMORY_SIZE = 64;
	
	localparam instruction_memory_filename = "testbench_inst.txt";
	localparam data_memory_filename = "testbench_data.txt";
	localparam EBREAK_INSTRUCTION = 32'h00100073;

	logic [31:0] local_reg [31:0];
	logic [31:0] local_PC = INITIAL_PC;
	
	logic [31:0] inst_memory [0:INST_MEMORY_SIZE-1];
	logic [31:0] data_memory [0:DATA_MEMORY_SIZE-1];
	
	initial
	  for (int i = 0; i < 32; i=i+1)
		local_reg[i] = 0;
	initial
	begin
		//for (int i = 0; i < 1024; i=i+1)
		//begin
		//	inst_memory[i] = 0;
		//	data_memory[i] = 0;
		//end
		$readmemh(instruction_memory_filename,inst_memory);
		if (^inst_memory[0] === 1'bX) begin
			$display("**** Warning: Failed to load the instruction memory:%s",instruction_memory_filename);
			$display("****  Make sure the file exists and is added to the project.");
			$finish;
		end
		else
			$display("**** Loaded instruction memory ****");
		$readmemh(data_memory_filename,data_memory);
		if (^data_memory[0] === 1'bX) begin
			$display("**** Warning: Failed to load the data memory:%s",data_memory_filename);
			$display("****  Make sure the file exists and is added to the project.");
			$finish;
		end
		else
			$display("**** Loaded data memory ****");
	end
	
	//string buffer ;
	//int buffer_index = 0;
	
	//initial
	//begin
	//	buffer = "";
	//end
	
	
//////////////////////////////////////////////////////////////////////////////////
//
//	Clock Generator
//
//////////////////////////////////////////////////////////////////////////////////
	
	always
	begin
		local_reg[0] = 0;
		clk <=1; #5ns;
		local_reg[0] = 0;
		clk <=0; #5ns;
		local_reg[0] = 0;
	end
	
//////////////////////////////////////////////////////////////////////////////////
//
//	Test Bench Assert
//
//////////////////////////////////////////////////////////////////////////////////

	string current_cmd;
	string last_cmd;
	int error_count = 0;
	
	task test_signal(input int acutal,expected,input  string name);
		if(acutal!=expected)
			begin
			$display("\[%0tps]ERROR:%s is wrong value", $time, name);
			$display("    Expected value: %2d Acutal value: %2d",expected,acutal);
			$display("   Last cmd is ",last_cmd);
			$display("Current cmd is ",current_cmd);
			error_count += 1;
			$finish;
			end
	endtask
	
	
//////////////////////////////////////////////////////////////////////////////////
//
//	Insturction Tests
//
//////////////////////////////////////////////////////////////////////////////////


	//////////////////////////////////
	//
	//	Load Word
	//
	//////////////////////////////////


	task load_word( input int rd, rs1,input signed[11:0] imm);
		//Apply Control Signals
		
		current_cmd = $sformatf("lw x%1d,%1d(x%1d)",rd,imm,rs1);
		INST.itype.opcode = typePack::L;
		INST.itype.rd = rd;
		INST.itype.rs1 = rs1;
		INST.itype.imm = imm;		
		INST.itype.funct3 = 3'b010;
		instruction <= INST;
		
		//Check Signals
		
		@(negedge clk) #0;
		dReadData <= data_memory[(dAddress-DATA_BASE)>>2];
		test_signal(dAddress,local_reg[rs1]+int'(imm),"dAddress");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,1,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		//Update Local valus
		local_reg[rd] = data_memory[(dAddress-DATA_BASE)>>2];
		local_PC = local_PC + 4;
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Save Word
	//
	//////////////////////////////////
	
	task save_word( input int rs2, rs1,input signed[11:0] imm);
		//Apply Control Signals
		
		
		current_cmd = $sformatf("sw x%1d,%1d(x%1d)",rs2,imm,rs1);
		INST.stype.opcode = typePack::S;
		INST.stype.rs2 = rs2;
		INST.stype.rs1 = rs1;		
		INST.stype.funct3 = 3'b010;
		INST.stype.imm11_5 = imm>>5;
		INST.stype.imm4_0 = imm & 8'h1F;
		instruction <= INST;
		
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]+int'(imm),"dAddress");
		test_signal(dWriteData,local_reg[rs2],"dWriteData");
		test_signal(PC,local_PC,"PC");        
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,1,"MemWrite");
		//Update Local valus
	   
	   //Print Char
	   /*
		if(dAddress==16'h1000)
			begin
				if(dWriteData[7:0] != "\n")
					buffer = {buffer,dWriteData[7:0]};
				else
				begin
					$display("OUTPUT ====>  ",buffer);
					buffer = "";
				end
			end
		//Print Int
		else if(dAddress==16'h1004)
			begin
				buffer = $sformatf("%s%1d",buffer,dWriteData);
			end
		//Write to Memory
		else if (dAddress<16'h1000)
		*/
		data_memory[(dAddress-DATA_BASE)>>2] = dWriteData;
		local_PC = local_PC + 4;
		@(posedge clk)  last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Branch if Equal
	//
	//////////////////////////////////
	
	task beq( input int rs1, rs2, signed [12:0] imm);
		
		//Apply Control Signals
		current_cmd = $sformatf("beq x%1d,x%1d,%1d",rs1,rs2,imm);
		INST.btype.opcode = typePack::BRANCH;
		INST.btype.rs2 = rs2;
		INST.btype.rs1 = rs1;        
		INST.btype.funct3 = typePack::BEQ;
		INST.btype.imm12 = imm>>12 & 1'b1;
		INST.btype.imm10_5 = imm>>5 & 8'h3F;
		INST.btype.imm11 = imm>>11 & 8'h01;
		INST.btype.imm4_1 = imm>>1 & 8'h1F;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"dAddress");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		if((local_reg[rs1]-local_reg[rs2])!=0)
			local_PC = local_PC + 4;
		else
			local_PC = local_PC + int'(imm);
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Branch if not equal
	//
	//////////////////////////////////
	
	task bne( input int rs1, rs2, imm);
		//Apply Control Signals
		
		current_cmd = $sformatf("bne x%1d,x%1d,%1d",rs1,rs2,imm);
		INST.btype.opcode = typePack::BRANCH;
		INST.btype.rs2 = rs2;
		INST.btype.rs1 = rs1;
		INST.btype.funct3 = typePack::BNE;
		INST.btype.imm12 = imm>>12 & 1'b1;
		INST.btype.imm10_5 = imm>>5 & 8'h3F;
		INST.btype.imm11 = imm>>11 & 8'h01;
		INST.btype.imm4_1 = imm>>1 & 8'h1F;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"dAddress");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		if((local_reg[rs1]-local_reg[rs2])==0)
			local_PC = local_PC + 4;
		else
			local_PC = local_PC + imm;
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Addition
	//
	//////////////////////////////////
	
	task add( input int rd, rs1, rs2);
		
		//Apply Control Signals
		current_cmd = $sformatf("add x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::ADD;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]+local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+local_reg[rs2];
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Subtraction
	//
	//////////////////////////////////
	
	task sub( input int rd, rs1, rs2);
		
		//Apply Control Signals
		current_cmd = $sformatf("sub x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::ADD;
		INST.rtype.funct7 = 7'b0100000;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]-local_reg[rs2];
		@(posedge clk)  last_cmd = current_cmd;
	endtask
		
	//////////////////////////////////
	//
	//	Bit-wise and
	//
	//////////////////////////////////
	
	task and_( input int rd, rs1, rs2);
		
		//Apply Control Signals
		current_cmd = $sformatf("and x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::AND;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]&local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&local_reg[rs2];
		@(posedge clk)  last_cmd = current_cmd;
	endtask
		
	//////////////////////////////////
	//
	//	Bit-wise or
	//
	//////////////////////////////////
	
	task or_( input int rd, rs1, rs2);
	
		
		//Apply Control Signals
		current_cmd = $sformatf("or x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::OR;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]|local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|local_reg[rs2];
		@(posedge clk)  last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Set less than
	//
	//////////////////////////////////
	
	task slt( input int rd, rs1, signed [31:0] rs2);
		
		//Apply Control Signals
		current_cmd = $sformatf("slt x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::SLT;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,$signed(local_reg[rs1])<$signed(local_reg[rs2]),"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = $signed(local_reg[rs1])<$signed(local_reg[rs2]);
		@(posedge clk)  last_cmd = current_cmd;
	endtask    
		
	//////////////////////////////////
	//
	//	Bit-wise exlusive or
	//
	//////////////////////////////////
	
	task xor_( input int rd, rs1, rs2);
	
		
		//Apply Control Signals
		current_cmd = $sformatf("xor x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::XOR;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]^local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^local_reg[rs2];
		@(posedge clk)  last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Add immediate 
	//
	//////////////////////////////////
	
	task addi( input int rd, rs1, signed [11:0] imm);
		
		//Apply Control Signals
		current_cmd = $sformatf("addi x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::ADD;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]+int'(imm),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+int'(imm);
		@(posedge clk)  last_cmd = current_cmd;
	endtask
			
	//////////////////////////////////
	//
	//	And immediate 
	//
	//////////////////////////////////
	
	task andi( input int rd, rs1, signed [11:0] imm);
		
		//Apply Control Signals
		current_cmd = $sformatf("andi x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::AND;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]&int'(imm),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&int'(imm);
		@(posedge clk)  last_cmd = current_cmd;
	endtask
		
	//////////////////////////////////
	//
	//	Or immediate 
	//
	//////////////////////////////////
	
	task ori( input int rd, rs1, signed [11:0] imm);
		
		//Apply Control Signals
		current_cmd = $sformatf("ori x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::OR;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]|int'(imm),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|int'(imm);
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Set less than immediate 
	//
	//////////////////////////////////
	
	task slti( input int rd, rs1, signed [11:0] imm);
		
		
		//Apply Control Signals
		current_cmd = $sformatf("slti x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::SLT;
		instruction <= INST;
		//Check Signals
		@(negedge clk) #0;
		test_signal(dAddress,$signed(local_reg[rs1])<$signed(int'(imm)),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = $signed(local_reg[rs1])<$signed(int'(imm));
		@(posedge clk)  last_cmd = current_cmd;
	endtask
		
	//////////////////////////////////
	//
	//	Exlusive or immediate 
	//
	//////////////////////////////////
	
	task xori( input int rd, rs1,signed [11:0] imm);
		
		//Apply Control Signals
		current_cmd = $sformatf("xori x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::XOR;
		instruction <= INST;
		//Check Signals
		
		@(negedge clk) #0;
		test_signal(dAddress,local_reg[rs1]^int'(imm),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^int'(imm);
		@(posedge clk)  last_cmd = current_cmd;
	endtask
	 
	//////////////////////////////////
	//
	//	Instruction Decode
	//
	//////////////////////////////////
	
	task decode_inst(typePack::instruction_t inst_i);
		automatic int current_pc = local_PC;
		case(inst_i.itype.opcode)
		typePack::L: load_word(inst_i.itype.rd, inst_i.itype.rs1, inst_i.itype.imm);
		typePack::S: save_word(inst_i.stype.rs2, inst_i.stype.rs1, 
							{inst_i.stype.imm11_5,inst_i.stype.imm4_0});
		typePack::BRANCH: 
			unique case(inst_i.btype.funct3)
					typePack::BEQ:
						beq(inst_i.btype.rs1,inst_i.btype.rs2, 
							{inst_i.btype.imm12,inst_i.btype.imm11,inst_i.btype.imm10_5,
							inst_i.btype.imm4_1,1'b0});
					typePack::BNE:
						bne(inst_i.btype.rs1,inst_i.btype.rs2, 
							{inst_i.btype.imm12,inst_i.btype.imm11,inst_i.btype.imm10_5,
							inst_i.btype.imm4_1,1'b0});
			endcase
		typePack::OP: 
			unique case(inst_i.rtype.funct3)
					typePack::OR :
						or_(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
					typePack::AND :
						and_(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
					typePack::XOR :
						xor_(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
					typePack::SLT :
						slt(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
					typePack::ADD :
						if (inst_i.rtype.funct7[5] == 1)
							sub(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
						else
							add(inst_i.rtype.rd,inst_i.rtype.rs1,inst_i.rtype.rs2);
			endcase
		typePack::IMM: 
			unique case(inst_i.itype.funct3)
					typePack::OR :
						ori(inst_i.itype.rd,inst_i.itype.rs1,inst_i.itype.imm);
					typePack::AND :
						andi(inst_i.itype.rd,inst_i.itype.rs1,inst_i.itype.imm);
					typePack::XOR :
						xori(inst_i.itype.rd,inst_i.itype.rs1,inst_i.itype.imm);
					typePack::SLT :
						slti(inst_i.itype.rd,inst_i.itype.rs1,inst_i.itype.imm);
					typePack::ADD :
						addi(inst_i.itype.rd,inst_i.itype.rs1,inst_i.itype.imm);
				endcase
		default:
		begin
			if(error_count == 0)
				$display("You Passed!");
			else
				$display("%1d error(s) found!",error_count);
			//$finish;
		end
		endcase
		$display("[%0tns] 0x%08X:  ",$time/1000.0,current_pc,current_cmd);
	endtask
	
	
	//////////////////////////////////
	//
	//	Main Test Bench Process
	//
	//////////////////////////////////
	
	initial begin
		$display("===== RISCV SINGLE CYCLE MEM TB V1.5 =====");
		$display(" use run -all");
		//////////////////////////////////
		//	Reset
		$display("[%0tns] Reset", $time/1000.0);
		instruction = 0;
		INST = 0;
		dReadData = 0;
		rst <= 0;
		#80ns;
		rst <= 1;
		#20ns;
		@(posedge clk)
		rst <= 0;
		$display("[%0tns] Execute Program", $time/1000.0);

		for(int i=0;i==0;)
		begin
			decode_inst(inst_memory[(local_PC-INITIAL_PC)>>2]);
			if (inst_memory[(local_PC-INITIAL_PC)>>2] == EBREAK_INSTRUCTION)
				i = 1;
		end
		
		
		if(error_count == 0)
			$display("You Passed!");
		else
			$display("%1d error(s) found!",error_count);
		$finish;
	end
	
endmodule
