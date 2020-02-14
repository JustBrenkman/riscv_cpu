`timescale 1ns / 100ps
//
//////////////////////////////////////////////////////////////////////////////////
//
//  Filename: tb_seq_multdiv.v
//
//  Author: Mike Wirthlin
//  
//  Description: 
//
//  Version 1.2
//  1/27/2020
//
//  Change Log:
//   
//////////////////////////////////////////////////////////////////////////////////

module tb_seq_multdiv();

	reg clk, rst;
	reg [31:0] tb_a, tb_b;
    wire [31:0] tb_r1, tb_r2;
	reg tb_start, tb_op;
	wire tb_busy;
	reg [31:0] random;
	reg [63:0] product_received, product_expected;
	reg [31:0] quotient_received, quotient_expected, remainder_received, remainder_expected;
	
	integer i,j, errors;

	task multiply;
		input [31:0] a,b;
		begin
			tb_a = a;
			tb_b = b;
			tb_op = 0;
			tb_start = 1;
			#5 clk = 1; #5 clk = 0;
			tb_a = 0;
			tb_b = 0;
			tb_start = 0;
			// Make sure busy is high
			if (tb_busy != 1) begin
				$display("*** Error: Busy is not high at time %0t", $time); 
				errors = errors + 1;
				$finish;
			end
			while (tb_busy != 0) begin
				#5 clk = 1; #5 clk = 0;
			end
			product_received = {tb_r2, tb_r1};
			product_expected = a * b;
			if (product_received != product_expected) begin
				$display("*** Error: %h x %x expecting product=%h but received %h at time %0t", 
					a,b,product_expected, product_received, $time); 
				errors = errors + 1;
			end 
			else if (^product_received === 1'bX) begin
				// Check to see if there are any 'x's in the prudct
				$display("*** Error: product contains a 'x' at time %0t", $time); 
				errors = errors + 1;
			end
			else
				$display("*** Correct: %h X %h=%h received at time %0t", 
					a,b,product_received, $time); 
			
		end
	endtask

	task divide;
		input [31:0] a,b;
		begin
			tb_a = a;
			tb_b = b;
			tb_op = 1;
			tb_start = 1;
			#5 clk = 1; #5 clk = 0;
			tb_a = 0;
			tb_b = 0;
			tb_start = 0;
			tb_op = 0;
			// Make sure busy is high
			if (tb_busy != 1) begin
				$display("*** Error: Busy is not high at time %0t", $time); 
				errors = errors + 1;
				$finish;
			end
			while (tb_busy != 0) begin
				#5 clk = 1; #5 clk = 0;
			end
			quotient_received = tb_r1;
			remainder_received = tb_r2;
			quotient_expected = a / b;
			remainder_expected = a % b;
			if (quotient_received != quotient_expected) begin
				$display("*** Error: %h/%h expecting quotient=%h but received %h at time %0t", 
					a,b,quotient_expected, quotient_received, $time); 
				errors = errors + 1;
			end 
			else if (^quotient_received === 1'bX) begin
				// Check to see if there are any 'x's in the result
				$display("*** Error: quotient contains a 'x' at time %0t", $time); 
				errors = errors + 1;
			end
			else
				$display("*** Correct: %h/%h=%h received at time %0t", 
					a,b,quotient_received, $time); 
			if (remainder_received != remainder_expected) begin
				$display("*** Error: %h/%h expecting remainder=%h but received %h at time %0t", 
					a,b,remainder_expected, remainder_received, $time); 
				errors = errors + 1;
			end 
			else if (^remainder_received === 1'bX) begin
				// Check to see if there are any 'x's in the result
				$display("*** Error: remainder contains a 'x' at time %0t", $time); 
				errors = errors + 1;
			end
			else
				$display("*** Correct: %h/%h = remainder %h received at time %0t", 
					a,b,remainder_received, $time); 
			
		end
	endtask
	
	seq_multdiv #(1000) multdiv(.clk(clk), .rst(rst), .a(tb_a), .b(tb_b), .r1(tb_r1), .r2(tb_r2), .busy(tb_busy),
		.start(tb_start), .op(tb_op));
	

	initial begin
	
		errors = 0;
        //shall print %t with scaled in ns (-9), with 2 precision digits, and would print the " ns" string
		$timeformat(-9, 0, " ns", 20);
		$display("*** Start of Simulation ***");
		
		// Run for some time without valid inputs
		#50
		
		// execute a few clocks without any reset
		for(i=0; i <3; i=i+1) begin
            #5 clk = 1; #5 clk = 0;
        end

		// Initialize the inputs
		rst = 0;
		tb_a = 0;
		tb_b = 0;
		tb_start = 0;
		tb_op = 0;
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

		multiply(32'h34E1CB0A, 32'h786D4F31);
		for(i=0; i <5; i=i+1) begin
            #5 clk = 1; #5 clk = 0;
        end
		divide(32'h220E101A, 32'h000FDC1A);
		for(i=0; i <5; i=i+1) begin
            #5 clk = 1; #5 clk = 0;
        end
		multiply(32'hF4E1CB0A, 32'h886D4F31);
        for(i=0; i <5; i=i+1) begin
            #5 clk = 1; #5 clk = 0;
        end
		divide(32'h8484d609, 32'hb1f05663);
		for(i=0; i <5; i=i+1) begin
            #5 clk = 1; #5 clk = 0;
        end

		for(j=0;j<8;j=j+1) begin
			multiply($random,$random);
			for(i=0; i <5; i=i+1) begin
				#5 clk = 1; #5 clk = 0;
			end
			random = $random;
			divide($random,{2'b0,random[29:0]});
			//divide($random,$random);
			for(i=0; i <5; i=i+1) begin
				#5 clk = 1; #5 clk = 0;
			end
		end
		
	
		$display("*** Simulation done with %3d errors *** %0t", errors, $time);
        $finish;
        


	end  // end initial

	
endmodule