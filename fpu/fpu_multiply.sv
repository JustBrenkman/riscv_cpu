import fpu_p::*;

module fpu_multi #(
    parameter WIDTH = fpu_p::FPU_32,
    parameter E = fpu_p::FPU_32_E,
    parameter F = fpu_p::FPU_32_F
) 
(
    input wire logic clk,
    input wire logic rst,

    input wire logic a_sign,
    input wire logic[E - 1:0] a_exponent,
    input wire logic[F:0] a_fraction,
    input wire logic b_sign,
    input wire logic[E - 1:0] b_exponent,
    input wire logic[F:0] b_fraction,

    output logic result_s,
    output logic[E - 1:0] result_e,
    output logic[F + fpu_p::FPU_OFFSET:0] result_f
);

    logic[(F * 2) + fpu_p::FPU_OFFSET:0] product_reg;

    assign result_s = a_sign ^ b_sign;
    assign result_e = (!a_exponent || !b_exponent) ? (a_exponent & b_exponent) : (a_exponent - 127) + (b_exponent - 127) + (product_reg[(F * 2) + fpu_p::FPU_OFFSET] ? 128 : 127);
    assign product_reg = (a_fraction * b_fraction);
    assign result_f = product_reg[(F * 2) + fpu_p::FPU_OFFSET] ? product_reg[(F * 2) + fpu_p::FPU_OFFSET:F] : product_reg[(F * 2) + fpu_p::FPU_OFFSET:F - fpu_p::FPU_OFFSET];

endmodule