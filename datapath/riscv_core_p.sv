/***************************************************************************
* 
* Package: riscv_core_p
*
* Author: Ben Brenkman
* Class: ECEn 323, Lab 6, Winter 2020
* Date: 2/11/2020
*
* Description: Package contains datatypes, constants and enums used.
*
****************************************************************************/


// Package contains datatypes, constants and enums used
// througout the processor.
package riscv_core_p;
    // Riscv instruction lenght.
    localparam RISCV_XLEN = 32;
    localparam RISCV_FLEN = 32;
    // Riscv number of registers.
    localparam RISCV_REG_NUM = 32;
    localparam RISCV_INSTR_LEN = 32;
    localparam RISCV_CSR_LEN = 32;
    localparam RISCV_CSR_NUM = 4096;

    // Lenghts of the various segments of a riscv instruction.
    localparam IMMEDIATE_LEN = 12;
    localparam FUNC3_LEN = 3;
    localparam FUNC7_LEN = 7;
    localparam REGAD_LEN = 5;
    localparam OPCODE_LEN = 7;

    // Hard constant 0 for ALU testing
    localparam ZERO = 0;

    // Hard constant for PC increment value.
    localparam NEXT_INST = 4;

    // Bit used for addressing, can beused without the -1
    // to improve the readibility of the code.
    localparam BIT_0 = 0;
    localparam BIT_1 = 1;
    localparam BIT_2 = 2;
    localparam BIT_3 = 3;
    localparam BIT_4 = 4;
    localparam BIT_5 = 5;
    localparam BIT_6 = 6;
    localparam BIT_7 = 7;
    localparam BIT_8 = 8;
    localparam BIT_9 = 9;
    localparam BIT_10 = 10;
    localparam BIT_11 = 11;
    localparam BIT_12 = 12;
    localparam BIT_13 = 13;
    localparam BIT_14 = 14;
    localparam BIT_15 = 15;
    localparam BIT_16 = 16;
    localparam BIT_17 = 17;
    localparam BIT_18 = 18;
    localparam BIT_19 = 19;
    localparam BIT_20 = 20;
    localparam BIT_30 = 30;
    localparam BIT_31 = 31;

    // Funct3 defines for all the different types.
    // These first few are for the ALU.
    localparam FUNCT3_ADD=3'b000;
    localparam FUNCT3_SUB=3'b000;
    localparam FUNCT3_SLL=3'b001;
    localparam FUNCT3_SLT=3'b010;
    localparam FUNCT3_SLTU=3'b011;
    localparam FUNCT3_XOR=3'b100;
    localparam FUNCT3_SRL=3'b101;
    localparam FUNCT3_SRA=3'b101;
    localparam FUNCT3_OR=3'b110;
    localparam FUNCT3_AND=3'b111;

    // These are for the Branch instruction funct3.
    localparam FUNCT3_BEQ=3'b000;
    localparam FUNCT3_BNE=3'b001;
    localparam FUNCT3_BLT=3'b100;
    localparam FUNCT3_BGE=3'b101;
    localparam FUNCT3_BLTU=3'b110;
    localparam FUNCT3_BGEU=3'b111;

    // This is for Loads and stores, the different types.
    localparam FUNCT3_B=3'b000;
    localparam FUNCT3_H=3'b001;
    localparam FUNCT3_W=3'b010;
    localparam FUNCT3_D=3'b011;

    // This is exclusively for loads as stores do not sign extend.
    localparam FUNCT3_BU=3'b100;
    localparam FUNCT3_HU=3'b101;

    localparam NOP_INSTRUCTION = 32'h00000013; // addi x0, x0, 0

    typedef enum logic[11:0] {
        CSR_FFLAGS=12'h001,
        CSR_FRM=12'h002,
        CSR_FCSR=12'h003,
        CSR_CYCLE=12'hc00,
        CSR_TIME=12'hc01,
        CSR_INSTRET=12'hc02,
        CSR_CYCLEH=12'hc80,
        CSR_TIMEH=12'hc81,
        CSR_INSTRETH=12'hc82
    } CSRAddress;

    // ALU Operations enum. NOTE not complete.
    typedef enum logic[3:0] { 
        ALU_AND=4'b0000, 
        ALU_OR=4'b0001, 
        ALU_ADD=4'b0010,
        ALU_SUB=4'b0110, 
        ALU_SLT=4'b0111,
        ALU_SLTU=4'b1000,
        ALU_SLL=4'b1001,
        ALU_SRL=4'b1011,
        ALU_XOR=4'b1100,
        ALU_SRA=4'b1101
    } ALUOp;

    // Major OpcCodes, not complete.
    typedef enum logic[6:0] { 
        LUI = 7'b0110111,
        JAL = 7'b1101111,
        JALR = 7'b1100111,
        AUIPC = 7'b0010111,
        IMM = 7'b0010011,
        BRANCH = 7'b1100011,
        OP = 7'b0110011,
        S = 7'b0100011,
        L = 7'b0000011,
        FENCE = 7'b0001111,
        SYSTEM = 7'b1110011
    } OpCode;

    // Major OpcCodes, not complete.
    typedef enum logic[6:0] { 
        PRIMARY=7'b0000000
    } Funct7;

    // Immediate instruction struct for decoding.
    typedef struct packed {
        logic [IMMEDIATE_LEN - 1:0] imm;
        logic [REGAD_LEN - 1:0] rs1;
        logic[FUNC3_LEN - 1:0] funct3;
        logic [REGAD_LEN - 1:0] rd;
        OpCode opcode;
    } ImmInstruction;

    // Register instruction struct for decoding.
    typedef struct packed {
        Funct7 funct7;
        logic [REGAD_LEN - 1:0] rs2;
        logic [REGAD_LEN - 1:0] rs1;
        logic[FUNC3_LEN - 1:0] funct3;
        logic [REGAD_LEN - 1:0] rd;
        OpCode opcode;
    } RegInstruction;

    // Branch instruction struct for decoding.
    typedef struct packed {
        logic imm12;
        logic[BIT_10:BIT_5] imm10_5;
        logic[REGAD_LEN - 1:0] rs2;
        logic[REGAD_LEN - 1:0] rs1;
        logic[FUNC3_LEN - 1:0] funct3;
        logic[BIT_4:BIT_1] imm4_1;
        logic imm11;
        OpCode opcode;
    } BranchInstruction;

    // Store/Load instruction struct for decoding.
    typedef struct packed {
        logic[BIT_11:BIT_5] imm11_5;
        logic[REGAD_LEN - 1:0] rs2;
        logic[REGAD_LEN - 1:0] rs1;
        logic[FUNC3_LEN - 1:0] funct3;
        logic[BIT_4:0] imm4_0;
        OpCode opcode;
    } SInstruction;

        // Store/Load instruction struct for decoding.
    typedef struct packed {
        logic[BIT_31:BIT_12] imm31_12;
        logic[REGAD_LEN - 1:0] rd;
        OpCode opcode;
    } UInstruction;

    typedef struct packed {
        logic imm20;
        logic [BIT_10:BIT_1] imm10_1;
        logic imm11;
        logic [BIT_19:BIT_12] imm19_12;
        logic [REGAD_LEN - 1:0] rd;
        OpCode opcode;
    } JInstruction;

    // Decodes all the instructions using a union of all the
    // different types.
    typedef union packed {
        SInstruction store;
        BranchInstruction branch;
        RegInstruction register;
        ImmInstruction imm;
        UInstruction u;
        JInstruction j;
    } Instruction;

endpackage