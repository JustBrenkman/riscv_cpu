#######################################################
#   fpu_core_test.tcl
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
add_force op 0
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 30 ns
# Issue reset pulse (should turn register values in red to zero in green)
add_force rst 1
run 20 ns
add_force rst 0
run 10 ns
# At ths point we are ready to perform a variety of fpu core tests


# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 40400000 -radix hex
# 100
add_force b 449a4000 -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a c1400000 -radix hex 
# 100
add_force b 41200000 -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 41200000 -radix hex 
# 100
add_force b c1400000 -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a c2f70000 -radix hex 
# 100
add_force b c1400000 -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a c2f70000 -radix hex 
# 100
add_force b 42f70000 -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation


# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 0000075d -radix hex 
# 100
add_force b 00000a9d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 8000075d -radix hex 
# 100
add_force b 80000a9d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 8000075d -radix hex 
# 100
add_force b 00000a9d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 0000075d -radix hex 
# 100
add_force b 80000a9d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 0000075d -radix hex 
# 100
add_force b 80004a9d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

# Start execution of the first fpu seperation test
add_force start {1 0ns}
# 10
add_force a 00004c9d -radix hex 
# 100
add_force b 0000075d -radix hex
# result should be 110
run 10 ns
# return the inputs to zero
add_force start {0 0ns}
add_force a 00000000 -radix hex
add_force b 00000000 -radix hex
run 100 ns
# check the seperation

