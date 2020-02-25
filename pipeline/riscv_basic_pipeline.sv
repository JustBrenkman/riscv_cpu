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

// logic[XLEN - 1:0] program_counter;
// assign PC = program_counter;

//////////////////////////////////////////////////////////////////////
// IF: Instruction Fetch
//////////////////////////////////////////////////////////////////////	
logic[XLEN - 1:0] if_PC;
logic Instruction if_instruction;

assign PC = if_PC;

always@(posedge clk) begin
    if (rst)
        PC <= PC_INITIAL;
    else if (mem_PCSrc)
        if_PC <= mem_branchTarget;
    else begin
        if_PC <= PC + 4;
    end
    if_instruction <= instruction;
end


//////////////////////////////////////////////////////////////////////
// ID: Instruction Decode
//////////////////////////////////////////////////////////////////////	
logic Instruction id_instruction;
riscv_core_p::ALUOp id_ALUCtrl;
logic[XLEN - 1:0] id_PC, id_immediate;
logic id_ALUSrc, id_MemWrite, id_MemRead, id_Branch, id_RegWrite, id_MemtoReg;

always@(posedge clk)
    if (rst)
        id_PC <= 0;
    else begin
        id_PC <= if_PC;
        id_instruction <= if_instruction;
    end


//////////////////////////////////////////////////////////////////////
// EX: Execute
//////////////////////////////////////////////////////////////////////	
logic Instruction ex_instruction;
logic[XLEN - 1:0] ex_PC, ex_immediate;
logic ex_ALUCtrl, ex_ALUSrc, ex_MemWrite, ex_MemRead, ex_Branch, ex_RegWrite, ex_MemtoReg;

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
    end else begin
        ex_PC <= id_PC;
        ex_ALUCtrl <= id_ALUCtrl;
        ex_ALUSrc <= id_ALUSrc;
        ex_MemWrite <= id_MemWrite;
        ex_MemRead <= id_MemRead;
        ex_Branch <= id_Branch;
        ex_RegWrite <= id_RegWrite;
        ex_MemtoReg <= id_MemtoReg;
    end
end


//////////////////////////////////////////////////////////////////////
// MEM: Memory Access
//////////////////////////////////////////////////////////////////////	



//////////////////////////////////////////////////////////////////////
// WB: Write Back
//////////////////////////////////////////////////////////////////////	




endmodule