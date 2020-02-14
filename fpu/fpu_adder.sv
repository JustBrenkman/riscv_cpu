import fpu_p::*;

module fpu_adder #(
    parameter WIDTH = fpu_p::FPU_32,
    parameter E = fpu_p::FPU_32_E,
    parameter F = fpu_p::FPU_32_F
) 
(
    input wire logic a_sign,
    input wire logic[E - 1:0] a_exponent,
    input wire logic[F:0] a_fraction,
    input wire logic b_sign,
    input wire logic[E - 1:0] b_exponent,
    input wire logic[F:0] b_fraction,

    input fpu_p::Operation op,

    output logic result_s,
    output logic[E - 1:0] result_e,
    output logic[F + fpu_p::FPU_OFFSET:0] result_f
);

    logic isASmaller;
    logic [E-1:0] shiftAmnt;
    logic [F:0] shiftedOperand;

    assign isASmaller = a_exponent <= b_exponent;
    assign shiftAmnt = isASmaller ? b_exponent - a_exponent : a_exponent - b_exponent;
    assign shiftedOperand = isASmaller ? a_fraction >> shiftAmnt : b_fraction >> shiftAmnt;
    assign result_e = result_f == 0 ? 0 : isASmaller ? b_exponent + 1 : a_exponent + 1;

    always_comb
    begin
        if (a_sign == b_sign)
        begin
            result_f = isASmaller ? b_fraction + shiftedOperand : a_fraction + shiftedOperand;
            result_s = a_sign;
        end
        else
        begin
            if (isASmaller)
            begin
                if (a_sign)
                begin
                    result_f = b_fraction > shiftedOperand ? b_fraction - shiftedOperand : shiftedOperand - b_fraction;
                    result_s = result_f == 0 ? 0 : b_fraction > shiftedOperand ? 1'b0 : 1'b1; 
                end else begin
                    result_f = b_fraction > shiftedOperand ? b_fraction - shiftedOperand : shiftedOperand - b_fraction;
                    result_s = result_f == 0 ? 0 : b_fraction > shiftedOperand ? 1'b1 : 1'b0; 
                end
            end else begin
                if (a_sign)
                begin
                    result_f = a_fraction > shiftedOperand ? a_fraction - shiftedOperand : shiftedOperand - a_fraction;
                    result_s = result_f == 0 ? 0 : a_fraction > shiftedOperand ? 1'b1 : 1'b0; 
                end else begin
                    result_f = a_fraction > shiftedOperand ? a_fraction - shiftedOperand : shiftedOperand - a_fraction;
                    result_s = result_f == 0 ? 0 : a_fraction > shiftedOperand ? 1'b1 : 1'b0; 
                end
            end 
        end
    end

endmodule
