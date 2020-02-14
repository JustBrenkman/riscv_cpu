package fpu_p;
    localparam FPU_32_F = 23;
    localparam FPU_64_F = 52;
    localparam FPU_128_F = 112;

    localparam FPU_32_E = 8;
    localparam FPU_64_E = 11;
    localparam FPU_128_E = 15;

    localparam FPU_32 = 32;
    localparam FPU_64 = 64;
    localparam FPU_128 = 128;

//    localparam FPU_32_ZERO = 0x00000000;
//    localparam FPU_64_ZERO = 0x0000000000000000;
//    localparam FPU_128_ZERO = 0x00000000000000000000000000000000;

//    localparam FPU_32_INF_P = 0x7f800000;
//    localparam FPU_64_INF_P = 0xff800000;
//    localparam FPU_128_INF_P = 0x0;

//    localparam FPU_32_INF_N = 0x0;
//    localparam FPU_64_INF_N = 0x0;
//    localparam FPU_128_INF_N = 0x0;

//    localparam FPU_32_NAN = 0x7fc00000;
//    localparam FPU_64_NAN = 0x7ff8000000000000;
//    localparam FPU_128_NAN = 0x7ff80000000000000000000000000000;

    localparam FPU_GRS = 3; // Not sure how to use these yet. They are the Guar, round and sticky bits.
    localparam FPU_OFFSET = 1;

    typedef enum bit[2:0] { IDLE, BUSY, WAIT, NORM, ROUND } State;
    typedef enum bit[4:0] { ADD, SUB, MUL, DIV, SLL, SRL, AND, OR, XOR, NOT, CONV_INT, CONV_FLOAT } Operation;
    // typedef enum { FPU_32 = 32, FPU_64 = 64, FPU_128 = 128 } FPUType;

endpackage