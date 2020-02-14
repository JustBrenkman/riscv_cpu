#######################################################
#   fpu_normalize_test.tcl
#
#   Provide stimulus for fpu core
#######################################################

# Initialize the simulation
restart
# Run for some time with unspecified inputs (indicated by blue)
run 50 ns
# Create 100 MHz clock and run for 5 clock cycles
# (This should put "red" messed up values in the internal registers)
add_force clk {0} {1 5} -repeat_every 10
run 50 ns
# Initialize the inputs and run for a few clock cycles (turns inputs from blue to  green)
add_force start 0
add_force rst 0
add_force sign 0
add_force exponent 00000000
add_force fraction 000000000000000000000000
run 30 ns
# Issue reset pulse (should turn register values in red to zero in green)
add_force rst 1
run 20 ns
add_force rst 0
run 10 ns
# At ths point we are ready to perform a variety of fpu core tests

# Start execution of the first fpu seperation test
add_force start {1 0ns}
add_force sign 1
add_force exponent 10000010
add_force fraction 101000000000000000000000
# run for a hot sec
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force sign 0
add_force exponent 00000000
add_force fraction 000000000000000000000000
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
add_force sign 1
add_force exponent 10000010
add_force fraction 001000000000000000000000
# run for a hot sec
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force sign 0
add_force exponent 00000000
add_force fraction 000000000000000000000000
run 100 ns
# check the seperation
