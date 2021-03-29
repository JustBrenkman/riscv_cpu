# riscv_cpu
A basic riscv processor designed in system verilog.\

Compiling assembly code without linking to the STD libraries.

riscv64-unknown-elf-gcc -nostdlib -march=rv32i -mabi=ilp32 fib_main.s -o fib_main

Compiling c to assembly. -S -fverbose-asm will compile into assembly and will add a bunch of comments to allow easier understading what the compiled assembly.

riscv64-unknown-elf-gcc -nostdlib -march=rv32i -mabi=ilp32 -S -fverbose-asm fact_iter.c -o fact_iter.s
