/***************************************************************************
* 
* Module: riscv_single_cycle
*
* Author: Ben Brenkman
* Class: ECEn 323, Lab 7, Winter 2020
* Date: 2/13/2020
*
* Description: A single cycle control logic for a riscv processor.
*
****************************************************************************/

import riscv_core_p::*;

// A signle cycle control unit for a riscv processor.
module riscv_single_cycle
# (
    parameter XLEN = RISCV_XLEN,
    parameter INITIAL_PC = 32'h00400000
)
(
    input wire logic clk,
    input wire logic rst,
    input wire logic[XLEN - 1:0] instruction,
    input wire logic[XLEN - 1:0] dReadData,
    output logic[XLEN - 1:0] PC,
    output logic[XLEN - 1:0] dAddress,
    output logic[XLEN - 1:0] dWriteData,
    output logic MemRead,
    output logic MemWrite
);

    // Logic definitions for all the signals needed to be generated.
    logic PCSrc, ALUSrc, MemtoReg, Zero, RegWrite, isBranch;
    riscv_core_p::ALUOp ALUCtrl;

    // Decoded instruction.
    riscv_core_p::Instruction instruct;
    assign instruct = instruction;

    // PCSrc mux control logic.
    assign PCSrc = Zero & isBranch;

    // Datapath module for the riscv processor. Single cycle.
    riscv_simple_datapath #(XLEN, INITIAL_PC) datapath(.*);

    // Combinational logic to determine what the instruction is and control the datapath.
    // The signals used to control the datapath are determinec by the opcode, as the opcode
    // classifies the different catergories of the ISA.
    always_comb begin
        case(instruct.register.opcode)
            // Case for immediate and op opcodes.
            OP, IMM: begin
                case(instruct.register.funct3)
                    FUNCT3_ADD: ALUCtrl = (instruct.register.opcode == IMM) ? ALU_ADD : instruct.register.funct7 == PRIMARY ? ALU_ADD : ALU_SUB;
                    FUNCT3_SLT: ALUCtrl = ALU_SLT;
                    FUNCT3_XOR: ALUCtrl = ALU_XOR;
                    FUNCT3_OR: ALUCtrl = ALU_OR;
                    FUNCT3_AND: ALUCtrl = ALU_AND;
                    default: ALUCtrl = ALU_AND;
                endcase
                isBranch = 0;
                // Select the immediate src if immediate opcode.
                ALUSrc = instruct.register.opcode == IMM;
                MemtoReg = 0;
                RegWrite = 1;
                MemRead = 0;
                MemWrite = 0;
            end

            // Branch instructions are decoded here.
            BRANCH: begin
                // ALUCtrl logic to help determine if the branch needs to be taken.
                case(instruct.branch.funct3)
                    FUNCT3_BEQ: ALUCtrl = ALU_SUB;
                    default: ALUCtrl = ALU_ADD;
                endcase
                isBranch = 1;
                ALUSrc = 0;
                MemtoReg = 0;
                RegWrite = 0;
                MemRead = 0;
                MemWrite = 0;
            end


            // Load instructions decoded here.
            L: begin
                // ALU is add so that the offset can be caluclated.
                ALUCtrl = ALU_ADD;
                isBranch = 0;
                ALUSrc = 1;
                MemtoReg = 1;
                RegWrite = 1;
                MemRead = 1;
                MemWrite = 0;
            end

            // Store instrucitons are decoded here.
            S: begin
                // ALU is add so that the offset can be caluclated.
                ALUCtrl = ALU_ADD;
                isBranch = 0;
                ALUSrc = 1;
                MemtoReg = 1;
                RegWrite = 0;
                MemRead = 0;
                MemWrite = 1;
            end

            // Default values, everything is zeroed.
            default: begin
                ALUCtrl = ALU_ADD;
                ALUSrc = 0;
                isBranch = 0;
                MemtoReg = 0;
                RegWrite = 0;
                MemRead = 0;
                MemWrite = 0;
            end     
        endcase
    end
endmodule
