import fpu_p::*;

module fpu_normalize #(
    parameter WIDTH = fpu_p::FPU_32,
    parameter E = fpu_p::FPU_32_E,
    parameter F = fpu_p::FPU_32_F    
) 
(
    input wire logic clk,
    input wire logic rst,
    input wire logic start,
    input wire logic sign,
    input wire logic[E - 1:0] exponent,
    input wire logic[F + fpu_p::FPU_OFFSET:0] fraction,

    output logic result_s,
    output logic[E - 1:0] result_e,
    output logic[F - 1:0] result_f,

    output logic busy
);

    fpu_p::State state;
    logic[F + fpu_p::FPU_OFFSET:0] norm_f;
    logic[E - 1:0] norm_e;

    assign result_s = sign;
    assign result_f = norm_f[F + fpu_p::FPU_OFFSET: fpu_p::FPU_OFFSET];
    assign result_e = norm_e;
    assign busy = (state == BUSY) | start;

    always_ff@(posedge clk)
    begin
        if (rst)
        begin
            state <= IDLE;
        end
        else if (start)
        begin
            state <= BUSY;
            norm_f <= fraction;   
            norm_e <= exponent;
        end
                     
        case(state)
            BUSY:
            begin
                // Shift if the MSB is not 0
                if (norm_f != 0 && norm_e != 0)
                    // Shift until the MSB is 1
                    if (~norm_f[F + fpu_p::FPU_OFFSET])
                    begin
                        norm_f <= norm_f << 1;
                        norm_e <= norm_e - 1;
                    end else
                        state <= IDLE;
                else
                    state <= IDLE;
            end
        endcase
    end

endmodule