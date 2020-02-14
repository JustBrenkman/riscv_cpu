/***************************************************************************
* 
* Module: riscv_simple_datapath
*
* Author: Ben Brenkman
* Class: ECEn 323, Lab 6, Winter 2020
* Date: 2/11/2020
*
* Description: This file contains a simple riscv datapath.
*
****************************************************************************/

// Import datatypes, constants and enums used in the processor.
import riscv_core_p::*;

// Simple riscv datapath that implements a subset of the riscv32i base.
// Module is paramaterized and can be easily modified to include base 64.
module riscv_simple_datapath 
#(
    parameter XLEN = riscv_core_p::RISCV_XLEN,
    parameter INITIAL_PC = 32'h00400000
) 
(
    input wire logic clk,
    input wire logic rst,
    input wire logic[RISCV_XLEN - 1:0] instruction,
    input wire logic PCSrc,
    input wire logic ALUSrc,
    input wire logic RegWrite,
    input wire logic MemtoReg,
    input wire logic[3:0] ALUCtrl,
    // input ALUOp ALUCtrl,
    output logic[XLEN - 1:0] PC,
    output logic Zero,
    output logic[XLEN - 1:0] dAddress,
    output logic[XLEN - 1:0] dWriteData,
    input logic[XLEN - 1:0] dReadData
);

    //////////////////////////////////////////////////////////////
    //
    //                 Instruction decoding
    //
    //////////////////////////////////////////////////////////////    

    riscv_core_p::RegInstruction regInstruction;
    riscv_core_p::BranchInstruction branchInstruction;
    riscv_core_p::SInstruction sInstruction;
    riscv_core_p::ImmInstruction immInstruction;

    // Decode all the instructions.
    assign regInstruction = instruction;
    assign branchInstruction = instruction;
    assign sInstruction = instruction;
    assign immInstruction = instruction;

    //////////////////////////////////////////////////////////////
    //
    //                  Register File Code
    //
    //////////////////////////////////////////////////////////////
    
    logic[XLEN - 1:0] registerFile[RISCV_REG_NUM:0];
    logic[REGAD_LEN - 1:0] rs1_address, rs2_address, rd_address;
    logic[XLEN - 1:0] rs1, rs2, rd, aluResult, immediate;

    // Get the register values from the register function.
    assign rd_address = regInstruction.rd;
    assign rs1_address = regInstruction.rs1;
    assign rs2_address = regInstruction.rs2;

    // Tje double port read of the register file.
    assign rs1 = registerFile[rs1_address];
    assign rs2 = registerFile[rs2_address];
    assign rd = MemtoReg ? dReadData : aluResult;

    // Register file that has a single write port.
    always_ff@(posedge clk) 
        if (RegWrite && rd_address != ZERO) registerFile[rd_address] <= rd;

    // Initial block to initialize the register file.
    initial begin
        integer i;
        for (i = 0; i < RISCV_REG_NUM; i=i+1) begin
            registerFile[i] = ZERO;
        end
    end

    //////////////////////////////////////////////////////////////
    //
    //                      ALU Code
    //
    //////////////////////////////////////////////////////////////

    logic[XLEN - 1:0] aluOp1, aluOp2;

    // Determine the aluResult and the operands of the ALU
    assign aluOp2 = ALUSrc ? immediate : rs2;
    assign aluOp1 = rs1;
    assign Zero = aluResult == ZERO;

    // ALU combinational logic. Defaults to zero.
    always_comb begin
        case(ALUCtrl)
            ALU_ADD: aluResult = aluOp1 + aluOp2;
            ALU_SUB: aluResult = aluOp1 - aluOp2;
            ALU_OR: aluResult = aluOp1 | aluOp2;
            ALU_XOR: aluResult = aluOp1 ^ aluOp2;
            ALU_AND: aluResult = aluOp1 & aluOp2;
            ALU_SLT: aluResult = $signed(aluOp1) < $signed(aluOp2);
            default: aluResult = ZERO;
        endcase
    end

    //////////////////////////////////////////////////////////////
    //
    //                   Immediate Generation
    //
    //////////////////////////////////////////////////////////////

    // Combinational logic for the immediate number generation.
    // Will generate different numbers based on the major OpCode.
    always_comb begin
        case(instruction[riscv_core_p::OPCODE_LEN - 1:0])
            riscv_core_p::BRANCH: immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {branchInstruction.imm12}}, 
                branchInstruction.imm12, 
                branchInstruction.imm11, 
                branchInstruction.imm10_5, 
                branchInstruction.imm4_1
            };
            riscv_core_p::S: immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {sInstruction.imm11_5[BIT_11]}}, 
                sInstruction.imm11_5, 
                sInstruction.imm4_0
            };
            default: immediate = {
                {XLEN - riscv_core_p::REGAD_LEN {immInstruction.imm[BIT_11]}}, 
                immInstruction.imm
            };
        endcase
    end


    //////////////////////////////////////////////////////////////
    //
    //                   Program Counter
    //
    /////////////////////////////////////////////////////////////    

    logic[XLEN - 1:0] programCounter, branchOffset;

    // Determine the branch offset, and resulting address.
    assign branchOffset = immediate << 1;
    assign dAddress = aluResult;
    assign dWriteData = rs2;
    assign PC = programCounter;
    
    // Program counter logic, will perform different updates to the PC
    // counter based on the PCSrc signal. Initializes the PC counter.
    always_ff@(posedge clk) begin
        if (rst)
            programCounter <= INITIAL_PC;
        else if (PCSrc)
            programCounter <= branchOffset + programCounter;
        else 
            programCounter <= programCounter + riscv_core_p::NEXT_INST;
    end

endmodule