`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 03:19:03 PM
// Design Name: 
// Module Name: seq_multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module seq_divider(clk, rst, start, divisor, dividend, busy, quotient, remainder);
    
    parameter WIDTH = 32;
    
    input wire logic clk;
    input wire logic rst;
    input wire logic start;
    input wire logic [WIDTH - 1:0] divisor;
    input wire logic [WIDTH - 1:0] dividend;
    output logic busy;
    output logic [WIDTH - 1:0] quotient;
    output logic [WIDTH - 1:0] remainder;

    logic[(WIDTH * 2) - 1:0] remainder_reg;
    logic[WIDTH - 1:0] divisor_reg;
    logic[(WIDTH * 2) - 1:0] remainder_reg_shifted;
    logic[WIDTH - 1:0] divisor_shifted;

    logic[7:0] counter; // This will max out at 256 bits.
    logic state;
    logic nextState;

    localparam IDLE  = 1'b0;
    localparam BUSY  = 1'b1; 

    // Tick the state machine
    always_ff@(posedge clk)
    begin
        if (rst) begin
            state <= IDLE;
            counter <= 0;
            nextState <= IDLE;
        end else
            state <= nextState;
    end

    // Logic for the iteravtive algorithm
    always_ff@(posedge clk)
    begin
        case(state)
            IDLE:
                if (start) begin
                    remainder_reg <= dividend;
                    divisor_reg <= divisor;
                    counter <= 0;
                    nextState <= BUSY;
                end
            BUSY: begin
                counter <= counter + 1;
                if (counter == WIDTH - 1)
                    nextState <= IDLE;
                else begin
                        remainder_reg <= divisor_reg > remainder_reg[(WIDTH * 2) - 2:WIDTH - 1] ? 
                                         remainder_reg << 1 : { remainder_reg[(WIDTH * 2) - 2:WIDTH - 1] - divisor_reg, remainder_reg[WIDTH - 2:0], 1'b1 };
                end
            end 
        endcase
    end
    
    assign busy = state == BUSY | nextState == BUSY;
    assign quotient = remainder_reg[WIDTH - 1:0];
    assign remainder = remainder_reg[(WIDTH * 2) - 1: WIDTH];
    
endmodule
