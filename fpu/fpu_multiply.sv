import fpu_p::*;

module fpu_multi #(
    parameter WIDTH = fpu_p::FPU_32,
    parameter E = fpu_p::FPU_32_E,
    parameter F = fpu_p::FPU_32_F
) 
(
    input wire logic clk,
    input wire logic rst,
    input wire logic start,

    input wire logic a_sign,
    input wire logic[E - 1:0] a_exponent,
    input wire logic[F:0] a_fraction,
    input wire logic b_sign,
    input wire logic[E - 1:0] b_exponent,
    input wire logic[F:0] b_fraction,

    output busy,
    output logic result_s,
    output logic[E - 1:0] result_e,
    output logic[F + fpu_p::FPU_OFFSET:0] result_f
);

    logic[(F * 2):0] product_reg;
    logic[F - 1:0] multiplicand_reg;

    logic state;
    logic nextState;
    logic[7:0] counter; // This will max out at 256 bits.

    localparam IDLE  = 1'b0;
    localparam BUSY  = 1'b1; 

    // Tick the state machine
    always_ff@(posedge clk)
    begin
        if (rst) begin
            state <= IDLE;
            counter <= 0;
            nextState <= IDLE;
            product_reg <= 0;
            multiplicand_reg <= 0;
        end else
            state <= nextState;
    end

    // Does the iterative algorithm  for calculating the result
    always_ff@(posedge clk)
    begin
        case(state)
            IDLE:
                if (start) begin
                    product_reg <= a_fraction;
                    multiplicand_reg <= b_fraction;
                    counter <= 0;
                    nextState <= BUSY;
                end
            BUSY: begin
                counter <= counter + 1;
                if (counter == F - 1)
                    nextState <= IDLE;
                else begin
                    if (product_reg[0])
                        product_reg <= {product_reg[(F * 2):F] + multiplicand_reg, product_reg[F - 1:0]} >> 1;
                    else
                        product_reg <= product_reg >> 1;
                end
            end 
        endcase
    end
    
    assign busy = state == BUSY | nextState == BUSY;

    assign result_s = a_sign ^ b_sign;
    assign result_e = (a_exponent - 127) + (b_exponent - 127) + 127;
    assign result_f = product_reg[F + fpu_p::FPU_OFFSET:0];

endmodule