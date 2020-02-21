import fpu_p::*;

module fpu_core #(
    parameter WIDTH = fpu_p::FPU_32,
    parameter E = WIDTH == fpu_p::FPU_32 ? fpu_p::FPU_32_E : 
                  WIDTH == fpu_p::FPU_64 ? fpu_p::FPU_64_E : 
                  WIDTH == fpu_p::FPU_128 ? fpu_p::FPU_128_E :
                           fpu_p::FPU_32_E,
    parameter F = WIDTH == fpu_p::FPU_32 ? fpu_p::FPU_32_F : 
                  WIDTH == fpu_p::FPU_64 ? fpu_p::FPU_64_F : 
                  WIDTH == fpu_p::FPU_128 ? fpu_p::FPU_128_F :
                           fpu_p::FPU_32_F
)
(
    input wire logic clk,
    input wire logic rst,
    input wire logic start,
    input fpu_p::Operation op,
    input wire logic[WIDTH - 1:0] a,
    input wire logic[WIDTH - 1:0] b,

    output logic busy,
    output logic[WIDTH - 1:0] result
);

    logic[WIDTH - 1:0] a_reg, b_reg;

    logic a_sign, b_sign;
    logic[E - 1:0] a_exponent, b_exponent;
    logic[F:0] a_fraction, b_fraction;

    logic adder_result_s;
    logic[E - 1:0] adder_result_e;
    logic[F + fpu_p::FPU_OFFSET:0] adder_result_f;

    logic norm_input_s;
    logic[E - 1:0] norm_input_e;
    logic[F + fpu_p::FPU_OFFSET:0] norm_input_f;

    logic norm_result_s, norm_start, norm_busy;
    logic[E - 1:0] norm_result_e;
    logic[F - 1:0] norm_result_f;

    logic multi_result_s, multi_start, multi_busy;
    logic[E - 1:0] multi_result_e;
    logic[F + fpu_p::FPU_OFFSET:0] multi_result_f;

    fpu_p::State state;
    fpu_p::Operation op_reg;

    fpu_adder #(WIDTH, E, F) adder(
        .a_sign(a_sign),
        .b_sign(b_sign),
        .a_exponent(a_exponent),
        .b_exponent(b_exponent),
        .a_fraction(a_fraction),
        .b_fraction(b_fraction),
        .op(op_reg),
        .result_s(adder_result_s),
        .result_e(adder_result_e),
        .result_f(adder_result_f)
    );

    fpu_normalize #(WIDTH, E, F) normalize(
        .clk(clk),
        .rst(rst),
        .busy(norm_busy),
        .start(norm_start),
        .sign(norm_input_s),
        .exponent(norm_input_e),
        .fraction(norm_input_f),
        .result_s(norm_result_s),
        .result_e(norm_result_e),
        .result_f(norm_result_f)
    );

    fpu_multi #(WIDTH, E, F) multiplier(
        .clk(clk),
        .rst(rst),
        .a_sign(b_sign),
        .b_sign(a_sign),
        .a_exponent(b_exponent),
        .b_exponent(a_exponent),
        .a_fraction(b_fraction),
        .b_fraction(a_fraction),
        .result_s(multi_result_s),
        .result_e(multi_result_e),
        .result_f(multi_result_f)
    );

    assign a_sign = a_reg[E + F];
    assign a_exponent = a_reg[E + F - 1:F];
    assign a_fraction = {~a_exponent == 1'b0 ? 1'b0 : 1'b1, a_reg[F - 1:0]};

    assign b_sign = b_reg[E + F];
    assign b_exponent = b_reg[E + F - 1:F];
    assign b_fraction = {~b_exponent == 1'b0 ? 1'b0 : 1'b1, b_reg[F - 1:0]};

    assign busy = norm_busy | start | state == BUSY | state == NORM;
    assign result = {norm_result_s, norm_result_e, norm_result_f};

    always_ff@(posedge clk)
    begin
        if (rst)
        begin
            state <= IDLE;
            a_reg <= 0;
            b_reg <= 0;
            multi_start <= 0;
        end else if (start)
        begin
            a_reg <= a;
            // just flip the sign bit on the second one to subtract
            if (op == SUB)
                b_reg <= {b[WIDTH - 1] ^ 1'b1, b[E + F -1:0]};
            else
                b_reg <= b;
            op_reg <= op;

            
            if (op == ADD | op == SUB)
            begin
                state <= NORM;
                norm_start <= 1;
            end else begin
                state <= BUSY;
                multi_start <= 1;
            end
        end
        
        case(state)
            BUSY:
                begin
                    multi_start <= 0;
                    state <= NORM;
                    norm_start <= 1;
                end
            NORM:
                begin
                    norm_start <= 0;
                    if (norm_busy == 1'b0)
                        state <= IDLE;
                end
        endcase
    end

    assign norm_input_f = op_reg == MUL ? multi_result_f : adder_result_f;
    assign norm_input_e = op_reg == MUL ? multi_result_e : adder_result_e;
    assign norm_input_s = op_reg == MUL ? multi_result_s : adder_result_s;

endmodule