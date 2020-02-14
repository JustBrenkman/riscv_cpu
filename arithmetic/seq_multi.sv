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


module seq_multi #(
    parameter WIDTH = 32
) 
(
    input wire logic clk,
    input wire logic rst,
    input wire logic start,
    input wire logic [WIDTH - 1:0] multiplier,
    input wire logic [WIDTH - 1:0] multiplicand,

    output logic busy,
    output logic [(WIDTH * 2) - 1:0] product
);

    logic[(WIDTH * 2):0] product_reg;
    logic[WIDTH - 1:0] multiplicand_reg;

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
        end else
            state <= nextState;
    end

    // Does the iterative algorithm  for calculating the result
    always_ff@(posedge clk)
    begin
        case(state)
            IDLE:
                if (start) begin
                    product_reg <= multiplier;
                    multiplicand_reg <= multiplicand;
                    counter <= 0;
                    nextState <= BUSY;
                end
            BUSY: begin
                counter <= counter + 1;
                if (counter == WIDTH - 1)
                    nextState <= IDLE;
                else begin
                    if (product_reg[0])
                        product_reg <= {product_reg[(WIDTH * 2):WIDTH] + multiplicand_reg, product_reg[WIDTH - 1:0]} >> 1;
                    else
                        product_reg <= product_reg >> 1;
                end
            end 
        endcase
    end
    
    assign busy = state == BUSY | nextState == BUSY;
    assign product = product_reg[(WIDTH * 2) - 1:0];
    
endmodule
