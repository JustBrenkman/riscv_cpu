// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Mar 27 21:01:19 2020
// Host        : DESKTOP-7BJQ087 running 64-bit major release  (build 9200)
// Command     : write_verilog -force io_system_synth.v
// Design      : io_system
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PWM
   (RGB0,
    clk,
    DI,
    S);
  output [0:0]RGB0;
  input clk;
  input [1:0]DI;
  input [1:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [0:0]RGB0;
  wire [1:0]S;
  wire clk;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,S}));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse0_carry_n_2),
        .Q(RGB0),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_0
   (RGB1,
    clk,
    DI,
    S);
  output [0:0]RGB1;
  input clk;
  input [1:0]DI;
  input [1:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [0:0]RGB1;
  wire [1:0]S;
  wire clk;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,S}));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse0_carry_n_2),
        .Q(RGB1),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_1
   (RGB0,
    clk,
    DI,
    S);
  output [0:0]RGB0;
  input clk;
  input [1:0]DI;
  input [1:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [0:0]RGB0;
  wire [1:0]S;
  wire clk;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,S}));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse0_carry_n_2),
        .Q(RGB0),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_2
   (RGB1,
    clk,
    DI,
    S);
  output [0:0]RGB1;
  input clk;
  input [1:0]DI;
  input [1:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [0:0]RGB1;
  wire [1:0]S;
  wire clk;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,S}));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse0_carry_n_2),
        .Q(RGB1),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_3
   (RGB0,
    S,
    DI,
    \rgb_color_0_reg[3] ,
    \counter_reg[7]_0 ,
    \rgb_color_1_reg[11] ,
    \counter_reg[7]_1 ,
    \rgb_color_1_reg[7] ,
    \counter_reg[7]_2 ,
    \rgb_color_1_reg[3] ,
    \counter_reg[7]_3 ,
    clk,
    Q,
    pulse_reg_0);
  output [0:0]RGB0;
  output [1:0]S;
  output [1:0]DI;
  output [1:0]\rgb_color_0_reg[3] ;
  output [1:0]\counter_reg[7]_0 ;
  output [1:0]\rgb_color_1_reg[11] ;
  output [1:0]\counter_reg[7]_1 ;
  output [1:0]\rgb_color_1_reg[7] ;
  output [1:0]\counter_reg[7]_2 ;
  output [1:0]\rgb_color_1_reg[3] ;
  output [1:0]\counter_reg[7]_3 ;
  input clk;
  input [11:0]Q;
  input [11:0]pulse_reg_0;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]DI;
  wire [11:0]Q;
  wire [0:0]RGB0;
  wire [1:0]S;
  wire clk;
  wire \counter[7]_i_2_n_0 ;
  wire [1:0]\counter_reg[7]_0 ;
  wire [1:0]\counter_reg[7]_1 ;
  wire [1:0]\counter_reg[7]_2 ;
  wire [1:0]\counter_reg[7]_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [7:0]p_0_in;
  wire pulse0_carry_i_1_n_0;
  wire pulse0_carry_i_2_n_0;
  wire pulse0_carry_i_3_n_0;
  wire pulse0_carry_i_4_n_0;
  wire pulse0_carry_n_3;
  wire pulse_i;
  wire [11:0]pulse_reg_0;
  wire [7:4]\pwm_blue_1/counter_reg ;
  wire [1:0]\rgb_color_0_reg[3] ;
  wire [1:0]\rgb_color_1_reg[11] ;
  wire [1:0]\rgb_color_1_reg[3] ;
  wire [1:0]\rgb_color_1_reg[7] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(\pwm_blue_1/counter_reg [4]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\pwm_blue_1/counter_reg [4]),
        .I5(\pwm_blue_1/counter_reg [5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(\pwm_blue_1/counter_reg [6]),
        .I1(\counter[7]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[7]_i_1 
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(\pwm_blue_1/counter_reg [6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[7]_i_2 
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(\pwm_blue_1/counter_reg [4]),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\counter[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(\pwm_blue_1/counter_reg [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(\pwm_blue_1/counter_reg [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(\pwm_blue_1/counter_reg [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(\pwm_blue_1/counter_reg [7]),
        .R(\<const0> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse_i,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pulse0_carry_i_1_n_0,pulse0_carry_i_2_n_0}),
        .S({\<const0> ,\<const0> ,pulse0_carry_i_3_n_0,pulse0_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(pulse0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1__0
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1__1
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\counter_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1__2
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(pulse_reg_0[11]),
        .I2(pulse_reg_0[10]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\counter_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1__3
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(pulse_reg_0[7]),
        .I2(pulse_reg_0[6]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\counter_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_1__4
       (.I0(\pwm_blue_1/counter_reg [7]),
        .I1(pulse_reg_0[3]),
        .I2(pulse_reg_0[2]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\counter_reg[7]_3 [1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(pulse0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2__0
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2__1
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\counter_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2__2
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(pulse_reg_0[9]),
        .I2(pulse_reg_0[8]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\counter_reg[7]_1 [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2__3
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(pulse_reg_0[5]),
        .I2(pulse_reg_0[4]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\counter_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pulse0_carry_i_2__4
       (.I0(\pwm_blue_1/counter_reg [5]),
        .I1(pulse_reg_0[1]),
        .I2(pulse_reg_0[0]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\counter_reg[7]_3 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3
       (.I0(Q[11]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(Q[10]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(pulse0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3__0
       (.I0(Q[7]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(Q[6]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3__1
       (.I0(Q[3]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(Q[2]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\rgb_color_0_reg[3] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3__2
       (.I0(pulse_reg_0[11]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(pulse_reg_0[10]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\rgb_color_1_reg[11] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3__3
       (.I0(pulse_reg_0[7]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(pulse_reg_0[6]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\rgb_color_1_reg[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_3__4
       (.I0(pulse_reg_0[3]),
        .I1(\pwm_blue_1/counter_reg [7]),
        .I2(pulse_reg_0[2]),
        .I3(\pwm_blue_1/counter_reg [6]),
        .O(\rgb_color_1_reg[3] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4
       (.I0(Q[9]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(Q[8]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(pulse0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4__0
       (.I0(Q[5]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(Q[4]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4__1
       (.I0(Q[1]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(Q[0]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\rgb_color_0_reg[3] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4__2
       (.I0(pulse_reg_0[9]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(pulse_reg_0[8]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\rgb_color_1_reg[11] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4__3
       (.I0(pulse_reg_0[5]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(pulse_reg_0[4]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\rgb_color_1_reg[7] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry_i_4__4
       (.I0(pulse_reg_0[1]),
        .I1(\pwm_blue_1/counter_reg [5]),
        .I2(pulse_reg_0[0]),
        .I3(\pwm_blue_1/counter_reg [4]),
        .O(\rgb_color_1_reg[3] [0]));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse_i),
        .Q(RGB0),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module PWM_4
   (RGB1,
    clk,
    pulse_reg_0,
    pulse_reg_1);
  output [0:0]RGB1;
  input clk;
  input [1:0]pulse_reg_0;
  input [1:0]pulse_reg_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]RGB1;
  wire clk;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;
  wire [1:0]pulse_reg_0;
  wire [1:0]pulse_reg_1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 pulse0_carry
       (.CI(\<const0> ),
        .CO({pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,pulse_reg_0}),
        .S({\<const0> ,\<const0> ,pulse_reg_1}));
  FDRE pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pulse0_carry_n_2),
        .Q(RGB1),
        .R(\<const0> ));
endmodule

module SevenSegmentControl
   (AN,
    SEG,
    clk,
    Q);
  output [7:0]AN;
  output [6:0]SEG;
  input clk;
  input [31:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]AN;
  wire [31:0]Q;
  wire [6:0]SEG;
  wire \SEG[6]_INST_0_i_10_n_0 ;
  wire \SEG[6]_INST_0_i_11_n_0 ;
  wire \SEG[6]_INST_0_i_1_n_0 ;
  wire \SEG[6]_INST_0_i_2_n_0 ;
  wire \SEG[6]_INST_0_i_3_n_0 ;
  wire \SEG[6]_INST_0_i_4_n_0 ;
  wire \SEG[6]_INST_0_i_5_n_0 ;
  wire \SEG[6]_INST_0_i_6_n_0 ;
  wire \SEG[6]_INST_0_i_7_n_0 ;
  wire \SEG[6]_INST_0_i_8_n_0 ;
  wire \SEG[6]_INST_0_i_9_n_0 ;
  wire [2:0]anode_select;
  wire clk;
  wire [16:0]next_count;
  wire next_count_carry__0_n_0;
  wire next_count_carry__0_n_1;
  wire next_count_carry__0_n_2;
  wire next_count_carry__0_n_3;
  wire next_count_carry__1_n_0;
  wire next_count_carry__1_n_1;
  wire next_count_carry__1_n_2;
  wire next_count_carry__1_n_3;
  wire next_count_carry__2_n_1;
  wire next_count_carry__2_n_2;
  wire next_count_carry__2_n_3;
  wire next_count_carry_n_0;
  wire next_count_carry_n_1;
  wire next_count_carry_n_2;
  wire next_count_carry_n_3;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN[0]_INST_0 
       (.I0(anode_select[1]),
        .I1(anode_select[0]),
        .I2(anode_select[2]),
        .O(AN[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN[1]_INST_0 
       (.I0(anode_select[1]),
        .I1(anode_select[0]),
        .I2(anode_select[2]),
        .O(AN[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN[2]_INST_0 
       (.I0(anode_select[0]),
        .I1(anode_select[2]),
        .I2(anode_select[1]),
        .O(AN[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN[3]_INST_0 
       (.I0(anode_select[0]),
        .I1(anode_select[2]),
        .I2(anode_select[1]),
        .O(AN[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN[4]_INST_0 
       (.I0(anode_select[1]),
        .I1(anode_select[2]),
        .I2(anode_select[0]),
        .O(AN[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \AN[5]_INST_0 
       (.I0(anode_select[1]),
        .I1(anode_select[0]),
        .I2(anode_select[2]),
        .O(AN[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN[6]_INST_0 
       (.I0(anode_select[2]),
        .I1(anode_select[0]),
        .I2(anode_select[1]),
        .O(AN[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN[7]_INST_0 
       (.I0(anode_select[0]),
        .I1(anode_select[2]),
        .I2(anode_select[1]),
        .O(AN[7]));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000530053AC0053)) 
    \SEG[0]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_3_n_0 ),
        .I4(\SEG[6]_INST_0_i_5_n_0 ),
        .I5(\SEG[6]_INST_0_i_4_n_0 ),
        .O(SEG[0]));
  LUT6 #(
    .INIT(64'h0000ACFF00AC53AC)) 
    \SEG[1]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_3_n_0 ),
        .I4(\SEG[6]_INST_0_i_5_n_0 ),
        .I5(\SEG[6]_INST_0_i_4_n_0 ),
        .O(SEG[1]));
  LUT6 #(
    .INIT(64'hAC00000000FF00AC)) 
    \SEG[2]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_3_n_0 ),
        .I4(\SEG[6]_INST_0_i_4_n_0 ),
        .I5(\SEG[6]_INST_0_i_5_n_0 ),
        .O(SEG[2]));
  LUT6 #(
    .INIT(64'h005353ACAC0000AC)) 
    \SEG[3]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_4_n_0 ),
        .I4(\SEG[6]_INST_0_i_5_n_0 ),
        .I5(\SEG[6]_INST_0_i_3_n_0 ),
        .O(SEG[3]));
  LUT6 #(
    .INIT(64'h00005300FF53FF00)) 
    \SEG[4]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_3_n_0 ),
        .I4(\SEG[6]_INST_0_i_5_n_0 ),
        .I5(\SEG[6]_INST_0_i_4_n_0 ),
        .O(SEG[4]));
  LUT6 #(
    .INIT(64'hACFF00AC00000053)) 
    \SEG[5]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_4_n_0 ),
        .I4(\SEG[6]_INST_0_i_5_n_0 ),
        .I5(\SEG[6]_INST_0_i_3_n_0 ),
        .O(SEG[5]));
  LUT6 #(
    .INIT(64'h530053000053AC00)) 
    \SEG[6]_INST_0 
       (.I0(\SEG[6]_INST_0_i_1_n_0 ),
        .I1(\SEG[6]_INST_0_i_2_n_0 ),
        .I2(anode_select[2]),
        .I3(\SEG[6]_INST_0_i_3_n_0 ),
        .I4(\SEG[6]_INST_0_i_4_n_0 ),
        .I5(\SEG[6]_INST_0_i_5_n_0 ),
        .O(SEG[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG[6]_INST_0_i_1 
       (.I0(Q[29]),
        .I1(Q[25]),
        .I2(anode_select[1]),
        .I3(Q[21]),
        .I4(anode_select[0]),
        .I5(Q[17]),
        .O(\SEG[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_10 
       (.I0(Q[14]),
        .I1(Q[10]),
        .I2(anode_select[1]),
        .I3(Q[6]),
        .I4(anode_select[0]),
        .I5(Q[2]),
        .O(\SEG[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_11 
       (.I0(Q[30]),
        .I1(Q[26]),
        .I2(anode_select[1]),
        .I3(Q[22]),
        .I4(anode_select[0]),
        .I5(Q[18]),
        .O(\SEG[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG[6]_INST_0_i_2 
       (.I0(Q[13]),
        .I1(Q[9]),
        .I2(anode_select[1]),
        .I3(Q[5]),
        .I4(anode_select[0]),
        .I5(Q[1]),
        .O(\SEG[6]_INST_0_i_2_n_0 ));
  MUXF7 \SEG[6]_INST_0_i_3 
       (.I0(\SEG[6]_INST_0_i_6_n_0 ),
        .I1(\SEG[6]_INST_0_i_7_n_0 ),
        .O(\SEG[6]_INST_0_i_3_n_0 ),
        .S(anode_select[2]));
  MUXF7 \SEG[6]_INST_0_i_4 
       (.I0(\SEG[6]_INST_0_i_8_n_0 ),
        .I1(\SEG[6]_INST_0_i_9_n_0 ),
        .O(\SEG[6]_INST_0_i_4_n_0 ),
        .S(anode_select[2]));
  MUXF7 \SEG[6]_INST_0_i_5 
       (.I0(\SEG[6]_INST_0_i_10_n_0 ),
        .I1(\SEG[6]_INST_0_i_11_n_0 ),
        .O(\SEG[6]_INST_0_i_5_n_0 ),
        .S(anode_select[2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_6 
       (.I0(Q[15]),
        .I1(Q[11]),
        .I2(anode_select[1]),
        .I3(Q[7]),
        .I4(anode_select[0]),
        .I5(Q[3]),
        .O(\SEG[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_7 
       (.I0(Q[31]),
        .I1(Q[27]),
        .I2(anode_select[1]),
        .I3(Q[23]),
        .I4(anode_select[0]),
        .I5(Q[19]),
        .O(\SEG[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_8 
       (.I0(Q[12]),
        .I1(Q[8]),
        .I2(anode_select[1]),
        .I3(Q[4]),
        .I4(anode_select[0]),
        .I5(Q[0]),
        .O(\SEG[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG[6]_INST_0_i_9 
       (.I0(Q[28]),
        .I1(Q[24]),
        .I2(anode_select[1]),
        .I3(Q[20]),
        .I4(anode_select[0]),
        .I5(Q[16]),
        .O(\SEG[6]_INST_0_i_9_n_0 ));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[0].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[0]),
        .Q(p_16_out));
  LUT1 #(
    .INIT(2'h1)) 
    \genblk1[0].cnt_i_1 
       (.I0(p_16_out),
        .O(next_count[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[10].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[10]),
        .Q(p_6_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[11].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[11]),
        .Q(p_5_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[12].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[12]),
        .Q(p_4_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[13].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[13]),
        .Q(p_3_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[14].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[14]),
        .Q(anode_select[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[15].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[15]),
        .Q(anode_select[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[16].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[16]),
        .Q(anode_select[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[1].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[1]),
        .Q(p_15_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[2].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[2]),
        .Q(p_14_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[3].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[3]),
        .Q(p_13_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[4].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[4]),
        .Q(p_12_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[5].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[5]),
        .Q(p_11_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[6].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[6]),
        .Q(p_10_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[7].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[7]),
        .Q(p_9_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[8].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[8]),
        .Q(p_8_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk1[9].cnt 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(\<const0> ),
        .D(next_count[9]),
        .Q(p_7_out));
  CARRY4 next_count_carry
       (.CI(\<const0> ),
        .CO({next_count_carry_n_0,next_count_carry_n_1,next_count_carry_n_2,next_count_carry_n_3}),
        .CYINIT(p_16_out),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(next_count[4:1]),
        .S({p_12_out,p_13_out,p_14_out,p_15_out}));
  CARRY4 next_count_carry__0
       (.CI(next_count_carry_n_0),
        .CO({next_count_carry__0_n_0,next_count_carry__0_n_1,next_count_carry__0_n_2,next_count_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(next_count[8:5]),
        .S({p_8_out,p_9_out,p_10_out,p_11_out}));
  CARRY4 next_count_carry__1
       (.CI(next_count_carry__0_n_0),
        .CO({next_count_carry__1_n_0,next_count_carry__1_n_1,next_count_carry__1_n_2,next_count_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(next_count[12:9]),
        .S({p_4_out,p_5_out,p_6_out,p_7_out}));
  CARRY4 next_count_carry__2
       (.CI(next_count_carry__1_n_0),
        .CO({next_count_carry__2_n_1,next_count_carry__2_n_2,next_count_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(next_count[16:13]),
        .S({anode_select,p_3_out}));
endmodule

module charColorMem
   (VGA_B,
    char_ram_reg_0_0,
    VGA_G,
    VGA_R,
    char_value_read,
    MemWrite,
    vga_address_mem,
    dWriteData,
    char_ram_reg_3_0,
    .VGA_B_0_sp_1(VGA_B_0_sn_1),
    Q,
    \VGA_B[0]_0 ,
    blank_d2,
    clk,
    dAddress,
    char_read_addr);
  output [3:0]VGA_B;
  output [6:0]char_ram_reg_0_0;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output [31:0]char_value_read;
  input MemWrite;
  input vga_address_mem;
  input [31:0]dWriteData;
  input [24:0]char_ram_reg_3_0;
  input [0:0]Q;
  input \VGA_B[0]_0 ;
  input blank_d2;
  input clk;
  input [11:0]dAddress;
  input [11:0]char_read_addr;
  input VGA_B_0_sn_1;

  wire \<const0> ;
  wire \<const1> ;
  wire MemWrite;
  wire [0:0]Q;
  wire [3:0]VGA_B;
  wire \VGA_B[0]_0 ;
  wire VGA_B_0_sn_1;
  wire [3:0]VGA_G;
  wire [3:0]VGA_R;
  wire blank_d2;
  wire [31:8]char_data_to_write;
  wire [6:0]char_ram_reg_0_0;
  wire char_ram_reg_0_n_60;
  wire [24:0]char_ram_reg_3_0;
  wire [11:0]char_read_addr;
  wire [31:8]char_read_value;
  wire [31:0]char_value_read;
  wire char_value_write;
  wire clk;
  wire [11:0]dAddress;
  wire [31:0]dWriteData;
  wire vga_address_mem;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_B[0]_INST_0 
       (.I0(char_read_value[20]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[8]),
        .I5(blank_d2),
        .O(VGA_B[0]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_B[1]_INST_0 
       (.I0(char_read_value[21]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[9]),
        .I5(blank_d2),
        .O(VGA_B[1]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_B[2]_INST_0 
       (.I0(char_read_value[22]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[10]),
        .I5(blank_d2),
        .O(VGA_B[2]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_B[3]_INST_0 
       (.I0(char_read_value[23]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[11]),
        .I5(blank_d2),
        .O(VGA_B[3]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_G[0]_INST_0 
       (.I0(char_read_value[24]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[12]),
        .I5(blank_d2),
        .O(VGA_G[0]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_G[1]_INST_0 
       (.I0(char_read_value[25]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[13]),
        .I5(blank_d2),
        .O(VGA_G[1]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_G[2]_INST_0 
       (.I0(char_read_value[26]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[14]),
        .I5(blank_d2),
        .O(VGA_G[2]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_G[3]_INST_0 
       (.I0(char_read_value[27]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[15]),
        .I5(blank_d2),
        .O(VGA_G[3]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_R[0]_INST_0 
       (.I0(char_read_value[28]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[16]),
        .I5(blank_d2),
        .O(VGA_R[0]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_R[1]_INST_0 
       (.I0(char_read_value[29]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[17]),
        .I5(blank_d2),
        .O(VGA_R[1]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_R[2]_INST_0 
       (.I0(char_read_value[30]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[18]),
        .I5(blank_d2),
        .O(VGA_R[2]));
  LUT6 #(
    .INIT(64'h00000000FEAE02A2)) 
    \VGA_R[3]_INST_0 
       (.I0(char_read_value[31]),
        .I1(VGA_B_0_sn_1),
        .I2(Q),
        .I3(\VGA_B[0]_0 ),
        .I4(char_read_value[19]),
        .I5(blank_d2),
        .O(VGA_R[3]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "char_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_01(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_02(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_03(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_04(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_05(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_06(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_07(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_08(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_09(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_10(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_11(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_12(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_13(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_14(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_15(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_16(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_17(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_18(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_19(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_20(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_21(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_22(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_23(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_24(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_25(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_26(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_27(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_28(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_29(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_30(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_31(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_32(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_33(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_34(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_35(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_36(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_37(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_38(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_39(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_40(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_41(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_42(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_43(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_44(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_45(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_46(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_47(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_48(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_49(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_50(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_51(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_52(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_53(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_54(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_55(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_56(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_57(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_58(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_59(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_5F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_60(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_61(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_62(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_63(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_64(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_65(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_66(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_67(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_68(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_69(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_6F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_70(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_71(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_72(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_73(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_74(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_75(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_76(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_77(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_78(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_79(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    char_ram_reg_0
       (.ADDRARDADDR({\<const1> ,dAddress,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,char_read_addr,\<const0> ,\<const0> ,\<const0> }),
        .CASCADEINA(\<const1> ),
        .CASCADEINB(\<const1> ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dWriteData[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,char_data_to_write[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .DOADO(char_value_read[7:0]),
        .DOBDO({char_ram_reg_0_n_60,char_ram_reg_0_0}),
        .DOPADOP(char_value_read[8]),
        .DOPBDOP(char_read_value[8]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({char_value_write,char_value_write,char_value_write,char_value_write}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_0_i_1
       (.I0(dWriteData[8]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[0]),
        .O(char_data_to_write[8]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "char_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8877F),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    char_ram_reg_1
       (.ADDRARDADDR({\<const1> ,dAddress,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,char_read_addr,\<const0> ,\<const0> ,\<const0> }),
        .CASCADEINA(\<const1> ),
        .CASCADEINB(\<const1> ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,char_data_to_write[16:9]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,char_data_to_write[17]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .DOADO(char_value_read[16:9]),
        .DOBDO(char_read_value[16:9]),
        .DOPADOP(char_value_read[17]),
        .DOPBDOP(char_read_value[17]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({char_value_write,char_value_write,char_value_write,char_value_write}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_1
       (.I0(dWriteData[16]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[8]),
        .O(char_data_to_write[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_2
       (.I0(dWriteData[15]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[7]),
        .O(char_data_to_write[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_3
       (.I0(dWriteData[14]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[6]),
        .O(char_data_to_write[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_4
       (.I0(dWriteData[13]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[5]),
        .O(char_data_to_write[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_5
       (.I0(dWriteData[12]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[4]),
        .O(char_data_to_write[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_6
       (.I0(dWriteData[11]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[3]),
        .O(char_data_to_write[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_7
       (.I0(dWriteData[10]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[2]),
        .O(char_data_to_write[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_8
       (.I0(dWriteData[9]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[1]),
        .O(char_data_to_write[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_1_i_9
       (.I0(dWriteData[17]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[9]),
        .O(char_data_to_write[17]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "char_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "18" *) 
  (* bram_slice_end = "26" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000002),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h03030303030303030303030303030303030303030303030303030303033FC300),
    .INIT_01(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_02(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_03(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_04(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_05(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_06(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_07(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_08(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_09(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_10(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_11(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_12(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_13(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_14(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_15(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_16(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_20(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_21(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_22(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_23(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_24(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_25(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_26(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_27(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_28(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_29(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_30(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_31(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_32(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_33(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_34(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_35(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_36(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_37(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_38(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_39(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_40(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_41(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_42(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_43(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_44(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_45(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_46(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_47(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_48(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_49(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_4F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_50(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_51(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_52(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_53(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_54(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_55(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_56(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_57(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_58(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_59(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_5F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_60(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_61(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_62(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_63(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_64(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_65(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_66(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_67(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_68(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_69(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_6F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_70(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_71(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_72(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_73(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_74(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_75(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_76(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_77(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_78(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_79(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_7F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    char_ram_reg_2
       (.ADDRARDADDR({\<const1> ,dAddress,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,char_read_addr,\<const0> ,\<const0> ,\<const0> }),
        .CASCADEINA(\<const1> ),
        .CASCADEINB(\<const1> ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,char_data_to_write[25:18]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,char_data_to_write[26]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .DOADO(char_value_read[25:18]),
        .DOBDO(char_read_value[25:18]),
        .DOPADOP(char_value_read[26]),
        .DOPBDOP(char_read_value[26]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({char_value_write,char_value_write,char_value_write,char_value_write}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_1
       (.I0(dWriteData[25]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[17]),
        .O(char_data_to_write[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_2
       (.I0(dWriteData[24]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[16]),
        .O(char_data_to_write[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_3
       (.I0(dWriteData[23]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[15]),
        .O(char_data_to_write[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_4
       (.I0(dWriteData[22]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[14]),
        .O(char_data_to_write[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_5
       (.I0(dWriteData[21]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[13]),
        .O(char_data_to_write[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_6
       (.I0(dWriteData[20]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[12]),
        .O(char_data_to_write[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_7
       (.I0(dWriteData[19]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[11]),
        .O(char_data_to_write[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_8
       (.I0(dWriteData[18]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[10]),
        .O(char_data_to_write[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_2_i_9
       (.I0(dWriteData[26]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[18]),
        .O(char_data_to_write[26]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "char_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "27" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000000000000000000000000000000011E),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    char_ram_reg_3
       (.ADDRARDADDR({\<const1> ,dAddress,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,char_read_addr,\<const0> ,\<const0> ,\<const0> }),
        .CASCADEINA(\<const1> ),
        .CASCADEINB(\<const1> ),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,char_data_to_write[31:27]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(char_value_read[31:27]),
        .DOBDO(char_read_value[31:27]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({char_value_write,char_value_write,char_value_write,char_value_write}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_3_i_1
       (.I0(dWriteData[31]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[23]),
        .O(char_data_to_write[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_3_i_2
       (.I0(dWriteData[30]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[22]),
        .O(char_data_to_write[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_3_i_3
       (.I0(dWriteData[29]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[21]),
        .O(char_data_to_write[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_3_i_4
       (.I0(dWriteData[28]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[20]),
        .O(char_data_to_write[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    char_ram_reg_3_i_5
       (.I0(dWriteData[27]),
        .I1(char_ram_reg_3_0[24]),
        .I2(char_ram_reg_3_0[19]),
        .O(char_data_to_write[27]));
  LUT2 #(
    .INIT(4'h8)) 
    char_ram_reg_3_i_6
       (.I0(MemWrite),
        .I1(vga_address_mem),
        .O(char_value_write));
endmodule

module charGen2
   (VGA_B,
    VGA_G,
    VGA_R,
    char_value_read,
    clk,
    Q,
    MemWrite,
    vga_address_mem,
    dWriteData,
    char_ram_reg_3,
    blank_d2,
    dAddress,
    char_ram_reg_0);
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output [31:0]char_value_read;
  input clk;
  input [8:0]Q;
  input MemWrite;
  input vga_address_mem;
  input [31:0]dWriteData;
  input [24:0]char_ram_reg_3;
  input blank_d2;
  input [11:0]dAddress;
  input [9:0]char_ram_reg_0;

  wire \<const0> ;
  wire \<const1> ;
  wire MemWrite;
  wire [8:0]Q;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire [3:0]VGA_R;
  wire blank_d2;
  wire [9:0]char_ram_reg_0;
  wire [24:0]char_ram_reg_3;
  wire [6:0]char_read_value;
  wire [31:0]char_value_read;
  wire clk;
  wire [11:0]dAddress;
  wire [31:0]dWriteData;
  wire [2:0]ddr;
  wire [2:0]ddr2;
  wire fontrom_n_0;
  wire fontrom_n_1;
  wire vga_address_mem;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  charColorMem charmem
       (.MemWrite(MemWrite),
        .Q(ddr2[2]),
        .VGA_B(VGA_B),
        .\VGA_B[0]_0 (fontrom_n_1),
        .VGA_B_0_sp_1(fontrom_n_0),
        .VGA_G(VGA_G),
        .VGA_R(VGA_R),
        .blank_d2(blank_d2),
        .char_ram_reg_0_0(char_read_value),
        .char_ram_reg_3_0(char_ram_reg_3),
        .char_read_addr({Q[8:4],char_ram_reg_0[9:3]}),
        .char_value_read(char_value_read),
        .clk(clk),
        .dAddress(dAddress),
        .dWriteData(dWriteData),
        .vga_address_mem(vga_address_mem));
  FDRE \ddr2_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ddr[0]),
        .Q(ddr2[0]),
        .R(\<const0> ));
  FDRE \ddr2_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ddr[1]),
        .Q(ddr2[1]),
        .R(\<const0> ));
  FDRE \ddr2_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ddr[2]),
        .Q(ddr2[2]),
        .R(\<const0> ));
  FDRE \ddr_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(char_ram_reg_0[0]),
        .Q(ddr[0]),
        .R(\<const0> ));
  FDRE \ddr_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(char_ram_reg_0[1]),
        .Q(ddr[1]),
        .R(\<const0> ));
  FDRE \ddr_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(char_ram_reg_0[2]),
        .Q(ddr[2]),
        .R(\<const0> ));
  font_rom fontrom
       (.ADDRARDADDR({char_read_value,Q[3:0]}),
        .Q(ddr2[1:0]),
        .addr_reg_reg_0(fontrom_n_0),
        .addr_reg_reg_1(fontrom_n_1),
        .clk(clk));
endmodule

module font_rom
   (addr_reg_reg_0,
    addr_reg_reg_1,
    clk,
    ADDRARDADDR,
    Q);
  output addr_reg_reg_0;
  output addr_reg_reg_1;
  input clk;
  input [10:0]ADDRARDADDR;
  input [1:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]ADDRARDADDR;
  wire [1:0]Q;
  wire addr_reg_reg_0;
  wire addr_reg_reg_1;
  wire addr_reg_reg_n_15;
  wire addr_reg_reg_n_8;
  wire clk;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \VGA_B[3]_INST_0_i_1 
       (.I0(p_4_in),
        .I1(p_5_in),
        .I2(Q[1]),
        .I3(p_6_in),
        .I4(Q[0]),
        .I5(addr_reg_reg_n_8),
        .O(addr_reg_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \VGA_B[3]_INST_0_i_2 
       (.I0(addr_reg_reg_n_15),
        .I1(p_1_in),
        .I2(Q[1]),
        .I3(p_2_in),
        .I4(Q[0]),
        .I5(p_3_in),
        .O(addr_reg_reg_1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "vga/charGen/fontrom/addr_reg" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007E818199BD8181A5817E000000000000000000000000000000000000),
    .INIT_01(256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFE7C3FFFFDBFF7E0000),
    .INIT_02(256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000),
    .INIT_03(256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000),
    .INIT_04(256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF),
    .INIT_05(256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF),
    .INIT_06(256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000),
    .INIT_07(256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000),
    .INIT_08(256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000),
    .INIT_09(256'h000000006666006666666666666600000000000000183C7E1818187E3C180000),
    .INIT_0A(256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000),
    .INIT_0B(256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000),
    .INIT_0C(256'h00000000183C7E18181818181818000000000000181818181818187E3C180000),
    .INIT_0D(256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000),
    .INIT_0E(256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000),
    .INIT_0F(256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000),
    .INIT_10(256'h000000001818001818183C3C3C18000000000000000000000000000000000000),
    .INIT_11(256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600),
    .INIT_12(256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818),
    .INIT_13(256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000),
    .INIT_14(256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000),
    .INIT_15(256'h00000000000018187E18180000000000000000000000663CFF3C660000000000),
    .INIT_16(256'h00000000000000007E0000000000000000000030181818000000000000000000),
    .INIT_17(256'h0000000080C06030180C06020000000000000000181800000000000000000000),
    .INIT_18(256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000),
    .INIT_19(256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000),
    .INIT_1A(256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000),
    .INIT_1B(256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000),
    .INIT_1C(256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000),
    .INIT_1D(256'h0000000030181800000018180000000000000000001818000000181800000000),
    .INIT_1E(256'h000000000000007E00007E000000000000000000060C18306030180C06000000),
    .INIT_1F(256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000),
    .INIT_20(256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000),
    .INIT_21(256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000),
    .INIT_22(256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000),
    .INIT_23(256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000),
    .INIT_24(256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000),
    .INIT_25(256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000),
    .INIT_26(256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000),
    .INIT_27(256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000),
    .INIT_28(256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000),
    .INIT_29(256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000),
    .INIT_2A(256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000),
    .INIT_2B(256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000),
    .INIT_2C(256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000),
    .INIT_2D(256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000),
    .INIT_2E(256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000),
    .INIT_2F(256'h0000FF00000000000000000000000000000000000000000000000000C66C3810),
    .INIT_30(256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030),
    .INIT_31(256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000),
    .INIT_32(256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000),
    .INIT_33(256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000),
    .INIT_34(256'h000000003C181818181838001818000000000000E666666666766C6060E00000),
    .INIT_35(256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000),
    .INIT_36(256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000),
    .INIT_37(256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000),
    .INIT_38(256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000),
    .INIT_39(256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000),
    .INIT_3A(256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000),
    .INIT_3B(256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000),
    .INIT_3C(256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000),
    .INIT_3D(256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000),
    .INIT_3E(256'h0000000070181818180E18181870000000000000181818181800181818180000),
    .INIT_3F(256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    addr_reg_reg
       (.ADDRARDADDR({ADDRARDADDR,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({addr_reg_reg_n_8,p_6_in,p_5_in,p_4_in,p_3_in,p_2_in,p_1_in,addr_reg_reg_n_15}),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
endmodule

(* BAUD_RATE = "115200" *) (* BTN_ADDR = "4'b1001" *) (* BUTTON_BASE_OFFSET = "8'b00100100" *) 
(* CHAR_COLOR_BASE_OFFSET = "8'b00110100" *) (* CHAR_DEFAULT_COLOR = "4'b1101" *) (* DEFAULT_BACKGROUND_COLOR = "12'b000000001111" *) 
(* DEFAULT_CHARACTOR_COLOR_MODE = "25'b0000000001111111111110000" *) (* DEFAULT_COLOR_MODE = "1'b0" *) (* DEFAULT_FOREGROUND_COLOR = "12'b111111110000" *) 
(* INPUT_CLOCK_RATE = "100000000" *) (* LED_ADDR = "4'b0000" *) (* LED_BASE_OFFSET = "8'b00000000" *) 
(* PARITY = "1'b0" *) (* PWM_COUNT_WIDTH = "8" *) (* RX_DATA_ADDR = "4'b0100" *) 
(* RX_DATA_BASE_OFFSET = "8'b00010000" *) (* RX_STATUS_ADDR = "4'b0101" *) (* RX_STATUS_BASE_OFFSET = "8'b00010100" *) 
(* SEG_ADDR = "4'b0110" *) (* SEVEN_SEG_BASE_OFFSET = "8'b00011000" *) (* SWITCH_BASE_OFFSET = "8'b00000100" *) 
(* SW_ADDR = "4'b0001" *) (* TIMER_ADDR = "4'b1100" *) (* TIMER_BASE_OFFSET = "8'b00110000" *) 
(* TIMER_CLOCKS_PER_MS = "100000" *) (* TIMER_CLOCK_REDUCTION = "1" *) (* TRI_LED_0 = "4'b0111" *) 
(* TRI_LED_0_BASE_OFFSET = "8'b00011100" *) (* TRI_LED_1 = "4'b1000" *) (* TRI_LED_1_BASE_OFFSET = "8'b00100000" *) 
(* TX_ADDR = "4'b0010" *) (* TX_BASE_OFFSET = "8'b00001000" *) (* VGA_ADDR_BITS = "14" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module io_system
   (clk,
    rst,
    dAddress,
    dWriteData,
    MemWrite,
    MemRead,
    io_memory_read,
    char_value_read,
    io_space_mem,
    vga_address_mem,
    btn_deb,
    sw_deb,
    AN,
    LED,
    RGB0,
    RGB1,
    .SEG({\<const1> ,\^SEG [6],\^SEG [5],\^SEG [4],\^SEG [3],\^SEG [2],\^SEG [1],\^SEG [0]}),
    UART_RXD_OUT,
    UART_TXD_IN,
    VGA_B,
    VGA_G,
    VGA_HS,
    VGA_R,
    VGA_VS);
  input clk;
  input rst;
  input [31:0]dAddress;
  input [31:0]dWriteData;
  input MemWrite;
  input MemRead;
  output [31:0]io_memory_read;
  output [31:0]char_value_read;
  input io_space_mem;
  input vga_address_mem;
  input [4:0]btn_deb;
  input [15:0]sw_deb;
  output [7:0]AN;
  output [15:0]LED;
  output [2:0]RGB0;
  output [2:0]RGB1;
  output UART_RXD_OUT;
  input UART_TXD_IN;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output VGA_HS;
  output [3:0]VGA_R;
  output VGA_VS;
  output \<const1> ;
     output [6:0]\^SEG ;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]AN;
  wire [15:0]LED;
  wire LEDWrite1_out;
  wire MemRead;
  wire MemWrite;
  wire [2:0]RGB0;
  wire [2:0]RGB1;
  wire [6:0]\^SEG ;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire [4:0]btn_deb;
  wire char_default_color_write13_out;
  wire [31:0]char_value_read;
  wire clk;
  wire [31:0]dAddress;
  wire [31:0]dWriteData;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire [3:0]data7;
  wire [24:0]default_character_color;
  wire [31:0]io_memory_read;
  wire \io_memory_read[0]_i_4_n_0 ;
  wire \io_memory_read[10]_i_1_n_0 ;
  wire \io_memory_read[10]_i_2_n_0 ;
  wire \io_memory_read[10]_i_3_n_0 ;
  wire \io_memory_read[11]_i_1_n_0 ;
  wire \io_memory_read[11]_i_2_n_0 ;
  wire \io_memory_read[11]_i_3_n_0 ;
  wire \io_memory_read[11]_i_4_n_0 ;
  wire \io_memory_read[11]_i_5_n_0 ;
  wire \io_memory_read[12]_i_1_n_0 ;
  wire \io_memory_read[12]_i_2_n_0 ;
  wire \io_memory_read[12]_i_3_n_0 ;
  wire \io_memory_read[13]_i_1_n_0 ;
  wire \io_memory_read[13]_i_2_n_0 ;
  wire \io_memory_read[13]_i_3_n_0 ;
  wire \io_memory_read[14]_i_1_n_0 ;
  wire \io_memory_read[14]_i_2_n_0 ;
  wire \io_memory_read[14]_i_3_n_0 ;
  wire \io_memory_read[15]_i_1_n_0 ;
  wire \io_memory_read[15]_i_2_n_0 ;
  wire \io_memory_read[15]_i_3_n_0 ;
  wire \io_memory_read[16]_i_1_n_0 ;
  wire \io_memory_read[17]_i_1_n_0 ;
  wire \io_memory_read[18]_i_1_n_0 ;
  wire \io_memory_read[19]_i_1_n_0 ;
  wire \io_memory_read[1]_i_2_n_0 ;
  wire \io_memory_read[1]_i_4_n_0 ;
  wire \io_memory_read[20]_i_1_n_0 ;
  wire \io_memory_read[21]_i_1_n_0 ;
  wire \io_memory_read[22]_i_1_n_0 ;
  wire \io_memory_read[23]_i_1_n_0 ;
  wire \io_memory_read[24]_i_1_n_0 ;
  wire \io_memory_read[24]_i_2_n_0 ;
  wire \io_memory_read[24]_i_3_n_0 ;
  wire \io_memory_read[25]_i_1_n_0 ;
  wire \io_memory_read[26]_i_1_n_0 ;
  wire \io_memory_read[27]_i_1_n_0 ;
  wire \io_memory_read[28]_i_1_n_0 ;
  wire \io_memory_read[29]_i_1_n_0 ;
  wire \io_memory_read[2]_i_2_n_0 ;
  wire \io_memory_read[2]_i_4_n_0 ;
  wire \io_memory_read[30]_i_1_n_0 ;
  wire \io_memory_read[31]_i_1_n_0 ;
  wire \io_memory_read[31]_i_2_n_0 ;
  wire \io_memory_read[3]_i_3_n_0 ;
  wire \io_memory_read[4]_i_3_n_0 ;
  wire \io_memory_read[5]_i_3_n_0 ;
  wire \io_memory_read[6]_i_3_n_0 ;
  wire \io_memory_read[7]_i_2_n_0 ;
  wire \io_memory_read[7]_i_4_n_0 ;
  wire \io_memory_read[8]_i_1_n_0 ;
  wire \io_memory_read[8]_i_2_n_0 ;
  wire \io_memory_read[8]_i_3_n_0 ;
  wire \io_memory_read[9]_i_1_n_0 ;
  wire \io_memory_read[9]_i_2_n_0 ;
  wire \io_memory_read[9]_i_3_n_0 ;
  wire io_space_mem;
  wire [19:0]ms_tick_cnt;
  wire \ms_tick_cnt[19]_i_1_n_0 ;
  wire \ms_tick_cnt[19]_i_3_n_0 ;
  wire \ms_tick_cnt[19]_i_5_n_0 ;
  wire \ms_tick_cnt[19]_i_6_n_0 ;
  wire \ms_tick_cnt[19]_i_7_n_0 ;
  wire \ms_tick_cnt[19]_i_8_n_0 ;
  wire \ms_tick_cnt[19]_i_9_n_0 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_0 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_1 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_2 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_3 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_4 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_5 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_6 ;
  wire \ms_tick_cnt_reg[12]_i_2_n_7 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_0 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_1 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_2 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_3 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_4 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_5 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_6 ;
  wire \ms_tick_cnt_reg[16]_i_2_n_7 ;
  wire \ms_tick_cnt_reg[19]_i_4_n_2 ;
  wire \ms_tick_cnt_reg[19]_i_4_n_3 ;
  wire \ms_tick_cnt_reg[19]_i_4_n_5 ;
  wire \ms_tick_cnt_reg[19]_i_4_n_6 ;
  wire \ms_tick_cnt_reg[19]_i_4_n_7 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_0 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_1 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_2 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_3 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_4 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_5 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_6 ;
  wire \ms_tick_cnt_reg[4]_i_2_n_7 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_0 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_1 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_2 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_3 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_4 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_5 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_6 ;
  wire \ms_tick_cnt_reg[8]_i_2_n_7 ;
  wire \ms_tick_cnt_reg_n_0_[0] ;
  wire \ms_tick_cnt_reg_n_0_[10] ;
  wire \ms_tick_cnt_reg_n_0_[11] ;
  wire \ms_tick_cnt_reg_n_0_[12] ;
  wire \ms_tick_cnt_reg_n_0_[13] ;
  wire \ms_tick_cnt_reg_n_0_[14] ;
  wire \ms_tick_cnt_reg_n_0_[15] ;
  wire \ms_tick_cnt_reg_n_0_[16] ;
  wire \ms_tick_cnt_reg_n_0_[17] ;
  wire \ms_tick_cnt_reg_n_0_[18] ;
  wire \ms_tick_cnt_reg_n_0_[19] ;
  wire \ms_tick_cnt_reg_n_0_[1] ;
  wire \ms_tick_cnt_reg_n_0_[2] ;
  wire \ms_tick_cnt_reg_n_0_[3] ;
  wire \ms_tick_cnt_reg_n_0_[4] ;
  wire \ms_tick_cnt_reg_n_0_[5] ;
  wire \ms_tick_cnt_reg_n_0_[6] ;
  wire \ms_tick_cnt_reg_n_0_[7] ;
  wire \ms_tick_cnt_reg_n_0_[8] ;
  wire \ms_tick_cnt_reg_n_0_[9] ;
  wire ms_timer_cnt0;
  wire \ms_timer_cnt[0]_i_3_n_0 ;
  wire \ms_timer_cnt[0]_i_4_n_0 ;
  wire \ms_timer_cnt[0]_i_5_n_0 ;
  wire \ms_timer_cnt[0]_i_6_n_0 ;
  wire \ms_timer_cnt[0]_i_7_n_0 ;
  wire \ms_timer_cnt[12]_i_2_n_0 ;
  wire \ms_timer_cnt[12]_i_3_n_0 ;
  wire \ms_timer_cnt[12]_i_4_n_0 ;
  wire \ms_timer_cnt[12]_i_5_n_0 ;
  wire \ms_timer_cnt[16]_i_2_n_0 ;
  wire \ms_timer_cnt[16]_i_3_n_0 ;
  wire \ms_timer_cnt[16]_i_4_n_0 ;
  wire \ms_timer_cnt[16]_i_5_n_0 ;
  wire \ms_timer_cnt[20]_i_2_n_0 ;
  wire \ms_timer_cnt[20]_i_3_n_0 ;
  wire \ms_timer_cnt[20]_i_4_n_0 ;
  wire \ms_timer_cnt[20]_i_5_n_0 ;
  wire \ms_timer_cnt[24]_i_2_n_0 ;
  wire \ms_timer_cnt[24]_i_3_n_0 ;
  wire \ms_timer_cnt[24]_i_4_n_0 ;
  wire \ms_timer_cnt[24]_i_5_n_0 ;
  wire \ms_timer_cnt[28]_i_2_n_0 ;
  wire \ms_timer_cnt[28]_i_3_n_0 ;
  wire \ms_timer_cnt[28]_i_4_n_0 ;
  wire \ms_timer_cnt[28]_i_5_n_0 ;
  wire \ms_timer_cnt[4]_i_2_n_0 ;
  wire \ms_timer_cnt[4]_i_3_n_0 ;
  wire \ms_timer_cnt[4]_i_4_n_0 ;
  wire \ms_timer_cnt[4]_i_5_n_0 ;
  wire \ms_timer_cnt[8]_i_2_n_0 ;
  wire \ms_timer_cnt[8]_i_3_n_0 ;
  wire \ms_timer_cnt[8]_i_4_n_0 ;
  wire \ms_timer_cnt[8]_i_5_n_0 ;
  wire [31:0]ms_timer_cnt_reg;
  wire \ms_timer_cnt_reg[0]_i_2_n_0 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_1 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_2 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_3 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_4 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_5 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_6 ;
  wire \ms_timer_cnt_reg[0]_i_2_n_7 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[12]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[16]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[20]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[24]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[28]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[4]_i_1_n_7 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_0 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_1 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_2 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_3 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_4 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_5 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_6 ;
  wire \ms_timer_cnt_reg[8]_i_1_n_7 ;
  wire pwm_red_0_n_1;
  wire pwm_red_0_n_10;
  wire pwm_red_0_n_11;
  wire pwm_red_0_n_12;
  wire pwm_red_0_n_13;
  wire pwm_red_0_n_14;
  wire pwm_red_0_n_15;
  wire pwm_red_0_n_16;
  wire pwm_red_0_n_17;
  wire pwm_red_0_n_18;
  wire pwm_red_0_n_19;
  wire pwm_red_0_n_2;
  wire pwm_red_0_n_20;
  wire pwm_red_0_n_3;
  wire pwm_red_0_n_4;
  wire pwm_red_0_n_5;
  wire pwm_red_0_n_6;
  wire pwm_red_0_n_7;
  wire pwm_red_0_n_8;
  wire pwm_red_0_n_9;
  wire \rgb_color_0_reg_n_0_[0] ;
  wire \rgb_color_0_reg_n_0_[1] ;
  wire \rgb_color_0_reg_n_0_[2] ;
  wire \rgb_color_0_reg_n_0_[3] ;
  wire \rgb_color_0_reg_n_0_[4] ;
  wire \rgb_color_0_reg_n_0_[5] ;
  wire \rgb_color_0_reg_n_0_[6] ;
  wire \rgb_color_0_reg_n_0_[7] ;
  wire [11:0]rgb_color_1;
  wire \rgb_color_1[11]_i_1_n_0 ;
  wire rst;
  wire rx_n_0;
  wire rx_n_1;
  wire rx_n_2;
  wire rx_n_3;
  wire rx_n_4;
  wire rx_n_5;
  wire rx_n_6;
  wire rx_n_7;
  wire rx_n_8;
  wire rx_new_data_i_2_n_0;
  wire [0:0]rx_status_read;
  wire seven_seg_write5_out;
  wire \seven_segment_reg_reg_n_0_[0] ;
  wire \seven_segment_reg_reg_n_0_[12] ;
  wire \seven_segment_reg_reg_n_0_[13] ;
  wire \seven_segment_reg_reg_n_0_[14] ;
  wire \seven_segment_reg_reg_n_0_[15] ;
  wire \seven_segment_reg_reg_n_0_[1] ;
  wire \seven_segment_reg_reg_n_0_[2] ;
  wire \seven_segment_reg_reg_n_0_[3] ;
  wire [15:0]sw_deb;
  wire tri_led_0_write7_out;
  wire tx_n_0;
  wire vga_address_mem;
  wire [7:4]width;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \LED_reg[15]_i_1 
       (.I0(dAddress[4]),
        .I1(dAddress[2]),
        .I2(MemWrite),
        .I3(io_space_mem),
        .I4(dAddress[5]),
        .I5(dAddress[3]),
        .O(LEDWrite1_out));
  FDRE \LED_reg_reg[0] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[0]),
        .Q(LED[0]),
        .R(rst));
  FDRE \LED_reg_reg[10] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[10]),
        .Q(LED[10]),
        .R(rst));
  FDRE \LED_reg_reg[11] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[11]),
        .Q(LED[11]),
        .R(rst));
  FDRE \LED_reg_reg[12] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[12]),
        .Q(LED[12]),
        .R(rst));
  FDRE \LED_reg_reg[13] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[13]),
        .Q(LED[13]),
        .R(rst));
  FDRE \LED_reg_reg[14] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[14]),
        .Q(LED[14]),
        .R(rst));
  FDRE \LED_reg_reg[15] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[15]),
        .Q(LED[15]),
        .R(rst));
  FDRE \LED_reg_reg[1] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[1]),
        .Q(LED[1]),
        .R(rst));
  FDRE \LED_reg_reg[2] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[2]),
        .Q(LED[2]),
        .R(rst));
  FDRE \LED_reg_reg[3] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[3]),
        .Q(LED[3]),
        .R(rst));
  FDRE \LED_reg_reg[4] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[4]),
        .Q(LED[4]),
        .R(rst));
  FDRE \LED_reg_reg[5] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[5]),
        .Q(LED[5]),
        .R(rst));
  FDRE \LED_reg_reg[6] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[6]),
        .Q(LED[6]),
        .R(rst));
  FDRE \LED_reg_reg[7] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[7]),
        .Q(LED[7]),
        .R(rst));
  FDRE \LED_reg_reg[8] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[8]),
        .Q(LED[8]),
        .R(rst));
  FDRE \LED_reg_reg[9] 
       (.C(clk),
        .CE(LEDWrite1_out),
        .D(dWriteData[9]),
        .Q(LED[9]),
        .R(rst));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \default_character_color[24]_i_1 
       (.I0(MemWrite),
        .I1(io_space_mem),
        .I2(dAddress[2]),
        .I3(dAddress[4]),
        .I4(dAddress[5]),
        .I5(dAddress[3]),
        .O(char_default_color_write13_out));
  FDRE \default_character_color_reg[0] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[0]),
        .Q(default_character_color[0]),
        .R(rst));
  FDSE \default_character_color_reg[10] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[10]),
        .Q(default_character_color[10]),
        .S(rst));
  FDSE \default_character_color_reg[11] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[11]),
        .Q(default_character_color[11]),
        .S(rst));
  FDSE \default_character_color_reg[12] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[12]),
        .Q(default_character_color[12]),
        .S(rst));
  FDSE \default_character_color_reg[13] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[13]),
        .Q(default_character_color[13]),
        .S(rst));
  FDSE \default_character_color_reg[14] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[14]),
        .Q(default_character_color[14]),
        .S(rst));
  FDSE \default_character_color_reg[15] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[15]),
        .Q(default_character_color[15]),
        .S(rst));
  FDRE \default_character_color_reg[16] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[16]),
        .Q(default_character_color[16]),
        .R(rst));
  FDRE \default_character_color_reg[17] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[17]),
        .Q(default_character_color[17]),
        .R(rst));
  FDRE \default_character_color_reg[18] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[18]),
        .Q(default_character_color[18]),
        .R(rst));
  FDRE \default_character_color_reg[19] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[19]),
        .Q(default_character_color[19]),
        .R(rst));
  FDRE \default_character_color_reg[1] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[1]),
        .Q(default_character_color[1]),
        .R(rst));
  FDRE \default_character_color_reg[20] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[20]),
        .Q(default_character_color[20]),
        .R(rst));
  FDRE \default_character_color_reg[21] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[21]),
        .Q(default_character_color[21]),
        .R(rst));
  FDRE \default_character_color_reg[22] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[22]),
        .Q(default_character_color[22]),
        .R(rst));
  FDRE \default_character_color_reg[23] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[23]),
        .Q(default_character_color[23]),
        .R(rst));
  FDRE \default_character_color_reg[24] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[24]),
        .Q(default_character_color[24]),
        .R(rst));
  FDRE \default_character_color_reg[2] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[2]),
        .Q(default_character_color[2]),
        .R(rst));
  FDRE \default_character_color_reg[3] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[3]),
        .Q(default_character_color[3]),
        .R(rst));
  FDSE \default_character_color_reg[4] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[4]),
        .Q(default_character_color[4]),
        .S(rst));
  FDSE \default_character_color_reg[5] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[5]),
        .Q(default_character_color[5]),
        .S(rst));
  FDSE \default_character_color_reg[6] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[6]),
        .Q(default_character_color[6]),
        .S(rst));
  FDSE \default_character_color_reg[7] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[7]),
        .Q(default_character_color[7]),
        .S(rst));
  FDSE \default_character_color_reg[8] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[8]),
        .Q(default_character_color[8]),
        .S(rst));
  FDSE \default_character_color_reg[9] 
       (.C(clk),
        .CE(char_default_color_write13_out),
        .D(dWriteData[9]),
        .Q(default_character_color[9]),
        .S(rst));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_memory_read[0]_i_4 
       (.I0(default_character_color[0]),
        .I1(ms_timer_cnt_reg[0]),
        .I2(dAddress[4]),
        .I3(btn_deb[0]),
        .I4(dAddress[2]),
        .I5(rgb_color_1[0]),
        .O(\io_memory_read[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFFEEE)) 
    \io_memory_read[10]_i_1 
       (.I0(\io_memory_read[10]_i_2_n_0 ),
        .I1(\io_memory_read[10]_i_3_n_0 ),
        .I2(width[6]),
        .I3(dAddress[2]),
        .I4(data2[2]),
        .I5(\io_memory_read[11]_i_4_n_0 ),
        .O(\io_memory_read[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4A4540400000000)) 
    \io_memory_read[10]_i_2 
       (.I0(dAddress[2]),
        .I1(rgb_color_1[10]),
        .I2(dAddress[4]),
        .I3(ms_timer_cnt_reg[10]),
        .I4(default_character_color[10]),
        .I5(\io_memory_read[11]_i_5_n_0 ),
        .O(\io_memory_read[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \io_memory_read[10]_i_3 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .I3(LED[10]),
        .I4(dAddress[2]),
        .I5(sw_deb[10]),
        .O(\io_memory_read[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFFEEE)) 
    \io_memory_read[11]_i_1 
       (.I0(\io_memory_read[11]_i_2_n_0 ),
        .I1(\io_memory_read[11]_i_3_n_0 ),
        .I2(width[7]),
        .I3(dAddress[2]),
        .I4(data2[3]),
        .I5(\io_memory_read[11]_i_4_n_0 ),
        .O(\io_memory_read[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4A4540400000000)) 
    \io_memory_read[11]_i_2 
       (.I0(dAddress[2]),
        .I1(rgb_color_1[11]),
        .I2(dAddress[4]),
        .I3(ms_timer_cnt_reg[11]),
        .I4(default_character_color[11]),
        .I5(\io_memory_read[11]_i_5_n_0 ),
        .O(\io_memory_read[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000010000)) 
    \io_memory_read[11]_i_3 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .I3(dAddress[2]),
        .I4(LED[11]),
        .I5(sw_deb[11]),
        .O(\io_memory_read[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \io_memory_read[11]_i_4 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .O(\io_memory_read[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \io_memory_read[11]_i_5 
       (.I0(dAddress[5]),
        .I1(dAddress[3]),
        .O(\io_memory_read[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00EE00EE00EE)) 
    \io_memory_read[12]_i_1 
       (.I0(\io_memory_read[12]_i_2_n_0 ),
        .I1(\io_memory_read[12]_i_3_n_0 ),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(\seven_segment_reg_reg_n_0_[12] ),
        .O(\io_memory_read[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E200E2)) 
    \io_memory_read[12]_i_2 
       (.I0(LED[12]),
        .I1(dAddress[2]),
        .I2(sw_deb[12]),
        .I3(dAddress[5]),
        .I4(dAddress[3]),
        .I5(dAddress[4]),
        .O(\io_memory_read[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAC000000)) 
    \io_memory_read[12]_i_3 
       (.I0(default_character_color[12]),
        .I1(ms_timer_cnt_reg[12]),
        .I2(dAddress[2]),
        .I3(dAddress[4]),
        .I4(dAddress[5]),
        .O(\io_memory_read[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FEE00EE00EE00EE)) 
    \io_memory_read[13]_i_1 
       (.I0(\io_memory_read[13]_i_2_n_0 ),
        .I1(\io_memory_read[13]_i_3_n_0 ),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(\seven_segment_reg_reg_n_0_[13] ),
        .O(\io_memory_read[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E200E2)) 
    \io_memory_read[13]_i_2 
       (.I0(LED[13]),
        .I1(dAddress[2]),
        .I2(sw_deb[13]),
        .I3(dAddress[5]),
        .I4(dAddress[3]),
        .I5(dAddress[4]),
        .O(\io_memory_read[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \io_memory_read[13]_i_3 
       (.I0(ms_timer_cnt_reg[13]),
        .I1(dAddress[2]),
        .I2(default_character_color[13]),
        .I3(dAddress[4]),
        .I4(dAddress[5]),
        .O(\io_memory_read[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080FF80)) 
    \io_memory_read[14]_i_1 
       (.I0(\io_memory_read[14]_i_2_n_0 ),
        .I1(sw_deb[14]),
        .I2(dAddress[2]),
        .I3(\seven_segment_reg_reg_n_0_[14] ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(\io_memory_read[14]_i_3_n_0 ),
        .O(\io_memory_read[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \io_memory_read[14]_i_2 
       (.I0(dAddress[5]),
        .I1(dAddress[3]),
        .I2(dAddress[4]),
        .O(\io_memory_read[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0FFA0C0A0C0A0C0)) 
    \io_memory_read[14]_i_3 
       (.I0(default_character_color[14]),
        .I1(ms_timer_cnt_reg[14]),
        .I2(\io_memory_read[24]_i_2_n_0 ),
        .I3(dAddress[2]),
        .I4(LED[14]),
        .I5(\io_memory_read[14]_i_2_n_0 ),
        .O(\io_memory_read[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    \io_memory_read[15]_i_1 
       (.I0(\io_memory_read[15]_i_2_n_0 ),
        .I1(LED[15]),
        .I2(dAddress[4]),
        .I3(dAddress[3]),
        .I4(dAddress[5]),
        .I5(\io_memory_read[15]_i_3_n_0 ),
        .O(\io_memory_read[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0880000)) 
    \io_memory_read[15]_i_2 
       (.I0(dAddress[5]),
        .I1(ms_timer_cnt_reg[15]),
        .I2(\seven_segment_reg_reg_n_0_[15] ),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(dAddress[2]),
        .O(\io_memory_read[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FF500000000)) 
    \io_memory_read[15]_i_3 
       (.I0(sw_deb[15]),
        .I1(default_character_color[15]),
        .I2(dAddress[4]),
        .I3(dAddress[5]),
        .I4(dAddress[3]),
        .I5(dAddress[2]),
        .O(\io_memory_read[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[16]_i_1 
       (.I0(default_character_color[16]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[16]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data4[0]),
        .O(\io_memory_read[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[17]_i_1 
       (.I0(default_character_color[17]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[17]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data4[1]),
        .O(\io_memory_read[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[18]_i_1 
       (.I0(default_character_color[18]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[18]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data4[2]),
        .O(\io_memory_read[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[19]_i_1 
       (.I0(default_character_color[19]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[19]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data4[3]),
        .O(\io_memory_read[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \io_memory_read[1]_i_2 
       (.I0(\seven_segment_reg_reg_n_0_[1] ),
        .I1(dAddress[2]),
        .I2(\rgb_color_0_reg_n_0_[1] ),
        .I3(dAddress[5]),
        .I4(dAddress[3]),
        .I5(dAddress[4]),
        .O(\io_memory_read[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_memory_read[1]_i_4 
       (.I0(default_character_color[1]),
        .I1(ms_timer_cnt_reg[1]),
        .I2(dAddress[4]),
        .I3(btn_deb[1]),
        .I4(dAddress[2]),
        .I5(rgb_color_1[1]),
        .O(\io_memory_read[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[20]_i_1 
       (.I0(default_character_color[20]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[20]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data5[0]),
        .O(\io_memory_read[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[21]_i_1 
       (.I0(default_character_color[21]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[21]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data5[1]),
        .O(\io_memory_read[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[22]_i_1 
       (.I0(default_character_color[22]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[22]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data5[2]),
        .O(\io_memory_read[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[23]_i_1 
       (.I0(default_character_color[23]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[23]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data5[3]),
        .O(\io_memory_read[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB800B800)) 
    \io_memory_read[24]_i_1 
       (.I0(default_character_color[24]),
        .I1(dAddress[2]),
        .I2(ms_timer_cnt_reg[24]),
        .I3(\io_memory_read[24]_i_2_n_0 ),
        .I4(\io_memory_read[24]_i_3_n_0 ),
        .I5(data6[0]),
        .O(\io_memory_read[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \io_memory_read[24]_i_2 
       (.I0(dAddress[3]),
        .I1(dAddress[5]),
        .I2(dAddress[4]),
        .O(\io_memory_read[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \io_memory_read[24]_i_3 
       (.I0(dAddress[2]),
        .I1(dAddress[3]),
        .I2(dAddress[4]),
        .O(\io_memory_read[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[25]_i_1 
       (.I0(ms_timer_cnt_reg[25]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data6[1]),
        .O(\io_memory_read[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[26]_i_1 
       (.I0(ms_timer_cnt_reg[26]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data6[2]),
        .O(\io_memory_read[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[27]_i_1 
       (.I0(ms_timer_cnt_reg[27]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data6[3]),
        .O(\io_memory_read[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[28]_i_1 
       (.I0(ms_timer_cnt_reg[28]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data7[0]),
        .O(\io_memory_read[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[29]_i_1 
       (.I0(ms_timer_cnt_reg[29]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data7[1]),
        .O(\io_memory_read[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \io_memory_read[2]_i_2 
       (.I0(\seven_segment_reg_reg_n_0_[2] ),
        .I1(dAddress[2]),
        .I2(\rgb_color_0_reg_n_0_[2] ),
        .I3(dAddress[5]),
        .I4(dAddress[3]),
        .I5(dAddress[4]),
        .O(\io_memory_read[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \io_memory_read[2]_i_4 
       (.I0(btn_deb[2]),
        .I1(rgb_color_1[2]),
        .I2(default_character_color[2]),
        .I3(dAddress[2]),
        .I4(ms_timer_cnt_reg[2]),
        .I5(dAddress[4]),
        .O(\io_memory_read[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[30]_i_1 
       (.I0(ms_timer_cnt_reg[30]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data7[2]),
        .O(\io_memory_read[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0FDF)) 
    \io_memory_read[31]_i_1 
       (.I0(dAddress[2]),
        .I1(dAddress[4]),
        .I2(dAddress[3]),
        .I3(dAddress[5]),
        .O(\io_memory_read[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F08000000080000)) 
    \io_memory_read[31]_i_2 
       (.I0(ms_timer_cnt_reg[31]),
        .I1(dAddress[5]),
        .I2(dAddress[2]),
        .I3(dAddress[3]),
        .I4(dAddress[4]),
        .I5(data7[3]),
        .O(\io_memory_read[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_memory_read[3]_i_3 
       (.I0(default_character_color[3]),
        .I1(ms_timer_cnt_reg[3]),
        .I2(dAddress[4]),
        .I3(btn_deb[3]),
        .I4(dAddress[2]),
        .I5(rgb_color_1[3]),
        .O(\io_memory_read[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_memory_read[4]_i_3 
       (.I0(default_character_color[4]),
        .I1(ms_timer_cnt_reg[4]),
        .I2(dAddress[4]),
        .I3(btn_deb[4]),
        .I4(dAddress[2]),
        .I5(rgb_color_1[4]),
        .O(\io_memory_read[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \io_memory_read[5]_i_3 
       (.I0(default_character_color[5]),
        .I1(ms_timer_cnt_reg[5]),
        .I2(dAddress[4]),
        .I3(rgb_color_1[5]),
        .I4(dAddress[2]),
        .O(\io_memory_read[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \io_memory_read[6]_i_3 
       (.I0(default_character_color[6]),
        .I1(ms_timer_cnt_reg[6]),
        .I2(dAddress[4]),
        .I3(rgb_color_1[6]),
        .I4(dAddress[2]),
        .O(\io_memory_read[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \io_memory_read[7]_i_2 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .O(\io_memory_read[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \io_memory_read[7]_i_4 
       (.I0(default_character_color[7]),
        .I1(ms_timer_cnt_reg[7]),
        .I2(dAddress[4]),
        .I3(rgb_color_1[7]),
        .I4(dAddress[2]),
        .O(\io_memory_read[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFFEEE)) 
    \io_memory_read[8]_i_1 
       (.I0(\io_memory_read[8]_i_2_n_0 ),
        .I1(\io_memory_read[8]_i_3_n_0 ),
        .I2(width[4]),
        .I3(dAddress[2]),
        .I4(data2[0]),
        .I5(\io_memory_read[11]_i_4_n_0 ),
        .O(\io_memory_read[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4A4540400000000)) 
    \io_memory_read[8]_i_2 
       (.I0(dAddress[2]),
        .I1(rgb_color_1[8]),
        .I2(dAddress[4]),
        .I3(ms_timer_cnt_reg[8]),
        .I4(default_character_color[8]),
        .I5(\io_memory_read[11]_i_5_n_0 ),
        .O(\io_memory_read[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \io_memory_read[8]_i_3 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .I3(LED[8]),
        .I4(dAddress[2]),
        .I5(sw_deb[8]),
        .O(\io_memory_read[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFFEEE)) 
    \io_memory_read[9]_i_1 
       (.I0(\io_memory_read[9]_i_2_n_0 ),
        .I1(\io_memory_read[9]_i_3_n_0 ),
        .I2(width[5]),
        .I3(dAddress[2]),
        .I4(data2[1]),
        .I5(\io_memory_read[11]_i_4_n_0 ),
        .O(\io_memory_read[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4A4540400000000)) 
    \io_memory_read[9]_i_2 
       (.I0(dAddress[2]),
        .I1(rgb_color_1[9]),
        .I2(dAddress[4]),
        .I3(ms_timer_cnt_reg[9]),
        .I4(default_character_color[9]),
        .I5(\io_memory_read[11]_i_5_n_0 ),
        .O(\io_memory_read[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \io_memory_read[9]_i_3 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .I3(LED[9]),
        .I4(dAddress[2]),
        .I5(sw_deb[9]),
        .O(\io_memory_read[9]_i_3_n_0 ));
  FDRE \io_memory_read_reg[0] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(tx_n_0),
        .Q(io_memory_read[0]),
        .R(rst));
  FDRE \io_memory_read_reg[10] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[10]_i_1_n_0 ),
        .Q(io_memory_read[10]),
        .R(rst));
  FDRE \io_memory_read_reg[11] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[11]_i_1_n_0 ),
        .Q(io_memory_read[11]),
        .R(rst));
  FDRE \io_memory_read_reg[12] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[12]_i_1_n_0 ),
        .Q(io_memory_read[12]),
        .R(rst));
  FDRE \io_memory_read_reg[13] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[13]_i_1_n_0 ),
        .Q(io_memory_read[13]),
        .R(rst));
  FDRE \io_memory_read_reg[14] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[14]_i_1_n_0 ),
        .Q(io_memory_read[14]),
        .R(rst));
  FDRE \io_memory_read_reg[15] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[15]_i_1_n_0 ),
        .Q(io_memory_read[15]),
        .R(rst));
  FDRE \io_memory_read_reg[16] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[16]_i_1_n_0 ),
        .Q(io_memory_read[16]),
        .R(rst));
  FDRE \io_memory_read_reg[17] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[17]_i_1_n_0 ),
        .Q(io_memory_read[17]),
        .R(rst));
  FDRE \io_memory_read_reg[18] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[18]_i_1_n_0 ),
        .Q(io_memory_read[18]),
        .R(rst));
  FDRE \io_memory_read_reg[19] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[19]_i_1_n_0 ),
        .Q(io_memory_read[19]),
        .R(rst));
  FDRE \io_memory_read_reg[1] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_7),
        .Q(io_memory_read[1]),
        .R(rst));
  FDRE \io_memory_read_reg[20] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[20]_i_1_n_0 ),
        .Q(io_memory_read[20]),
        .R(rst));
  FDRE \io_memory_read_reg[21] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[21]_i_1_n_0 ),
        .Q(io_memory_read[21]),
        .R(rst));
  FDRE \io_memory_read_reg[22] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[22]_i_1_n_0 ),
        .Q(io_memory_read[22]),
        .R(rst));
  FDRE \io_memory_read_reg[23] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[23]_i_1_n_0 ),
        .Q(io_memory_read[23]),
        .R(rst));
  FDRE \io_memory_read_reg[24] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[24]_i_1_n_0 ),
        .Q(io_memory_read[24]),
        .R(rst));
  FDRE \io_memory_read_reg[25] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[25]_i_1_n_0 ),
        .Q(io_memory_read[25]),
        .R(rst));
  FDRE \io_memory_read_reg[26] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[26]_i_1_n_0 ),
        .Q(io_memory_read[26]),
        .R(rst));
  FDRE \io_memory_read_reg[27] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[27]_i_1_n_0 ),
        .Q(io_memory_read[27]),
        .R(rst));
  FDRE \io_memory_read_reg[28] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[28]_i_1_n_0 ),
        .Q(io_memory_read[28]),
        .R(rst));
  FDRE \io_memory_read_reg[29] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[29]_i_1_n_0 ),
        .Q(io_memory_read[29]),
        .R(rst));
  FDRE \io_memory_read_reg[2] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_6),
        .Q(io_memory_read[2]),
        .R(rst));
  FDRE \io_memory_read_reg[30] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[30]_i_1_n_0 ),
        .Q(io_memory_read[30]),
        .R(rst));
  FDRE \io_memory_read_reg[31] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[31]_i_2_n_0 ),
        .Q(io_memory_read[31]),
        .R(rst));
  FDRE \io_memory_read_reg[3] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_5),
        .Q(io_memory_read[3]),
        .R(rst));
  FDRE \io_memory_read_reg[4] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_4),
        .Q(io_memory_read[4]),
        .R(rst));
  FDRE \io_memory_read_reg[5] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_3),
        .Q(io_memory_read[5]),
        .R(rst));
  FDRE \io_memory_read_reg[6] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_2),
        .Q(io_memory_read[6]),
        .R(rst));
  FDRE \io_memory_read_reg[7] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(rx_n_1),
        .Q(io_memory_read[7]),
        .R(rst));
  FDRE \io_memory_read_reg[8] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[8]_i_1_n_0 ),
        .Q(io_memory_read[8]),
        .R(rst));
  FDRE \io_memory_read_reg[9] 
       (.C(clk),
        .CE(\io_memory_read[31]_i_1_n_0 ),
        .D(\io_memory_read[9]_i_1_n_0 ),
        .Q(io_memory_read[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_tick_cnt[0]_i_1 
       (.I0(\ms_tick_cnt_reg_n_0_[0] ),
        .O(ms_tick_cnt[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[10]_i_1 
       (.I0(\ms_tick_cnt_reg[12]_i_2_n_6 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[11]_i_1 
       (.I0(\ms_tick_cnt_reg[12]_i_2_n_5 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[12]_i_1 
       (.I0(\ms_tick_cnt_reg[12]_i_2_n_4 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[13]_i_1 
       (.I0(\ms_tick_cnt_reg[16]_i_2_n_7 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[14]_i_1 
       (.I0(\ms_tick_cnt_reg[16]_i_2_n_6 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[15]_i_1 
       (.I0(\ms_tick_cnt_reg[16]_i_2_n_5 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[16]_i_1 
       (.I0(\ms_tick_cnt_reg[16]_i_2_n_4 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[17]_i_1 
       (.I0(\ms_tick_cnt_reg[19]_i_4_n_7 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[18]_i_1 
       (.I0(\ms_tick_cnt_reg[19]_i_4_n_6 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \ms_tick_cnt[19]_i_1 
       (.I0(rst),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .O(\ms_tick_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[19]_i_2 
       (.I0(\ms_tick_cnt_reg[19]_i_4_n_5 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[19]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \ms_tick_cnt[19]_i_3 
       (.I0(dAddress[2]),
        .I1(MemWrite),
        .I2(io_space_mem),
        .I3(dAddress[4]),
        .I4(dAddress[5]),
        .I5(dAddress[3]),
        .O(\ms_tick_cnt[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \ms_tick_cnt[19]_i_5 
       (.I0(\ms_tick_cnt[19]_i_6_n_0 ),
        .I1(\ms_tick_cnt_reg_n_0_[2] ),
        .I2(\ms_tick_cnt_reg_n_0_[0] ),
        .I3(\ms_tick_cnt_reg_n_0_[12] ),
        .I4(\ms_tick_cnt_reg_n_0_[13] ),
        .I5(\ms_tick_cnt[19]_i_7_n_0 ),
        .O(\ms_tick_cnt[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ms_tick_cnt[19]_i_6 
       (.I0(\ms_tick_cnt_reg_n_0_[9] ),
        .I1(\ms_tick_cnt_reg_n_0_[5] ),
        .I2(\ms_tick_cnt_reg_n_0_[4] ),
        .I3(\ms_tick_cnt_reg_n_0_[6] ),
        .O(\ms_tick_cnt[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \ms_tick_cnt[19]_i_7 
       (.I0(\ms_tick_cnt_reg_n_0_[19] ),
        .I1(\ms_tick_cnt_reg_n_0_[15] ),
        .I2(\ms_tick_cnt_reg_n_0_[14] ),
        .I3(\ms_tick_cnt_reg_n_0_[8] ),
        .I4(\ms_tick_cnt[19]_i_8_n_0 ),
        .I5(\ms_tick_cnt[19]_i_9_n_0 ),
        .O(\ms_tick_cnt[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ms_tick_cnt[19]_i_8 
       (.I0(\ms_tick_cnt_reg_n_0_[3] ),
        .I1(\ms_tick_cnt_reg_n_0_[17] ),
        .I2(\ms_tick_cnt_reg_n_0_[10] ),
        .I3(\ms_tick_cnt_reg_n_0_[16] ),
        .O(\ms_tick_cnt[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \ms_tick_cnt[19]_i_9 
       (.I0(\ms_tick_cnt_reg_n_0_[7] ),
        .I1(\ms_tick_cnt_reg_n_0_[1] ),
        .I2(\ms_tick_cnt_reg_n_0_[18] ),
        .I3(\ms_tick_cnt_reg_n_0_[11] ),
        .O(\ms_tick_cnt[19]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[1]_i_1 
       (.I0(\ms_tick_cnt_reg[4]_i_2_n_7 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[2]_i_1 
       (.I0(\ms_tick_cnt_reg[4]_i_2_n_6 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[3]_i_1 
       (.I0(\ms_tick_cnt_reg[4]_i_2_n_5 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[4]_i_1 
       (.I0(\ms_tick_cnt_reg[4]_i_2_n_4 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[5]_i_1 
       (.I0(\ms_tick_cnt_reg[8]_i_2_n_7 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[6]_i_1 
       (.I0(\ms_tick_cnt_reg[8]_i_2_n_6 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[7]_i_1 
       (.I0(\ms_tick_cnt_reg[8]_i_2_n_5 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[8]_i_1 
       (.I0(\ms_tick_cnt_reg[8]_i_2_n_4 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ms_tick_cnt[9]_i_1 
       (.I0(\ms_tick_cnt_reg[12]_i_2_n_7 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_tick_cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[0]),
        .Q(\ms_tick_cnt_reg_n_0_[0] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[10]),
        .Q(\ms_tick_cnt_reg_n_0_[10] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[11]),
        .Q(\ms_tick_cnt_reg_n_0_[11] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[12]),
        .Q(\ms_tick_cnt_reg_n_0_[12] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  CARRY4 \ms_tick_cnt_reg[12]_i_2 
       (.CI(\ms_tick_cnt_reg[8]_i_2_n_0 ),
        .CO({\ms_tick_cnt_reg[12]_i_2_n_0 ,\ms_tick_cnt_reg[12]_i_2_n_1 ,\ms_tick_cnt_reg[12]_i_2_n_2 ,\ms_tick_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_tick_cnt_reg[12]_i_2_n_4 ,\ms_tick_cnt_reg[12]_i_2_n_5 ,\ms_tick_cnt_reg[12]_i_2_n_6 ,\ms_tick_cnt_reg[12]_i_2_n_7 }),
        .S({\ms_tick_cnt_reg_n_0_[12] ,\ms_tick_cnt_reg_n_0_[11] ,\ms_tick_cnt_reg_n_0_[10] ,\ms_tick_cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[13]),
        .Q(\ms_tick_cnt_reg_n_0_[13] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[14]),
        .Q(\ms_tick_cnt_reg_n_0_[14] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[15]),
        .Q(\ms_tick_cnt_reg_n_0_[15] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[16]),
        .Q(\ms_tick_cnt_reg_n_0_[16] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  CARRY4 \ms_tick_cnt_reg[16]_i_2 
       (.CI(\ms_tick_cnt_reg[12]_i_2_n_0 ),
        .CO({\ms_tick_cnt_reg[16]_i_2_n_0 ,\ms_tick_cnt_reg[16]_i_2_n_1 ,\ms_tick_cnt_reg[16]_i_2_n_2 ,\ms_tick_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_tick_cnt_reg[16]_i_2_n_4 ,\ms_tick_cnt_reg[16]_i_2_n_5 ,\ms_tick_cnt_reg[16]_i_2_n_6 ,\ms_tick_cnt_reg[16]_i_2_n_7 }),
        .S({\ms_tick_cnt_reg_n_0_[16] ,\ms_tick_cnt_reg_n_0_[15] ,\ms_tick_cnt_reg_n_0_[14] ,\ms_tick_cnt_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[17]),
        .Q(\ms_tick_cnt_reg_n_0_[17] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[18]),
        .Q(\ms_tick_cnt_reg_n_0_[18] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[19]),
        .Q(\ms_tick_cnt_reg_n_0_[19] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  CARRY4 \ms_tick_cnt_reg[19]_i_4 
       (.CI(\ms_tick_cnt_reg[16]_i_2_n_0 ),
        .CO({\ms_tick_cnt_reg[19]_i_4_n_2 ,\ms_tick_cnt_reg[19]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_tick_cnt_reg[19]_i_4_n_5 ,\ms_tick_cnt_reg[19]_i_4_n_6 ,\ms_tick_cnt_reg[19]_i_4_n_7 }),
        .S({\<const0> ,\ms_tick_cnt_reg_n_0_[19] ,\ms_tick_cnt_reg_n_0_[18] ,\ms_tick_cnt_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[1]),
        .Q(\ms_tick_cnt_reg_n_0_[1] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[2]),
        .Q(\ms_tick_cnt_reg_n_0_[2] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[3]),
        .Q(\ms_tick_cnt_reg_n_0_[3] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[4]),
        .Q(\ms_tick_cnt_reg_n_0_[4] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  CARRY4 \ms_tick_cnt_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\ms_tick_cnt_reg[4]_i_2_n_0 ,\ms_tick_cnt_reg[4]_i_2_n_1 ,\ms_tick_cnt_reg[4]_i_2_n_2 ,\ms_tick_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\ms_tick_cnt_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_tick_cnt_reg[4]_i_2_n_4 ,\ms_tick_cnt_reg[4]_i_2_n_5 ,\ms_tick_cnt_reg[4]_i_2_n_6 ,\ms_tick_cnt_reg[4]_i_2_n_7 }),
        .S({\ms_tick_cnt_reg_n_0_[4] ,\ms_tick_cnt_reg_n_0_[3] ,\ms_tick_cnt_reg_n_0_[2] ,\ms_tick_cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[5]),
        .Q(\ms_tick_cnt_reg_n_0_[5] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[6]),
        .Q(\ms_tick_cnt_reg_n_0_[6] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[7]),
        .Q(\ms_tick_cnt_reg_n_0_[7] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[8]),
        .Q(\ms_tick_cnt_reg_n_0_[8] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  CARRY4 \ms_tick_cnt_reg[8]_i_2 
       (.CI(\ms_tick_cnt_reg[4]_i_2_n_0 ),
        .CO({\ms_tick_cnt_reg[8]_i_2_n_0 ,\ms_tick_cnt_reg[8]_i_2_n_1 ,\ms_tick_cnt_reg[8]_i_2_n_2 ,\ms_tick_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_tick_cnt_reg[8]_i_2_n_4 ,\ms_tick_cnt_reg[8]_i_2_n_5 ,\ms_tick_cnt_reg[8]_i_2_n_6 ,\ms_tick_cnt_reg[8]_i_2_n_7 }),
        .S({\ms_tick_cnt_reg_n_0_[8] ,\ms_tick_cnt_reg_n_0_[7] ,\ms_tick_cnt_reg_n_0_[6] ,\ms_tick_cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_tick_cnt_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(ms_tick_cnt[9]),
        .Q(\ms_tick_cnt_reg_n_0_[9] ),
        .R(\ms_tick_cnt[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ms_timer_cnt[0]_i_1 
       (.I0(\ms_tick_cnt[19]_i_3_n_0 ),
        .I1(\ms_tick_cnt[19]_i_5_n_0 ),
        .O(ms_timer_cnt0));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[0]_i_3 
       (.I0(dWriteData[0]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[0]),
        .O(\ms_timer_cnt[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[0]_i_4 
       (.I0(dWriteData[3]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[3]),
        .O(\ms_timer_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[0]_i_5 
       (.I0(dWriteData[2]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[2]),
        .O(\ms_timer_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[0]_i_6 
       (.I0(dWriteData[1]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[1]),
        .O(\ms_timer_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \ms_timer_cnt[0]_i_7 
       (.I0(ms_timer_cnt_reg[0]),
        .I1(dWriteData[0]),
        .I2(\ms_tick_cnt[19]_i_3_n_0 ),
        .O(\ms_timer_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[12]_i_2 
       (.I0(dWriteData[15]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[15]),
        .O(\ms_timer_cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[12]_i_3 
       (.I0(dWriteData[14]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[14]),
        .O(\ms_timer_cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[12]_i_4 
       (.I0(dWriteData[13]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[13]),
        .O(\ms_timer_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[12]_i_5 
       (.I0(dWriteData[12]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[12]),
        .O(\ms_timer_cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[16]_i_2 
       (.I0(dWriteData[19]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[19]),
        .O(\ms_timer_cnt[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[16]_i_3 
       (.I0(dWriteData[18]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[18]),
        .O(\ms_timer_cnt[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[16]_i_4 
       (.I0(dWriteData[17]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[17]),
        .O(\ms_timer_cnt[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[16]_i_5 
       (.I0(dWriteData[16]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[16]),
        .O(\ms_timer_cnt[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[20]_i_2 
       (.I0(dWriteData[23]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[23]),
        .O(\ms_timer_cnt[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[20]_i_3 
       (.I0(dWriteData[22]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[22]),
        .O(\ms_timer_cnt[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[20]_i_4 
       (.I0(dWriteData[21]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[21]),
        .O(\ms_timer_cnt[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[20]_i_5 
       (.I0(dWriteData[20]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[20]),
        .O(\ms_timer_cnt[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[24]_i_2 
       (.I0(dWriteData[27]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[27]),
        .O(\ms_timer_cnt[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[24]_i_3 
       (.I0(dWriteData[26]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[26]),
        .O(\ms_timer_cnt[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[24]_i_4 
       (.I0(dWriteData[25]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[25]),
        .O(\ms_timer_cnt[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[24]_i_5 
       (.I0(dWriteData[24]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[24]),
        .O(\ms_timer_cnt[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[28]_i_2 
       (.I0(dWriteData[31]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[31]),
        .O(\ms_timer_cnt[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[28]_i_3 
       (.I0(dWriteData[30]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[30]),
        .O(\ms_timer_cnt[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[28]_i_4 
       (.I0(dWriteData[29]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[29]),
        .O(\ms_timer_cnt[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[28]_i_5 
       (.I0(dWriteData[28]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[28]),
        .O(\ms_timer_cnt[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[4]_i_2 
       (.I0(dWriteData[7]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[7]),
        .O(\ms_timer_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[4]_i_3 
       (.I0(dWriteData[6]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[6]),
        .O(\ms_timer_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[4]_i_4 
       (.I0(dWriteData[5]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[5]),
        .O(\ms_timer_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[4]_i_5 
       (.I0(dWriteData[4]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[4]),
        .O(\ms_timer_cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[8]_i_2 
       (.I0(dWriteData[11]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[11]),
        .O(\ms_timer_cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[8]_i_3 
       (.I0(dWriteData[10]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[10]),
        .O(\ms_timer_cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[8]_i_4 
       (.I0(dWriteData[9]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[9]),
        .O(\ms_timer_cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ms_timer_cnt[8]_i_5 
       (.I0(dWriteData[8]),
        .I1(\ms_tick_cnt[19]_i_3_n_0 ),
        .I2(ms_timer_cnt_reg[8]),
        .O(\ms_timer_cnt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[0] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[0]_i_2_n_7 ),
        .Q(ms_timer_cnt_reg[0]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\ms_timer_cnt_reg[0]_i_2_n_0 ,\ms_timer_cnt_reg[0]_i_2_n_1 ,\ms_timer_cnt_reg[0]_i_2_n_2 ,\ms_timer_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\ms_timer_cnt[0]_i_3_n_0 }),
        .O({\ms_timer_cnt_reg[0]_i_2_n_4 ,\ms_timer_cnt_reg[0]_i_2_n_5 ,\ms_timer_cnt_reg[0]_i_2_n_6 ,\ms_timer_cnt_reg[0]_i_2_n_7 }),
        .S({\ms_timer_cnt[0]_i_4_n_0 ,\ms_timer_cnt[0]_i_5_n_0 ,\ms_timer_cnt[0]_i_6_n_0 ,\ms_timer_cnt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[10] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[8]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[11] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[8]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[12] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[12]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[12]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[12]_i_1 
       (.CI(\ms_timer_cnt_reg[8]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[12]_i_1_n_0 ,\ms_timer_cnt_reg[12]_i_1_n_1 ,\ms_timer_cnt_reg[12]_i_1_n_2 ,\ms_timer_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[12]_i_1_n_4 ,\ms_timer_cnt_reg[12]_i_1_n_5 ,\ms_timer_cnt_reg[12]_i_1_n_6 ,\ms_timer_cnt_reg[12]_i_1_n_7 }),
        .S({\ms_timer_cnt[12]_i_2_n_0 ,\ms_timer_cnt[12]_i_3_n_0 ,\ms_timer_cnt[12]_i_4_n_0 ,\ms_timer_cnt[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[13] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[12]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[14] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[12]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[15] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[12]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[16] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[16]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[16]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[16]_i_1 
       (.CI(\ms_timer_cnt_reg[12]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[16]_i_1_n_0 ,\ms_timer_cnt_reg[16]_i_1_n_1 ,\ms_timer_cnt_reg[16]_i_1_n_2 ,\ms_timer_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[16]_i_1_n_4 ,\ms_timer_cnt_reg[16]_i_1_n_5 ,\ms_timer_cnt_reg[16]_i_1_n_6 ,\ms_timer_cnt_reg[16]_i_1_n_7 }),
        .S({\ms_timer_cnt[16]_i_2_n_0 ,\ms_timer_cnt[16]_i_3_n_0 ,\ms_timer_cnt[16]_i_4_n_0 ,\ms_timer_cnt[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[17] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[16]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[18] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[16]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[19] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[16]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[1] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[0]_i_2_n_6 ),
        .Q(ms_timer_cnt_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[20] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[20]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[20]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[20]_i_1 
       (.CI(\ms_timer_cnt_reg[16]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[20]_i_1_n_0 ,\ms_timer_cnt_reg[20]_i_1_n_1 ,\ms_timer_cnt_reg[20]_i_1_n_2 ,\ms_timer_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[20]_i_1_n_4 ,\ms_timer_cnt_reg[20]_i_1_n_5 ,\ms_timer_cnt_reg[20]_i_1_n_6 ,\ms_timer_cnt_reg[20]_i_1_n_7 }),
        .S({\ms_timer_cnt[20]_i_2_n_0 ,\ms_timer_cnt[20]_i_3_n_0 ,\ms_timer_cnt[20]_i_4_n_0 ,\ms_timer_cnt[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[21] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[20]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[22] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[20]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[23] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[20]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[24] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[24]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[24]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[24]_i_1 
       (.CI(\ms_timer_cnt_reg[20]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[24]_i_1_n_0 ,\ms_timer_cnt_reg[24]_i_1_n_1 ,\ms_timer_cnt_reg[24]_i_1_n_2 ,\ms_timer_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[24]_i_1_n_4 ,\ms_timer_cnt_reg[24]_i_1_n_5 ,\ms_timer_cnt_reg[24]_i_1_n_6 ,\ms_timer_cnt_reg[24]_i_1_n_7 }),
        .S({\ms_timer_cnt[24]_i_2_n_0 ,\ms_timer_cnt[24]_i_3_n_0 ,\ms_timer_cnt[24]_i_4_n_0 ,\ms_timer_cnt[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[25] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[24]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[26] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[24]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[27] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[24]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[28] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[28]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[28]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[28]_i_1 
       (.CI(\ms_timer_cnt_reg[24]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[28]_i_1_n_1 ,\ms_timer_cnt_reg[28]_i_1_n_2 ,\ms_timer_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[28]_i_1_n_4 ,\ms_timer_cnt_reg[28]_i_1_n_5 ,\ms_timer_cnt_reg[28]_i_1_n_6 ,\ms_timer_cnt_reg[28]_i_1_n_7 }),
        .S({\ms_timer_cnt[28]_i_2_n_0 ,\ms_timer_cnt[28]_i_3_n_0 ,\ms_timer_cnt[28]_i_4_n_0 ,\ms_timer_cnt[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[29] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[28]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[2] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[0]_i_2_n_5 ),
        .Q(ms_timer_cnt_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[30] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[28]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[31] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[28]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[3] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[0]_i_2_n_4 ),
        .Q(ms_timer_cnt_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[4] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[4]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[4]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[4]_i_1 
       (.CI(\ms_timer_cnt_reg[0]_i_2_n_0 ),
        .CO({\ms_timer_cnt_reg[4]_i_1_n_0 ,\ms_timer_cnt_reg[4]_i_1_n_1 ,\ms_timer_cnt_reg[4]_i_1_n_2 ,\ms_timer_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[4]_i_1_n_4 ,\ms_timer_cnt_reg[4]_i_1_n_5 ,\ms_timer_cnt_reg[4]_i_1_n_6 ,\ms_timer_cnt_reg[4]_i_1_n_7 }),
        .S({\ms_timer_cnt[4]_i_2_n_0 ,\ms_timer_cnt[4]_i_3_n_0 ,\ms_timer_cnt[4]_i_4_n_0 ,\ms_timer_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[5] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[4]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[6] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[4]_i_1_n_5 ),
        .Q(ms_timer_cnt_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[7] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[4]_i_1_n_4 ),
        .Q(ms_timer_cnt_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[8] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[8]_i_1_n_7 ),
        .Q(ms_timer_cnt_reg[8]),
        .R(rst));
  CARRY4 \ms_timer_cnt_reg[8]_i_1 
       (.CI(\ms_timer_cnt_reg[4]_i_1_n_0 ),
        .CO({\ms_timer_cnt_reg[8]_i_1_n_0 ,\ms_timer_cnt_reg[8]_i_1_n_1 ,\ms_timer_cnt_reg[8]_i_1_n_2 ,\ms_timer_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\ms_timer_cnt_reg[8]_i_1_n_4 ,\ms_timer_cnt_reg[8]_i_1_n_5 ,\ms_timer_cnt_reg[8]_i_1_n_6 ,\ms_timer_cnt_reg[8]_i_1_n_7 }),
        .S({\ms_timer_cnt[8]_i_2_n_0 ,\ms_timer_cnt[8]_i_3_n_0 ,\ms_timer_cnt[8]_i_4_n_0 ,\ms_timer_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_timer_cnt_reg[9] 
       (.C(clk),
        .CE(ms_timer_cnt0),
        .D(\ms_timer_cnt_reg[8]_i_1_n_6 ),
        .Q(ms_timer_cnt_reg[9]),
        .R(rst));
  PWM pwm_blue_0
       (.DI({pwm_red_0_n_7,pwm_red_0_n_8}),
        .RGB0(RGB0[2]),
        .S({pwm_red_0_n_5,pwm_red_0_n_6}),
        .clk(clk));
  PWM_0 pwm_blue_1
       (.DI({pwm_red_0_n_19,pwm_red_0_n_20}),
        .RGB1(RGB1[2]),
        .S({pwm_red_0_n_17,pwm_red_0_n_18}),
        .clk(clk));
  PWM_1 pwm_green_0
       (.DI({pwm_red_0_n_3,pwm_red_0_n_4}),
        .RGB0(RGB0[1]),
        .S({pwm_red_0_n_1,pwm_red_0_n_2}),
        .clk(clk));
  PWM_2 pwm_green_1
       (.DI({pwm_red_0_n_15,pwm_red_0_n_16}),
        .RGB1(RGB1[1]),
        .S({pwm_red_0_n_13,pwm_red_0_n_14}),
        .clk(clk));
  PWM_3 pwm_red_0
       (.DI({pwm_red_0_n_3,pwm_red_0_n_4}),
        .Q({width,\rgb_color_0_reg_n_0_[7] ,\rgb_color_0_reg_n_0_[6] ,\rgb_color_0_reg_n_0_[5] ,\rgb_color_0_reg_n_0_[4] ,\rgb_color_0_reg_n_0_[3] ,\rgb_color_0_reg_n_0_[2] ,\rgb_color_0_reg_n_0_[1] ,\rgb_color_0_reg_n_0_[0] }),
        .RGB0(RGB0[0]),
        .S({pwm_red_0_n_1,pwm_red_0_n_2}),
        .clk(clk),
        .\counter_reg[7]_0 ({pwm_red_0_n_7,pwm_red_0_n_8}),
        .\counter_reg[7]_1 ({pwm_red_0_n_11,pwm_red_0_n_12}),
        .\counter_reg[7]_2 ({pwm_red_0_n_15,pwm_red_0_n_16}),
        .\counter_reg[7]_3 ({pwm_red_0_n_19,pwm_red_0_n_20}),
        .pulse_reg_0(rgb_color_1),
        .\rgb_color_0_reg[3] ({pwm_red_0_n_5,pwm_red_0_n_6}),
        .\rgb_color_1_reg[11] ({pwm_red_0_n_9,pwm_red_0_n_10}),
        .\rgb_color_1_reg[3] ({pwm_red_0_n_17,pwm_red_0_n_18}),
        .\rgb_color_1_reg[7] ({pwm_red_0_n_13,pwm_red_0_n_14}));
  PWM_4 pwm_red_1
       (.RGB1(RGB1[0]),
        .clk(clk),
        .pulse_reg_0({pwm_red_0_n_11,pwm_red_0_n_12}),
        .pulse_reg_1({pwm_red_0_n_9,pwm_red_0_n_10}));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \rgb_color_0[11]_i_1 
       (.I0(dAddress[4]),
        .I1(dAddress[3]),
        .I2(dAddress[5]),
        .I3(MemWrite),
        .I4(io_space_mem),
        .I5(dAddress[2]),
        .O(tri_led_0_write7_out));
  FDRE \rgb_color_0_reg[0] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[0]),
        .Q(\rgb_color_0_reg_n_0_[0] ),
        .R(rst));
  FDRE \rgb_color_0_reg[10] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[10]),
        .Q(width[6]),
        .R(rst));
  FDRE \rgb_color_0_reg[11] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[11]),
        .Q(width[7]),
        .R(rst));
  FDRE \rgb_color_0_reg[1] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[1]),
        .Q(\rgb_color_0_reg_n_0_[1] ),
        .R(rst));
  FDRE \rgb_color_0_reg[2] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[2]),
        .Q(\rgb_color_0_reg_n_0_[2] ),
        .R(rst));
  FDRE \rgb_color_0_reg[3] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[3]),
        .Q(\rgb_color_0_reg_n_0_[3] ),
        .R(rst));
  FDRE \rgb_color_0_reg[4] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[4]),
        .Q(\rgb_color_0_reg_n_0_[4] ),
        .R(rst));
  FDRE \rgb_color_0_reg[5] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[5]),
        .Q(\rgb_color_0_reg_n_0_[5] ),
        .R(rst));
  FDRE \rgb_color_0_reg[6] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[6]),
        .Q(\rgb_color_0_reg_n_0_[6] ),
        .R(rst));
  FDRE \rgb_color_0_reg[7] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[7]),
        .Q(\rgb_color_0_reg_n_0_[7] ),
        .R(rst));
  FDRE \rgb_color_0_reg[8] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[8]),
        .Q(width[4]),
        .R(rst));
  FDRE \rgb_color_0_reg[9] 
       (.C(clk),
        .CE(tri_led_0_write7_out),
        .D(dWriteData[9]),
        .Q(width[5]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rgb_color_1[11]_i_1 
       (.I0(dAddress[4]),
        .I1(dAddress[2]),
        .I2(MemWrite),
        .I3(io_space_mem),
        .I4(dAddress[3]),
        .I5(dAddress[5]),
        .O(\rgb_color_1[11]_i_1_n_0 ));
  FDRE \rgb_color_1_reg[0] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[0]),
        .Q(rgb_color_1[0]),
        .R(rst));
  FDRE \rgb_color_1_reg[10] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[10]),
        .Q(rgb_color_1[10]),
        .R(rst));
  FDRE \rgb_color_1_reg[11] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[11]),
        .Q(rgb_color_1[11]),
        .R(rst));
  FDRE \rgb_color_1_reg[1] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[1]),
        .Q(rgb_color_1[1]),
        .R(rst));
  FDRE \rgb_color_1_reg[2] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[2]),
        .Q(rgb_color_1[2]),
        .R(rst));
  FDRE \rgb_color_1_reg[3] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[3]),
        .Q(rgb_color_1[3]),
        .R(rst));
  FDRE \rgb_color_1_reg[4] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[4]),
        .Q(rgb_color_1[4]),
        .R(rst));
  FDRE \rgb_color_1_reg[5] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[5]),
        .Q(rgb_color_1[5]),
        .R(rst));
  FDRE \rgb_color_1_reg[6] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[6]),
        .Q(rgb_color_1[6]),
        .R(rst));
  FDRE \rgb_color_1_reg[7] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[7]),
        .Q(rgb_color_1[7]),
        .R(rst));
  FDRE \rgb_color_1_reg[8] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[8]),
        .Q(rgb_color_1[8]),
        .R(rst));
  FDRE \rgb_color_1_reg[9] 
       (.C(clk),
        .CE(\rgb_color_1[11]_i_1_n_0 ),
        .D(dWriteData[9]),
        .Q(rgb_color_1[9]),
        .R(rst));
  rx rx
       (.D({rx_n_1,rx_n_2,rx_n_3,rx_n_4,rx_n_5,rx_n_6,rx_n_7}),
        .LED(LED[7:0]),
        .MemRead(MemRead),
        .MemRead_0(rx_n_0),
        .Q({data1,\seven_segment_reg_reg_n_0_[3] }),
        .UART_TXD_IN(UART_TXD_IN),
        .clk(clk),
        .dAddress(dAddress[5:2]),
        .\io_memory_read_reg[1] (\io_memory_read[1]_i_2_n_0 ),
        .\io_memory_read_reg[1]_0 (\io_memory_read[1]_i_4_n_0 ),
        .\io_memory_read_reg[2] (\io_memory_read[2]_i_2_n_0 ),
        .\io_memory_read_reg[2]_0 (\io_memory_read[2]_i_4_n_0 ),
        .\io_memory_read_reg[3] (\io_memory_read[3]_i_3_n_0 ),
        .\io_memory_read_reg[4] (\io_memory_read[4]_i_3_n_0 ),
        .\io_memory_read_reg[5] (\io_memory_read[5]_i_3_n_0 ),
        .\io_memory_read_reg[6] (\io_memory_read[7]_i_2_n_0 ),
        .\io_memory_read_reg[6]_0 (\io_memory_read[6]_i_3_n_0 ),
        .\io_memory_read_reg[7] ({\rgb_color_0_reg_n_0_[7] ,\rgb_color_0_reg_n_0_[6] ,\rgb_color_0_reg_n_0_[5] ,\rgb_color_0_reg_n_0_[4] ,\rgb_color_0_reg_n_0_[3] }),
        .\io_memory_read_reg[7]_0 (\io_memory_read[7]_i_4_n_0 ),
        .io_space_mem(io_space_mem),
        .rst(rst),
        .rx_new_data_reg(rx_n_8),
        .rx_new_data_reg_0(rx_new_data_i_2_n_0),
        .rx_status_read(rx_status_read),
        .sw_deb(sw_deb[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    rx_new_data_i_2
       (.I0(dAddress[5]),
        .I1(dAddress[3]),
        .I2(dAddress[4]),
        .I3(dAddress[2]),
        .O(rx_new_data_i_2_n_0));
  FDRE rx_new_data_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(rx_n_0),
        .Q(rx_status_read),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \seven_segment_reg[31]_i_1 
       (.I0(dAddress[2]),
        .I1(MemWrite),
        .I2(io_space_mem),
        .I3(dAddress[4]),
        .I4(dAddress[3]),
        .I5(dAddress[5]),
        .O(seven_seg_write5_out));
  FDRE \seven_segment_reg_reg[0] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[0]),
        .Q(\seven_segment_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[10] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[10]),
        .Q(data2[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[11] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[11]),
        .Q(data2[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[12] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[12]),
        .Q(\seven_segment_reg_reg_n_0_[12] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[13] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[13]),
        .Q(\seven_segment_reg_reg_n_0_[13] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[14] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[14]),
        .Q(\seven_segment_reg_reg_n_0_[14] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[15] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[15]),
        .Q(\seven_segment_reg_reg_n_0_[15] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[16] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[16]),
        .Q(data4[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[17] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[17]),
        .Q(data4[1]),
        .R(rst));
  FDRE \seven_segment_reg_reg[18] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[18]),
        .Q(data4[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[19] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[19]),
        .Q(data4[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[1] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[1]),
        .Q(\seven_segment_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[20] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[20]),
        .Q(data5[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[21] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[21]),
        .Q(data5[1]),
        .R(rst));
  FDRE \seven_segment_reg_reg[22] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[22]),
        .Q(data5[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[23] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[23]),
        .Q(data5[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[24] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[24]),
        .Q(data6[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[25] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[25]),
        .Q(data6[1]),
        .R(rst));
  FDRE \seven_segment_reg_reg[26] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[26]),
        .Q(data6[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[27] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[27]),
        .Q(data6[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[28] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[28]),
        .Q(data7[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[29] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[29]),
        .Q(data7[1]),
        .R(rst));
  FDRE \seven_segment_reg_reg[2] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[2]),
        .Q(\seven_segment_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[30] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[30]),
        .Q(data7[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[31] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[31]),
        .Q(data7[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[3] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[3]),
        .Q(\seven_segment_reg_reg_n_0_[3] ),
        .R(rst));
  FDRE \seven_segment_reg_reg[4] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[4]),
        .Q(data1[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[5] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[5]),
        .Q(data1[1]),
        .R(rst));
  FDRE \seven_segment_reg_reg[6] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[6]),
        .Q(data1[2]),
        .R(rst));
  FDRE \seven_segment_reg_reg[7] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[7]),
        .Q(data1[3]),
        .R(rst));
  FDRE \seven_segment_reg_reg[8] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[8]),
        .Q(data2[0]),
        .R(rst));
  FDRE \seven_segment_reg_reg[9] 
       (.C(clk),
        .CE(seven_seg_write5_out),
        .D(dWriteData[9]),
        .Q(data2[1]),
        .R(rst));
  SevenSegmentControl ssc
       (.AN(AN),
        .Q({data7,data6,data5,data4,\seven_segment_reg_reg_n_0_[15] ,\seven_segment_reg_reg_n_0_[14] ,\seven_segment_reg_reg_n_0_[13] ,\seven_segment_reg_reg_n_0_[12] ,data2,data1,\seven_segment_reg_reg_n_0_[3] ,\seven_segment_reg_reg_n_0_[2] ,\seven_segment_reg_reg_n_0_[1] ,\seven_segment_reg_reg_n_0_[0] }),
        .SEG(\^SEG ),
        .clk(clk));
  tx tx
       (.D(tx_n_0),
        .MemWrite(MemWrite),
        .Q(\rgb_color_0_reg_n_0_[0] ),
        .UART_RXD_OUT(UART_RXD_OUT),
        .clk(clk),
        .dAddress(dAddress[5:2]),
        .dWriteData(dWriteData[7:0]),
        .\io_memory_read_reg[0] (\io_memory_read[7]_i_2_n_0 ),
        .\io_memory_read_reg[0]_0 (\seven_segment_reg_reg_n_0_[0] ),
        .\io_memory_read_reg[0]_1 (rx_n_8),
        .\io_memory_read_reg[0]_2 (\io_memory_read[0]_i_4_n_0 ),
        .io_space_mem(io_space_mem));
  vga_ctl2 vga
       (.MemWrite(MemWrite),
        .Q(default_character_color),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_VS(VGA_VS),
        .char_value_read(char_value_read),
        .clk(clk),
        .dAddress(dAddress[13:2]),
        .dWriteData(dWriteData),
        .rst(rst),
        .vga_address_mem(vga_address_mem));
endmodule

module rx
   (MemRead_0,
    D,
    rx_new_data_reg,
    sw_deb,
    LED,
    dAddress,
    MemRead,
    io_space_mem,
    rx_new_data_reg_0,
    rx_status_read,
    rst,
    Q,
    \io_memory_read_reg[7] ,
    \io_memory_read_reg[6] ,
    \io_memory_read_reg[6]_0 ,
    \io_memory_read_reg[5] ,
    \io_memory_read_reg[4] ,
    \io_memory_read_reg[3] ,
    \io_memory_read_reg[7]_0 ,
    UART_TXD_IN,
    \io_memory_read_reg[1] ,
    \io_memory_read_reg[1]_0 ,
    \io_memory_read_reg[2] ,
    \io_memory_read_reg[2]_0 ,
    clk);
  output MemRead_0;
  output [6:0]D;
  output rx_new_data_reg;
  input [7:0]sw_deb;
  input [7:0]LED;
  input [3:0]dAddress;
  input MemRead;
  input io_space_mem;
  input rx_new_data_reg_0;
  input [0:0]rx_status_read;
  input rst;
  input [4:0]Q;
  input [4:0]\io_memory_read_reg[7] ;
  input \io_memory_read_reg[6] ;
  input \io_memory_read_reg[6]_0 ;
  input \io_memory_read_reg[5] ;
  input \io_memory_read_reg[4] ;
  input \io_memory_read_reg[3] ;
  input \io_memory_read_reg[7]_0 ;
  input UART_TXD_IN;
  input \io_memory_read_reg[1] ;
  input \io_memory_read_reg[1]_0 ;
  input \io_memory_read_reg[2] ;
  input \io_memory_read_reg[2]_0 ;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [7:0]LED;
  wire MemRead;
  wire MemRead_0;
  wire [4:0]Q;
  wire ResetCounter;
  wire Shift;
  wire UART_TXD_IN;
  wire \baud_counter[0]_i_1__0_n_0 ;
  wire \baud_counter[1]_i_1__0_n_0 ;
  wire \baud_counter[2]_i_1__0_n_0 ;
  wire \baud_counter[3]_i_1__0_n_0 ;
  wire \baud_counter[4]_i_1__0_n_0 ;
  wire \baud_counter[5]_i_1__0_n_0 ;
  wire \baud_counter[6]_i_1__0_n_0 ;
  wire \baud_counter[6]_i_2_n_0 ;
  wire \baud_counter[7]_i_1__0_n_0 ;
  wire \baud_counter[8]_i_1__0_n_0 ;
  wire \baud_counter[8]_i_2_n_0 ;
  wire \baud_counter[8]_i_3_n_0 ;
  wire \baud_counter[8]_i_4_n_0 ;
  wire \baud_counter[8]_i_5_n_0 ;
  wire \baud_counter[9]_i_1_n_0 ;
  wire \baud_counter[9]_i_2_n_0 ;
  wire [9:0]baud_counter_reg;
  wire [3:0]bit_counter_reg;
  wire clk;
  wire [3:0]dAddress;
  wire \io_memory_read[1]_i_3_n_0 ;
  wire \io_memory_read[1]_i_5_n_0 ;
  wire \io_memory_read[1]_i_6_n_0 ;
  wire \io_memory_read[2]_i_3_n_0 ;
  wire \io_memory_read[2]_i_5_n_0 ;
  wire \io_memory_read[2]_i_6_n_0 ;
  wire \io_memory_read[2]_i_7_n_0 ;
  wire \io_memory_read[3]_i_4_n_0 ;
  wire \io_memory_read[4]_i_4_n_0 ;
  wire \io_memory_read[5]_i_4_n_0 ;
  wire \io_memory_read[6]_i_4_n_0 ;
  wire \io_memory_read[7]_i_5_n_0 ;
  wire \io_memory_read_reg[1] ;
  wire \io_memory_read_reg[1]_0 ;
  wire \io_memory_read_reg[2] ;
  wire \io_memory_read_reg[2]_0 ;
  wire \io_memory_read_reg[3] ;
  wire \io_memory_read_reg[3]_i_2_n_0 ;
  wire \io_memory_read_reg[4] ;
  wire \io_memory_read_reg[4]_i_2_n_0 ;
  wire \io_memory_read_reg[5] ;
  wire \io_memory_read_reg[5]_i_2_n_0 ;
  wire \io_memory_read_reg[6] ;
  wire \io_memory_read_reg[6]_0 ;
  wire \io_memory_read_reg[6]_i_2_n_0 ;
  wire [4:0]\io_memory_read_reg[7] ;
  wire \io_memory_read_reg[7]_0 ;
  wire \io_memory_read_reg[7]_i_3_n_0 ;
  wire io_space_mem;
  wire [3:0]p_0_in;
  wire r_parity;
  wire rst;
  wire [7:0]rx_data;
  wire rx_data_strobe;
  wire rx_new_data_reg;
  wire rx_new_data_reg_0;
  wire [0:0]rx_status_read;
  wire \shift_reg_reg_n_0_[9] ;
  wire [7:0]sw_deb;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(rx_data_strobe),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFAAAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_counter_reg[1]),
        .I2(bit_counter_reg[0]),
        .I3(bit_counter_reg[3]),
        .I4(bit_counter_reg[2]),
        .I5(Shift),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Shift),
        .I1(bit_counter_reg[2]),
        .I2(bit_counter_reg[3]),
        .I3(bit_counter_reg[0]),
        .I4(bit_counter_reg[1]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEFEE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(\FSM_onehot_state[6]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(baud_counter_reg[2]),
        .I1(baud_counter_reg[8]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[6]_i_5_n_0 ),
        .I4(\baud_counter[6]_i_2_n_0 ),
        .I5(\FSM_onehot_state[6]_i_6_n_0 ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFCFEFE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Shift),
        .I2(rx_data_strobe),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(UART_TXD_IN),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(baud_counter_reg[6]),
        .I1(baud_counter_reg[8]),
        .I2(baud_counter_reg[2]),
        .I3(baud_counter_reg[7]),
        .I4(\FSM_onehot_state[6]_i_7_n_0 ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(baud_counter_reg[3]),
        .I1(baud_counter_reg[5]),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(baud_counter_reg[9]),
        .I1(baud_counter_reg[4]),
        .I2(baud_counter_reg[6]),
        .I3(baud_counter_reg[7]),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(baud_counter_reg[5]),
        .I1(baud_counter_reg[3]),
        .I2(baud_counter_reg[1]),
        .I3(baud_counter_reg[4]),
        .I4(baud_counter_reg[9]),
        .I5(baud_counter_reg[0]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(Shift),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "POWER:0000001,IDLE:0000010,START:0000100,SHIFT:0010000,DONE:1000000,COUNT:0001000,STOP:0100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(rx_data_strobe),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \baud_counter[0]_i_1__0 
       (.I0(baud_counter_reg[0]),
        .O(\baud_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_counter[1]_i_1__0 
       (.I0(baud_counter_reg[0]),
        .I1(baud_counter_reg[1]),
        .O(\baud_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \baud_counter[2]_i_1__0 
       (.I0(baud_counter_reg[2]),
        .I1(baud_counter_reg[1]),
        .I2(baud_counter_reg[0]),
        .O(\baud_counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \baud_counter[3]_i_1__0 
       (.I0(baud_counter_reg[3]),
        .I1(baud_counter_reg[2]),
        .I2(baud_counter_reg[0]),
        .I3(baud_counter_reg[1]),
        .O(\baud_counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \baud_counter[4]_i_1__0 
       (.I0(baud_counter_reg[4]),
        .I1(baud_counter_reg[3]),
        .I2(baud_counter_reg[1]),
        .I3(baud_counter_reg[0]),
        .I4(baud_counter_reg[2]),
        .O(\baud_counter[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \baud_counter[5]_i_1__0 
       (.I0(baud_counter_reg[5]),
        .I1(baud_counter_reg[4]),
        .I2(baud_counter_reg[2]),
        .I3(baud_counter_reg[0]),
        .I4(baud_counter_reg[1]),
        .I5(baud_counter_reg[3]),
        .O(\baud_counter[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \baud_counter[6]_i_1__0 
       (.I0(baud_counter_reg[6]),
        .I1(baud_counter_reg[5]),
        .I2(baud_counter_reg[3]),
        .I3(\baud_counter[6]_i_2_n_0 ),
        .I4(baud_counter_reg[2]),
        .I5(baud_counter_reg[4]),
        .O(\baud_counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \baud_counter[6]_i_2 
       (.I0(baud_counter_reg[0]),
        .I1(baud_counter_reg[1]),
        .O(\baud_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \baud_counter[7]_i_1__0 
       (.I0(baud_counter_reg[7]),
        .I1(baud_counter_reg[6]),
        .I2(\baud_counter[8]_i_5_n_0 ),
        .O(\baud_counter[7]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \baud_counter[8]_i_1__0 
       (.I0(\baud_counter[8]_i_4_n_0 ),
        .O(\baud_counter[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \baud_counter[8]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(Shift),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\baud_counter[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \baud_counter[8]_i_3 
       (.I0(baud_counter_reg[8]),
        .I1(\baud_counter[8]_i_5_n_0 ),
        .I2(baud_counter_reg[6]),
        .I3(baud_counter_reg[7]),
        .O(\baud_counter[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000000D)) 
    \baud_counter[8]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[6]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(Shift),
        .O(\baud_counter[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \baud_counter[8]_i_5 
       (.I0(baud_counter_reg[4]),
        .I1(baud_counter_reg[2]),
        .I2(baud_counter_reg[0]),
        .I3(baud_counter_reg[1]),
        .I4(baud_counter_reg[3]),
        .I5(baud_counter_reg[5]),
        .O(\baud_counter[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF00FFFF40000000)) 
    \baud_counter[9]_i_1 
       (.I0(\baud_counter[9]_i_2_n_0 ),
        .I1(baud_counter_reg[7]),
        .I2(baud_counter_reg[8]),
        .I3(\baud_counter[8]_i_4_n_0 ),
        .I4(\baud_counter[8]_i_2_n_0 ),
        .I5(baud_counter_reg[9]),
        .O(\baud_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \baud_counter[9]_i_2 
       (.I0(baud_counter_reg[5]),
        .I1(baud_counter_reg[3]),
        .I2(\baud_counter[6]_i_2_n_0 ),
        .I3(baud_counter_reg[2]),
        .I4(baud_counter_reg[4]),
        .I5(baud_counter_reg[6]),
        .O(\baud_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[0] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[0]_i_1__0_n_0 ),
        .Q(baud_counter_reg[0]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[1] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[1]_i_1__0_n_0 ),
        .Q(baud_counter_reg[1]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[2] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[2]_i_1__0_n_0 ),
        .Q(baud_counter_reg[2]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[3] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[3]_i_1__0_n_0 ),
        .Q(baud_counter_reg[3]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[4] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[4]_i_1__0_n_0 ),
        .Q(baud_counter_reg[4]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[5] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[5]_i_1__0_n_0 ),
        .Q(baud_counter_reg[5]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[6] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[6]_i_1__0_n_0 ),
        .Q(baud_counter_reg[6]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[7] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[7]_i_1__0_n_0 ),
        .Q(baud_counter_reg[7]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[8] 
       (.C(clk),
        .CE(\baud_counter[8]_i_2_n_0 ),
        .D(\baud_counter[8]_i_3_n_0 ),
        .Q(baud_counter_reg[8]),
        .R(\baud_counter[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\baud_counter[9]_i_1_n_0 ),
        .Q(baud_counter_reg[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1__0 
       (.I0(bit_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_counter[1]_i_1__0 
       (.I0(bit_counter_reg[0]),
        .I1(bit_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_counter[2]_i_1__0 
       (.I0(bit_counter_reg[2]),
        .I1(bit_counter_reg[1]),
        .I2(bit_counter_reg[0]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \bit_counter[3]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(ResetCounter));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_counter[3]_i_2 
       (.I0(bit_counter_reg[3]),
        .I1(bit_counter_reg[0]),
        .I2(bit_counter_reg[1]),
        .I3(bit_counter_reg[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk),
        .CE(Shift),
        .D(p_0_in[0]),
        .Q(bit_counter_reg[0]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk),
        .CE(Shift),
        .D(p_0_in[1]),
        .Q(bit_counter_reg[1]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk),
        .CE(Shift),
        .D(p_0_in[2]),
        .Q(bit_counter_reg[2]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(clk),
        .CE(Shift),
        .D(p_0_in[3]),
        .Q(bit_counter_reg[3]),
        .R(ResetCounter));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_memory_read[0]_i_3 
       (.I0(rx_status_read),
        .I1(rx_data[0]),
        .I2(dAddress[2]),
        .I3(sw_deb[0]),
        .I4(dAddress[0]),
        .I5(LED[0]),
        .O(rx_new_data_reg));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \io_memory_read[1]_i_1 
       (.I0(\io_memory_read_reg[1] ),
        .I1(dAddress[1]),
        .I2(\io_memory_read[1]_i_3_n_0 ),
        .I3(dAddress[3]),
        .I4(\io_memory_read_reg[1]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAA88A0AA0088A0)) 
    \io_memory_read[1]_i_3 
       (.I0(\io_memory_read[1]_i_5_n_0 ),
        .I1(sw_deb[1]),
        .I2(LED[1]),
        .I3(dAddress[0]),
        .I4(dAddress[2]),
        .I5(rx_data[1]),
        .O(\io_memory_read[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \io_memory_read[1]_i_5 
       (.I0(\io_memory_read[1]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(dAddress[0]),
        .I3(dAddress[2]),
        .I4(Shift),
        .I5(rx_data_strobe),
        .O(\io_memory_read[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \io_memory_read[1]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\io_memory_read[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \io_memory_read[2]_i_1 
       (.I0(\io_memory_read_reg[2] ),
        .I1(dAddress[1]),
        .I2(\io_memory_read[2]_i_3_n_0 ),
        .I3(dAddress[3]),
        .I4(\io_memory_read_reg[2]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAAEFEA)) 
    \io_memory_read[2]_i_3 
       (.I0(\io_memory_read[2]_i_5_n_0 ),
        .I1(sw_deb[2]),
        .I2(dAddress[0]),
        .I3(LED[2]),
        .I4(dAddress[2]),
        .O(\io_memory_read[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F00FF006F000000)) 
    \io_memory_read[2]_i_5 
       (.I0(\io_memory_read[2]_i_6_n_0 ),
        .I1(\io_memory_read[2]_i_7_n_0 ),
        .I2(\shift_reg_reg_n_0_[9] ),
        .I3(dAddress[2]),
        .I4(dAddress[0]),
        .I5(rx_data[2]),
        .O(\io_memory_read[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \io_memory_read[2]_i_6 
       (.I0(rx_data[1]),
        .I1(rx_data[0]),
        .I2(rx_data[5]),
        .I3(rx_data[4]),
        .O(\io_memory_read[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \io_memory_read[2]_i_7 
       (.I0(r_parity),
        .I1(rx_data[6]),
        .I2(rx_data[7]),
        .I3(rx_data[2]),
        .I4(rx_data[3]),
        .O(\io_memory_read[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \io_memory_read[3]_i_1 
       (.I0(Q[0]),
        .I1(dAddress[0]),
        .I2(\io_memory_read_reg[7] [0]),
        .I3(\io_memory_read_reg[6] ),
        .I4(dAddress[1]),
        .I5(\io_memory_read_reg[3]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \io_memory_read[3]_i_4 
       (.I0(rx_data[3]),
        .I1(dAddress[2]),
        .I2(sw_deb[3]),
        .I3(dAddress[0]),
        .I4(LED[3]),
        .O(\io_memory_read[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \io_memory_read[4]_i_1 
       (.I0(Q[1]),
        .I1(dAddress[0]),
        .I2(\io_memory_read_reg[7] [1]),
        .I3(\io_memory_read_reg[6] ),
        .I4(dAddress[1]),
        .I5(\io_memory_read_reg[4]_i_2_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \io_memory_read[4]_i_4 
       (.I0(rx_data[4]),
        .I1(dAddress[2]),
        .I2(sw_deb[4]),
        .I3(dAddress[0]),
        .I4(LED[4]),
        .O(\io_memory_read[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \io_memory_read[5]_i_1 
       (.I0(Q[2]),
        .I1(dAddress[0]),
        .I2(\io_memory_read_reg[7] [2]),
        .I3(\io_memory_read_reg[6] ),
        .I4(dAddress[1]),
        .I5(\io_memory_read_reg[5]_i_2_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \io_memory_read[5]_i_4 
       (.I0(rx_data[5]),
        .I1(dAddress[2]),
        .I2(sw_deb[5]),
        .I3(dAddress[0]),
        .I4(LED[5]),
        .O(\io_memory_read[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \io_memory_read[6]_i_1 
       (.I0(Q[3]),
        .I1(dAddress[0]),
        .I2(\io_memory_read_reg[7] [3]),
        .I3(\io_memory_read_reg[6] ),
        .I4(dAddress[1]),
        .I5(\io_memory_read_reg[6]_i_2_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \io_memory_read[6]_i_4 
       (.I0(rx_data[6]),
        .I1(dAddress[2]),
        .I2(sw_deb[6]),
        .I3(dAddress[0]),
        .I4(LED[6]),
        .O(\io_memory_read[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \io_memory_read[7]_i_1 
       (.I0(Q[4]),
        .I1(dAddress[0]),
        .I2(\io_memory_read_reg[7] [4]),
        .I3(\io_memory_read_reg[6] ),
        .I4(dAddress[1]),
        .I5(\io_memory_read_reg[7]_i_3_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \io_memory_read[7]_i_5 
       (.I0(rx_data[7]),
        .I1(dAddress[2]),
        .I2(sw_deb[7]),
        .I3(dAddress[0]),
        .I4(LED[7]),
        .O(\io_memory_read[7]_i_5_n_0 ));
  MUXF7 \io_memory_read_reg[3]_i_2 
       (.I0(\io_memory_read_reg[3] ),
        .I1(\io_memory_read[3]_i_4_n_0 ),
        .O(\io_memory_read_reg[3]_i_2_n_0 ),
        .S(\io_memory_read_reg[6] ));
  MUXF7 \io_memory_read_reg[4]_i_2 
       (.I0(\io_memory_read_reg[4] ),
        .I1(\io_memory_read[4]_i_4_n_0 ),
        .O(\io_memory_read_reg[4]_i_2_n_0 ),
        .S(\io_memory_read_reg[6] ));
  MUXF7 \io_memory_read_reg[5]_i_2 
       (.I0(\io_memory_read_reg[5] ),
        .I1(\io_memory_read[5]_i_4_n_0 ),
        .O(\io_memory_read_reg[5]_i_2_n_0 ),
        .S(\io_memory_read_reg[6] ));
  MUXF7 \io_memory_read_reg[6]_i_2 
       (.I0(\io_memory_read_reg[6]_0 ),
        .I1(\io_memory_read[6]_i_4_n_0 ),
        .O(\io_memory_read_reg[6]_i_2_n_0 ),
        .S(\io_memory_read_reg[6] ));
  MUXF7 \io_memory_read_reg[7]_i_3 
       (.I0(\io_memory_read_reg[7]_0 ),
        .I1(\io_memory_read[7]_i_5_n_0 ),
        .O(\io_memory_read_reg[7]_i_3_n_0 ),
        .S(\io_memory_read_reg[6] ));
  LUT6 #(
    .INIT(64'h00000000F7F7FF00)) 
    rx_new_data_i_1
       (.I0(MemRead),
        .I1(io_space_mem),
        .I2(rx_new_data_reg_0),
        .I3(rx_data_strobe),
        .I4(rx_status_read),
        .I5(rst),
        .O(MemRead_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[1]),
        .Q(rx_data[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[2]),
        .Q(rx_data[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[3]),
        .Q(rx_data[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[4]),
        .Q(rx_data[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[5]),
        .Q(rx_data[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[6]),
        .Q(rx_data[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk),
        .CE(Shift),
        .D(rx_data[7]),
        .Q(rx_data[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk),
        .CE(Shift),
        .D(r_parity),
        .Q(rx_data[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(clk),
        .CE(Shift),
        .D(\shift_reg_reg_n_0_[9] ),
        .Q(r_parity),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(clk),
        .CE(Shift),
        .D(UART_TXD_IN),
        .Q(\shift_reg_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

module tx
   (D,
    UART_RXD_OUT,
    dWriteData,
    dAddress,
    MemWrite,
    io_space_mem,
    \io_memory_read_reg[0] ,
    Q,
    \io_memory_read_reg[0]_0 ,
    \io_memory_read_reg[0]_1 ,
    \io_memory_read_reg[0]_2 ,
    clk);
  output [0:0]D;
  output UART_RXD_OUT;
  input [7:0]dWriteData;
  input [3:0]dAddress;
  input MemWrite;
  input io_space_mem;
  input \io_memory_read_reg[0] ;
  input [0:0]Q;
  input [0:0]\io_memory_read_reg[0]_0 ;
  input \io_memory_read_reg[0]_1 ;
  input \io_memory_read_reg[0]_2 ;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire MemWrite;
  wire [0:0]Q;
  wire ResetCounter;
  wire ResetTimer;
  wire UART_RXD_OUT;
  wire \baud_counter[9]_i_2__0_n_0 ;
  wire \baud_counter[9]_i_4_n_0 ;
  wire [9:0]baud_counter_reg;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[3]_i_2__0_n_0 ;
  wire [3:0]bit_counter_reg;
  wire clk;
  wire [3:0]dAddress;
  wire [7:0]dWriteData;
  wire \io_memory_read[0]_i_2_n_0 ;
  wire \io_memory_read[0]_i_5_n_0 ;
  wire \io_memory_read_reg[0] ;
  wire [0:0]\io_memory_read_reg[0]_0 ;
  wire \io_memory_read_reg[0]_1 ;
  wire \io_memory_read_reg[0]_2 ;
  wire io_space_mem;
  wire [9:0]p_0_in;
  wire [3:1]p_0_in__0;
  wire [9:0]p_1_in;
  wire [9:1]shift_register;
  wire \shift_register[0]_i_1_n_0 ;
  wire \shift_register[0]_i_3_n_0 ;
  wire \shift_register[0]_i_4_n_0 ;
  wire \shift_register[9]_i_2_n_0 ;
  wire [2:0]state;

  LUT4 #(
    .INIT(16'h3F70)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h13FF3000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF80800000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(bit_counter_reg[0]),
        .I1(bit_counter_reg[1]),
        .I2(bit_counter_reg[3]),
        .I3(bit_counter_reg[2]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\shift_register[0]_i_4_n_0 ),
        .I1(dAddress[3]),
        .I2(dAddress[1]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F0C0FA5)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(\FSM_sequential_state[2]_i_6_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(dAddress[1]),
        .I1(dAddress[3]),
        .I2(dAddress[2]),
        .I3(dAddress[0]),
        .I4(MemWrite),
        .I5(io_space_mem),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(baud_counter_reg[2]),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(baud_counter_reg[7]),
        .I4(baud_counter_reg[5]),
        .I5(baud_counter_reg[4]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(baud_counter_reg[0]),
        .I1(baud_counter_reg[1]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(baud_counter_reg[6]),
        .I1(baud_counter_reg[3]),
        .I2(baud_counter_reg[9]),
        .I3(baud_counter_reg[8]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:001,SHIFT:011,COUNT:010,WAIT:100,IDLE:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "LOAD:001,SHIFT:011,COUNT:010,WAIT:100,IDLE:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "LOAD:001,SHIFT:011,COUNT:010,WAIT:100,IDLE:000,iSTATE:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \baud_counter[0]_i_1 
       (.I0(baud_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_counter[1]_i_1 
       (.I0(baud_counter_reg[0]),
        .I1(baud_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \baud_counter[2]_i_1 
       (.I0(baud_counter_reg[0]),
        .I1(baud_counter_reg[1]),
        .I2(baud_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \baud_counter[3]_i_1 
       (.I0(baud_counter_reg[3]),
        .I1(baud_counter_reg[1]),
        .I2(baud_counter_reg[0]),
        .I3(baud_counter_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \baud_counter[4]_i_1 
       (.I0(baud_counter_reg[4]),
        .I1(baud_counter_reg[2]),
        .I2(baud_counter_reg[0]),
        .I3(baud_counter_reg[1]),
        .I4(baud_counter_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \baud_counter[5]_i_1 
       (.I0(baud_counter_reg[3]),
        .I1(baud_counter_reg[1]),
        .I2(baud_counter_reg[0]),
        .I3(baud_counter_reg[2]),
        .I4(baud_counter_reg[4]),
        .I5(baud_counter_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \baud_counter[6]_i_1 
       (.I0(baud_counter_reg[6]),
        .I1(\baud_counter[9]_i_4_n_0 ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h6A)) 
    \baud_counter[7]_i_1 
       (.I0(baud_counter_reg[7]),
        .I1(\baud_counter[9]_i_4_n_0 ),
        .I2(baud_counter_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \baud_counter[8]_i_1 
       (.I0(baud_counter_reg[8]),
        .I1(baud_counter_reg[6]),
        .I2(\baud_counter[9]_i_4_n_0 ),
        .I3(baud_counter_reg[7]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \baud_counter[9]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .O(ResetTimer));
  LUT3 #(
    .INIT(8'h10)) 
    \baud_counter[9]_i_2__0 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\baud_counter[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \baud_counter[9]_i_3 
       (.I0(baud_counter_reg[9]),
        .I1(baud_counter_reg[7]),
        .I2(\baud_counter[9]_i_4_n_0 ),
        .I3(baud_counter_reg[6]),
        .I4(baud_counter_reg[8]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \baud_counter[9]_i_4 
       (.I0(baud_counter_reg[5]),
        .I1(baud_counter_reg[4]),
        .I2(baud_counter_reg[2]),
        .I3(baud_counter_reg[0]),
        .I4(baud_counter_reg[1]),
        .I5(baud_counter_reg[3]),
        .O(\baud_counter[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[0] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[0]),
        .Q(baud_counter_reg[0]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[1] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[1]),
        .Q(baud_counter_reg[1]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[2] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[2]),
        .Q(baud_counter_reg[2]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[3] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[3]),
        .Q(baud_counter_reg[3]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[4] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[4]),
        .Q(baud_counter_reg[4]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[5] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[5]),
        .Q(baud_counter_reg[5]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[6] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[6]),
        .Q(baud_counter_reg[6]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[7] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[7]),
        .Q(baud_counter_reg[7]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[8] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[8]),
        .Q(baud_counter_reg[8]),
        .R(ResetTimer));
  FDRE #(
    .INIT(1'b0)) 
    \baud_counter_reg[9] 
       (.C(clk),
        .CE(\baud_counter[9]_i_2__0_n_0 ),
        .D(p_0_in[9]),
        .Q(baud_counter_reg[9]),
        .R(ResetTimer));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter_reg[0]),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter_reg[1]),
        .I1(bit_counter_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter_reg[2]),
        .I1(bit_counter_reg[0]),
        .I2(bit_counter_reg[1]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \bit_counter[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(ResetCounter));
  LUT3 #(
    .INIT(8'h40)) 
    \bit_counter[3]_i_2__0 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\bit_counter[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_counter[3]_i_3 
       (.I0(bit_counter_reg[3]),
        .I1(bit_counter_reg[1]),
        .I2(bit_counter_reg[0]),
        .I3(bit_counter_reg[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk),
        .CE(\bit_counter[3]_i_2__0_n_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter_reg[0]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk),
        .CE(\bit_counter[3]_i_2__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(bit_counter_reg[1]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk),
        .CE(\bit_counter[3]_i_2__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(bit_counter_reg[2]),
        .R(ResetCounter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(clk),
        .CE(\bit_counter[3]_i_2__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(bit_counter_reg[3]),
        .R(ResetCounter));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \io_memory_read[0]_i_1 
       (.I0(\io_memory_read[0]_i_2_n_0 ),
        .I1(dAddress[1]),
        .I2(\io_memory_read_reg[0]_1 ),
        .I3(dAddress[3]),
        .I4(\io_memory_read_reg[0]_2 ),
        .O(D));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    \io_memory_read[0]_i_2 
       (.I0(state[1]),
        .I1(\io_memory_read[0]_i_5_n_0 ),
        .I2(\io_memory_read_reg[0] ),
        .I3(Q),
        .I4(dAddress[0]),
        .I5(\io_memory_read_reg[0]_0 ),
        .O(\io_memory_read[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \io_memory_read[0]_i_5 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\io_memory_read[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \shift_register[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\shift_register[0]_i_3_n_0 ),
        .O(\shift_register[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_register[0]_i_2 
       (.I0(shift_register[1]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \shift_register[0]_i_3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(dAddress[1]),
        .I4(dAddress[3]),
        .I5(\shift_register[0]_i_4_n_0 ),
        .O(\shift_register[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_register[0]_i_4 
       (.I0(io_space_mem),
        .I1(MemWrite),
        .I2(dAddress[0]),
        .I3(dAddress[2]),
        .O(\shift_register[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[1]_i_1 
       (.I0(dWriteData[0]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[2]_i_1 
       (.I0(dWriteData[1]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[3]_i_1 
       (.I0(dWriteData[2]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[4]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[4]_i_1 
       (.I0(dWriteData[3]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[5]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[5]_i_1 
       (.I0(dWriteData[4]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[6]_i_1 
       (.I0(dWriteData[5]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[7]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[7]_i_1 
       (.I0(dWriteData[6]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[8]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[8]_i_1 
       (.I0(dWriteData[7]),
        .I1(\shift_register[0]_i_3_n_0 ),
        .I2(shift_register[9]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h96696996FFFFFFFF)) 
    \shift_register[9]_i_1 
       (.I0(dWriteData[2]),
        .I1(dWriteData[3]),
        .I2(dWriteData[6]),
        .I3(dWriteData[7]),
        .I4(\shift_register[9]_i_2_n_0 ),
        .I5(\shift_register[0]_i_3_n_0 ),
        .O(p_1_in[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \shift_register[9]_i_2 
       (.I0(dWriteData[5]),
        .I1(dWriteData[4]),
        .I2(dWriteData[1]),
        .I3(dWriteData[0]),
        .O(\shift_register[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[0] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(UART_RXD_OUT),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[1] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(shift_register[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[2] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(shift_register[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[3] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(shift_register[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[4] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(shift_register[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[5] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(shift_register[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[6] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(shift_register[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[7] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(shift_register[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_register_reg[8] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(shift_register[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[9] 
       (.C(clk),
        .CE(\shift_register[0]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(shift_register[9]),
        .R(\<const0> ));
endmodule

module vga_ctl2
   (VGA_HS,
    VGA_VS,
    VGA_B,
    VGA_G,
    VGA_R,
    char_value_read,
    clk,
    rst,
    MemWrite,
    vga_address_mem,
    dWriteData,
    Q,
    dAddress);
  output VGA_HS;
  output VGA_VS;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output [31:0]char_value_read;
  input clk;
  input rst;
  input MemWrite;
  input vga_address_mem;
  input [31:0]dWriteData;
  input [24:0]Q;
  input [11:0]dAddress;

  wire \<const1> ;
  wire MemWrite;
  wire [24:0]Q;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire blank;
  wire blank_d;
  wire blank_d2;
  wire [31:0]char_value_read;
  wire clk;
  wire [11:0]dAddress;
  wire [31:0]dWriteData;
  wire hs;
  wire hs_d;
  wire [9:0]pixel_x;
  wire [8:0]pixel_y;
  wire rst;
  wire vga_address_mem;
  wire vs;
  wire vs_d;

  VCC VCC
       (.P(\<const1> ));
  FDCE blank_d2_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(blank_d),
        .Q(blank_d2));
  FDCE blank_d_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(blank),
        .Q(blank_d));
  charGen2 charGen
       (.MemWrite(MemWrite),
        .Q(pixel_y),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_R(VGA_R),
        .blank_d2(blank_d2),
        .char_ram_reg_0(pixel_x),
        .char_ram_reg_3(Q),
        .char_value_read(char_value_read),
        .clk(clk),
        .dAddress(dAddress),
        .dWriteData(dWriteData),
        .vga_address_mem(vga_address_mem));
  FDCE hs_d2_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(hs_d),
        .Q(VGA_HS));
  FDCE hs_d_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(hs),
        .Q(hs_d));
  vga_timing vga_timing
       (.Q(pixel_y),
        .blank(blank),
        .clk(clk),
        .hs(hs),
        .rst(rst),
        .vs(vs),
        .\x_reg_reg[9]_0 (pixel_x));
  FDCE vs_d2_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(vs_d),
        .Q(VGA_VS));
  FDCE vs_d_reg
       (.C(clk),
        .CE(\<const1> ),
        .CLR(rst),
        .D(vs),
        .Q(vs_d));
endmodule

module vga_timing
   (Q,
    \x_reg_reg[9]_0 ,
    hs,
    vs,
    blank,
    clk,
    rst);
  output [8:0]Q;
  output [9:0]\x_reg_reg[9]_0 ;
  output hs;
  output vs;
  output blank;
  input clk;
  input rst;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]Q;
  wire blank;
  wire clk;
  wire hs;
  wire pixel_en;
  wire pixel_en_i_1_n_0;
  wire [9:9]pixel_y__0;
  wire rst;
  wire vs;
  wire vs_d_i_2_n_0;
  wire [9:0]x_next;
  wire \x_reg[4]_i_1_n_0 ;
  wire \x_reg[6]_i_2_n_0 ;
  wire \x_reg[7]_i_1_n_0 ;
  wire \x_reg[7]_i_2_n_0 ;
  wire \x_reg[8]_i_2_n_0 ;
  wire \x_reg[9]_i_2_n_0 ;
  wire \x_reg[9]_i_3_n_0 ;
  wire [9:0]\x_reg_reg[9]_0 ;
  wire [9:0]y_next;
  wire y_reg;
  wire \y_reg[3]_i_1_n_0 ;
  wire \y_reg[9]_i_1_n_0 ;
  wire \y_reg[9]_i_4_n_0 ;
  wire \y_reg[9]_i_5_n_0 ;
  wire \y_reg[9]_i_6_n_0 ;
  wire \y_reg[9]_i_7_n_0 ;
  wire \y_reg[9]_i_8_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    blank_d_i_1
       (.I0(vs_d_i_2_n_0),
        .I1(pixel_y__0),
        .I2(\x_reg_reg[9]_0 [9]),
        .I3(\x_reg_reg[9]_0 [7]),
        .I4(\x_reg_reg[9]_0 [8]),
        .O(blank));
  LUT6 #(
    .INIT(64'hFFBFBFBFBFBFBFFF)) 
    hs_d_i_1
       (.I0(\x_reg_reg[9]_0 [8]),
        .I1(\x_reg_reg[9]_0 [9]),
        .I2(\x_reg_reg[9]_0 [7]),
        .I3(\x_reg_reg[9]_0 [5]),
        .I4(\x_reg_reg[9]_0 [4]),
        .I5(\x_reg_reg[9]_0 [6]),
        .O(hs));
  LUT2 #(
    .INIT(4'h1)) 
    pixel_en_i_1
       (.I0(pixel_en),
        .I1(rst),
        .O(pixel_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_en_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(pixel_en_i_1_n_0),
        .Q(pixel_en),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    vs_d_i_1
       (.I0(vs_d_i_2_n_0),
        .I1(Q[1]),
        .I2(pixel_y__0),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(vs));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    vs_d_i_2
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(vs_d_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \x_reg[0]_i_1 
       (.I0(\x_reg_reg[9]_0 [0]),
        .O(x_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_reg[1]_i_1 
       (.I0(\x_reg_reg[9]_0 [1]),
        .I1(\x_reg_reg[9]_0 [0]),
        .O(x_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_reg[2]_i_1 
       (.I0(\x_reg_reg[9]_0 [1]),
        .I1(\x_reg_reg[9]_0 [0]),
        .I2(\x_reg_reg[9]_0 [2]),
        .O(x_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x_reg[3]_i_1 
       (.I0(\x_reg_reg[9]_0 [3]),
        .I1(\x_reg_reg[9]_0 [1]),
        .I2(\x_reg_reg[9]_0 [0]),
        .I3(\x_reg_reg[9]_0 [2]),
        .O(x_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \x_reg[4]_i_1 
       (.I0(\x_reg_reg[9]_0 [4]),
        .I1(\x_reg_reg[9]_0 [2]),
        .I2(\x_reg_reg[9]_0 [0]),
        .I3(\x_reg_reg[9]_0 [1]),
        .I4(\x_reg_reg[9]_0 [3]),
        .O(\x_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFBF)) 
    \x_reg[5]_i_1 
       (.I0(\x_reg_reg[9]_0 [7]),
        .I1(\x_reg_reg[9]_0 [8]),
        .I2(\x_reg_reg[9]_0 [9]),
        .I3(\x_reg_reg[9]_0 [6]),
        .I4(\x_reg_reg[9]_0 [5]),
        .I5(\x_reg[6]_i_2_n_0 ),
        .O(x_next[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[6]_i_1 
       (.I0(\x_reg_reg[9]_0 [6]),
        .I1(\x_reg[6]_i_2_n_0 ),
        .I2(\x_reg_reg[9]_0 [5]),
        .O(x_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \x_reg[6]_i_2 
       (.I0(\x_reg_reg[9]_0 [2]),
        .I1(\x_reg_reg[9]_0 [0]),
        .I2(\x_reg_reg[9]_0 [1]),
        .I3(\x_reg_reg[9]_0 [3]),
        .I4(\x_reg_reg[9]_0 [4]),
        .O(\x_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \x_reg[7]_i_1 
       (.I0(\x_reg_reg[9]_0 [7]),
        .I1(\x_reg_reg[9]_0 [6]),
        .I2(\x_reg_reg[9]_0 [4]),
        .I3(\x_reg_reg[9]_0 [5]),
        .I4(\x_reg[7]_i_2_n_0 ),
        .O(\x_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \x_reg[7]_i_2 
       (.I0(\x_reg_reg[9]_0 [3]),
        .I1(\x_reg_reg[9]_0 [1]),
        .I2(\x_reg_reg[9]_0 [0]),
        .I3(\x_reg_reg[9]_0 [2]),
        .O(\x_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9999991999999999)) 
    \x_reg[8]_i_1 
       (.I0(\x_reg[8]_i_2_n_0 ),
        .I1(\x_reg_reg[9]_0 [8]),
        .I2(\x_reg_reg[9]_0 [9]),
        .I3(\x_reg_reg[9]_0 [7]),
        .I4(\x_reg_reg[9]_0 [6]),
        .I5(\x_reg[9]_i_2_n_0 ),
        .O(x_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \x_reg[8]_i_2 
       (.I0(\x_reg_reg[9]_0 [6]),
        .I1(\x_reg_reg[9]_0 [4]),
        .I2(\x_reg_reg[9]_0 [5]),
        .I3(\x_reg[7]_i_2_n_0 ),
        .I4(\x_reg_reg[9]_0 [7]),
        .O(\x_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAA55555555)) 
    \x_reg[9]_i_1 
       (.I0(\x_reg_reg[9]_0 [9]),
        .I1(\x_reg[9]_i_2_n_0 ),
        .I2(\x_reg_reg[9]_0 [6]),
        .I3(\x_reg_reg[9]_0 [7]),
        .I4(\x_reg_reg[9]_0 [8]),
        .I5(\x_reg[9]_i_3_n_0 ),
        .O(x_next[9]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \x_reg[9]_i_2 
       (.I0(\x_reg_reg[9]_0 [5]),
        .I1(\x_reg_reg[9]_0 [4]),
        .I2(\x_reg_reg[9]_0 [3]),
        .I3(\x_reg_reg[9]_0 [1]),
        .I4(\x_reg_reg[9]_0 [0]),
        .I5(\x_reg_reg[9]_0 [2]),
        .O(\x_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \x_reg[9]_i_3 
       (.I0(\x_reg_reg[9]_0 [7]),
        .I1(\x_reg[7]_i_2_n_0 ),
        .I2(\x_reg_reg[9]_0 [5]),
        .I3(\x_reg_reg[9]_0 [4]),
        .I4(\x_reg_reg[9]_0 [6]),
        .I5(\x_reg_reg[9]_0 [8]),
        .O(\x_reg[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[0] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[0]),
        .Q(\x_reg_reg[9]_0 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[1] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[1]),
        .Q(\x_reg_reg[9]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[2] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[2]),
        .Q(\x_reg_reg[9]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[3] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[3]),
        .Q(\x_reg_reg[9]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[4] 
       (.C(clk),
        .CE(pixel_en),
        .D(\x_reg[4]_i_1_n_0 ),
        .Q(\x_reg_reg[9]_0 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[5] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[5]),
        .Q(\x_reg_reg[9]_0 [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[6] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[6]),
        .Q(\x_reg_reg[9]_0 [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[7] 
       (.C(clk),
        .CE(pixel_en),
        .D(\x_reg[7]_i_1_n_0 ),
        .Q(\x_reg_reg[9]_0 [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[8] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[8]),
        .Q(\x_reg_reg[9]_0 [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[9] 
       (.C(clk),
        .CE(pixel_en),
        .D(x_next[9]),
        .Q(\x_reg_reg[9]_0 [9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \y_reg[0]_i_1 
       (.I0(Q[0]),
        .O(y_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(y_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(y_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \y_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\y_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \y_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(y_next[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_reg[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(y_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(\y_reg[9]_i_8_n_0 ),
        .I2(Q[5]),
        .O(y_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \y_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\y_reg[9]_i_8_n_0 ),
        .I3(Q[6]),
        .O(y_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \y_reg[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\y_reg[9]_i_8_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(y_next[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \y_reg[9]_i_1 
       (.I0(rst),
        .I1(\x_reg[6]_i_2_n_0 ),
        .I2(\y_reg[9]_i_4_n_0 ),
        .I3(\y_reg[9]_i_5_n_0 ),
        .I4(\y_reg[9]_i_6_n_0 ),
        .I5(\y_reg[9]_i_7_n_0 ),
        .O(\y_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \y_reg[9]_i_2 
       (.I0(\x_reg[9]_i_2_n_0 ),
        .I1(\x_reg_reg[9]_0 [7]),
        .I2(\x_reg_reg[9]_0 [8]),
        .I3(\x_reg_reg[9]_0 [9]),
        .I4(\x_reg_reg[9]_0 [6]),
        .I5(pixel_en),
        .O(y_reg));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \y_reg[9]_i_3 
       (.I0(pixel_y__0),
        .I1(\y_reg[9]_i_8_n_0 ),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(y_next[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \y_reg[9]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\x_reg_reg[9]_0 [5]),
        .I5(\x_reg_reg[9]_0 [6]),
        .O(\y_reg[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \y_reg[9]_i_5 
       (.I0(\x_reg_reg[9]_0 [9]),
        .I1(\x_reg_reg[9]_0 [8]),
        .I2(\x_reg_reg[9]_0 [7]),
        .O(\y_reg[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \y_reg[9]_i_6 
       (.I0(pixel_y__0),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[5]),
        .O(\y_reg[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \y_reg[9]_i_7 
       (.I0(pixel_en),
        .I1(Q[6]),
        .I2(Q[3]),
        .O(\y_reg[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \y_reg[9]_i_8 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\y_reg[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[0] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[0]),
        .Q(Q[0]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[1] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[1]),
        .Q(Q[1]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[2] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[2]),
        .Q(Q[2]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[3] 
       (.C(clk),
        .CE(y_reg),
        .D(\y_reg[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[4] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[4]),
        .Q(Q[4]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[5] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[5]),
        .Q(Q[5]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[6] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[6]),
        .Q(Q[6]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[7] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[7]),
        .Q(Q[7]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[8] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[8]),
        .Q(Q[8]),
        .R(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[9] 
       (.C(clk),
        .CE(y_reg),
        .D(y_next[9]),
        .Q(pixel_y__0),
        .R(\y_reg[9]_i_1_n_0 ));
endmodule
