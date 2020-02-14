//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: tb_seq_multdiv.v
//
//  Author: Ben Brenkman
//  
//  Description: 
//
//  Version 1.2
//  1/27/2020
//
//  Change Log:
//   
//////////////////////////////////////////////////////////////////////////////////

import fpu_p::*;

module tb_fpu_core();

    logic clk, rst;
    integer tb_a_32, tb_b_32;
    integer tb_result_32;
    shortreal tb_result_32_r, tb_result_32_e, errorMargin;
    logic tb_start, tb_busy;
    fpu_p::Operation tb_op;

    integer i,j,errors;

    shortreal a_inputs[8:0] = {
        3.0, 
        -12.0, 
        10.0, 
        -123.5, 
        -123.5, 
        -657.645,
        $bitstoshortreal(32'h0000075d), 
        $bitstoshortreal(32'h8000075d), 
        $bitstoshortreal(32'h0000075d)
    };
    shortreal b_inputs[8:0] = {
        1234.0,
        10.0,
        -12.0,
        -12.0,
        123.5,
        364.89,
        $bitstoshortreal(32'h00000a9d),
        $bitstoshortreal(32'h80000a9d),
        $bitstoshortreal(32'h00000a9d)
    };

    function shortreal abs(shortreal a); begin
        if (a < 0)
            return a * -1;
        else
            return a;
        end
    endfunction

    task init();
        begin
            // execute a few clocks without any reset
            for(i=0; i <3; i=i+1) begin
                #5 clk = 1; #5 clk = 0;
            end

            // Initialize the inputs
            rst = 0;
            tb_a_32 = 0;
            tb_b_32 = 0;
            tb_start = 0;
            tb_op = ADD;
            #5

            // execute a few clocks with reset low
            for(i=0; i <3; i=i+1) begin
                #5 clk = 1; #5 clk = 0;
            end

            // Issue reset and a few clocks
            rst = 1; 
            // execute a few clocks with reset low
            for(i=0; i <3; i=i+1) begin
                #5 clk = 1; #5 clk = 0;
            end

            // Deassert reset
            rst = 0; 

            // a few clocks
		    for(i=0; i <5; i=i+1) begin
                #5 clk = 1; #5 clk = 0;
            end
        end
    endtask

    task fpu_add(input shortreal a, input shortreal b);
        begin
            tb_a_32 = $shortrealtobits(a);
            tb_b_32 = $shortrealtobits(b);
            tb_op = ADD;
            tb_start = 1;
            #5 clk = 1; #5 clk = 0;
            tb_a_32 = 0;
            tb_b_32 = 0;
            tb_start = 0;

            if (tb_busy != 1) begin
                $display("*** ERROR: Busy is not hight at time %0t", $time);
                errors = errors + 1;
            end

            while(tb_busy != 0) begin
                #5 clk = 1; #5 clk = 0;
            end

            tb_result_32_r = $bitstoshortreal(tb_result_32);
            tb_result_32_e = a + b;

            if (tb_result_32_e != tb_result_32_r && abs(tb_result_32_e - tb_result_32_r) > errorMargin) begin
                $display("**** ERROR: %f + %f expecting result %f but recieved %f at time %0t", a, b, tb_result_32_e, tb_result_32_r, $time);
                errors = errors + 1;
            end
            else
                $display("*** Correct: %f + %f = %f ±%f received at time %0t", a,b,tb_result_32_r, errorMargin, $time); 
        end
    endtask

    task fpu_sub(input shortreal a, input shortreal b);
        begin
            tb_a_32 = $shortrealtobits(a);
            tb_b_32 = $shortrealtobits(b);
            tb_op = SUB;
            tb_start = 1;
            #5 clk = 1; #5 clk = 0;
            tb_a_32 = 0;
            tb_b_32 = 0;
            tb_start = 0;

            if (tb_busy != 1) begin
                $display("*** ERROR: Busy is not hight at time %0t", $time);
                errors = errors + 1;
            end

            while(tb_busy != 0) begin
                #5 clk = 1; #5 clk = 0;
            end

            tb_result_32_r = $bitstoshortreal(tb_result_32);
            tb_result_32_e = a - b;

            if (tb_result_32_e != tb_result_32_r && abs(tb_result_32_e - tb_result_32_r) > errorMargin) begin
                $display("**** ERROR: %f - %f expecting result %f but recieved %f at time %0t", a, b, tb_result_32_e, tb_result_32_r, $time);
                errors = errors + 1;
            end
            else
                $display("*** Correct: %f - %f = %f ±%f received at time %0t", a,b,tb_result_32_r, errorMargin, $time); 
        end
    endtask

    task fpu_multi(input shortreal a, input shortreal b);
        begin
            tb_a_32 = $shortrealtobits(a);
            tb_b_32 = $shortrealtobits(b);
            tb_op = MUL;
            tb_start = 1;
            #5 clk = 1; #5 clk = 0;
            tb_a_32 = 0;
            tb_b_32 = 0;
            tb_start = 0;

            if (tb_busy != 1) begin
                $display("*** ERROR: Busy is not hight at time %0t", $time);
                errors = errors + 1;
            end

            while(tb_busy != 0) begin
                #5 clk = 1; #5 clk = 0;
            end

            tb_result_32_r = $bitstoshortreal(tb_result_32);
            tb_result_32_e = a * b;

            if (tb_result_32_e != tb_result_32_r && abs(tb_result_32_e - tb_result_32_r) > errorMargin) begin
                $display("**** ERROR: %f * %f expecting result %f but recieved %f at time %0t", a, b, tb_result_32_e, tb_result_32_r, $time);
                errors = errors + 1;
            end
            else
                $display("*** Correct: %f * %f = %f ±%f received at time %0t", a,b,tb_result_32_r, errorMargin, $time); 
        end
    endtask

    
    
    
    
    
    fpu_core #(32) fpu_core_32(
        .clk(clk),
        .rst(rst),
        .start(tb_start),
        .op(tb_op),
        .a(tb_a_32),
        .b(tb_b_32),
        .busy(tb_busy),
        .result(tb_result_32)
    );
    
    initial begin
        errors = 0;
        errorMargin = 0.0001;
        
        //shall print %t with scaled in ns (-9), with 2 precision digits, and would print the " ns" string
		$timeformat(-9, 0, " ns", 20);
		$display("*** Start of Simulation ***");

        // Run for some time without valid inputs
		#50

        init();

        $display("Addition testing. Not that rounding will not be counted in this simulation.");

        for (i = 0; i < $size(a_inputs); i++) begin
            fpu_add(a_inputs[i], b_inputs[i]);
            for(j=0; j <5; j=j+1) begin
                #5 clk = 1; #5 clk = 0;
            end
        end

        $display("Subtraction testing. Not that rounding will not be counted in this simulation.");

        for (i = 0; i < $size(a_inputs); i++) begin
            fpu_sub(a_inputs[i], b_inputs[i]);
            for(j=0; j <5; j=j+1) begin
                #5 clk = 1; #5 clk = 0;
            end
        end

        $display("Multiplication testing. Not that rounding will not be counted in this simulation.");

        for (i = 0; i < $size(a_inputs); i++) begin
            fpu_multi(a_inputs[i], b_inputs[i]);
            for(j=0; j <5; j=j+1) begin
                #5 clk = 1; #5 clk = 0;
            end
        end

        $display("*** Simulation done with %3d errors *** %0t", errors, $time);
        $finish;

    end

endmodule