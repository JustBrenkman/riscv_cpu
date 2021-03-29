import riscv_core_p::*;

module riscv_pipeline_top (input wire logic clk, input wire logic rst, output logic[RISCV_XLEN - 1:0] PC);

    logic[RISCV_XLEN - 1:0] dReadData;
    logic[RISCV_INSTR_LEN - 1:0] instruction;
    logic MemRead;
    logic MemWrite;
    logic[RISCV_XLEN - 1:0] ALUResult;
    logic[RISCV_XLEN - 1:0] dAddress;
    logic[RISCV_XLEN - 1:0] dWriteData;
    logic[RISCV_XLEN - 1:0] WriteBackData;
    
    logic iMemRead;

//    riscv_basic_pipeline riscv(.*);
    riscv_forwarding_pipeline riscv(.*);

    always_ff@(posedge clk) begin
        if (rst) begin
            dReadData <= 0;
            instruction <= 0;
        end else begin
            dReadData <= dReadData + 1;
            instruction <= instruction + 1;
        end
    end

endmodule