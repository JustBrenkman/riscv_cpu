`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: BYU
// Engineer: Andrew Wilson
// 
// Create Date: 01/30/2019 10:01:28 AM
// Design Name: Datapath Test Bench
// Module Name: datapath_tb
// Project Name: 323 Lab 6
// Target Devices: A100t
// Tool Versions: v 16.5
// Description: 
// 
// Dependencies: 
// 
// Revision: v 1.05
// Additional Comments: Verified
// 
//////////////////////////////////////////////////////////////////////////////////
//`include "../../sources_1/new//typePack.sv"

module datapath_tb(
	);
	
	logic clk;
	logic rst;
	logic RegWrite;
	logic PCSrc;
	logic ALUSrc;
	logic [31:0] instruction;
	logic [3:0] ALUCtrl;
	logic MemtoReg;
	logic Zero;
	logic [31:0] PC;
	logic [31:0] dAddress;
	logic [31:0] dWriteData;
	logic [31:0] dReadData;

	localparam [31:0] INITIAL_PC = 32'h00400000;
	
//////////////////////////////////////////////////////////////////////////////////
//
//	Instantiate Desgin Under Test (DUT)
//
//////////////////////////////////////////////////////////////////////////////////
	
	riscv_simple_datapath dp(.*);
	

//////////////////////////////////////////////////////////////////////////////////
//
//	Local Variable for Test Bench
//
//////////////////////////////////////////////////////////////////////////////////
	
	typePack::instruction_t INST; 
	
	logic [31:0] local_reg [31:0];
	logic [31:0] local_PC = INITIAL_PC;
	
	initial
	  for (int i = 0; i < 32; i=i+1)
		local_reg[i] = 0;
	

//////////////////////////////////////////////////////////////////////////////////
//
//	Clock Generator
//
//////////////////////////////////////////////////////////////////////////////////
	
	always
	begin
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
	
    task test_signal(input int acutal,expected,input string name,input int output_type);
		// Output_type: 0=decimal, 1=hex
		if(acutal!=expected)
            begin
            $display("\[%0tps]ERROR:%s is wrong value", $time, name);
			if (output_type == 0)
              $display("    Expected value: %2d Acutal value: %2d",expected,acutal);
			else if (output_type == 1)
              $display("    Expected value: 0x%08X Acutal value: 0x%08X",expected,acutal);
            $display("   Last cmd is ",last_cmd);
            $display("Current cmd is ",current_cmd);
            error_count += 1;
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
	task load_word( input int rd, rs1, imm, value);
		//Apply Control Signals
		current_cmd = $sformatf("lw x%1d,%1d(x%1d)",rd,imm,rs1);
		INST.itype.opcode = typePack::L;
		INST.itype.rd = rd;
		INST.itype.rs1 = rs1;
		INST.itype.imm = imm;
		INST.itype.funct3 = 3'b010;
		instruction <= INST;
		MemtoReg <= 1;
		dReadData <= value;
		RegWrite <= 1;
		ALUSrc <= 1;
		ALUCtrl <= 2;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]+imm,"dAddress",1);
		test_signal(PC,local_PC,"PC",1);
		//Update Local valus
		@(posedge clk)
		RegWrite <= 0;
		MemtoReg <= 0;
		local_reg[rd] = value;
		local_PC = local_PC + 4;
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Save Word
	//
	//////////////////////////////////
	
	task save_word( input int rs2, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("sw x%1d,%1d(x%1d)",rs2,imm,rs1);
		INST.stype.opcode = typePack::S;
		INST.stype.rs2 = rs2;
		INST.stype.rs1 = rs1;
		INST.stype.imm11_5 = imm>>5;
		INST.stype.imm4_0 = imm & 8'h1F;
		INST.stype.funct3 = 3'b010;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 2;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]+imm,"dAddress",1);
		test_signal(dWriteData,local_reg[rs2],"dWriteData",0);
		test_signal(PC,local_PC,"PC",1);
		//Update Local valus
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Branch if Equal
	//
	//////////////////////////////////
	
	task beq( input int rs1, rs2, imm,branch);
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
		ALUSrc <= 0;
		ALUCtrl <= 6;
		PCSrc <= branch;
		//Check Signals
		@(negedge clk)
		test_signal(Zero,(local_reg[rs1]-local_reg[rs2])==0,"Zero",0);
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"dAddress",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		PCSrc <= 0;
		if(branch == 0)
			local_PC = local_PC + 4;
		else
			local_PC = local_PC + imm;
		last_cmd = current_cmd;
	endtask
	
	
	//////////////////////////////////
	//
	//	Branch if not equal
	//
	//////////////////////////////////
	
	task bne( input int rs1, rs2, imm,branch);
		//Apply Control Signals
		current_cmd = $sformatf("beq x%1d,x%1d,%1d",rs1,rs2,imm);
		INST.btype.opcode = typePack::BRANCH;
		INST.btype.rs2 = rs2;
		INST.btype.rs1 = rs1;
		INST.btype.funct3 = typePack::BNE;
		INST.btype.imm12 = imm>>12 & 1'b1;
		INST.btype.imm10_5 = imm>>5 & 8'h3F;
		INST.btype.imm11 = imm>>11 & 8'h01;
		INST.btype.imm4_1 = imm>>1 & 8'h1F;
		instruction <= INST;
		ALUSrc <= 0;
		ALUCtrl <= 6;
		PCSrc <= branch;
		//Check Signals
		@(negedge clk)
		test_signal(Zero,(local_reg[rs1]-local_reg[rs2])==0,"Zero",0);
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"dAddress",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		PCSrc <= 0;
		if(branch == 0)
			local_PC = local_PC + 4;
		else
			local_PC = local_PC + imm;
		last_cmd = current_cmd;
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
		ALUSrc <= 0;
		ALUCtrl <= 2;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]+local_reg[rs2],"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+local_reg[rs2];
		last_cmd = current_cmd;
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
		ALUSrc <= 0;
		ALUCtrl <= 6;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",0);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]-local_reg[rs2];
		last_cmd = current_cmd;
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
		ALUSrc <= 0;
		ALUCtrl <= 0;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]&local_reg[rs2],"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&local_reg[rs2];
		last_cmd = current_cmd;
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
		ALUSrc <= 0;
		ALUCtrl <= 1;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]|local_reg[rs2],"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|local_reg[rs2];
		last_cmd = current_cmd;
	endtask  
		
	//////////////////////////////////
	//
	//	Set less than
	//
	//////////////////////////////////
	
	task slt( input int rd, rs1, rs2);
		//Apply Control Signals
		current_cmd = $sformatf("slt x%1d,x%1d,x%1d",rd,rs1,rs2);
		INST.rtype.opcode = typePack::OP;
		INST.rtype.rs2 = rs2;
		INST.rtype.rs1 = rs1;
		INST.rtype.rd = rd;
		INST.rtype.funct3 = typePack::SLT;
		INST.rtype.funct7 = 0;
		instruction <= INST;
		ALUSrc <= 0;
		ALUCtrl <= 7;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,($signed(local_reg[rs1])<$signed(local_reg[rs2])),"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = ($signed(local_reg[rs1])<$signed(local_reg[rs2]));
		last_cmd = current_cmd;
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
		ALUSrc <= 0;
		ALUCtrl <= 12;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]^local_reg[rs2],"ALUout (dAddress)",1);
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)",0);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^local_reg[rs2];
		last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Add immediate 
	//
	//////////////////////////////////
	task addi( input int rd, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("addi x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::ADD;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 2;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]+imm,"ALUout (dAddress)",1);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+imm;
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	And immediate 
	//
	//////////////////////////////////
	
	task andi( input int rd, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("andi x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::AND;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 0;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]&imm,"ALUout (dAddress)",1);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&imm;
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Or immediate 
	//
	//////////////////////////////////
	
	task ori( input int rd, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("ori x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::OR;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 1;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]|imm,"ALUout (dAddress)",1);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|imm;
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Set less than immediate 
	//
	//////////////////////////////////
	
	task slti( input int rd, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("slti x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::SLT;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 7;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,$signed(local_reg[rs1])<$signed(imm),"ALUout (dAddress)",1);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = $signed(local_reg[rs1])<$signed(imm);
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Exlusive or immediate 
	//
	//////////////////////////////////
	
	task xori( input int rd, rs1, imm);
		//Apply Control Signals
		current_cmd = $sformatf("xori x%1d,x%1d,%1d",rd,rs1,imm);
		INST.itype.opcode = typePack::IMM;
		INST.itype.imm = imm;
		INST.itype.rs1 = rs1;
		INST.itype.rd = rd;
		INST.itype.funct3 = typePack::XOR;
		instruction <= INST;
		ALUSrc <= 1;
		ALUCtrl <= 12;
		RegWrite <= 1;
		MemtoReg <= 0;
		PCSrc <= 0;
		//Check Signals
		@(negedge clk)
		test_signal(dAddress,local_reg[rs1]^imm,"ALUout (dAddress)",1);
		test_signal(PC,local_PC,"PC",1);
		
		//Update Local valus and clean up signals
		@(posedge clk)
		RegWrite <= 0;
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^imm;
		last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Random Instruction Generator
	//
	//////////////////////////////////
	
	task random_commands(int num);
		$display("[%0tns]Testing %0d random commands", $time/1000.0, num);
		for (int k=0; k<num; k=k+1) 
		begin
			//taskFailed = 0;
			case($urandom%14)
			0: add($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			1: sub($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			2: and_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			3: or_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			4: addi($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			5: ori($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			6: andi($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			7: load_word($urandom_range(0,31),$urandom_range(0,31),$urandom_range(0,4095)-2048,$urandom);
			8: save_word($urandom_range(0,31),$urandom_range(0,31),$urandom_range(0,4095)-2048);
			9: beq($urandom_range(0,31),$urandom_range(0,31),($urandom_range(0,4095)-2048)<<1,$urandom_range(0,1));
			//10: bne($urandom_range(0,31),$urandom_range(0,31),($urandom_range(0,4095)-2048)<<1,$urandom_range(0,1));
			10: xor_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			11: slt($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			12: xori($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			13: slti($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			endcase
		end
	endtask
	
	
	
	//////////////////////////////////
	//
	//	Main Test Bench Process
	//
	//////////////////////////////////
	
	initial begin
		$display("===== RISCV DATAPATH TB V1.04 =====");
		$display(" Runs for 11180 ns or use run -all");
		instruction <= 0;
		INST <= 0;
		ALUSrc <= 0;
		ALUCtrl <= 0;
		PCSrc <= 0;
		RegWrite <= 0;
		MemtoReg <= 0;
		dReadData <= 0;
		//////////////////////////////////
		//	Test Reset
		$display("[%0tns]Testing Reset", $time/1000.0);
		rst <= 0;
		#80ns;
		rst <= 1;
		#20ns;
		@(posedge clk)
		rst <= 0;
		//////////////////////////////////
		//	Test x0 register
		$display("[%0tns]Testing x0", $time/1000.0);
		load_word(0,0,0,1);
		addi(0,0,1);
		//////////////////////////////////
		//	Load Registers
		$display("[%0tns]Loading Initial Values", $time/1000.0);
		for(int i = 0; i<32; i++)
		begin
			load_word(i,0,0,i);
			save_word(i,0,0);
			beq(i,i,0,0);
		end
		//////////////////////////////////
		//	Random testing
		random_commands(1000);
		#100ns;
		if(error_count == 0)
			$display("You Passed!");
		else
			$display("%1d error(s) found!",error_count);
		$finish;
	end
	
	
endmodule