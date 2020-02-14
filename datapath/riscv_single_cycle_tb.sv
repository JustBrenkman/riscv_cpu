`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BYU
// Engineer: Andrew Wilson
// 
// Create Date: 01/30/2019 10:01:28 AM
// Design Name: RISCV Single Cycle Test Bench
// Module Name: datapath_tb
// Project Name: 323 Lab 7
// Target Devices: A100t
// Tool Versions: v 16.4
// Description: 
// 
// Dependencies: 
// 
// Revision: v 1.4
//   (Update version string - search for  'RISCV SINGLE CYCLE TB'
//
// 
//////////////////////////////////////////////////////////////////////////////////

module riscv_single_cycle_tb(
	);
	
	logic clk;
	logic rst;
	logic MemWrite;
	logic MemRead;
	logic [31:0] instruction;
	logic [31:0] PC;
	logic [31:0] dAddress;
	logic [31:0] dWriteData;
	logic [31:0] dReadData;

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
	
	localparam INITIAL_PC = 32'h00400000;
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
			$display("\[%0tps] ERROR:%s is wrong value", $time, name);
			$display("    Expected value: %2d Acutal value: %2d",expected,acutal);
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
		dReadData <= value;
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]+imm,"dAddress");
		test_signal(PC,local_PC,"PC");        
		test_signal(MemRead,1,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		//Update Local valus
		
		local_reg[rd] = value;
		local_PC = local_PC + 4;
	   @(posedge clk) last_cmd = current_cmd;
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
		INST.stype.funct3 = 3'b010;
		INST.stype.imm11_5 = imm>>5;
		INST.stype.imm4_0 = imm & 8'h1F;
		instruction <= INST;
		
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]+imm,"dAddress");
		test_signal(dWriteData,local_reg[rs2],"dWriteData");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,1,"MemWrite");
		//Update Local valus
		
		local_PC = local_PC + 4;
	   @(posedge clk) last_cmd = current_cmd;
	endtask    
	
	//////////////////////////////////
	//
	//	Branch if Equal
	//
	//////////////////////////////////
	
	task beq( input int rs1, rs2, imm);
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"dAddress");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		if((local_reg[rs1]-local_reg[rs2])!=0)
			local_PC = local_PC + 4;
		else
			local_PC = local_PC + imm;
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
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
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]+local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+local_reg[rs2];
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]-local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]-local_reg[rs2];
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]&local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&local_reg[rs2];
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]|local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|local_reg[rs2];
	   @(posedge clk) last_cmd = current_cmd;
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
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,$signed(local_reg[rs1])<$signed(local_reg[rs2]),"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = $signed(local_reg[rs1])<$signed(local_reg[rs2]);
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]^local_reg[rs2],"ALUout (dAddress)");
		test_signal(dWriteData,local_reg[rs2],"rs2 (dWriteData)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^local_reg[rs2];
	   @(posedge clk) last_cmd = current_cmd;
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
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]+imm,"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]+imm;
	   @(posedge clk) last_cmd = current_cmd;
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
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]&imm,"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]&imm;
	   @(posedge clk) last_cmd = current_cmd;
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
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]|imm,"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]|imm;
	   @(posedge clk) last_cmd = current_cmd;
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
		@(negedge clk)
		#0;
		test_signal(dAddress,$signed(local_reg[rs1])<$signed(imm),"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = $signed(local_reg[rs1])<$signed(imm);
	   @(posedge clk) last_cmd = current_cmd;
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
		//Check Signals
		@(negedge clk)
		#0;
		test_signal(dAddress,local_reg[rs1]^imm,"ALUout (dAddress)");
		test_signal(PC,local_PC,"PC");
		test_signal(MemRead,0,"MemRead");
		test_signal(MemWrite,0,"MemWrite");
		
		//Update Local valus and clean up signals
		
		local_PC = local_PC + 4;
		local_reg[rd] = local_reg[rs1]^imm;
	   @(posedge clk) last_cmd = current_cmd;
	endtask
	
	//////////////////////////////////
	//
	//	Random Instruction Generator
	//
	//////////////////////////////////
	
	task random_commands(int num);
		automatic int r1,r2,imm;
		$display("[%0tns] Testing %0d random commands", $time/1000, num);
		for (int k=0; k<num; k=k+1) 
		begin
			//taskFailed = 0;
			case($urandom%15)
			0: add($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			1: sub($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			2: and_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			3: or_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			4: addi($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			5: ori($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			6: andi($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			7: load_word($urandom_range(0,31),$urandom_range(0,31),$urandom_range(0,4095)-2048,$urandom);
			8: save_word($urandom_range(0,31),$urandom_range(0,31),$urandom_range(0,4095)-2048);
			9: beq($urandom_range(0,31),$urandom_range(0,31),($urandom_range(0,4095)-2048)<<1);
			//10: bne($urandom_range(0,31),$urandom_range(0,31),($urandom_range(0,4095)-2048)<<1);
			10: slt($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			11: xor_($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,31));
			12: slti($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			13: xori($urandom_range(0,31), $urandom_range(0,31), $urandom_range(0,4095)-2048);
			14:
			begin
			r1 = $urandom_range(0,31);
			r2 = $urandom_range(0,31);
			imm = $urandom_range(4095)-2048;
			addi (r1,0,imm);
			addi (r2,0,imm);           
			beq(r1,r2,($urandom_range(0,4095)-2048)<<1);
			end
			endcase
		end
	endtask
	
	//////////////////////////////////
	//
	//	Directed Test
	//
	//////////////////////////////////
	task directed_test;
		addi(1,0,1);
		addi(2,1,-4);
		add(3,1,2);
		sub(4,1,3);
		add(5,4,3);
		sub(6,1,4);
		slt(7,5,4);
		slt(8,4,5);
		and_(9,3,4);
		or_(10,9,1);
		xor_(11,9,1);
		andi(12,11,-1);
		ori(13,8,1445);
		ori(14,0,1056);
		save_word(14,6,4);
		save_word(13,6,-4);
		load_word(15,6,4,18);
		load_word(16,6,-4,18);
		//bne(0,1,8);
		add(17,1,1);
		beq(6,3,12);
		add(17,1,1);
		beq(0,0,8);
		beq(0,8,-8);
	endtask
	
	//////////////////////////////////
	//
	//	Main Test Bench Process
	//
	//////////////////////////////////
	
	
	initial begin
		$display("===== RISCV SINGLE CYCLE TB V1.4 =====");
		$display(" run -all");
		instruction <= 0;
		//////////////////////////////////
		//	Test Reset
		$display("[%0tns] Testing Reset", $time/1000.0);
		rst <= 0;
		#80ns;
		rst <= 1;
		#20ns;
		@(posedge clk)
		rst <= 0;
		//////////////////////////////////
		//	Test x0 register
		$display("[%0tns] Testing x0", $time/1000.0);
		load_word(0,0,0,1);
		addi(0,0,1);
		//////////////////////////////////
		//	Load Registers
		$display("[%0tns] Loading Initial Values", $time/1000.0);
		for(int i = 0; i<32; i++)
		begin
			load_word(i,0,0,i);
			save_word(i,0,0);
			beq(i,i,8'h10);
		end
		//////////////////////////////////
		//	Directed Testing
		$display("[%0tns] Directed Testing", $time/1000.0);
		directed_test;
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