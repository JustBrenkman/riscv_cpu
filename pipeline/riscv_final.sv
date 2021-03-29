`timescale 1ns / 100ps
/***************************************************************************
* 
* Module: riscv_basic_pipeline
*
* Author: Ben Brenkman
* Class: ECEn 323, Lab 8, Winter 2020
* Date: 2/25/2020
*
* Description: This file contains a simple riscv pipelined datapath.
*
****************************************************************************/

import riscv_core_p::*;

// `define SIM
// `define DISPLAY_NOP
//`define ENABLE_FPU
// `define LOG_CSR
// `define LOG_REGISTERS

// Final pipelined riscv core.
module riscv_final 
#(
    parameter INITIAL_PC = 32'h00400000,
    parameter XLEN = 32
) (
    input wire logic clk,
    input wire logic rst,
    input wire logic[XLEN - 1:0] dReadData,
    input wire logic[RISCV_INSTR_LEN - 1:0] instruction,
    output logic MemRead,
    output logic MemWrite,
    output logic[XLEN - 1:0] PC,
    output logic iMemRead,
    output logic[XLEN - 1:0] ALUResult,
    output logic[XLEN - 1:0] dAddress,
    output logic[XLEN - 1:0] dWriteData,
    output logic[XLEN - 1:0] WriteBackData
);

    riscv_core_p::Instruction id_instruction;
    riscv_core_p::ALUOp id_ALUCtrl;
    logic[XLEN - 1:0] id_PC, id_immediate, ex_rs1, ex_rs2;
    logic id_ALUSrc, id_MemWrite, id_MemRead, id_Branch, id_RegWrite, id_MemtoReg;
    logic[XLEN - 1:0] id_registerFile[RISCV_REG_NUM-1:0];
    logic[RISCV_CSR_LEN - 1:0] id_csrFile[RISCV_CSR_NUM-1:0];

    `ifdef ENABLE_FPU
    logic[FLEN - 1:0] id_fRegisterFile[RISCV_REG_NUM-1:0];
    `endif

    riscv_core_p::Instruction ex_instruction;
    logic[XLEN - 1:0] ex_PC, ex_immediate, ex_aluOp1, ex_aluOp2, ex_aluResult, ex_branchAddress, ex_fpuResult, ex_PC_target, ex_dWriteData;
    logic ex_ALUSrc, ex_MemWrite, ex_MemRead, ex_Branch, ex_RegWrite, ex_MemtoReg, ex_Zero, ex_less_than, ex_less_than_unsigned;
    riscv_core_p::ALUOp ex_ALUCtrl;

    riscv_core_p::Instruction mem_instruction;
    logic[XLEN - 1:0] mem_aluResult, mem_branchAddress, mem_rs2, mem_PC, mem_PC_target, mem_dWriteData;
    logic mem_MemWrite, mem_MemRead, mem_Branch, mem_RegWrite, mem_MemtoReg, mem_Zero, mem_PCSrc, mem_less_than, mem_less_than_unsigned;

    logic[XLEN - 1:0] wb_RegWriteData, wb_aluResult, wb_PC, wb_PC_target;
    logic wb_MemToReg, wb_RegWrite;
    riscv_core_p::Instruction wb_instruction;

    // Forwarding logic signals
    logic load_use_condition, load_use, insert_ex_bubble, wb_branch_taken, insert_mem_bubble, 
          mem_branch_taken, mem_jump, wb_jump;
	logic [1:0] forwardA, forwardB;

    // fpu_core fpu(.clk(clk), .rst(rst), .start(), .op(), .a(ex_aluOp1), .b(ex_aluOp2), .busy(), .result(ex_fpuResult));

    //////////////////////////////////////////////////////////////////////
    // IF: Instruction Fetch
    //////////////////////////////////////////////////////////////////////	
    logic[XLEN - 1:0] if_PC;

    assign PC = if_PC;
    assign iMemRead = !load_use;

    // Updates the PC counter.
    always@(posedge clk) begin
        if (rst) begin
            if_PC <= INITIAL_PC;
            id_PC <= 32'hxxxxxxxx;
        end else begin
            if (iMemRead) begin
                if (mem_jump)
                    if_PC <= mem_branchAddress;
                else
                    if_PC <= PC + 4;
                id_PC <= if_PC;
            end
        end
    end

    //////////////////////////////////////////////////////////////////////
    // ID: Instruction Decode
    //////////////////////////////////////////////////////////////////////	

    assign id_instruction = instruction;
    assign insert_ex_bubble = load_use || mem_jump || wb_jump;


    // Combinational logic to determine what the instruction is and control the datapath.
    // The signals used to control the datapath are determinec by the opcode, as the opcode
    // classifies the different catergories of the ISA.
    always_comb begin
        case(id_instruction.register.opcode)
            // Case for immediate and op opcodes.
            OP, IMM: begin
                case(id_instruction.register.funct3)
                    FUNCT3_ADD: id_ALUCtrl = (id_instruction.register.opcode == IMM) ? ALU_ADD : id_instruction.register.funct7 == PRIMARY ? ALU_ADD : ALU_SUB;
                    FUNCT3_SLT: id_ALUCtrl = ALU_SLT;
                    FUNCT3_XOR: id_ALUCtrl = ALU_XOR;
                    FUNCT3_OR: id_ALUCtrl = ALU_OR;
                    FUNCT3_AND: id_ALUCtrl = ALU_AND;
                    FUNCT3_SLL: id_ALUCtrl = ALU_SLL;
                    FUNCT3_SLTU: id_ALUCtrl = ALU_SLTU;
                    FUNCT3_SRL: id_ALUCtrl = (id_instruction.register.funct7 == PRIMARY) ? ALU_SRL : ALU_SRA;
                    default: id_ALUCtrl = ALU_AND;
                endcase
                id_Branch = 0;
                // Select the immediate src if immediate opcode.
                id_ALUSrc = id_instruction.register.opcode == IMM && id_instruction.register.funct3 != FUNCT3_SRL && id_instruction.register.funct3 != FUNCT3_SLL && id_instruction.register.funct3 != FUNCT3_SRA;
                id_MemtoReg = 0;
                id_RegWrite = 1;
                id_MemRead = 0;
                id_MemWrite = 0;
            end
            // Branch instructions are decoded here.
            BRANCH: begin
                // ALUCtrl logic to help determine if the branch needs to be taken.
                case(id_instruction.branch.funct3)
                    FUNCT3_BEQ: id_ALUCtrl = ALU_SUB;
                    FUNCT3_BNE: id_ALUCtrl = ALU_SUB;
                    FUNCT3_BLT: id_ALUCtrl = ALU_SUB;
                    // FUNCT3_BLT: id_ALUCtrl = ALU_SLT;
                    FUNCT3_BLTU: id_ALUCtrl = ALU_SUB;
                    // FUNCT3_BLTU: id_ALUCtrl = ALU_SLTU;
                    FUNCT3_BGE: id_ALUCtrl = ALU_SUB;
                    // FUNCT3_BGE: id_ALUCtrl = ALU_SLT;
                    FUNCT3_BGEU: id_ALUCtrl = ALU_SUB;
                    // FUNCT3_BGEU: id_ALUCtrl = ALU_SLTU;
                    default: id_ALUCtrl = ALU_ADD;
                endcase
                id_Branch = 1;
                id_ALUSrc = 0;
                id_MemtoReg = 0;
                id_RegWrite = 0;
                id_MemRead = 0;
                id_MemWrite = 0;
            end
            // Load instructions decoded here.
            L: begin
                // ALU is add so that the offset can be caluclated.
                id_ALUCtrl = ALU_ADD;
                id_Branch = 0;
                id_ALUSrc = 1;
                id_MemtoReg = 1;
                id_RegWrite = 1;
                id_MemRead = 1;
                id_MemWrite = 0;
            end
            // Store instrucitons are decoded here.
            S: begin
                // ALU is add so that the offset can be caluclated.
                id_ALUCtrl = ALU_ADD;
                id_Branch = 0;
                id_ALUSrc = 1;
                id_MemtoReg = 0;
                id_RegWrite = 0;
                id_MemRead = 0;
                id_MemWrite = 1;
            end
            LUI: begin
                id_ALUCtrl = ALU_ADD;
                id_Branch = 0;
                id_ALUSrc = 1;
                id_MemtoReg = 0;
                id_RegWrite = 1;
                id_MemRead = 0;
                id_MemWrite = 0;
            end
            JAL: begin
                id_ALUCtrl = ALU_ADD;
                id_Branch = 0;
                id_ALUSrc = 1;
                id_MemtoReg = 0;
                id_RegWrite = 1;
                id_MemRead = 0;
                id_MemWrite = 0;
            end
            JALR: begin
                id_ALUCtrl = ALU_ADD;
                id_Branch = 0;
                id_ALUSrc = 1;
                id_MemtoReg = 0;
                id_RegWrite = 1;
                id_MemRead = 0;
                id_MemWrite = 0;
            end
            // Default values, everything is zeroed.
            default: begin
                id_ALUCtrl = ALU_ADD;
                id_ALUSrc = 0;
                id_Branch = 0;
                id_MemtoReg = 0;
                id_RegWrite = 0;
                id_MemRead = 0;
                id_MemWrite = 0;
            end     
        endcase
    end

    // Register file that has a single syncrounous write port.
    always_ff@(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 32; i=i+1)
                id_registerFile[i] <= 0;
            ex_rs1 <= 0;
            ex_rs2 <= 0;
        end else begin
            ex_rs1 <= id_registerFile[id_instruction.register.opcode == LUI ? 5'b0 : id_instruction.register.rs1];
            ex_rs2 <= id_registerFile[id_instruction.register.rs2];

            if (wb_RegWrite && wb_instruction.register.rd != ZERO) begin
                id_registerFile[wb_instruction.register.rd] <= WriteBackData;
                if (id_instruction.register.rs1 == wb_instruction.register.rd)
                    ex_rs1 <= WriteBackData;
                if (id_instruction.register.rs2 == wb_instruction.register.rd)
                    ex_rs2 <= WriteBackData;
            end
        end
    end

    // Initial block to initialize the register file.
    initial begin
        integer i;
        for (i = 0; i < RISCV_REG_NUM; i=i+1) begin
            id_registerFile[i] = ZERO;
        end
    end

    // Initial block to initialize the csr file.
    initial begin
        integer i;
        for (i = 0; i <= RISCV_CSR_NUM; i=i+1) begin
            id_csrFile[i] = ZERO;
        end
    end

    
    // Combinational logic for the immediate number generation.
    // Will generate different numbers based on the major OpCode.
    always_comb begin
        case(id_instruction.imm.opcode)
            riscv_core_p::BRANCH: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.branch.imm12}}, 
                id_instruction.branch.imm12,
                id_instruction.branch.imm11,
                id_instruction.branch.imm10_5,
                id_instruction.branch.imm4_1,
                1'b0
            };
            riscv_core_p::S: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.store.imm11_5[BIT_11]}}, 
                id_instruction.store.imm11_5, 
                id_instruction.store.imm4_0
            };
            riscv_core_p::LUI: id_immediate = {
                id_instruction.u.imm31_12,
                {12 {1'b0}}
            };
            riscv_core_p::JAL: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.j.imm20}},
                id_instruction.j.imm20,
                id_instruction.j.imm19_12,
                id_instruction.j.imm11,
                id_instruction.j.imm10_1,
                1'b0
            };
            riscv_core_p::JALR: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.imm.imm[BIT_11]}}, 
                id_instruction.imm.imm
            };
            default: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.imm.imm[BIT_11]}}, 
                id_instruction.imm.imm
            };
        endcase
    end


    //////////////////////////////////////////////////////////////////////
    // EX: Execute
    //////////////////////////////////////////////////////////////////////	
    
    // assign ex_aluOp1 = ex_rs1;
    // assign ex_aluOp2 = ex_ALUSrc ? ex_immediate : ex_rs2;
    assign ex_Zero = ex_aluResult == ZERO;
    assign ex_less_than = ($signed(ex_aluOp1) < $signed(ex_aluOp2));
    assign ex_less_than_unsigned = ex_aluOp1 < ex_aluOp2;
    assign ALUResult = ex_aluResult;

    assign ex_branchAddress = (ex_instruction.imm.opcode == riscv_core_p::JAL) ? ex_PC + ex_immediate : (ex_instruction.imm.opcode == riscv_core_p::JALR) ? ex_aluOp1 + ex_immediate : ex_immediate + ex_PC;
    assign load_use_condition =	(ex_instruction.imm.opcode == riscv_core_p::L) &&  // EX is a load
						((ex_instruction.register.rd == id_instruction.register.rs1) || // desitination reguster of EX used by ID1
						 (ex_instruction.register.rd == id_instruction.register.rs2));  // desitination reguster of EX used by ID2						
	assign load_use = load_use_condition && !mem_jump;

    assign ex_PC_target = (ex_instruction.imm.opcode == riscv_core_p::JAL || ex_instruction.imm.opcode == riscv_core_p::JALR) ? ex_PC + NEXT_INST : 0;

    // Pipelines the ID stage control signals to the EX stage.
    always@(posedge clk) begin
        if(rst) begin
            // ex_PC <= 0;
            ex_ALUCtrl <= ALU_AND;
            ex_ALUSrc <= 0;
            ex_MemWrite <= 0;
            ex_MemRead <= 0;
            ex_Branch <= 0;
            ex_RegWrite <= 0;
            ex_MemtoReg <= 0;
            // ex_instruction <= 0;
            ex_immediate <= 0;
        end else begin
            // ex_PC <= id_PC;
            ex_ALUCtrl <= id_ALUCtrl;
            ex_ALUSrc <= id_ALUSrc;
            ex_MemWrite <= id_MemWrite;
            ex_MemRead <= id_MemRead;
            ex_Branch <= id_Branch;
            ex_RegWrite <= id_RegWrite;
            ex_MemtoReg <= id_MemtoReg;
            // ex_instruction <= id_instruction;
            ex_immediate <= id_immediate;
        end
    end

    always@(posedge clk) begin
		if (rst) begin
			ex_instruction <= NOP_INSTRUCTION;
			ex_PC <= 32'hxxxxxxxx;
		end
		else if (insert_ex_bubble) begin
			ex_instruction <= NOP_INSTRUCTION;
			ex_PC <= 32'hxxxxxxxx;
		end
		else begin
			ex_instruction <= id_instruction;
			ex_PC <= id_PC;
		end
	end

    // ALU combinational logic. Defaults to zero.

    always_comb begin
        forwardA = 0;
        if (mem_RegWrite && mem_instruction.imm.rd != 0 && mem_instruction.imm.rd == ex_instruction.register.rs1) begin
            ex_aluOp1 = mem_aluResult;
            forwardA = 1;
        end else if (wb_RegWrite && wb_instruction.imm.rd != 0 && wb_instruction.imm.rd == ex_instruction.register.rs1) begin
            ex_aluOp1 = wb_RegWriteData;
            forwardA = 2;
        end else
            ex_aluOp1 = ex_rs1;

        forwardB = 0;
        if (ex_instruction.imm.opcode == riscv_core_p::IMM || ex_instruction.imm.opcode == riscv_core_p::L || ex_instruction.imm.opcode == riscv_core_p::LUI)
            ex_aluOp2 = ex_immediate;
        else if (mem_RegWrite && mem_instruction.imm.rd != 0 && mem_instruction.imm.rd == ex_instruction.register.rs2) begin
            ex_aluOp2 = mem_aluResult;
            forwardB = 1;
        end else if (wb_RegWrite && wb_instruction.imm.rd != 0 && wb_instruction.imm.rd == ex_instruction.register.rs2) begin
            ex_aluOp2 = wb_RegWriteData;
            forwardB = 2;
        end else
            ex_aluOp2 = ex_rs2;

        if (ex_instruction.imm.opcode == riscv_core_p::S) begin
			ex_dWriteData = ex_aluOp2;	// the forwarded data goes to the "write data"
			ex_aluOp2 = ex_immediate;   // operand 2 needs to be overwritten by immediate data
		end

        case(ex_ALUCtrl)
            ALU_ADD: ex_aluResult = ex_aluOp1 + ex_aluOp2;
            ALU_SUB: ex_aluResult = ex_aluOp1 - ex_aluOp2;
            ALU_OR: ex_aluResult = ex_aluOp1 | ex_aluOp2;
            ALU_XOR: ex_aluResult = ex_aluOp1 ^ ex_aluOp2;
            ALU_AND: ex_aluResult = ex_aluOp1 & ex_aluOp2;
            ALU_SLT: ex_aluResult = $signed(ex_aluOp1) < $signed(ex_aluOp2);
            ALU_SLTU: ex_aluResult = ex_aluOp1 < ex_aluOp2;
            ALU_SLL: ex_aluResult = ex_aluOp1 << ex_aluOp2;
            ALU_SRL: ex_aluResult = ex_aluOp1 >> ex_aluOp2;
            ALU_SRA: ex_aluResult = $signed(ex_aluOp1) >>> ex_aluOp2[4:0];
            default: ex_aluResult = ZERO;
        endcase
    end


    //////////////////////////////////////////////////////////////////////
    // MEM: Memory Access
    //////////////////////////////////////////////////////////////////////	

    always_comb begin
        if (mem_Branch)
            case(mem_instruction.branch.funct3)
                FUNCT3_BEQ: mem_PCSrc = mem_Zero;
                FUNCT3_BNE: mem_PCSrc = ~mem_Zero;
                FUNCT3_BLT: mem_PCSrc = mem_aluResult[0];
                FUNCT3_BLTU: mem_PCSrc = mem_aluResult[0];
                FUNCT3_BGE: mem_PCSrc = ~mem_aluResult[0] & mem_Zero;
                FUNCT3_BGEU: mem_PCSrc = ~mem_aluResult[0] & mem_Zero;
                default: mem_PCSrc = 0;
            endcase
        else 
            mem_PCSrc = 0;
    end

    // assign mem_PCSrc = mem_Branch & mem_Zero;
    assign dAddress = mem_aluResult;
    assign dWriteData = mem_dWriteData;
    assign MemWrite = mem_MemWrite;
    assign MemRead = (mem_instruction.imm.opcode == riscv_core_p::L);
    // assign MemRead = mem_MemRead;
    // assign mem_branch_taken = (mem_instruction.imm.opcode == riscv_core_p::BRANCH && mem_aluResult == 0 && mem_instruction.branch.funct3 == FUNCT3_BEQ) || 
    //                           (mem_instruction.imm.opcode == riscv_core_p::BRANCH && mem_less_than && mem_instruction.branch.funct3 == FUNCT3_BLT) || 
    //                           (mem_instruction.imm.opcode == riscv_core_p::BRANCH && !mem_less_than_unsigned && mem_instruction.branch.funct3 == FUNCT3_BGEU) ||
    //                           (mem_instruction.imm.opcode == riscv_core_p::BRANCH && !mem_less_than && mem_instruction.branch.funct3 == FUNCT3_BGE);

    always_comb
	begin
		mem_branch_taken = 0;  // default case (not taken)
		if (mem_instruction.imm.opcode == riscv_core_p::BRANCH)
			case (mem_instruction.branch.funct3)
				riscv_core_p::FUNCT3_BEQ: mem_branch_taken = (mem_aluResult == 0);
				riscv_core_p::FUNCT3_BNE: mem_branch_taken = (mem_aluResult != 0);
				riscv_core_p::FUNCT3_BGE: mem_branch_taken = ((mem_aluResult == 0) || ($signed(mem_aluResult) > 0));
				riscv_core_p::FUNCT3_BLT: mem_branch_taken = ($signed(mem_aluResult) < 0);
			endcase
	end
    assign mem_MemWrite = (mem_instruction.imm.opcode == riscv_core_p::S);
    assign mem_jump = (mem_branch_taken || mem_instruction.imm.opcode == riscv_core_p::JAL || mem_instruction.imm.opcode == riscv_core_p::JALR);
    assign insert_mem_bubble = mem_jump;

    // Pipelines the EX stage control signals to the MEM stage.
    always@(posedge clk) begin
        if(rst) begin
            // mem_MemWrite <= 0;
            mem_MemRead <= 0;
            mem_Branch <= 0;
            mem_RegWrite <= 0;
            mem_MemtoReg <= 0;
            mem_instruction <= NOP_INSTRUCTION;
            mem_branchAddress <= 0;
            mem_Zero <= 0;
            mem_aluResult <= 0;
            mem_rs2 <= 0;
            mem_dWriteData <= 0;
            mem_PC <= 32'hxxxxxxxx;
        end else if (insert_mem_bubble) begin
            mem_MemRead <= 0;
            mem_Branch <= 0;
            mem_RegWrite <= 0;
            mem_MemtoReg <= 0;
            mem_aluResult <= 0;
            mem_instruction <= NOP_INSTRUCTION;
            mem_branchAddress <= 0;
            mem_rs2 <= 0;
            mem_dWriteData <= 0;
            mem_Zero <= 0;
            mem_PC <= 32'hxxxxxxxx;
            mem_PC_target <= 0;
        end else begin
            // mem_MemWrite <= ex_MemWrite;
            mem_MemRead <= ex_MemRead;
            mem_Branch <= ex_Branch;
            mem_RegWrite <= ex_RegWrite;
            mem_MemtoReg <= ex_MemtoReg;
            mem_instruction <= ex_instruction;
            mem_branchAddress <= ex_branchAddress;
            mem_instruction <= ex_instruction;
            mem_aluResult <= ex_aluResult;
            mem_dWriteData <= ex_dWriteData;
            mem_Zero <= ex_Zero;
            mem_rs2 <= ex_rs2;
            mem_PC <= ex_PC;
            mem_PC_target <= ex_PC_target;
        end
    end

    //////////////////////////////////////////////////////////////////////
    // WB: Write Back
    //////////////////////////////////////////////////////////////////////	

    assign wb_RegWriteData = (wb_instruction.imm.opcode == riscv_core_p::L) ? dReadData : wb_aluResult;
    assign WriteBackData = (wb_instruction.imm.opcode == riscv_core_p::JAL || wb_instruction.imm.opcode == riscv_core_p::JALR) ? wb_PC_target : wb_RegWriteData;

    // Pipelines the MEM stage controls and results to the WB stage.
    always_ff@(posedge clk)
        if (rst) begin
            wb_instruction <= 0;
            wb_MemToReg <= 0;
            wb_aluResult <= 0;
            wb_RegWrite <= 0;
            wb_branch_taken <= 0;
            wb_jump <= 0;
            wb_PC <= 0;
            wb_PC_target <= 0;
        end
        else begin
            wb_instruction <= mem_instruction;
            wb_MemToReg <= mem_MemtoReg;
            wb_aluResult <= mem_aluResult;
            wb_RegWrite <= mem_RegWrite;
            wb_branch_taken <= mem_branch_taken;
            wb_jump <= mem_jump;
            wb_PC <= mem_PC;
            wb_PC_target <= mem_PC_target;
        end

    `ifdef SIM

    function printInstruction(input riscv_core_p::Instruction inst);
        case(inst.register.opcode)
            LUI: begin
                $write("lui\t\t x%0d, %0d \n", inst.u.rd, inst.u.imm31_12);
            end
            JAL: begin
                $write("jal\t\t x%0d, %0d \n", inst.j.rd, {inst.j.imm20, inst.j.imm19_12, inst.j.imm11, inst.j.imm10_1, 1'b0});
            end
            JALR: begin
                $write("jalr\t\t x%0d, %0d(%0d) \n", inst.imm.rd, inst.imm.imm, inst.imm.rs1);
            end
            AUIPC: begin
                $write("auipc\t x%0d, $0d \n", inst.u.rd, inst.u.imm31_12);
            end
            IMM: begin
                integer immediateVal = {{20 {inst.imm.imm[BIT_11]}}, inst.imm.imm};
                case(inst.imm.funct3)
                    FUNCT3_ADD: 
                        if(inst != NOP_INSTRUCTION) 
                            $write("addi\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                        `ifdef DISPLAY_NOP
                        else $write("nop \n");
                        `endif
                    FUNCT3_SLT: $write("slti\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                    FUNCT3_SLTU: $write("sltiu \t x%0d, x%0d, 0x%8h (%0d) \n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                    FUNCT3_XOR: $write("xori\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                    FUNCT3_OR: $write("ori\t\t x%0d, x%0d, 0x%8h (%0d)\n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                    FUNCT3_AND: $write("andi\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.imm.rd, inst.imm.rs1, $signed(immediateVal), $signed(immediateVal));
                    FUNCT3_SLL: $write("slli\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.register.rd, inst.register.rs1, inst.register.rs2, inst.register.rs2);
                    FUNCT3_SRL: 
                        if (inst.register.funct7 == PRIMARY)
                            $write("srai\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.register.rd, inst.register.rs1, inst.register.rs2, inst.register.rs2);
                        else 
                            $write("srli\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.register.rd, inst.register.rs1, inst.register.rs2, inst.register.rs2);
                    default: $write("Unimplemented \n");
                endcase
            end
            BRANCH: begin
                integer immediateBVal = {{19 {inst.branch.imm12}}, inst.branch.imm11, inst.branch.imm10_5, inst.branch.imm4_1, 1'b0};
                case(inst.branch.funct3)
                    FUNCT3_BEQ: $write("beq\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    FUNCT3_BNE: $write("bne\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    FUNCT3_BLT: $write("blt\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    FUNCT3_BLTU: $write("bltu\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    FUNCT3_BGE: $write("bge\t\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    FUNCT3_BGEU: $write("bgeu\t x%0d, x%0d, 0x%8h (%0d) \n", inst.branch.rs1, inst.branch.rs2, $signed(immediateBVal), $signed(immediateBVal));
                    default: $write("Unimplemented \n");
                endcase    
            end
            OP: begin
                case(inst.imm.funct3)
                    FUNCT3_ADD: 
                        if(inst == NOP_INSTRUCTION) begin
                            `ifdef DISPLAY_NOP
                            $write("nop \n"); 
                            `endif
                        end else if (inst.register.funct7 == PRIMARY) $write("add\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2); 
                        else 
                            $write("sub\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_SLT: $write("slt\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_SLTU: $write("sltu\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_XOR: $write("xor\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_OR: $write("or\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_AND: $write("and\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_SLL: $write("sll\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    FUNCT3_SRL: 
                        if (inst.register.funct7 == PRIMARY) 
                            $write("sra\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2); 
                        else 
                            $write("srl\t\t x%0d, x%0d, x%0d \n", inst.register.rd, inst.register.rs1, inst.register.rs2);
                    default: $write("Unimplemented \n");
                endcase
            end
            S: begin
                case(inst.store.funct3)
                    FUNCT3_B: $write("sb\t\t x%0d, %0d(x%0d)\n", inst.store.rs1, $signed({inst.store.imm11_5, inst.store.imm4_0}), inst.store.rs2);
                    FUNCT3_H: $write("sh\t\t x%0d, %0d(x%0d)\n", inst.store.rs1, $signed({inst.store.imm11_5, inst.store.imm4_0}), inst.store.rs2);
                    FUNCT3_W: $write("sw\t\t x%0d, %0d(x%0d)\n", inst.store.rs1, $signed({inst.store.imm11_5, inst.store.imm4_0}), inst.store.rs2);
                    FUNCT3_D: $write("sd\t\t x%0d, %0d(x%0d)\n", inst.store.rs1, $signed({inst.store.imm11_5, inst.store.imm4_0}), inst.store.rs2);
                    default: $write("Unimplemented \n");
                endcase
            end
            L: begin
                case(inst.store.funct3)
                    FUNCT3_B: $write("lb\t\t x%0d, %0d(x%0d)\n", inst.imm.rd, $signed(inst.imm.imm), inst.imm.rs1);
                    FUNCT3_H: $write("lh\t\t x%0d, %0d(x%0d)\n", inst.imm.rd, $signed(inst.imm.imm), inst.imm.rs1);
                    FUNCT3_W: $write("lw\t\t x%0d, %0d(x%0d)\n", inst.imm.rd, $signed(inst.imm.imm), inst.imm.rs1);
                    FUNCT3_D: $write("ld\t\t x%0d, %0d(x%0d)\n", inst.imm.rd, $signed(inst.imm.imm), inst.imm.rs1);
                    default: $write("Unimplemented \n");
                endcase
            end
            FENCE: begin
                $write("fence\n");
            end
            SYSTEM: begin
                if(inst.imm.imm == 12'b0)
                    $write("ecall\n");
                else
                    $write("ebreak\n");
            end
            default: $write("Uknown Instruction\n");
        endcase
    endfunction



    integer numInst;

    always_ff@(posedge clk) begin
        if(rst)
            numInst = 0;
    end

    always_ff@(negedge clk) begin
        if (rst) begin
            
        end else begin
        `ifdef LOG_CSR
            $write("\t  fcsr: \t0x%h\t\tcycle: \t0x%h\t\ttime: \t0x%h\n", id_csrFile[CSR_FCSR], id_csrFile[CSR_CYCLE], id_csrFile[CSR_TIME]);
        `endif
        `ifdef LOG_REGISTERS
        integer i, j, c;
        c = 0;
        for (i = 0; i < RISCV_REG_NUM / 4; i=i+1) begin
            $write("\t  ");
            for (j = 0; j < 4; j=j+1) begin
                $write("x%0d: \t%h\t\t", c, id_registerFile[c]);
                c++;
            end
            $write("\n");
        end
        `endif
        if (wb_instruction != NOP_INSTRUCTION && wb_instruction != 32'h00000000) begin
            numInst++;
        end

        `ifndef DISPLAY_NOP
        if (wb_instruction != NOP_INSTRUCTION) begin
        `endif
            $write("%8dns\t%d :\t", $time, numInst);
            $write("0x%h  core-0: \t", if_PC);
            $write("(0x%h)  ->  ", wb_instruction);
            printInstruction(wb_instruction); 
        `ifndef DISPLAY_NOP
        end
        `endif
    end
    end
    `endif
endmodule
