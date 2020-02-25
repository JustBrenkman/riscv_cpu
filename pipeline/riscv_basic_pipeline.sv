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

always@(posedge clk)
    if (rst)
        PC <= PC_INITIAL;
    else
        if_PC <= PC;
        if_instruction <= instruction;


//////////////////////////////////////////////////////////////////////
// ID: Instruction Decode
//////////////////////////////////////////////////////////////////////	
logic Instruction id_instruction;

always@(posedge clk)
    if (rst)
        id_instruction <= 0;
    else
        id_instruction <= if_instruction;


//////////////////////////////////////////////////////////////////////
// EX: Execute
//////////////////////////////////////////////////////////////////////	



//////////////////////////////////////////////////////////////////////
// MEM: Memory Access
//////////////////////////////////////////////////////////////////////	



//////////////////////////////////////////////////////////////////////
// WB: Write Back
//////////////////////////////////////////////////////////////////////	




endmodule