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

module riscv_basic_pipeline 
#(
    parameter PC_INITIAL = 0x00400000,
    parameter XLEN = 32
) (
    input wire logic clk,
    input wire logic rst,
    output logic[XLEN - 1:0] PC,
    input logic[RISCV_INSTR_LEN - 1] instruction,
    output wire logic[XLEN - 1:0] ALUResult,
    output wire logic[XLEN - 1:0] dAddress,
    output wire logic[XLEN - 1:0] dWriteData,
    output wire logic[XLEN - 1:0] dReadData,
    output wire logic MemRead,
    output wire logic MemWrite,
    output wire logic[XLEN - 1:0] WriteBackData
);

    //////////////////////////////////////////////////////////////////////
    // IF: Instruction Fetch
    //////////////////////////////////////////////////////////////////////	
    logic[XLEN - 1:0] if_PC;

    assign PC = if_PC;

    always@(posedge clk) begin
        if (rst)
            PC <= PC_INITIAL;
        else if (mem_PCSrc)
            if_PC <= mem_branchAddress;
        else begin
            if_PC <= PC + 4;
        end
    end

    //////////////////////////////////////////////////////////////////////
    // ID: Instruction Decode
    //////////////////////////////////////////////////////////////////////	
    logic Instruction id_instruction;
    riscv_core_p::ALUOp id_ALUCtrl;
    logic[XLEN - 1:0] id_PC, id_immediate, ex_rs1, ex_rs2;
    logic id_ALUSrc, id_MemWrite, id_MemRead, id_Branch, id_RegWrite, id_MemtoReg;
    logic[XLEN - 1:0] registerFile[RISCV_REG_NUM:0];

    assign id_instruction = instruciton;

    always@(posedge clk)
        if (rst)
            id_PC <= 0;
        else begin
            id_PC <= if_PC;
        end


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
                    default: id_ALUCtrl = ALU_AND;
                endcase
                id_Branch = 0;
                // Select the immediate src if immediate opcode.
                id_ALUSrc = id_instruction.register.opcode == IMM;
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
                id_MemtoReg = 1;
                id_RegWrite = 0;
                id_MemRead = 0;
                id_MemWrite = 1;
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

    // Register file that has a single write port.
    always_ff@(posedge clk) begin
        ex_rs1 <= registerFile[id_instruction.register.rs1];
        ex_rs2 <= registerFile[id_instruction.register.rs2];

        if (id_RegWrite && mem_instruction.register.rd != ZERO) begin 
            id_registerFile[mem_instruction.register.rd] <= mem_RegData;
            if (id_instruction.register.rs1 == wb_instruction.register.rd_address)
                ex_rs1 <= wb_RegWriteData;
            if (id_instruction.register.rs2 == wb_instruction.register.rd_address)
                ex_rs2 <= wb_RegWriteData;
        end
    end

    // Initial block to initialize the register file.
    initial begin
        integer i;
        for (i = 0; i < RISCV_REG_NUM; i=i+1) begin
            id_registerFile[i] = ZERO;
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
                id_instruction.branch.imm4_1
            };
            riscv_core_p::S: id_immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {id_instruction.store.imm11_5[BIT_11]}}, 
                id_instruction.store.imm11_5, 
                id_instruction.store.imm4_0
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
    logic Instruction ex_instruction;
    logic[XLEN - 1:0] ex_PC, ex_immediate, ex_aluOp1, ex_aluOp2, ex_aluResult, ex_branchAddress;
    logic ex_ALUSrc, ex_MemWrite, ex_MemRead, ex_Branch, ex_RegWrite, ex_MemtoReg, ex_Zero;
    riscv_core_p::ALUOp ex_ALUCtrl;
    
    assign ex_aluOp1 = ex_rs1;
    assign ex_aluOp2 = ex_ALUSrc ? ex_immediate : ex_rs2;
    assign ex_Zero = ex_aluResult == ZERO;

    assign ex_branchAddress = (ex_immediate << 1) + ex_PC;

    always@(posedge clk) begin
        if(rst) begin
            ex_PC <= 0;
            ex_ALUCtrl <= 0;
            ex_ALUSrc <= 0;
            ex_MemWrite <= 0;
            ex_MemRead <= 0;
            ex_Branch <= 0;
            ex_RegWrite <= 0;
            ex_MemtoReg <= 0;
            ex_instruction <= 0;
            ex_immediate <= 0;
        end else begin
            ex_PC <= id_PC;
            ex_ALUCtrl <= id_ALUCtrl;
            ex_ALUSrc <= id_ALUSrc;
            ex_MemWrite <= id_MemWrite;
            ex_MemRead <= id_MemRead;
            ex_Branch <= id_Branch;
            ex_RegWrite <= id_RegWrite;
            ex_MemtoReg <= id_MemtoReg;
            ex_instruction <= id_instruction;
            ex_immediate <= id_immediate;
        end
    end

    // ALU combinational logic. Defaults to zero.
    always_comb begin
        case(ex_ALUCtrl)
            ALU_ADD: ex_aluResult = ex_aluOp1 + ex_aluOp2;
            ALU_SUB: ex_aluResult = ex_aluOp1 - ex_aluOp2;
            ALU_OR: ex_aluResult = ex_aluOp1 | ex_aluOp2;
            ALU_XOR: ex_aluResult = ex_aluOp1 ^ ex_aluOp2;
            ALU_AND: ex_aluResult = ex_aluOp1 & ex_aluOp2;
            ALU_SLT: ex_aluResult = $signed(ex_aluOp1) < $signed(ex_aluOp2);
            default: ex_aluResult = ZERO;
        endcase
    end


    //////////////////////////////////////////////////////////////////////
    // MEM: Memory Access
    //////////////////////////////////////////////////////////////////////	
    logic Instruction mem_instruction;
    logic[XLEN - 1:0] mem_PC, mem_immediate, mem_aluResult, mem_branchAddress, mem_rs2;
    logic mem_MemWrite, mem_MemRead, mem_Branch, mem_RegWrite, mem_MemtoReg, mem_Zero, mem_PCSrc;

    assign mem_PCSrc = mem_Branch & mem_Zero;
    assign dAddress = mem_aluResult;
    assign dWriteData = mem_rs2;
    assign MemWrite = mem_MemWrite;
    assign MemRead = mem_MemRead;

    always@(posedge clk) begin
        if(rst) begin
            mem_PC <= 0;
            mem_ALUCtrl <= 0;
            mem_ALUSrc <= 0;
            mem_MemWrite <= 0;
            mem_MemRead <= 0;
            mem_Branch <= 0;
            mem_RegWrite <= 0;
            mem_MemtoReg <= 0;
            mem_instruction <= 0;
            mem_immediate <= 0;
            mem_branchAddress <= 0;
            mem_Zero <= 0;
            mem_aluResult <= 0;
            mem_rs2 <= 0;
        end else begin
            mem_PC <= ex_PC;
            mem_ALUSrc <= ex_ALUSrc;
            mem_MemWrite <= ex_MemWrite;
            mem_MemRead <= ex_MemRead;
            mem_Branch <= ex_Branch;
            mem_RegWrite <= ex_RegWrite;
            mem_MemtoReg <= ex_MemtoReg;
            mem_instruction <= ex_instruction;
            mem_immediate <= ex_immediate;
            mem_branchAddress <= ex_branchAddress;
            mem_instruction <= ex_instruction;
            mem_aluResult <= ex_aluResult;
            mem_Zero <= ex_Zero;
            mem_rs2 <= ex_rs2;
        end
    end

    //////////////////////////////////////////////////////////////////////
    // WB: Write Back
    //////////////////////////////////////////////////////////////////////	
    logic[XLEN - 1:0] wb_RegWriteData, wb_ReadData, wb_MemToReg, wb_aluResult;
    logic Instruction wb_instruction;

    assign wb_RegWriteData = wb_MemToReg ? wb_ReadData : wb_aluResult;

    always_ff@(posedge clk)
        if (rst) begin
            wb_instruction <= 0;
            wb_ReadData <= 0;
            wb_MemToReg <= 0;
            wb_aluResult <= 0;
        end
        else begin
            wb_instruction <= mem_instruction;
            wb_ReadData <= dReadData;
            wb_MemToReg <= mem_MemtoReg;
            wb_aluResult <= mem_aluResult;
        end

endmodule
