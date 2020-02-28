# File saved with Nlview 7.0.21  2019-05-29 bk=1.5064 VDI=41 GEI=36 GUI=JA:9.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new riscv_pipeline_top work:riscv_pipeline_top:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol CARRY4 hdi_primitives BOX pin CI input.left pin CYINIT input.left pinBus CO output.right [3:0] pinBus O output.right [3:0] pinBus DI input.left [3:0] pinBus S input.left [3:0] fillcolor 1
load symbol riscv_basic_pipeline work:riscv_basic_pipeline:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pinBus D output.right [31:0] pinBus SR input.left [0:0] pinBus out input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol RAM32M {hdi_primitives:netlist:no file specified} HIERBOX pin WCLK input.left pin WE input.left pinBus DOA output.right [1:0] pinBus DOB output.right [1:0] pinBus DOC output.right [1:0] pinBus DOD output.right [1:0] pinBus ADDRA input.left [4:0] pinBus ADDRB input.left [4:0] pinBus ADDRC input.left [4:0] pinBus ADDRD input.left [4:0] pinBus DIA input.left [1:0] pinBus DIB input.left [1:0] pinBus DIC input.left [1:0] pinBus DID input.left [1:0] fillcolor 2
load symbol RAM32M {hdi_primitives:abstract:no file specified} HIERBOX pin WCLK input.left pin WE input.left pinBus DOA output.right [1:0] pinBus DOB output.right [1:0] pinBus DOC output.right [1:0] pinBus DOD output.right [1:0] pinBus ADDRA input.left [4:0] pinBus ADDRB input.left [4:0] pinBus ADDRC input.left [4:0] pinBus ADDRD input.left [4:0] pinBus DIA input.left [1:0] pinBus DIB input.left [1:0] pinBus DIC input.left [1:0] pinBus DID input.left [1:0] fillcolor 2
load symbol FDSE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin S input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 940
load port rst input -pg 1 -lvl 0 -x 0 -y 1070
load portBus PC output [31:0] -attr @name PC[31:0] -pg 1 -lvl 16 -x 33650 -y 40
load inst PC_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 40
load inst PC_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 740
load inst PC_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 810
load inst PC_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 880
load inst PC_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 950
load inst PC_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1020
load inst PC_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1090
load inst PC_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1160
load inst PC_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1230
load inst PC_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1300
load inst PC_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1370
load inst PC_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 110
load inst PC_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1440
load inst PC_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1510
load inst PC_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1580
load inst PC_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1650
load inst PC_OBUF[24]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1720
load inst PC_OBUF[25]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1790
load inst PC_OBUF[26]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1860
load inst PC_OBUF[27]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 1930
load inst PC_OBUF[28]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 2000
load inst PC_OBUF[29]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 2070
load inst PC_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 180
load inst PC_OBUF[30]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 2140
load inst PC_OBUF[31]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 2210
load inst PC_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 250
load inst PC_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 320
load inst PC_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 390
load inst PC_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 460
load inst PC_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 530
load inst PC_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 600
load inst PC_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 33470 -y 670
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 190 -y 940
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 940
load inst dReadData[0]_i_2 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -x 710 -y 1240
load inst dReadData_reg[0] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 450 -y 1040
load inst dReadData_reg[0]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr DI @attr V=B\"0001\" -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 990 -y 730
load inst dReadData_reg[10] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1310 -y 1140
load inst dReadData_reg[11] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1310 -y 1290
load inst dReadData_reg[12] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1670 -y 370
load inst dReadData_reg[12]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 8 -x 2010 -y 1060
load inst dReadData_reg[13] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1670 -y 550
load inst dReadData_reg[14] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1670 -y 730
load inst dReadData_reg[15] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 7 -x 1670 -y 910
load inst dReadData_reg[16] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2010 -y 400
load inst dReadData_reg[16]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 9 -x 2380 -y 1080
load inst dReadData_reg[17] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2010 -y 550
load inst dReadData_reg[18] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2010 -y 730
load inst dReadData_reg[19] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 8 -x 2010 -y 910
load inst dReadData_reg[1] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 710 -y 760
load inst dReadData_reg[20] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2380 -y 370
load inst dReadData_reg[20]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 10 -x 2730 -y 1100
load inst dReadData_reg[21] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2380 -y 550
load inst dReadData_reg[22] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2380 -y 750
load inst dReadData_reg[23] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 9 -x 2380 -y 930
load inst dReadData_reg[24] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 10 -x 2730 -y 390
load inst dReadData_reg[24]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 11 -x 2990 -y 880
load inst dReadData_reg[25] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 10 -x 2730 -y 570
load inst dReadData_reg[26] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 10 -x 2730 -y 750
load inst dReadData_reg[27] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 10 -x 2730 -y 930
load inst dReadData_reg[28] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 13 -x 3580 -y 860
load inst dReadData_reg[28]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 3250 -y 900
load inst dReadData_reg[29] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 13 -x 3580 -y 1010
load inst dReadData_reg[2] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 710 -y 960
load inst dReadData_reg[30] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 13 -x 3580 -y 1210
load inst dReadData_reg[31] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 13 -x 3580 -y 1360
load inst dReadData_reg[3] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 4 -x 710 -y 1140
load inst dReadData_reg[4] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 990 -y 90
load inst dReadData_reg[4]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 6 -x 1310 -y 490
load inst dReadData_reg[5] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 990 -y 240
load inst dReadData_reg[6] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 990 -y 390
load inst dReadData_reg[7] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 990 -y 540
load inst dReadData_reg[8] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1310 -y 810
load inst dReadData_reg[8]_i_1 CARRY4 hdi_primitives -attr @cell(#000000) CARRY4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 1670 -y 1040
load inst dReadData_reg[9] FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 6 -x 1310 -y 960
load inst riscv riscv_basic_pipeline work:riscv_basic_pipeline:NOFILE -unfold -autohide -attr @cell(#000000) riscv_basic_pipeline -attr @fillcolor #fafafa -pinBusAttr D @name D[31:0] -pinBusAttr SR @name SR -pinBusAttr out @name out[31:0] -pg 1 -lvl 14 -x 4030 -y 608
load inst rst_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 190 -y 1070
load inst riscv|ex_ALUCtrl[0]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[0]_i_1 -pg 1 -lvl 23 -x 21170 -y 31538
load inst riscv|ex_ALUCtrl[1]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[1]_i_1 -pg 1 -lvl 24 -x 22970 -y 31968
load inst riscv|ex_ALUCtrl[2]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[2]_i_1 -pg 1 -lvl 24 -x 22970 -y 32148
load inst riscv|ex_ALUCtrl[2]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[2]_i_2 -pg 1 -lvl 23 -x 21170 -y 31858
load inst riscv|ex_ALUCtrl[2]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_ALUCtrl[2]_i_3 -pg 1 -lvl 22 -x 19770 -y 30688
load inst riscv|ex_ALUCtrl[2]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[2]_i_4 -pg 1 -lvl 21 -x 18810 -y 30388
load inst riscv|ex_ALUCtrl[2]_i_5 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name ex_ALUCtrl[2]_i_5 -pg 1 -lvl 21 -x 18810 -y 30688
load inst riscv|ex_ALUCtrl[2]_i_6 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_ALUCtrl[2]_i_6 -pg 1 -lvl 20 -x 17570 -y 30408
load inst riscv|ex_ALUCtrl[3]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUCtrl[3]_i_1 -pg 1 -lvl 23 -x 21170 -y 31298
load inst riscv|ex_ALUCtrl[3]_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_ALUCtrl[3]_i_2 -pg 1 -lvl 23 -x 21170 -y 32038
load inst riscv|ex_ALUCtrl[3]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name ex_ALUCtrl[3]_i_3 -pg 1 -lvl 23 -x 21170 -y 32128
load inst riscv|ex_ALUCtrl_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_ALUCtrl_reg[0] -pg 1 -lvl 24 -x 22970 -y 21478
load inst riscv|ex_ALUCtrl_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_ALUCtrl_reg[1] -pg 1 -lvl 25 -x 24850 -y 29928
load inst riscv|ex_ALUCtrl_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_ALUCtrl_reg[2] -pg 1 -lvl 25 -x 24850 -y 30128
load inst riscv|ex_ALUCtrl_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_ALUCtrl_reg[3] -pg 1 -lvl 24 -x 22970 -y 22098
load inst riscv|ex_ALUSrc_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_ALUSrc_i_1 -pg 1 -lvl 27 -x 28840 -y 28508
load inst riscv|ex_ALUSrc_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_ALUSrc_reg -pg 1 -lvl 28 -x 30310 -y 23548
load inst riscv|ex_Branch_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name ex_Branch_i_1 -pg 1 -lvl 29 -x 31190 -y 26728
load inst riscv|ex_Branch_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_Branch_reg -pg 1 -lvl 30 -x 31750 -y 22948
load inst riscv|ex_MemtoReg_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name ex_MemtoReg_i_1 -pg 1 -lvl 20 -x 17570 -y 29468
load inst riscv|ex_MemtoReg_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_MemtoReg_reg -pg 1 -lvl 21 -x 18810 -y 28378
load inst riscv|ex_PC_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[0] -pg 1 -lvl 20 -x 17570 -y 15528
load inst riscv|ex_PC_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[10] -pg 1 -lvl 22 -x 19770 -y 15508
load inst riscv|ex_PC_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[11] -pg 1 -lvl 22 -x 19770 -y 16718
load inst riscv|ex_PC_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[12] -pg 1 -lvl 23 -x 21170 -y 15678
load inst riscv|ex_PC_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[13] -pg 1 -lvl 23 -x 21170 -y 15828
load inst riscv|ex_PC_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[14] -pg 1 -lvl 23 -x 21170 -y 15978
load inst riscv|ex_PC_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[15] -pg 1 -lvl 23 -x 21170 -y 16128
load inst riscv|ex_PC_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[16] -pg 1 -lvl 24 -x 22970 -y 16128
load inst riscv|ex_PC_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[17] -pg 1 -lvl 24 -x 22970 -y 16418
load inst riscv|ex_PC_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[18] -pg 1 -lvl 24 -x 22970 -y 16598
load inst riscv|ex_PC_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[19] -pg 1 -lvl 24 -x 22970 -y 16778
load inst riscv|ex_PC_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[1] -pg 1 -lvl 20 -x 17570 -y 15678
load inst riscv|ex_PC_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[20] -pg 1 -lvl 25 -x 24850 -y 14648
load inst riscv|ex_PC_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[21] -pg 1 -lvl 25 -x 24850 -y 14798
load inst riscv|ex_PC_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[22] -pg 1 -lvl 25 -x 24850 -y 15108
load inst riscv|ex_PC_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[23] -pg 1 -lvl 25 -x 24850 -y 15258
load inst riscv|ex_PC_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[24] -pg 1 -lvl 26 -x 26830 -y 2898
load inst riscv|ex_PC_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[25] -pg 1 -lvl 26 -x 26830 -y 3048
load inst riscv|ex_PC_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[26] -pg 1 -lvl 26 -x 26830 -y 3198
load inst riscv|ex_PC_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[27] -pg 1 -lvl 26 -x 26830 -y 3348
load inst riscv|ex_PC_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[28] -pg 1 -lvl 27 -x 28840 -y 16408
load inst riscv|ex_PC_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[29] -pg 1 -lvl 27 -x 28840 -y 16558
load inst riscv|ex_PC_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[2] -pg 1 -lvl 20 -x 17570 -y 15828
load inst riscv|ex_PC_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[30] -pg 1 -lvl 27 -x 28840 -y 16708
load inst riscv|ex_PC_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[31] -pg 1 -lvl 27 -x 28840 -y 16858
load inst riscv|ex_PC_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[3] -pg 1 -lvl 20 -x 17570 -y 15978
load inst riscv|ex_PC_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[4] -pg 1 -lvl 21 -x 18810 -y 15888
load inst riscv|ex_PC_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[5] -pg 1 -lvl 21 -x 18810 -y 16038
load inst riscv|ex_PC_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[6] -pg 1 -lvl 21 -x 18810 -y 16218
load inst riscv|ex_PC_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[7] -pg 1 -lvl 21 -x 18810 -y 16548
load inst riscv|ex_PC_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[8] -pg 1 -lvl 22 -x 19770 -y 15138
load inst riscv|ex_PC_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_PC_reg[9] -pg 1 -lvl 22 -x 19770 -y 15288
load inst riscv|ex_RegWrite_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name ex_RegWrite_i_1 -pg 1 -lvl 22 -x 19770 -y 29948
load inst riscv|ex_RegWrite_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_RegWrite_reg -pg 1 -lvl 23 -x 21170 -y 29928
load inst riscv|ex_aluResult0_inferred__0/i__carry CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 14 -x 9310 -y 13628
load inst riscv|ex_aluResult0_inferred__0/i__carry__0 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__0 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 15 -x 10380 -y 14328
load inst riscv|ex_aluResult0_inferred__0/i__carry__1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 16 -x 11660 -y 14528
load inst riscv|ex_aluResult0_inferred__0/i__carry__2 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__2 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 13140 -y 17658
load inst riscv|ex_aluResult0_inferred__0/i__carry__3 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__3 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 14 -x 9310 -y 17468
load inst riscv|ex_aluResult0_inferred__0/i__carry__4 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 13140 -y 17898
load inst riscv|ex_aluResult0_inferred__0/i__carry__5 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__5 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 13140 -y 18028
load inst riscv|ex_aluResult0_inferred__0/i__carry__6 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__0/i__carry__6 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 27 -x 28840 -y 22858
load inst riscv|ex_aluResult0_inferred__4/i__carry CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__4/i__carry -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 24 -x 22970 -y 11708
load inst riscv|ex_aluResult0_inferred__4/i__carry__0 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__4/i__carry__0 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 25 -x 24850 -y 11728
load inst riscv|ex_aluResult0_inferred__4/i__carry__1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__4/i__carry__1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 26 -x 26830 -y 23658
load inst riscv|ex_aluResult0_inferred__4/i__carry__2 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__4/i__carry__2 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 27 -x 28840 -y 29128
load inst riscv|ex_aluResult0_inferred__5/i__carry CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__5/i__carry -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 24 -x 22970 -y 11838
load inst riscv|ex_aluResult0_inferred__5/i__carry__0 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__5/i__carry__0 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 25 -x 24850 -y 13238
load inst riscv|ex_aluResult0_inferred__5/i__carry__1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__5/i__carry__1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 26 -x 26830 -y 28898
load inst riscv|ex_aluResult0_inferred__5/i__carry__2 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_aluResult0_inferred__5/i__carry__2 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr O @attr n/c -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 27 -x 28840 -y 29438
load inst riscv|ex_branchAddress_carry CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 22 -x 19770 -y 14528
load inst riscv|ex_branchAddress_carry__0 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__0 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 23 -x 21170 -y 14328
load inst riscv|ex_branchAddress_carry__0_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__0_i_1 -pg 1 -lvl 22 -x 19770 -y 15758
load inst riscv|ex_branchAddress_carry__0_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__0_i_2 -pg 1 -lvl 22 -x 19770 -y 15848
load inst riscv|ex_branchAddress_carry__0_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__0_i_3 -pg 1 -lvl 22 -x 19770 -y 15938
load inst riscv|ex_branchAddress_carry__0_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__0_i_4 -pg 1 -lvl 22 -x 19770 -y 16028
load inst riscv|ex_branchAddress_carry__1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 24 -x 22970 -y 14908
load inst riscv|ex_branchAddress_carry__1_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__1_i_1 -pg 1 -lvl 23 -x 21170 -y 14838
load inst riscv|ex_branchAddress_carry__1_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__1_i_2 -pg 1 -lvl 23 -x 21170 -y 14928
load inst riscv|ex_branchAddress_carry__1_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__1_i_3 -pg 1 -lvl 23 -x 21170 -y 15018
load inst riscv|ex_branchAddress_carry__1_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__1_i_4 -pg 1 -lvl 23 -x 21170 -y 15108
load inst riscv|ex_branchAddress_carry__2 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__2 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 25 -x 24850 -y 16038
load inst riscv|ex_branchAddress_carry__2_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__2_i_1 -pg 1 -lvl 24 -x 22970 -y 15618
load inst riscv|ex_branchAddress_carry__2_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__2_i_2 -pg 1 -lvl 24 -x 22970 -y 15708
load inst riscv|ex_branchAddress_carry__2_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__2_i_3 -pg 1 -lvl 24 -x 22970 -y 15798
load inst riscv|ex_branchAddress_carry__2_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__2_i_4 -pg 1 -lvl 24 -x 22970 -y 15888
load inst riscv|ex_branchAddress_carry__3 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__3 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 26 -x 26830 -y 16058
load inst riscv|ex_branchAddress_carry__3_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__3_i_1 -pg 1 -lvl 25 -x 24850 -y 16418
load inst riscv|ex_branchAddress_carry__3_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__3_i_2 -pg 1 -lvl 25 -x 24850 -y 16518
load inst riscv|ex_branchAddress_carry__3_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__3_i_3 -pg 1 -lvl 25 -x 24850 -y 16608
load inst riscv|ex_branchAddress_carry__3_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__3_i_4 -pg 1 -lvl 25 -x 24850 -y 16708
load inst riscv|ex_branchAddress_carry__4 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__4 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 27 -x 28840 -y 15878
load inst riscv|ex_branchAddress_carry__4_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__4_i_1 -pg 1 -lvl 26 -x 26830 -y 14928
load inst riscv|ex_branchAddress_carry__4_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__4_i_2 -pg 1 -lvl 26 -x 26830 -y 15018
load inst riscv|ex_branchAddress_carry__4_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__4_i_3 -pg 1 -lvl 26 -x 26830 -y 15108
load inst riscv|ex_branchAddress_carry__4_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__4_i_4 -pg 1 -lvl 26 -x 26830 -y 15198
load inst riscv|ex_branchAddress_carry__5 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__5 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 28 -x 30310 -y 16448
load inst riscv|ex_branchAddress_carry__5_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__5_i_1 -pg 1 -lvl 27 -x 28840 -y 3318
load inst riscv|ex_branchAddress_carry__5_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__5_i_2 -pg 1 -lvl 27 -x 28840 -y 3408
load inst riscv|ex_branchAddress_carry__5_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__5_i_3 -pg 1 -lvl 27 -x 28840 -y 3498
load inst riscv|ex_branchAddress_carry__5_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__5_i_4 -pg 1 -lvl 27 -x 28840 -y 3588
load inst riscv|ex_branchAddress_carry__6 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name ex_branchAddress_carry__6 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 29 -x 31190 -y 16808
load inst riscv|ex_branchAddress_carry__6_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__6_i_1 -pg 1 -lvl 28 -x 30310 -y 16588
load inst riscv|ex_branchAddress_carry__6_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__6_i_2 -pg 1 -lvl 28 -x 30310 -y 16678
load inst riscv|ex_branchAddress_carry__6_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__6_i_3 -pg 1 -lvl 28 -x 30310 -y 16768
load inst riscv|ex_branchAddress_carry__6_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry__6_i_4 -pg 1 -lvl 28 -x 30310 -y 16858
load inst riscv|ex_branchAddress_carry_i_1 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry_i_1 -pg 1 -lvl 21 -x 18810 -y 15468
load inst riscv|ex_branchAddress_carry_i_2 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry_i_2 -pg 1 -lvl 21 -x 18810 -y 15558
load inst riscv|ex_branchAddress_carry_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry_i_3 -pg 1 -lvl 21 -x 18810 -y 15648
load inst riscv|ex_branchAddress_carry_i_4 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name ex_branchAddress_carry_i_4 -pg 1 -lvl 21 -x 18810 -y 15738
load inst riscv|ex_immediate[0]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_immediate[0]_i_1 -pg 1 -lvl 27 -x 28840 -y 28328
load inst riscv|ex_immediate[11]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_immediate[11]_i_1 -pg 1 -lvl 22 -x 19770 -y 20968
load inst riscv|ex_immediate[11]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name ex_immediate[11]_i_2 -pg 1 -lvl 28 -x 30310 -y 27208
load inst riscv|ex_immediate[1]_i_1 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_immediate[1]_i_1 -pg 1 -lvl 27 -x 28840 -y 28678
load inst riscv|ex_immediate[2]_i_1 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_immediate[2]_i_1 -pg 1 -lvl 27 -x 28840 -y 28828
load inst riscv|ex_immediate[3]_i_1 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_immediate[3]_i_1 -pg 1 -lvl 27 -x 28840 -y 28978
load inst riscv|ex_immediate[4]_i_1 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_immediate[4]_i_1 -pg 1 -lvl 24 -x 22970 -y 29558
load inst riscv|ex_immediate_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[0] -pg 1 -lvl 28 -x 30310 -y 24908
load inst riscv|ex_immediate_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[10] -pg 1 -lvl 23 -x 21170 -y 17848
load inst riscv|ex_immediate_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[11] -pg 1 -lvl 23 -x 21170 -y 18798
load inst riscv|ex_immediate_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[12] -pg 1 -lvl 23 -x 21170 -y 19018
load inst riscv|ex_immediate_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[1] -pg 1 -lvl 28 -x 30310 -y 25058
load inst riscv|ex_immediate_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[2] -pg 1 -lvl 28 -x 30310 -y 26798
load inst riscv|ex_immediate_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[3] -pg 1 -lvl 28 -x 30310 -y 26948
load inst riscv|ex_immediate_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[4] -pg 1 -lvl 25 -x 24850 -y 23248
load inst riscv|ex_immediate_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[5] -pg 1 -lvl 25 -x 24850 -y 23398
load inst riscv|ex_immediate_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[6] -pg 1 -lvl 25 -x 24850 -y 23548
load inst riscv|ex_immediate_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[7] -pg 1 -lvl 25 -x 24850 -y 23728
load inst riscv|ex_immediate_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[8] -pg 1 -lvl 23 -x 21170 -y 17428
load inst riscv|ex_immediate_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_immediate_reg[9] -pg 1 -lvl 23 -x 21170 -y 17648
load inst riscv|ex_instruction_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[10] -pg 1 -lvl 23 -x 21170 -y 2778
load inst riscv|ex_instruction_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[11] -pg 1 -lvl 23 -x 21170 -y 2928
load inst riscv|ex_instruction_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[12] -pg 1 -lvl 30 -x 31750 -y 23098
load inst riscv|ex_instruction_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[13] -pg 1 -lvl 30 -x 31750 -y 23248
load inst riscv|ex_instruction_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[14] -pg 1 -lvl 30 -x 31750 -y 23398
load inst riscv|ex_instruction_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[7] -pg 1 -lvl 23 -x 21170 -y 2328
load inst riscv|ex_instruction_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[8] -pg 1 -lvl 23 -x 21170 -y 2478
load inst riscv|ex_instruction_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_instruction_reg[9] -pg 1 -lvl 23 -x 21170 -y 2628
load inst riscv|ex_rs1[0]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[0]_i_1 -pg 1 -lvl 24 -x 22970 -y 23908
load inst riscv|ex_rs1[10]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[10]_i_1 -pg 1 -lvl 23 -x 21170 -y 22718
load inst riscv|ex_rs1[11]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[11]_i_1 -pg 1 -lvl 23 -x 21170 -y 22898
load inst riscv|ex_rs1[12]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[12]_i_1 -pg 1 -lvl 25 -x 24850 -y 27198
load inst riscv|ex_rs1[13]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[13]_i_1 -pg 1 -lvl 25 -x 24850 -y 27368
load inst riscv|ex_rs1[14]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[14]_i_1 -pg 1 -lvl 25 -x 24850 -y 27718
load inst riscv|ex_rs1[15]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[15]_i_1 -pg 1 -lvl 25 -x 24850 -y 28018
load inst riscv|ex_rs1[16]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[16]_i_1 -pg 1 -lvl 23 -x 21170 -y 29028
load inst riscv|ex_rs1[17]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[17]_i_1 -pg 1 -lvl 23 -x 21170 -y 29198
load inst riscv|ex_rs1[18]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[18]_i_1 -pg 1 -lvl 23 -x 21170 -y 30028
load inst riscv|ex_rs1[19]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[19]_i_1 -pg 1 -lvl 23 -x 21170 -y 30198
load inst riscv|ex_rs1[1]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[1]_i_1 -pg 1 -lvl 24 -x 22970 -y 24088
load inst riscv|ex_rs1[20]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[20]_i_1 -pg 1 -lvl 25 -x 24850 -y 32538
load inst riscv|ex_rs1[21]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[21]_i_1 -pg 1 -lvl 25 -x 24850 -y 32708
load inst riscv|ex_rs1[22]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[22]_i_1 -pg 1 -lvl 25 -x 24850 -y 32878
load inst riscv|ex_rs1[23]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[23]_i_1 -pg 1 -lvl 25 -x 24850 -y 33048
load inst riscv|ex_rs1[24]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[24]_i_1 -pg 1 -lvl 23 -x 21170 -y 30368
load inst riscv|ex_rs1[25]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[25]_i_1 -pg 1 -lvl 23 -x 21170 -y 30538
load inst riscv|ex_rs1[26]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[26]_i_1 -pg 1 -lvl 23 -x 21170 -y 30738
load inst riscv|ex_rs1[27]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[27]_i_1 -pg 1 -lvl 23 -x 21170 -y 30958
load inst riscv|ex_rs1[28]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[28]_i_1 -pg 1 -lvl 24 -x 22970 -y 31228
load inst riscv|ex_rs1[29]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[29]_i_1 -pg 1 -lvl 24 -x 22970 -y 31518
load inst riscv|ex_rs1[2]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[2]_i_1 -pg 1 -lvl 24 -x 22970 -y 24258
load inst riscv|ex_rs1[30]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[30]_i_1 -pg 1 -lvl 24 -x 22970 -y 31698
load inst riscv|ex_rs1[31]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[31]_i_1 -pg 1 -lvl 23 -x 21170 -y 31128
load inst riscv|ex_rs1[31]_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_rs1[31]_i_2 -pg 1 -lvl 24 -x 22970 -y 32688
load inst riscv|ex_rs1[31]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[31]_i_3 -pg 1 -lvl 23 -x 21170 -y 32248
load inst riscv|ex_rs1[3]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[3]_i_1 -pg 1 -lvl 24 -x 22970 -y 24428
load inst riscv|ex_rs1[4]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[4]_i_1 -pg 1 -lvl 25 -x 24850 -y 26358
load inst riscv|ex_rs1[5]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[5]_i_1 -pg 1 -lvl 25 -x 24850 -y 26528
load inst riscv|ex_rs1[6]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[6]_i_1 -pg 1 -lvl 25 -x 24850 -y 26698
load inst riscv|ex_rs1[7]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[7]_i_1 -pg 1 -lvl 25 -x 24850 -y 26868
load inst riscv|ex_rs1[8]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[8]_i_1 -pg 1 -lvl 23 -x 21170 -y 8918
load inst riscv|ex_rs1[9]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs1[9]_i_1 -pg 1 -lvl 23 -x 21170 -y 10338
load inst riscv|ex_rs1_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[0] -pg 1 -lvl 25 -x 24850 -y 23928
load inst riscv|ex_rs1_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[10] -pg 1 -lvl 24 -x 22970 -y 22758
load inst riscv|ex_rs1_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[11] -pg 1 -lvl 24 -x 22970 -y 22938
load inst riscv|ex_rs1_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[12] -pg 1 -lvl 26 -x 26830 -y 27238
load inst riscv|ex_rs1_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[13] -pg 1 -lvl 26 -x 26830 -y 27408
load inst riscv|ex_rs1_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[14] -pg 1 -lvl 26 -x 26830 -y 27758
load inst riscv|ex_rs1_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[15] -pg 1 -lvl 26 -x 26830 -y 28058
load inst riscv|ex_rs1_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[16] -pg 1 -lvl 24 -x 22970 -y 29188
load inst riscv|ex_rs1_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[17] -pg 1 -lvl 24 -x 22970 -y 29388
load inst riscv|ex_rs1_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[18] -pg 1 -lvl 24 -x 22970 -y 29788
load inst riscv|ex_rs1_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[19] -pg 1 -lvl 24 -x 22970 -y 29938
load inst riscv|ex_rs1_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[1] -pg 1 -lvl 25 -x 24850 -y 24128
load inst riscv|ex_rs1_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[20] -pg 1 -lvl 26 -x 26830 -y 32578
load inst riscv|ex_rs1_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[21] -pg 1 -lvl 26 -x 26830 -y 32748
load inst riscv|ex_rs1_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[22] -pg 1 -lvl 26 -x 26830 -y 32918
load inst riscv|ex_rs1_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[23] -pg 1 -lvl 26 -x 26830 -y 33088
load inst riscv|ex_rs1_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[24] -pg 1 -lvl 24 -x 22970 -y 30248
load inst riscv|ex_rs1_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[25] -pg 1 -lvl 24 -x 22970 -y 30398
load inst riscv|ex_rs1_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[26] -pg 1 -lvl 24 -x 22970 -y 30818
load inst riscv|ex_rs1_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[27] -pg 1 -lvl 24 -x 22970 -y 30968
load inst riscv|ex_rs1_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[28] -pg 1 -lvl 25 -x 24850 -y 31268
load inst riscv|ex_rs1_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[29] -pg 1 -lvl 25 -x 24850 -y 31558
load inst riscv|ex_rs1_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[2] -pg 1 -lvl 25 -x 24850 -y 24278
load inst riscv|ex_rs1_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[30] -pg 1 -lvl 25 -x 24850 -y 31758
load inst riscv|ex_rs1_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[31] -pg 1 -lvl 24 -x 22970 -y 31118
load inst riscv|ex_rs1_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[3] -pg 1 -lvl 25 -x 24850 -y 24428
load inst riscv|ex_rs1_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[4] -pg 1 -lvl 26 -x 26830 -y 26398
load inst riscv|ex_rs1_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[5] -pg 1 -lvl 26 -x 26830 -y 26568
load inst riscv|ex_rs1_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[6] -pg 1 -lvl 26 -x 26830 -y 26738
load inst riscv|ex_rs1_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[7] -pg 1 -lvl 26 -x 26830 -y 26908
load inst riscv|ex_rs1_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[8] -pg 1 -lvl 24 -x 22970 -y 9228
load inst riscv|ex_rs1_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs1_reg[9] -pg 1 -lvl 24 -x 22970 -y 10378
load inst riscv|ex_rs2[0]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[0]_i_1 -pg 1 -lvl 27 -x 28840 -y 29268
load inst riscv|ex_rs2[10]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[10]_i_1 -pg 1 -lvl 21 -x 18810 -y 22618
load inst riscv|ex_rs2[11]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[11]_i_1 -pg 1 -lvl 24 -x 22970 -y 22228
load inst riscv|ex_rs2[12]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[12]_i_1 -pg 1 -lvl 24 -x 22970 -y 24608
load inst riscv|ex_rs2[13]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[13]_i_1 -pg 1 -lvl 15 -x 10380 -y 24368
load inst riscv|ex_rs2[14]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[14]_i_1 -pg 1 -lvl 14 -x 9310 -y 23568
load inst riscv|ex_rs2[15]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[15]_i_1 -pg 1 -lvl 14 -x 9310 -y 24168
load inst riscv|ex_rs2[16]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[16]_i_1 -pg 1 -lvl 25 -x 24850 -y 30778
load inst riscv|ex_rs2[17]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[17]_i_1 -pg 1 -lvl 25 -x 24850 -y 30948
load inst riscv|ex_rs2[18]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[18]_i_1 -pg 1 -lvl 25 -x 24850 -y 32368
load inst riscv|ex_rs2[19]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[19]_i_1 -pg 1 -lvl 20 -x 17570 -y 29288
load inst riscv|ex_rs2[1]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[1]_i_1 -pg 1 -lvl 25 -x 24850 -y 24688
load inst riscv|ex_rs2[20]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[20]_i_1 -pg 1 -lvl 14 -x 9310 -y 24758
load inst riscv|ex_rs2[21]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[21]_i_1 -pg 1 -lvl 16 -x 11660 -y 25328
load inst riscv|ex_rs2[22]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[22]_i_1 -pg 1 -lvl 6 -x 5550 -y 26368
load inst riscv|ex_rs2[23]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[23]_i_1 -pg 1 -lvl 14 -x 9310 -y 25568
load inst riscv|ex_rs2[24]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[24]_i_1 -pg 1 -lvl 16 -x 11660 -y 25808
load inst riscv|ex_rs2[25]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[25]_i_1 -pg 1 -lvl 22 -x 19770 -y 24108
load inst riscv|ex_rs2[26]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[26]_i_1 -pg 1 -lvl 22 -x 19770 -y 24508
load inst riscv|ex_rs2[27]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[27]_i_1 -pg 1 -lvl 22 -x 19770 -y 25108
load inst riscv|ex_rs2[28]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[28]_i_1 -pg 1 -lvl 22 -x 19770 -y 26258
load inst riscv|ex_rs2[29]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[29]_i_1 -pg 1 -lvl 22 -x 19770 -y 26428
load inst riscv|ex_rs2[2]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[2]_i_1 -pg 1 -lvl 25 -x 24850 -y 24858
load inst riscv|ex_rs2[30]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[30]_i_1 -pg 1 -lvl 26 -x 26830 -y 31488
load inst riscv|ex_rs2[31]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[31]_i_1 -pg 1 -lvl 22 -x 19770 -y 29068
load inst riscv|ex_rs2[31]_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name ex_rs2[31]_i_2 -pg 1 -lvl 26 -x 26830 -y 32048
load inst riscv|ex_rs2[31]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[31]_i_3 -pg 1 -lvl 25 -x 24850 -y 32008
load inst riscv|ex_rs2[3]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[3]_i_1 -pg 1 -lvl 22 -x 19770 -y 19918
load inst riscv|ex_rs2[4]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[4]_i_1 -pg 1 -lvl 24 -x 22970 -y 19198
load inst riscv|ex_rs2[5]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[5]_i_1 -pg 1 -lvl 24 -x 22970 -y 19418
load inst riscv|ex_rs2[6]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[6]_i_1 -pg 1 -lvl 24 -x 22970 -y 19588
load inst riscv|ex_rs2[7]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[7]_i_1 -pg 1 -lvl 12 -x 8440 -y 25348
load inst riscv|ex_rs2[8]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[8]_i_1 -pg 1 -lvl 21 -x 18810 -y 22048
load inst riscv|ex_rs2[9]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name ex_rs2[9]_i_1 -pg 1 -lvl 22 -x 19770 -y 20608
load inst riscv|ex_rs2_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[0] -pg 1 -lvl 28 -x 30310 -y 27098
load inst riscv|ex_rs2_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[10] -pg 1 -lvl 22 -x 19770 -y 21698
load inst riscv|ex_rs2_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[11] -pg 1 -lvl 25 -x 24850 -y 19758
load inst riscv|ex_rs2_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[12] -pg 1 -lvl 25 -x 24850 -y 24578
load inst riscv|ex_rs2_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[13] -pg 1 -lvl 16 -x 11660 -y 24178
load inst riscv|ex_rs2_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[14] -pg 1 -lvl 15 -x 10380 -y 23608
load inst riscv|ex_rs2_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[15] -pg 1 -lvl 15 -x 10380 -y 23808
load inst riscv|ex_rs2_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[16] -pg 1 -lvl 26 -x 26830 -y 30818
load inst riscv|ex_rs2_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[17] -pg 1 -lvl 26 -x 26830 -y 32258
load inst riscv|ex_rs2_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[18] -pg 1 -lvl 26 -x 26830 -y 32408
load inst riscv|ex_rs2_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[19] -pg 1 -lvl 21 -x 18810 -y 26138
load inst riscv|ex_rs2_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[1] -pg 1 -lvl 26 -x 26830 -y 18958
load inst riscv|ex_rs2_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[20] -pg 1 -lvl 15 -x 10380 -y 23958
load inst riscv|ex_rs2_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[21] -pg 1 -lvl 17 -x 13140 -y 24028
load inst riscv|ex_rs2_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[22] -pg 1 -lvl 7 -x 5730 -y 26218
load inst riscv|ex_rs2_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[23] -pg 1 -lvl 15 -x 10380 -y 24178
load inst riscv|ex_rs2_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[24] -pg 1 -lvl 17 -x 13140 -y 24178
load inst riscv|ex_rs2_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[25] -pg 1 -lvl 23 -x 21170 -y 24378
load inst riscv|ex_rs2_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[26] -pg 1 -lvl 23 -x 21170 -y 24938
load inst riscv|ex_rs2_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[27] -pg 1 -lvl 23 -x 21170 -y 25378
load inst riscv|ex_rs2_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[28] -pg 1 -lvl 23 -x 21170 -y 26298
load inst riscv|ex_rs2_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[29] -pg 1 -lvl 23 -x 21170 -y 26818
load inst riscv|ex_rs2_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[2] -pg 1 -lvl 26 -x 26830 -y 22728
load inst riscv|ex_rs2_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[30] -pg 1 -lvl 27 -x 28840 -y 24128
load inst riscv|ex_rs2_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[31] -pg 1 -lvl 23 -x 21170 -y 28698
load inst riscv|ex_rs2_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[3] -pg 1 -lvl 23 -x 21170 -y 18028
load inst riscv|ex_rs2_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[4] -pg 1 -lvl 25 -x 24850 -y 19238
load inst riscv|ex_rs2_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[5] -pg 1 -lvl 25 -x 24850 -y 19458
load inst riscv|ex_rs2_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[6] -pg 1 -lvl 25 -x 24850 -y 19608
load inst riscv|ex_rs2_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[7] -pg 1 -lvl 13 -x 8770 -y 23818
load inst riscv|ex_rs2_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[8] -pg 1 -lvl 22 -x 19770 -y 21438
load inst riscv|ex_rs2_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name ex_rs2_reg[9] -pg 1 -lvl 23 -x 21170 -y 18578
load inst riscv|i__carry__0_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_1 -pg 1 -lvl 24 -x 22970 -y 12038
load inst riscv|i__carry__0_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry__0_i_10 -pg 1 -lvl 23 -x 21170 -y 15448
load inst riscv|i__carry__0_i_1__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_1__0 -pg 1 -lvl 24 -x 22970 -y 12208
load inst riscv|i__carry__0_i_1__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__0_i_1__1 -pg 1 -lvl 14 -x 9310 -y 20108
load inst riscv|i__carry__0_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_2 -pg 1 -lvl 24 -x 22970 -y 12378
load inst riscv|i__carry__0_i_2__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_2__0 -pg 1 -lvl 24 -x 22970 -y 12548
load inst riscv|i__carry__0_i_2__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__0_i_2__1 -pg 1 -lvl 14 -x 9310 -y 20248
load inst riscv|i__carry__0_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_3 -pg 1 -lvl 24 -x 22970 -y 13758
load inst riscv|i__carry__0_i_3__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_3__0 -pg 1 -lvl 24 -x 22970 -y 13058
load inst riscv|i__carry__0_i_3__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__0_i_3__1 -pg 1 -lvl 14 -x 9310 -y 21248
load inst riscv|i__carry__0_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_4 -pg 1 -lvl 24 -x 22970 -y 13928
load inst riscv|i__carry__0_i_4__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_4__0 -pg 1 -lvl 24 -x 22970 -y 13238
load inst riscv|i__carry__0_i_4__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__0_i_4__1 -pg 1 -lvl 14 -x 9310 -y 21388
load inst riscv|i__carry__0_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_5 -pg 1 -lvl 24 -x 22970 -y 12718
load inst riscv|i__carry__0_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_6 -pg 1 -lvl 24 -x 22970 -y 12888
load inst riscv|i__carry__0_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_7 -pg 1 -lvl 24 -x 22970 -y 13408
load inst riscv|i__carry__0_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__0_i_8 -pg 1 -lvl 24 -x 22970 -y 13578
load inst riscv|i__carry__0_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry__0_i_9 -pg 1 -lvl 23 -x 21170 -y 15308
load inst riscv|i__carry__1_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_1 -pg 1 -lvl 25 -x 24850 -y 22228
load inst riscv|i__carry__1_i_1__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_1__0 -pg 1 -lvl 25 -x 24850 -y 22408
load inst riscv|i__carry__1_i_1__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__1_i_1__1 -pg 1 -lvl 15 -x 10380 -y 14968
load inst riscv|i__carry__1_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_2 -pg 1 -lvl 25 -x 24850 -y 21548
load inst riscv|i__carry__1_i_2__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_2__0 -pg 1 -lvl 25 -x 24850 -y 22058
load inst riscv|i__carry__1_i_2__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__1_i_2__1 -pg 1 -lvl 15 -x 10380 -y 15098
load inst riscv|i__carry__1_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_3 -pg 1 -lvl 25 -x 24850 -y 22578
load inst riscv|i__carry__1_i_3__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_3__0 -pg 1 -lvl 25 -x 24850 -y 22748
load inst riscv|i__carry__1_i_3__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__1_i_3__1 -pg 1 -lvl 15 -x 10380 -y 15228
load inst riscv|i__carry__1_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_4 -pg 1 -lvl 25 -x 24850 -y 29348
load inst riscv|i__carry__1_i_4__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_4__0 -pg 1 -lvl 25 -x 24850 -y 29518
load inst riscv|i__carry__1_i_4__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__1_i_4__1 -pg 1 -lvl 15 -x 10380 -y 15368
load inst riscv|i__carry__1_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_5 -pg 1 -lvl 25 -x 24850 -y 21718
load inst riscv|i__carry__1_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_6 -pg 1 -lvl 25 -x 24850 -y 21888
load inst riscv|i__carry__1_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_7 -pg 1 -lvl 25 -x 24850 -y 22918
load inst riscv|i__carry__1_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__1_i_8 -pg 1 -lvl 25 -x 24850 -y 29698
load inst riscv|i__carry__2_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_1 -pg 1 -lvl 26 -x 26830 -y 30418
load inst riscv|i__carry__2_i_1__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_1__0 -pg 1 -lvl 26 -x 26830 -y 30068
load inst riscv|i__carry__2_i_1__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__2_i_1__1 -pg 1 -lvl 16 -x 11660 -y 18678
load inst riscv|i__carry__2_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_2 -pg 1 -lvl 26 -x 26830 -y 30588
load inst riscv|i__carry__2_i_2__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_2__0 -pg 1 -lvl 26 -x 26830 -y 31098
load inst riscv|i__carry__2_i_2__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__2_i_2__1 -pg 1 -lvl 16 -x 11660 -y 19298
load inst riscv|i__carry__2_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_3 -pg 1 -lvl 26 -x 26830 -y 28728
load inst riscv|i__carry__2_i_3__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_3__0 -pg 1 -lvl 26 -x 26830 -y 30928
load inst riscv|i__carry__2_i_3__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__2_i_3__1 -pg 1 -lvl 16 -x 11660 -y 19458
load inst riscv|i__carry__2_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_4 -pg 1 -lvl 26 -x 26830 -y 29038
load inst riscv|i__carry__2_i_4__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_4__0 -pg 1 -lvl 26 -x 26830 -y 29548
load inst riscv|i__carry__2_i_4__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__2_i_4__1 -pg 1 -lvl 16 -x 11660 -y 19588
load inst riscv|i__carry__2_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_5 -pg 1 -lvl 26 -x 26830 -y 29718
load inst riscv|i__carry__2_i_5__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_5__0 -pg 1 -lvl 26 -x 26830 -y 30238
load inst riscv|i__carry__2_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_6 -pg 1 -lvl 26 -x 26830 -y 29208
load inst riscv|i__carry__2_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_7 -pg 1 -lvl 26 -x 26830 -y 29378
load inst riscv|i__carry__2_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry__2_i_8 -pg 1 -lvl 26 -x 26830 -y 29898
load inst riscv|i__carry__3_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__3_i_1 -pg 1 -lvl 13 -x 8770 -y 18608
load inst riscv|i__carry__3_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__3_i_2 -pg 1 -lvl 13 -x 8770 -y 18768
load inst riscv|i__carry__3_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__3_i_3 -pg 1 -lvl 13 -x 8770 -y 18968
load inst riscv|i__carry__3_i_4 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__3_i_4 -pg 1 -lvl 13 -x 8770 -y 19108
load inst riscv|i__carry__4_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__4_i_1 -pg 1 -lvl 16 -x 11660 -y 18548
load inst riscv|i__carry__4_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__4_i_2 -pg 1 -lvl 16 -x 11660 -y 18808
load inst riscv|i__carry__4_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__4_i_3 -pg 1 -lvl 16 -x 11660 -y 19008
load inst riscv|i__carry__4_i_4 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__4_i_4 -pg 1 -lvl 16 -x 11660 -y 19138
load inst riscv|i__carry__5_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__5_i_1 -pg 1 -lvl 16 -x 11660 -y 16958
load inst riscv|i__carry__5_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__5_i_2 -pg 1 -lvl 16 -x 11660 -y 17338
load inst riscv|i__carry__5_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__5_i_3 -pg 1 -lvl 16 -x 11660 -y 17648
load inst riscv|i__carry__5_i_4 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__5_i_4 -pg 1 -lvl 16 -x 11660 -y 17778
load inst riscv|i__carry__6_i_1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__6_i_1 -pg 1 -lvl 26 -x 26830 -y 25398
load inst riscv|i__carry__6_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__6_i_2 -pg 1 -lvl 26 -x 26830 -y 28328
load inst riscv|i__carry__6_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__6_i_3 -pg 1 -lvl 26 -x 26830 -y 28458
load inst riscv|i__carry__6_i_4 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry__6_i_4 -pg 1 -lvl 26 -x 26830 -y 28588
load inst riscv|i__carry_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_1 -pg 1 -lvl 23 -x 21170 -y 12158
load inst riscv|i__carry_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry_i_10 -pg 1 -lvl 24 -x 22970 -y 14108
load inst riscv|i__carry_i_11 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry_i_11 -pg 1 -lvl 27 -x 28840 -y 16958
load inst riscv|i__carry_i_12 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry_i_12 -pg 1 -lvl 27 -x 28840 -y 17748
load inst riscv|i__carry_i_1__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_1__0 -pg 1 -lvl 23 -x 21170 -y 12768
load inst riscv|i__carry_i_1__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry_i_1__1 -pg 1 -lvl 13 -x 8770 -y 10738
load inst riscv|i__carry_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_2 -pg 1 -lvl 23 -x 21170 -y 12358
load inst riscv|i__carry_i_2__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_2__0 -pg 1 -lvl 23 -x 21170 -y 12598
load inst riscv|i__carry_i_2__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry_i_2__1 -pg 1 -lvl 13 -x 8770 -y 10898
load inst riscv|i__carry_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_3 -pg 1 -lvl 23 -x 21170 -y 11468
load inst riscv|i__carry_i_3__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_3__0 -pg 1 -lvl 23 -x 21170 -y 11638
load inst riscv|i__carry_i_3__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry_i_3__1 -pg 1 -lvl 13 -x 8770 -y 11038
load inst riscv|i__carry_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_4 -pg 1 -lvl 23 -x 21170 -y 11988
load inst riscv|i__carry_i_4__0 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_4__0 -pg 1 -lvl 23 -x 21170 -y 11808
load inst riscv|i__carry_i_4__1 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name i__carry_i_4__1 -pg 1 -lvl 13 -x 8770 -y 11298
load inst riscv|i__carry_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_5 -pg 1 -lvl 23 -x 21170 -y 10678
load inst riscv|i__carry_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_6 -pg 1 -lvl 23 -x 21170 -y 10858
load inst riscv|i__carry_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_7 -pg 1 -lvl 23 -x 21170 -y 11028
load inst riscv|i__carry_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name i__carry_i_8 -pg 1 -lvl 23 -x 21170 -y 11228
load inst riscv|i__carry_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name i__carry_i_9 -pg 1 -lvl 23 -x 21170 -y 15198
load inst riscv|id_PC_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[0] -pg 1 -lvl 19 -x 15960 -y 15548
load inst riscv|id_PC_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[10] -pg 1 -lvl 21 -x 18810 -y 16368
load inst riscv|id_PC_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[11] -pg 1 -lvl 21 -x 18810 -y 16728
load inst riscv|id_PC_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[12] -pg 1 -lvl 22 -x 19770 -y 15658
load inst riscv|id_PC_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[13] -pg 1 -lvl 22 -x 19770 -y 16178
load inst riscv|id_PC_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[14] -pg 1 -lvl 22 -x 19770 -y 16358
load inst riscv|id_PC_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[15] -pg 1 -lvl 22 -x 19770 -y 16538
load inst riscv|id_PC_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[16] -pg 1 -lvl 23 -x 21170 -y 16308
load inst riscv|id_PC_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[17] -pg 1 -lvl 23 -x 21170 -y 16458
load inst riscv|id_PC_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[18] -pg 1 -lvl 23 -x 21170 -y 16638
load inst riscv|id_PC_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[19] -pg 1 -lvl 23 -x 21170 -y 16788
load inst riscv|id_PC_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[1] -pg 1 -lvl 19 -x 15960 -y 15698
load inst riscv|id_PC_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[20] -pg 1 -lvl 24 -x 22970 -y 14648
load inst riscv|id_PC_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[21] -pg 1 -lvl 24 -x 22970 -y 14798
load inst riscv|id_PC_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[22] -pg 1 -lvl 24 -x 22970 -y 15118
load inst riscv|id_PC_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[23] -pg 1 -lvl 24 -x 22970 -y 15268
load inst riscv|id_PC_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[24] -pg 1 -lvl 25 -x 24850 -y 668
load inst riscv|id_PC_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[25] -pg 1 -lvl 25 -x 24850 -y 828
load inst riscv|id_PC_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[26] -pg 1 -lvl 25 -x 24850 -y 988
load inst riscv|id_PC_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[27] -pg 1 -lvl 25 -x 24850 -y 1148
load inst riscv|id_PC_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[28] -pg 1 -lvl 26 -x 26830 -y 17128
load inst riscv|id_PC_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[29] -pg 1 -lvl 26 -x 26830 -y 17278
load inst riscv|id_PC_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[2] -pg 1 -lvl 19 -x 15960 -y 15848
load inst riscv|id_PC_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[30] -pg 1 -lvl 26 -x 26830 -y 17428
load inst riscv|id_PC_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[31] -pg 1 -lvl 26 -x 26830 -y 17578
load inst riscv|id_PC_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[3] -pg 1 -lvl 19 -x 15960 -y 15998
load inst riscv|id_PC_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[4] -pg 1 -lvl 20 -x 17570 -y 16128
load inst riscv|id_PC_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[5] -pg 1 -lvl 20 -x 17570 -y 16278
load inst riscv|id_PC_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[6] -pg 1 -lvl 20 -x 17570 -y 16498
load inst riscv|id_PC_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[7] -pg 1 -lvl 20 -x 17570 -y 16678
load inst riscv|id_PC_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[8] -pg 1 -lvl 21 -x 18810 -y 15148
load inst riscv|id_PC_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name id_PC_reg[9] -pg 1 -lvl 21 -x 18810 -y 15298
load inst riscv|id_registerFile_reg_r1_0_31_0_5 RAM32M {hdi_primitives:netlist:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_0_5 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 23 -x 21170 -y 25838
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name id_registerFile_reg_r1_0_31_0_5_i_1 -pg 1 -lvl 26 -x 26830 -y 31268
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_2 -pg 1 -lvl 25 -x 24850 -y 25028
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_3 -pg 1 -lvl 25 -x 24850 -y 25168
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_4 -pg 1 -lvl 25 -x 24850 -y 25308
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_5 -pg 1 -lvl 25 -x 24850 -y 25418
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_6 -pg 1 -lvl 25 -x 24850 -y 26138
load inst riscv|id_registerFile_reg_r1_0_31_0_5_i_7 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_0_5_i_7 -pg 1 -lvl 25 -x 24850 -y 26248
load inst riscv|id_registerFile_reg_r1_0_31_12_17 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_12_17 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 22 -x 19770 -y 28518
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_1 -pg 1 -lvl 23 -x 21170 -y 27308
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_2 -pg 1 -lvl 23 -x 21170 -y 27448
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_3 -pg 1 -lvl 23 -x 21170 -y 27568
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_4 -pg 1 -lvl 23 -x 21170 -y 27678
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_5 -pg 1 -lvl 23 -x 21170 -y 28808
load inst riscv|id_registerFile_reg_r1_0_31_12_17_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_12_17_i_6 -pg 1 -lvl 23 -x 21170 -y 28918
load inst riscv|id_registerFile_reg_r1_0_31_18_23 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_18_23 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 22 -x 19770 -y 31878
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_1 -pg 1 -lvl 23 -x 21170 -y 32428
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_2 -pg 1 -lvl 23 -x 21170 -y 32548
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_3 -pg 1 -lvl 23 -x 21170 -y 32768
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_4 -pg 1 -lvl 23 -x 21170 -y 32888
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_5 -pg 1 -lvl 23 -x 21170 -y 33008
load inst riscv|id_registerFile_reg_r1_0_31_18_23_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_18_23_i_6 -pg 1 -lvl 23 -x 21170 -y 33118
load inst riscv|id_registerFile_reg_r1_0_31_24_29 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_24_29 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 22 -x 19770 -y 30108
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_1 -pg 1 -lvl 14 -x 9310 -y 26348
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_2 -pg 1 -lvl 14 -x 9310 -y 26468
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_3 -pg 1 -lvl 14 -x 9310 -y 26608
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_4 -pg 1 -lvl 14 -x 9310 -y 26808
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_5 -pg 1 -lvl 14 -x 9310 -y 27258
load inst riscv|id_registerFile_reg_r1_0_31_24_29_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_24_29_i_6 -pg 1 -lvl 14 -x 9310 -y 27368
load inst riscv|id_registerFile_reg_r1_0_31_30_31 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_30_31 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOB @attr n/c -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOC @attr n/c -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 22 -x 19770 -y 30428
load inst riscv|id_registerFile_reg_r1_0_31_30_31_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_30_31_i_1 -pg 1 -lvl 20 -x 17570 -y 29608
load inst riscv|id_registerFile_reg_r1_0_31_30_31_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_30_31_i_2 -pg 1 -lvl 20 -x 17570 -y 29748
load inst riscv|id_registerFile_reg_r1_0_31_6_11 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r1_0_31_6_11 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 22 -x 19770 -y 22088
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_1 -pg 1 -lvl 20 -x 17570 -y 14758
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_2 -pg 1 -lvl 20 -x 17570 -y 14868
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_3 -pg 1 -lvl 20 -x 17570 -y 18828
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_4 -pg 1 -lvl 20 -x 17570 -y 18988
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_5 -pg 1 -lvl 20 -x 17570 -y 22788
load inst riscv|id_registerFile_reg_r1_0_31_6_11_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name id_registerFile_reg_r1_0_31_6_11_i_6 -pg 1 -lvl 20 -x 17570 -y 22898
load inst riscv|id_registerFile_reg_r2_0_31_0_5 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_0_5 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 26 -x 26830 -y 26088
load inst riscv|id_registerFile_reg_r2_0_31_12_17 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_12_17 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 24 -x 22970 -y 28258
load inst riscv|id_registerFile_reg_r2_0_31_18_23 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_18_23 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 24 -x 22970 -y 32948
load inst riscv|id_registerFile_reg_r2_0_31_24_29 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_24_29 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 15 -x 10380 -y 26128
load inst riscv|id_registerFile_reg_r2_0_31_30_31 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_30_31 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOB @attr n/c -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOC @attr n/c -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 21 -x 18810 -y 28498
load inst riscv|id_registerFile_reg_r2_0_31_6_11 RAM32M {hdi_primitives:abstract:no file specified} -hier riscv -autohide -attr @cell(#000000) RAM32M -attr @name id_registerFile_reg_r2_0_31_6_11 -pinBusAttr DOA @name DOA[1:0] -pinBusAttr DOB @name DOB[1:0] -pinBusAttr DOC @name DOC[1:0] -pinBusAttr DOD @name DOD[1:0] -pinBusAttr DOD @attr n/c -pinBusAttr ADDRA @name ADDRA[4:0] -pinBusAttr ADDRB @name ADDRB[4:0] -pinBusAttr ADDRC @name ADDRC[4:0] -pinBusAttr ADDRD @name ADDRD[4:0] -pinBusAttr DIA @name DIA[1:0] -pinBusAttr DIB @name DIB[1:0] -pinBusAttr DIC @name DIC[1:0] -pinBusAttr DID @name DID[1:0] -pg 1 -lvl 21 -x 18810 -y 22288
load inst riscv|if_PC[0]_i_1 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[0]_i_1 -pg 1 -lvl 33 -x 32850 -y 16328
load inst riscv|if_PC[0]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name if_PC[0]_i_2 -pg 1 -lvl 32 -x 32620 -y 19098
load inst riscv|if_PC[13]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[13]_i_2 -pg 1 -lvl 28 -x 30310 -y 15598
load inst riscv|if_PC[13]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[13]_i_3 -pg 1 -lvl 28 -x 30310 -y 15708
load inst riscv|if_PC[13]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[13]_i_4 -pg 1 -lvl 28 -x 30310 -y 15828
load inst riscv|if_PC[13]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[13]_i_5 -pg 1 -lvl 28 -x 30310 -y 15968
load inst riscv|if_PC[17]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[17]_i_2 -pg 1 -lvl 29 -x 31190 -y 15178
load inst riscv|if_PC[17]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[17]_i_3 -pg 1 -lvl 29 -x 31190 -y 15288
load inst riscv|if_PC[17]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[17]_i_4 -pg 1 -lvl 29 -x 31190 -y 15398
load inst riscv|if_PC[17]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[17]_i_5 -pg 1 -lvl 29 -x 31190 -y 15518
load inst riscv|if_PC[1]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[1]_i_2 -pg 1 -lvl 25 -x 24850 -y 1248
load inst riscv|if_PC[1]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[1]_i_3 -pg 1 -lvl 25 -x 24850 -y 1358
load inst riscv|if_PC[1]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[1]_i_4 -pg 1 -lvl 25 -x 24850 -y 1468
load inst riscv|if_PC[1]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[1]_i_5 -pg 1 -lvl 25 -x 24850 -y 1578
load inst riscv|if_PC[21]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[21]_i_2 -pg 1 -lvl 30 -x 31750 -y 16088
load inst riscv|if_PC[21]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[21]_i_3 -pg 1 -lvl 30 -x 31750 -y 16198
load inst riscv|if_PC[21]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[21]_i_4 -pg 1 -lvl 30 -x 31750 -y 16308
load inst riscv|if_PC[21]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[21]_i_5 -pg 1 -lvl 30 -x 31750 -y 16418
load inst riscv|if_PC[25]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[25]_i_2 -pg 1 -lvl 31 -x 32130 -y 16228
load inst riscv|if_PC[25]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[25]_i_3 -pg 1 -lvl 31 -x 32130 -y 16338
load inst riscv|if_PC[25]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[25]_i_4 -pg 1 -lvl 31 -x 32130 -y 16448
load inst riscv|if_PC[25]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[25]_i_5 -pg 1 -lvl 31 -x 32130 -y 16558
load inst riscv|if_PC[29]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[29]_i_2 -pg 1 -lvl 32 -x 32620 -y 22068
load inst riscv|if_PC[29]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[29]_i_3 -pg 1 -lvl 32 -x 32620 -y 22178
load inst riscv|if_PC[29]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[29]_i_4 -pg 1 -lvl 32 -x 32620 -y 22288
load inst riscv|if_PC[5]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[5]_i_2 -pg 1 -lvl 26 -x 26830 -y 3448
load inst riscv|if_PC[5]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[5]_i_3 -pg 1 -lvl 26 -x 26830 -y 3558
load inst riscv|if_PC[5]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[5]_i_4 -pg 1 -lvl 26 -x 26830 -y 3668
load inst riscv|if_PC[5]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[5]_i_5 -pg 1 -lvl 26 -x 26830 -y 3778
load inst riscv|if_PC[9]_i_2 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[9]_i_2 -pg 1 -lvl 27 -x 28840 -y 14748
load inst riscv|if_PC[9]_i_3 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[9]_i_3 -pg 1 -lvl 27 -x 28840 -y 14858
load inst riscv|if_PC[9]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[9]_i_4 -pg 1 -lvl 27 -x 28840 -y 14968
load inst riscv|if_PC[9]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name if_PC[9]_i_5 -pg 1 -lvl 27 -x 28840 -y 15078
load inst riscv|if_PC_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[0] -pg 1 -lvl 34 -x 33220 -y 11638
load inst riscv|if_PC_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[10] -pg 1 -lvl 34 -x 33220 -y 13188
load inst riscv|if_PC_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[11] -pg 1 -lvl 34 -x 33220 -y 13338
load inst riscv|if_PC_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[12] -pg 1 -lvl 34 -x 33220 -y 13488
load inst riscv|if_PC_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[13] -pg 1 -lvl 34 -x 33220 -y 13638
load inst riscv|if_PC_reg[13]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[13]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 29 -x 31190 -y 15628
load inst riscv|if_PC_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[14] -pg 1 -lvl 34 -x 33220 -y 13788
load inst riscv|if_PC_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[15] -pg 1 -lvl 34 -x 33220 -y 13938
load inst riscv|if_PC_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[16] -pg 1 -lvl 34 -x 33220 -y 14088
load inst riscv|if_PC_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[17] -pg 1 -lvl 34 -x 33220 -y 14238
load inst riscv|if_PC_reg[17]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[17]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 30 -x 31750 -y 15948
load inst riscv|if_PC_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[18] -pg 1 -lvl 34 -x 33220 -y 14388
load inst riscv|if_PC_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[19] -pg 1 -lvl 34 -x 33220 -y 14538
load inst riscv|if_PC_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[1] -pg 1 -lvl 34 -x 33220 -y 11788
load inst riscv|if_PC_reg[1]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[1]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 26 -x 26830 -y 11048
load inst riscv|if_PC_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[20] -pg 1 -lvl 34 -x 33220 -y 14688
load inst riscv|if_PC_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[21] -pg 1 -lvl 34 -x 33220 -y 14838
load inst riscv|if_PC_reg[21]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[21]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 31 -x 32130 -y 16028
load inst riscv|if_PC_reg[22] FDSE hdi_primitives -hier riscv -attr @cell(#000000) FDSE -attr @name if_PC_reg[22] -pg 1 -lvl 34 -x 33220 -y 14988
load inst riscv|if_PC_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[23] -pg 1 -lvl 34 -x 33220 -y 15138
load inst riscv|if_PC_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[24] -pg 1 -lvl 34 -x 33220 -y 15288
load inst riscv|if_PC_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[25] -pg 1 -lvl 34 -x 33220 -y 15438
load inst riscv|if_PC_reg[25]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[25]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 32 -x 32620 -y 16108
load inst riscv|if_PC_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[26] -pg 1 -lvl 34 -x 33220 -y 15588
load inst riscv|if_PC_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[27] -pg 1 -lvl 34 -x 33220 -y 15738
load inst riscv|if_PC_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[28] -pg 1 -lvl 34 -x 33220 -y 15888
load inst riscv|if_PC_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[29] -pg 1 -lvl 34 -x 33220 -y 16038
load inst riscv|if_PC_reg[29]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[29]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 33 -x 32850 -y 16188
load inst riscv|if_PC_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[2] -pg 1 -lvl 34 -x 33220 -y 11938
load inst riscv|if_PC_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[30] -pg 1 -lvl 34 -x 33220 -y 16188
load inst riscv|if_PC_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[31] -pg 1 -lvl 34 -x 33220 -y 16338
load inst riscv|if_PC_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[3] -pg 1 -lvl 34 -x 33220 -y 12088
load inst riscv|if_PC_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[4] -pg 1 -lvl 34 -x 33220 -y 12238
load inst riscv|if_PC_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[5] -pg 1 -lvl 34 -x 33220 -y 12388
load inst riscv|if_PC_reg[5]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[5]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 27 -x 28840 -y 12398
load inst riscv|if_PC_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[6] -pg 1 -lvl 34 -x 33220 -y 12538
load inst riscv|if_PC_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[7] -pg 1 -lvl 34 -x 33220 -y 12688
load inst riscv|if_PC_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[8] -pg 1 -lvl 34 -x 33220 -y 12838
load inst riscv|if_PC_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name if_PC_reg[9] -pg 1 -lvl 34 -x 33220 -y 13038
load inst riscv|if_PC_reg[9]_i_1 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name if_PC_reg[9]_i_1 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 28 -x 30310 -y 15438
load inst riscv|mem_Branch_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_Branch_reg -pg 1 -lvl 31 -x 32130 -y 22788
load inst riscv|mem_MemtoReg_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_MemtoReg_reg -pg 1 -lvl 22 -x 19770 -y 28368
load inst riscv|mem_RegWrite_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_RegWrite_reg -pg 1 -lvl 24 -x 22970 -y 30098
load inst riscv|mem_Zero_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_Zero_i_1 -pg 1 -lvl 30 -x 31750 -y 23498
load inst riscv|mem_Zero_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_Zero_i_2 -pg 1 -lvl 29 -x 31190 -y 17078
load inst riscv|mem_Zero_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_Zero_i_3 -pg 1 -lvl 29 -x 31190 -y 23558
load inst riscv|mem_Zero_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_Zero_i_4 -pg 1 -lvl 28 -x 30310 -y 8218
load inst riscv|mem_Zero_i_5 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_Zero_i_5 -pg 1 -lvl 28 -x 30310 -y 16198
load inst riscv|mem_Zero_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_Zero_i_6 -pg 1 -lvl 28 -x 30310 -y 20278
load inst riscv|mem_Zero_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_Zero_i_7 -pg 1 -lvl 28 -x 30310 -y 23078
load inst riscv|mem_Zero_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_Zero_i_8 -pg 1 -lvl 28 -x 30310 -y 31968
load inst riscv|mem_Zero_reg FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_Zero_reg -pg 1 -lvl 31 -x 32130 -y 22938
load inst riscv|mem_aluResult[0]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[0]_i_1 -pg 1 -lvl 30 -x 31750 -y 18918
load inst riscv|mem_aluResult[0]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[0]_i_10 -pg 1 -lvl 28 -x 30310 -y 20738
load inst riscv|mem_aluResult[0]_i_11 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[0]_i_11 -pg 1 -lvl 28 -x 30310 -y 20958
load inst riscv|mem_aluResult[0]_i_12 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[0]_i_12 -pg 1 -lvl 27 -x 28840 -y 21358
load inst riscv|mem_aluResult[0]_i_13 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[0]_i_13 -pg 1 -lvl 27 -x 28840 -y 21478
load inst riscv|mem_aluResult[0]_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[0]_i_2 -pg 1 -lvl 29 -x 31190 -y 19388
load inst riscv|mem_aluResult[0]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[0]_i_3 -pg 1 -lvl 29 -x 31190 -y 19538
load inst riscv|mem_aluResult[0]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[0]_i_4 -pg 1 -lvl 29 -x 31190 -y 20178
load inst riscv|mem_aluResult[0]_i_5 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[0]_i_5 -pg 1 -lvl 29 -x 31190 -y 21058
load inst riscv|mem_aluResult[0]_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[0]_i_6 -pg 1 -lvl 29 -x 31190 -y 21498
load inst riscv|mem_aluResult[0]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[0]_i_7 -pg 1 -lvl 26 -x 26830 -y 18328
load inst riscv|mem_aluResult[0]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[0]_i_8 -pg 1 -lvl 28 -x 30310 -y 20418
load inst riscv|mem_aluResult[0]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[0]_i_9 -pg 1 -lvl 28 -x 30310 -y 20578
load inst riscv|mem_aluResult[10]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_1 -pg 1 -lvl 17 -x 13140 -y 12668
load inst riscv|mem_aluResult[10]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_2 -pg 1 -lvl 18 -x 14620 -y 11648
load inst riscv|mem_aluResult[10]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_3 -pg 1 -lvl 16 -x 11660 -y 13048
load inst riscv|mem_aluResult[10]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[10]_i_4 -pg 1 -lvl 16 -x 11660 -y 13448
load inst riscv|mem_aluResult[10]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_5 -pg 1 -lvl 25 -x 24850 -y 5678
load inst riscv|mem_aluResult[10]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_6 -pg 1 -lvl 15 -x 10380 -y 13648
load inst riscv|mem_aluResult[10]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[10]_i_7 -pg 1 -lvl 17 -x 13140 -y 13388
load inst riscv|mem_aluResult[10]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[10]_i_8 -pg 1 -lvl 16 -x 11660 -y 14068
load inst riscv|mem_aluResult[11]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_1 -pg 1 -lvl 17 -x 13140 -y 12068
load inst riscv|mem_aluResult[11]_i_10 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[11]_i_10 -pg 1 -lvl 17 -x 13140 -y 15668
load inst riscv|mem_aluResult[11]_i_11 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[11]_i_11 -pg 1 -lvl 26 -x 26830 -y 17688
load inst riscv|mem_aluResult[11]_i_12 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_12 -pg 1 -lvl 15 -x 10380 -y 13828
load inst riscv|mem_aluResult[11]_i_13 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[11]_i_13 -pg 1 -lvl 15 -x 10380 -y 14788
load inst riscv|mem_aluResult[11]_i_15 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[11]_i_15 -pg 1 -lvl 14 -x 9310 -y 15328
load inst riscv|mem_aluResult[11]_i_16 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[11]_i_16 -pg 1 -lvl 17 -x 13140 -y 16838
load inst riscv|mem_aluResult[11]_i_17 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[11]_i_17 -pg 1 -lvl 17 -x 13140 -y 16998
load inst riscv|mem_aluResult[11]_i_18 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[11]_i_18 -pg 1 -lvl 17 -x 13140 -y 17128
load inst riscv|mem_aluResult[11]_i_19 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[11]_i_19 -pg 1 -lvl 17 -x 13140 -y 17258
load inst riscv|mem_aluResult[11]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_2 -pg 1 -lvl 20 -x 17570 -y 11298
load inst riscv|mem_aluResult[11]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_3 -pg 1 -lvl 16 -x 11660 -y 11708
load inst riscv|mem_aluResult[11]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_4 -pg 1 -lvl 16 -x 11660 -y 12848
load inst riscv|mem_aluResult[11]_i_5 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[11]_i_5 -pg 1 -lvl 16 -x 11660 -y 13288
load inst riscv|mem_aluResult[11]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_6 -pg 1 -lvl 25 -x 24850 -y 5898
load inst riscv|mem_aluResult[11]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_7 -pg 1 -lvl 25 -x 24850 -y 7598
load inst riscv|mem_aluResult[11]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_8 -pg 1 -lvl 25 -x 24850 -y 7778
load inst riscv|mem_aluResult[11]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[11]_i_9 -pg 1 -lvl 18 -x 14620 -y 15008
load inst riscv|mem_aluResult[12]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[12]_i_1 -pg 1 -lvl 22 -x 19770 -y 11998
load inst riscv|mem_aluResult[12]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[12]_i_2 -pg 1 -lvl 21 -x 18810 -y 11958
load inst riscv|mem_aluResult[12]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[12]_i_3 -pg 1 -lvl 21 -x 18810 -y 12178
load inst riscv|mem_aluResult[12]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[12]_i_4 -pg 1 -lvl 21 -x 18810 -y 12358
load inst riscv|mem_aluResult[12]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[12]_i_5 -pg 1 -lvl 20 -x 17570 -y 11788
load inst riscv|mem_aluResult[12]_i_6 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[12]_i_6 -pg 1 -lvl 20 -x 17570 -y 11988
load inst riscv|mem_aluResult[12]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[12]_i_7 -pg 1 -lvl 20 -x 17570 -y 12328
load inst riscv|mem_aluResult[12]_i_8 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[12]_i_8 -pg 1 -lvl 26 -x 26830 -y 19418
load inst riscv|mem_aluResult[13]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[13]_i_1 -pg 1 -lvl 20 -x 17570 -y 11078
load inst riscv|mem_aluResult[13]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[13]_i_2 -pg 1 -lvl 19 -x 15960 -y 12308
load inst riscv|mem_aluResult[13]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[13]_i_3 -pg 1 -lvl 21 -x 18810 -y 12598
load inst riscv|mem_aluResult[13]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[13]_i_4 -pg 1 -lvl 19 -x 15960 -y 17618
load inst riscv|mem_aluResult[13]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[13]_i_5 -pg 1 -lvl 18 -x 14620 -y 15638
load inst riscv|mem_aluResult[13]_i_6 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[13]_i_6 -pg 1 -lvl 18 -x 14620 -y 15838
load inst riscv|mem_aluResult[13]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[13]_i_7 -pg 1 -lvl 20 -x 17570 -y 11468
load inst riscv|mem_aluResult[13]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[13]_i_8 -pg 1 -lvl 20 -x 17570 -y 12148
load inst riscv|mem_aluResult[13]_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[13]_i_9 -pg 1 -lvl 17 -x 13140 -y 19148
load inst riscv|mem_aluResult[14]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_1 -pg 1 -lvl 11 -x 8060 -y 17038
load inst riscv|mem_aluResult[14]_i_10 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[14]_i_10 -pg 1 -lvl 16 -x 11660 -y 11448
load inst riscv|mem_aluResult[14]_i_11 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[14]_i_11 -pg 1 -lvl 8 -x 6000 -y 18588
load inst riscv|mem_aluResult[14]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_2 -pg 1 -lvl 10 -x 7600 -y 16998
load inst riscv|mem_aluResult[14]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[14]_i_3 -pg 1 -lvl 19 -x 15960 -y 12948
load inst riscv|mem_aluResult[14]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_4 -pg 1 -lvl 9 -x 6800 -y 15148
load inst riscv|mem_aluResult[14]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_5 -pg 1 -lvl 10 -x 7600 -y 17198
load inst riscv|mem_aluResult[14]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_6 -pg 1 -lvl 9 -x 6800 -y 16898
load inst riscv|mem_aluResult[14]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[14]_i_7 -pg 1 -lvl 9 -x 6800 -y 17068
load inst riscv|mem_aluResult[14]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[14]_i_8 -pg 1 -lvl 18 -x 14620 -y 12028
load inst riscv|mem_aluResult[14]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[14]_i_9 -pg 1 -lvl 18 -x 14620 -y 12538
load inst riscv|mem_aluResult[15]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_1 -pg 1 -lvl 11 -x 8060 -y 17338
load inst riscv|mem_aluResult[15]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_10 -pg 1 -lvl 9 -x 6800 -y 17618
load inst riscv|mem_aluResult[15]_i_12 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[15]_i_12 -pg 1 -lvl 18 -x 14620 -y 19818
load inst riscv|mem_aluResult[15]_i_13 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[15]_i_13 -pg 1 -lvl 18 -x 14620 -y 20268
load inst riscv|mem_aluResult[15]_i_14 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[15]_i_14 -pg 1 -lvl 18 -x 14620 -y 20428
load inst riscv|mem_aluResult[15]_i_15 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[15]_i_15 -pg 1 -lvl 18 -x 14620 -y 20588
load inst riscv|mem_aluResult[15]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_2 -pg 1 -lvl 18 -x 14620 -y 12688
load inst riscv|mem_aluResult[15]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_3 -pg 1 -lvl 10 -x 7600 -y 13128
load inst riscv|mem_aluResult[15]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_4 -pg 1 -lvl 10 -x 7600 -y 17378
load inst riscv|mem_aluResult[15]_i_5 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[15]_i_5 -pg 1 -lvl 10 -x 7600 -y 17658
load inst riscv|mem_aluResult[15]_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[15]_i_6 -pg 1 -lvl 17 -x 13140 -y 13648
load inst riscv|mem_aluResult[15]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_7 -pg 1 -lvl 18 -x 14620 -y 15178
load inst riscv|mem_aluResult[15]_i_8 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[15]_i_8 -pg 1 -lvl 9 -x 6800 -y 17328
load inst riscv|mem_aluResult[15]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[15]_i_9 -pg 1 -lvl 9 -x 6800 -y 17438
load inst riscv|mem_aluResult[16]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[16]_i_1 -pg 1 -lvl 20 -x 17570 -y 12548
load inst riscv|mem_aluResult[16]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[16]_i_10 -pg 1 -lvl 18 -x 14620 -y 17178
load inst riscv|mem_aluResult[16]_i_11 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[16]_i_11 -pg 1 -lvl 18 -x 14620 -y 19708
load inst riscv|mem_aluResult[16]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[16]_i_2 -pg 1 -lvl 19 -x 15960 -y 12568
load inst riscv|mem_aluResult[16]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[16]_i_3 -pg 1 -lvl 20 -x 17570 -y 12728
load inst riscv|mem_aluResult[16]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[16]_i_4 -pg 1 -lvl 19 -x 15960 -y 12708
load inst riscv|mem_aluResult[16]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[16]_i_5 -pg 1 -lvl 19 -x 15960 -y 14898
load inst riscv|mem_aluResult[16]_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[16]_i_6 -pg 1 -lvl 15 -x 10380 -y 12908
load inst riscv|mem_aluResult[16]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[16]_i_7 -pg 1 -lvl 14 -x 9310 -y 14948
load inst riscv|mem_aluResult[16]_i_8 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[16]_i_8 -pg 1 -lvl 19 -x 15960 -y 15118
load inst riscv|mem_aluResult[16]_i_9 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[16]_i_9 -pg 1 -lvl 16 -x 11660 -y 11578
load inst riscv|mem_aluResult[17]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[17]_i_1 -pg 1 -lvl 22 -x 19770 -y 12798
load inst riscv|mem_aluResult[17]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[17]_i_2 -pg 1 -lvl 21 -x 18810 -y 12778
load inst riscv|mem_aluResult[17]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[17]_i_3 -pg 1 -lvl 21 -x 18810 -y 12938
load inst riscv|mem_aluResult[17]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[17]_i_4 -pg 1 -lvl 21 -x 18810 -y 18128
load inst riscv|mem_aluResult[17]_i_5 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[17]_i_5 -pg 1 -lvl 14 -x 9310 -y 14788
load inst riscv|mem_aluResult[17]_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[17]_i_6 -pg 1 -lvl 20 -x 17570 -y 19148
load inst riscv|mem_aluResult[17]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[17]_i_7 -pg 1 -lvl 20 -x 17570 -y 19288
load inst riscv|mem_aluResult[18]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[18]_i_1 -pg 1 -lvl 22 -x 19770 -y 13038
load inst riscv|mem_aluResult[18]_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[18]_i_10 -pg 1 -lvl 20 -x 17570 -y 20158
load inst riscv|mem_aluResult[18]_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[18]_i_2 -pg 1 -lvl 21 -x 18810 -y 13588
load inst riscv|mem_aluResult[18]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[18]_i_3 -pg 1 -lvl 26 -x 26830 -y 16218
load inst riscv|mem_aluResult[18]_i_4 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[18]_i_4 -pg 1 -lvl 21 -x 18810 -y 13738
load inst riscv|mem_aluResult[18]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[18]_i_5 -pg 1 -lvl 21 -x 18810 -y 17958
load inst riscv|mem_aluResult[18]_i_6 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[18]_i_6 -pg 1 -lvl 20 -x 17570 -y 13008
load inst riscv|mem_aluResult[18]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[18]_i_7 -pg 1 -lvl 20 -x 17570 -y 13828
load inst riscv|mem_aluResult[18]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[18]_i_8 -pg 1 -lvl 20 -x 17570 -y 13968
load inst riscv|mem_aluResult[18]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[18]_i_9 -pg 1 -lvl 20 -x 17570 -y 19458
load inst riscv|mem_aluResult[19]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[19]_i_1 -pg 1 -lvl 17 -x 13140 -y 14688
load inst riscv|mem_aluResult[19]_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[19]_i_10 -pg 1 -lvl 15 -x 10380 -y 16688
load inst riscv|mem_aluResult[19]_i_11 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[19]_i_11 -pg 1 -lvl 15 -x 10380 -y 16798
load inst riscv|mem_aluResult[19]_i_12 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[19]_i_12 -pg 1 -lvl 14 -x 9310 -y 14368
load inst riscv|mem_aluResult[19]_i_14 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_14 -pg 1 -lvl 14 -x 9310 -y 18608
load inst riscv|mem_aluResult[19]_i_15 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_15 -pg 1 -lvl 14 -x 9310 -y 18788
load inst riscv|mem_aluResult[19]_i_16 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_16 -pg 1 -lvl 14 -x 9310 -y 19288
load inst riscv|mem_aluResult[19]_i_17 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_17 -pg 1 -lvl 14 -x 9310 -y 19418
load inst riscv|mem_aluResult[19]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_2 -pg 1 -lvl 16 -x 11660 -y 13628
load inst riscv|mem_aluResult[19]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[19]_i_3 -pg 1 -lvl 20 -x 17570 -y 13548
load inst riscv|mem_aluResult[19]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[19]_i_4 -pg 1 -lvl 16 -x 11660 -y 13808
load inst riscv|mem_aluResult[19]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[19]_i_5 -pg 1 -lvl 16 -x 11660 -y 15738
load inst riscv|mem_aluResult[19]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[19]_i_6 -pg 1 -lvl 15 -x 10380 -y 13348
load inst riscv|mem_aluResult[19]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[19]_i_7 -pg 1 -lvl 19 -x 15960 -y 13128
load inst riscv|mem_aluResult[19]_i_8 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_8 -pg 1 -lvl 17 -x 13140 -y 14908
load inst riscv|mem_aluResult[19]_i_9 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[19]_i_9 -pg 1 -lvl 15 -x 10380 -y 15548
load inst riscv|mem_aluResult[1]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_1 -pg 1 -lvl 27 -x 28840 -y 5048
load inst riscv|mem_aluResult[1]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_2 -pg 1 -lvl 26 -x 26830 -y 4208
load inst riscv|mem_aluResult[1]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_3 -pg 1 -lvl 26 -x 26830 -y 4378
load inst riscv|mem_aluResult[1]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_4 -pg 1 -lvl 26 -x 26830 -y 4548
load inst riscv|mem_aluResult[1]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_5 -pg 1 -lvl 26 -x 26830 -y 4718
load inst riscv|mem_aluResult[1]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[1]_i_6 -pg 1 -lvl 26 -x 26830 -y 5108
load inst riscv|mem_aluResult[1]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[1]_i_7 -pg 1 -lvl 25 -x 24850 -y 3988
load inst riscv|mem_aluResult[1]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[1]_i_8 -pg 1 -lvl 25 -x 24850 -y 4148
load inst riscv|mem_aluResult[1]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[1]_i_9 -pg 1 -lvl 25 -x 24850 -y 4298
load inst riscv|mem_aluResult[20]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[20]_i_1 -pg 1 -lvl 22 -x 19770 -y 14328
load inst riscv|mem_aluResult[20]_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[20]_i_10 -pg 1 -lvl 20 -x 17570 -y 20268
load inst riscv|mem_aluResult[20]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[20]_i_2 -pg 1 -lvl 21 -x 18810 -y 13898
load inst riscv|mem_aluResult[20]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[20]_i_3 -pg 1 -lvl 21 -x 18810 -y 14178
load inst riscv|mem_aluResult[20]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[20]_i_4 -pg 1 -lvl 21 -x 18810 -y 14358
load inst riscv|mem_aluResult[20]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[20]_i_5 -pg 1 -lvl 21 -x 18810 -y 17778
load inst riscv|mem_aluResult[20]_i_6 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[20]_i_6 -pg 1 -lvl 20 -x 17570 -y 14138
load inst riscv|mem_aluResult[20]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[20]_i_7 -pg 1 -lvl 14 -x 9310 -y 15638
load inst riscv|mem_aluResult[20]_i_8 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[20]_i_8 -pg 1 -lvl 20 -x 17570 -y 14538
load inst riscv|mem_aluResult[20]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[20]_i_9 -pg 1 -lvl 20 -x 17570 -y 19628
load inst riscv|mem_aluResult[21]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_1 -pg 1 -lvl 20 -x 17570 -y 13208
load inst riscv|mem_aluResult[21]_i_10 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[21]_i_10 -pg 1 -lvl 18 -x 14620 -y 17358
load inst riscv|mem_aluResult[21]_i_11 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_11 -pg 1 -lvl 18 -x 14620 -y 17478
load inst riscv|mem_aluResult[21]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[21]_i_2 -pg 1 -lvl 19 -x 15960 -y 13448
load inst riscv|mem_aluResult[21]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_3 -pg 1 -lvl 19 -x 15960 -y 13648
load inst riscv|mem_aluResult[21]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_4 -pg 1 -lvl 20 -x 17570 -y 13378
load inst riscv|mem_aluResult[21]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_5 -pg 1 -lvl 19 -x 15960 -y 14418
load inst riscv|mem_aluResult[21]_i_6 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[21]_i_6 -pg 1 -lvl 18 -x 14620 -y 13388
load inst riscv|mem_aluResult[21]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[21]_i_7 -pg 1 -lvl 19 -x 15960 -y 14588
load inst riscv|mem_aluResult[21]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[21]_i_8 -pg 1 -lvl 15 -x 10380 -y 14528
load inst riscv|mem_aluResult[21]_i_9 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[21]_i_9 -pg 1 -lvl 15 -x 10380 -y 15678
load inst riscv|mem_aluResult[22]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_1 -pg 1 -lvl 3 -x 4800 -y 18268
load inst riscv|mem_aluResult[22]_i_10 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[22]_i_10 -pg 1 -lvl 26 -x 26830 -y 16648
load inst riscv|mem_aluResult[22]_i_11 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name mem_aluResult[22]_i_11 -pg 1 -lvl 26 -x 26830 -y 16798
load inst riscv|mem_aluResult[22]_i_12 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_12 -pg 1 -lvl 20 -x 17570 -y 14988
load inst riscv|mem_aluResult[22]_i_13 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[22]_i_13 -pg 1 -lvl 20 -x 17570 -y 15208
load inst riscv|mem_aluResult[22]_i_14 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_14 -pg 1 -lvl 1 -x 4200 -y 17378
load inst riscv|mem_aluResult[22]_i_15 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[22]_i_15 -pg 1 -lvl 24 -x 22970 -y 28948
load inst riscv|mem_aluResult[22]_i_16 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[22]_i_16 -pg 1 -lvl 17 -x 13140 -y 15798
load inst riscv|mem_aluResult[22]_i_2 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[22]_i_2 -pg 1 -lvl 2 -x 4520 -y 17618
load inst riscv|mem_aluResult[22]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_3 -pg 1 -lvl 9 -x 6800 -y 15818
load inst riscv|mem_aluResult[22]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_4 -pg 1 -lvl 27 -x 28840 -y 16038
load inst riscv|mem_aluResult[22]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_5 -pg 1 -lvl 18 -x 14620 -y 13028
load inst riscv|mem_aluResult[22]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[22]_i_6 -pg 1 -lvl 2 -x 4520 -y 17868
load inst riscv|mem_aluResult[22]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[22]_i_7 -pg 1 -lvl 8 -x 6000 -y 15778
load inst riscv|mem_aluResult[22]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[22]_i_8 -pg 1 -lvl 26 -x 26830 -y 16498
load inst riscv|mem_aluResult[22]_i_9 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[22]_i_9 -pg 1 -lvl 14 -x 9310 -y 15798
load inst riscv|mem_aluResult[23]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_1 -pg 1 -lvl 11 -x 8060 -y 18148
load inst riscv|mem_aluResult[23]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_2 -pg 1 -lvl 10 -x 7600 -y 17818
load inst riscv|mem_aluResult[23]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_3 -pg 1 -lvl 10 -x 7600 -y 18148
load inst riscv|mem_aluResult[23]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[23]_i_4 -pg 1 -lvl 10 -x 7600 -y 18328
load inst riscv|mem_aluResult[23]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_5 -pg 1 -lvl 9 -x 6800 -y 14008
load inst riscv|mem_aluResult[23]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_6 -pg 1 -lvl 9 -x 6800 -y 14178
load inst riscv|mem_aluResult[23]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[23]_i_7 -pg 1 -lvl 9 -x 6800 -y 14348
load inst riscv|mem_aluResult[24]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_1 -pg 1 -lvl 20 -x 17570 -y 19798
load inst riscv|mem_aluResult[24]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_2 -pg 1 -lvl 19 -x 15960 -y 15258
load inst riscv|mem_aluResult[24]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_3 -pg 1 -lvl 19 -x 15960 -y 18708
load inst riscv|mem_aluResult[24]_i_4 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[24]_i_4 -pg 1 -lvl 19 -x 15960 -y 20268
load inst riscv|mem_aluResult[24]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_5 -pg 1 -lvl 18 -x 14620 -y 13538
load inst riscv|mem_aluResult[24]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_6 -pg 1 -lvl 18 -x 14620 -y 13718
load inst riscv|mem_aluResult[24]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_7 -pg 1 -lvl 18 -x 14620 -y 13898
load inst riscv|mem_aluResult[24]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[24]_i_8 -pg 1 -lvl 9 -x 6800 -y 15998
load inst riscv|mem_aluResult[25]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_1 -pg 1 -lvl 11 -x 8060 -y 18548
load inst riscv|mem_aluResult[25]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_2 -pg 1 -lvl 18 -x 14620 -y 14418
load inst riscv|mem_aluResult[25]_i_3 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[25]_i_3 -pg 1 -lvl 10 -x 7600 -y 16128
load inst riscv|mem_aluResult[25]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_4 -pg 1 -lvl 10 -x 7600 -y 18508
load inst riscv|mem_aluResult[25]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_5 -pg 1 -lvl 17 -x 13140 -y 13848
load inst riscv|mem_aluResult[25]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_6 -pg 1 -lvl 9 -x 6800 -y 16168
load inst riscv|mem_aluResult[25]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[25]_i_7 -pg 1 -lvl 9 -x 6800 -y 16368
load inst riscv|mem_aluResult[25]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[25]_i_8 -pg 1 -lvl 9 -x 6800 -y 16518
load inst riscv|mem_aluResult[25]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[25]_i_9 -pg 1 -lvl 8 -x 6000 -y 13528
load inst riscv|mem_aluResult[26]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_1 -pg 1 -lvl 19 -x 15960 -y 16198
load inst riscv|mem_aluResult[26]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_10 -pg 1 -lvl 17 -x 13140 -y 15318
load inst riscv|mem_aluResult[26]_i_11 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[26]_i_11 -pg 1 -lvl 17 -x 13140 -y 15518
load inst riscv|mem_aluResult[26]_i_12 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_12 -pg 1 -lvl 17 -x 13140 -y 16538
load inst riscv|mem_aluResult[26]_i_14 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_14 -pg 1 -lvl 16 -x 11660 -y 17138
load inst riscv|mem_aluResult[26]_i_15 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_15 -pg 1 -lvl 16 -x 11660 -y 17468
load inst riscv|mem_aluResult[26]_i_16 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_16 -pg 1 -lvl 16 -x 11660 -y 17918
load inst riscv|mem_aluResult[26]_i_17 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_17 -pg 1 -lvl 16 -x 11660 -y 18048
load inst riscv|mem_aluResult[26]_i_18 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_18 -pg 1 -lvl 15 -x 10380 -y 18588
load inst riscv|mem_aluResult[26]_i_19 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_19 -pg 1 -lvl 15 -x 10380 -y 18788
load inst riscv|mem_aluResult[26]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_2 -pg 1 -lvl 10 -x 7600 -y 12908
load inst riscv|mem_aluResult[26]_i_20 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_20 -pg 1 -lvl 15 -x 10380 -y 18968
load inst riscv|mem_aluResult[26]_i_21 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[26]_i_21 -pg 1 -lvl 15 -x 10380 -y 19108
load inst riscv|mem_aluResult[26]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_3 -pg 1 -lvl 18 -x 14620 -y 14748
load inst riscv|mem_aluResult[26]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[26]_i_4 -pg 1 -lvl 18 -x 14620 -y 16018
load inst riscv|mem_aluResult[26]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_5 -pg 1 -lvl 18 -x 14620 -y 17758
load inst riscv|mem_aluResult[26]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_6 -pg 1 -lvl 9 -x 6800 -y 14728
load inst riscv|mem_aluResult[26]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_7 -pg 1 -lvl 17 -x 13140 -y 15038
load inst riscv|mem_aluResult[26]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[26]_i_8 -pg 1 -lvl 25 -x 24850 -y 10258
load inst riscv|mem_aluResult[27]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_1 -pg 1 -lvl 19 -x 15960 -y 17978
load inst riscv|mem_aluResult[27]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_10 -pg 1 -lvl 26 -x 26830 -y 13508
load inst riscv|mem_aluResult[27]_i_11 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_11 -pg 1 -lvl 25 -x 24850 -y 15868
load inst riscv|mem_aluResult[27]_i_12 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[27]_i_12 -pg 1 -lvl 17 -x 13140 -y 16718
load inst riscv|mem_aluResult[27]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_2 -pg 1 -lvl 18 -x 14620 -y 16238
load inst riscv|mem_aluResult[27]_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[27]_i_3 -pg 1 -lvl 19 -x 15960 -y 18148
load inst riscv|mem_aluResult[27]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_4 -pg 1 -lvl 18 -x 14620 -y 17938
load inst riscv|mem_aluResult[27]_i_5 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[27]_i_5 -pg 1 -lvl 18 -x 14620 -y 18528
load inst riscv|mem_aluResult[27]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_6 -pg 1 -lvl 17 -x 13140 -y 15908
load inst riscv|mem_aluResult[27]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_7 -pg 1 -lvl 17 -x 13140 -y 16088
load inst riscv|mem_aluResult[27]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_8 -pg 1 -lvl 9 -x 6800 -y 18788
load inst riscv|mem_aluResult[27]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[27]_i_9 -pg 1 -lvl 17 -x 13140 -y 16368
load inst riscv|mem_aluResult[28]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_1 -pg 1 -lvl 29 -x 31190 -y 21768
load inst riscv|mem_aluResult[28]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_10 -pg 1 -lvl 27 -x 28840 -y 22508
load inst riscv|mem_aluResult[28]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_2 -pg 1 -lvl 28 -x 30310 -y 18398
load inst riscv|mem_aluResult[28]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_3 -pg 1 -lvl 28 -x 30310 -y 22158
load inst riscv|mem_aluResult[28]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[28]_i_4 -pg 1 -lvl 28 -x 30310 -y 22668
load inst riscv|mem_aluResult[28]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_5 -pg 1 -lvl 27 -x 28840 -y 18918
load inst riscv|mem_aluResult[28]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_6 -pg 1 -lvl 27 -x 28840 -y 20828
load inst riscv|mem_aluResult[28]_i_7 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[28]_i_7 -pg 1 -lvl 27 -x 28840 -y 22008
load inst riscv|mem_aluResult[28]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_8 -pg 1 -lvl 27 -x 28840 -y 22118
load inst riscv|mem_aluResult[28]_i_9 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[28]_i_9 -pg 1 -lvl 27 -x 28840 -y 22288
load inst riscv|mem_aluResult[29]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_1 -pg 1 -lvl 29 -x 31190 -y 21938
load inst riscv|mem_aluResult[29]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_2 -pg 1 -lvl 28 -x 30310 -y 18568
load inst riscv|mem_aluResult[29]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_3 -pg 1 -lvl 28 -x 30310 -y 21178
load inst riscv|mem_aluResult[29]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[29]_i_4 -pg 1 -lvl 28 -x 30310 -y 22518
load inst riscv|mem_aluResult[29]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_5 -pg 1 -lvl 27 -x 28840 -y 14578
load inst riscv|mem_aluResult[29]_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[29]_i_6 -pg 1 -lvl 27 -x 28840 -y 17098
load inst riscv|mem_aluResult[29]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_7 -pg 1 -lvl 27 -x 28840 -y 17238
load inst riscv|mem_aluResult[29]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[29]_i_8 -pg 1 -lvl 27 -x 28840 -y 17408
load inst riscv|mem_aluResult[29]_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[29]_i_9 -pg 1 -lvl 26 -x 26830 -y 18188
load inst riscv|mem_aluResult[2]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_1 -pg 1 -lvl 27 -x 28840 -y 5388
load inst riscv|mem_aluResult[2]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_10 -pg 1 -lvl 25 -x 24850 -y 3298
load inst riscv|mem_aluResult[2]_i_11 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_11 -pg 1 -lvl 25 -x 24850 -y 4448
load inst riscv|mem_aluResult[2]_i_13 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_13 -pg 1 -lvl 25 -x 24850 -y 4608
load inst riscv|mem_aluResult[2]_i_14 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_14 -pg 1 -lvl 25 -x 24850 -y 4788
load inst riscv|mem_aluResult[2]_i_15 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_15 -pg 1 -lvl 24 -x 22970 -y 3658
load inst riscv|mem_aluResult[2]_i_16 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_16 -pg 1 -lvl 24 -x 22970 -y 3828
load inst riscv|mem_aluResult[2]_i_17 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[2]_i_17 -pg 1 -lvl 24 -x 22970 -y 4008
load inst riscv|mem_aluResult[2]_i_18 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[2]_i_18 -pg 1 -lvl 24 -x 22970 -y 4138
load inst riscv|mem_aluResult[2]_i_19 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[2]_i_19 -pg 1 -lvl 24 -x 22970 -y 4268
load inst riscv|mem_aluResult[2]_i_2 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_2 -pg 1 -lvl 26 -x 26830 -y 3888
load inst riscv|mem_aluResult[2]_i_20 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[2]_i_20 -pg 1 -lvl 24 -x 22970 -y 4398
load inst riscv|mem_aluResult[2]_i_21 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_21 -pg 1 -lvl 24 -x 22970 -y 4528
load inst riscv|mem_aluResult[2]_i_22 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_22 -pg 1 -lvl 24 -x 22970 -y 4678
load inst riscv|mem_aluResult[2]_i_23 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_23 -pg 1 -lvl 24 -x 22970 -y 4828
load inst riscv|mem_aluResult[2]_i_24 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_24 -pg 1 -lvl 24 -x 22970 -y 5658
load inst riscv|mem_aluResult[2]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_3 -pg 1 -lvl 26 -x 26830 -y 4038
load inst riscv|mem_aluResult[2]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[2]_i_4 -pg 1 -lvl 26 -x 26830 -y 4888
load inst riscv|mem_aluResult[2]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_5 -pg 1 -lvl 26 -x 26830 -y 5278
load inst riscv|mem_aluResult[2]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_6 -pg 1 -lvl 26 -x 26830 -y 5448
load inst riscv|mem_aluResult[2]_i_7 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name mem_aluResult[2]_i_7 -pg 1 -lvl 25 -x 24850 -y 2928
load inst riscv|mem_aluResult[2]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[2]_i_8 -pg 1 -lvl 25 -x 24850 -y 3018
load inst riscv|mem_aluResult[2]_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[2]_i_9 -pg 1 -lvl 25 -x 24850 -y 3188
load inst riscv|mem_aluResult[30]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_1 -pg 1 -lvl 29 -x 31190 -y 22108
load inst riscv|mem_aluResult[30]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_10 -pg 1 -lvl 27 -x 28840 -y 18048
load inst riscv|mem_aluResult[30]_i_11 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_11 -pg 1 -lvl 27 -x 28840 -y 18218
load inst riscv|mem_aluResult[30]_i_12 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name mem_aluResult[30]_i_12 -pg 1 -lvl 25 -x 24850 -y 13548
load inst riscv|mem_aluResult[30]_i_13 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_13 -pg 1 -lvl 25 -x 24850 -y 13948
load inst riscv|mem_aluResult[30]_i_14 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_14 -pg 1 -lvl 27 -x 28840 -y 18368
load inst riscv|mem_aluResult[30]_i_15 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_15 -pg 1 -lvl 27 -x 28840 -y 18538
load inst riscv|mem_aluResult[30]_i_16 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_16 -pg 1 -lvl 27 -x 28840 -y 18718
load inst riscv|mem_aluResult[30]_i_17 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_17 -pg 1 -lvl 27 -x 28840 -y 19098
load inst riscv|mem_aluResult[30]_i_18 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_18 -pg 1 -lvl 27 -x 28840 -y 20628
load inst riscv|mem_aluResult[30]_i_19 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_19 -pg 1 -lvl 27 -x 28840 -y 21198
load inst riscv|mem_aluResult[30]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_2 -pg 1 -lvl 28 -x 30310 -y 18738
load inst riscv|mem_aluResult[30]_i_20 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_20 -pg 1 -lvl 27 -x 28840 -y 21808
load inst riscv|mem_aluResult[30]_i_21 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[30]_i_21 -pg 1 -lvl 26 -x 26830 -y 13198
load inst riscv|mem_aluResult[30]_i_23 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_23 -pg 1 -lvl 27 -x 28840 -y 22678
load inst riscv|mem_aluResult[30]_i_24 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_24 -pg 1 -lvl 26 -x 26830 -y 13328
load inst riscv|mem_aluResult[30]_i_25 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_25 -pg 1 -lvl 26 -x 26830 -y 13688
load inst riscv|mem_aluResult[30]_i_26 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_26 -pg 1 -lvl 26 -x 26830 -y 13868
load inst riscv|mem_aluResult[30]_i_27 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_27 -pg 1 -lvl 25 -x 24850 -y 14108
load inst riscv|mem_aluResult[30]_i_28 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[30]_i_28 -pg 1 -lvl 24 -x 22970 -y 14328
load inst riscv|mem_aluResult[30]_i_29 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[30]_i_29 -pg 1 -lvl 24 -x 22970 -y 28608
load inst riscv|mem_aluResult[30]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_3 -pg 1 -lvl 26 -x 26830 -y 12748
load inst riscv|mem_aluResult[30]_i_30 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_30 -pg 1 -lvl 24 -x 22970 -y 28728
load inst riscv|mem_aluResult[30]_i_31 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_31 -pg 1 -lvl 26 -x 26830 -y 14018
load inst riscv|mem_aluResult[30]_i_32 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_32 -pg 1 -lvl 26 -x 26830 -y 14188
load inst riscv|mem_aluResult[30]_i_33 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_33 -pg 1 -lvl 26 -x 26830 -y 14338
load inst riscv|mem_aluResult[30]_i_34 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_34 -pg 1 -lvl 26 -x 26830 -y 14498
load inst riscv|mem_aluResult[30]_i_35 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_35 -pg 1 -lvl 26 -x 26830 -y 14648
load inst riscv|mem_aluResult[30]_i_36 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[30]_i_36 -pg 1 -lvl 26 -x 26830 -y 18458
load inst riscv|mem_aluResult[30]_i_37 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[30]_i_37 -pg 1 -lvl 25 -x 24850 -y 28538
load inst riscv|mem_aluResult[30]_i_38 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[30]_i_38 -pg 1 -lvl 25 -x 24850 -y 28668
load inst riscv|mem_aluResult[30]_i_39 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[30]_i_39 -pg 1 -lvl 25 -x 24850 -y 28848
load inst riscv|mem_aluResult[30]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_4 -pg 1 -lvl 28 -x 30310 -y 18918
load inst riscv|mem_aluResult[30]_i_40 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[30]_i_40 -pg 1 -lvl 25 -x 24850 -y 28978
load inst riscv|mem_aluResult[30]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_5 -pg 1 -lvl 28 -x 30310 -y 19238
load inst riscv|mem_aluResult[30]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_6 -pg 1 -lvl 28 -x 30310 -y 22338
load inst riscv|mem_aluResult[30]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_7 -pg 1 -lvl 28 -x 30310 -y 22818
load inst riscv|mem_aluResult[30]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[30]_i_8 -pg 1 -lvl 27 -x 28840 -y 17578
load inst riscv|mem_aluResult[30]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[30]_i_9 -pg 1 -lvl 27 -x 28840 -y 17868
load inst riscv|mem_aluResult[31]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_1 -pg 1 -lvl 29 -x 31190 -y 22278
load inst riscv|mem_aluResult[31]_i_10 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_10 -pg 1 -lvl 27 -x 28840 -y 19658
load inst riscv|mem_aluResult[31]_i_11 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_11 -pg 1 -lvl 27 -x 28840 -y 19828
load inst riscv|mem_aluResult[31]_i_12 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[31]_i_12 -pg 1 -lvl 27 -x 28840 -y 19998
load inst riscv|mem_aluResult[31]_i_13 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_13 -pg 1 -lvl 27 -x 28840 -y 20108
load inst riscv|mem_aluResult[31]_i_14 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_14 -pg 1 -lvl 27 -x 28840 -y 20288
load inst riscv|mem_aluResult[31]_i_15 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_15 -pg 1 -lvl 27 -x 28840 -y 20458
load inst riscv|mem_aluResult[31]_i_16 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[31]_i_16 -pg 1 -lvl 19 -x 15960 -y 11098
load inst riscv|mem_aluResult[31]_i_17 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_17 -pg 1 -lvl 27 -x 28840 -y 21028
load inst riscv|mem_aluResult[31]_i_18 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_18 -pg 1 -lvl 8 -x 6000 -y 21528
load inst riscv|mem_aluResult[31]_i_19 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_19 -pg 1 -lvl 24 -x 22970 -y 10688
load inst riscv|mem_aluResult[31]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_2 -pg 1 -lvl 28 -x 30310 -y 21358
load inst riscv|mem_aluResult[31]_i_20 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_20 -pg 1 -lvl 24 -x 22970 -y 10858
load inst riscv|mem_aluResult[31]_i_21 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_21 -pg 1 -lvl 24 -x 22970 -y 11028
load inst riscv|mem_aluResult[31]_i_22 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_22 -pg 1 -lvl 26 -x 26830 -y 17848
load inst riscv|mem_aluResult[31]_i_23 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_23 -pg 1 -lvl 26 -x 26830 -y 18018
load inst riscv|mem_aluResult[31]_i_24 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[31]_i_24 -pg 1 -lvl 24 -x 22970 -y 11228
load inst riscv|mem_aluResult[31]_i_3 LUT2 hdi_primitives -hier riscv -attr @cell(#000000) LUT2 -attr @name mem_aluResult[31]_i_3 -pg 1 -lvl 26 -x 26830 -y 12918
load inst riscv|mem_aluResult[31]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_4 -pg 1 -lvl 28 -x 30310 -y 21538
load inst riscv|mem_aluResult[31]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_5 -pg 1 -lvl 28 -x 30310 -y 21718
load inst riscv|mem_aluResult[31]_i_6 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[31]_i_6 -pg 1 -lvl 28 -x 30310 -y 21888
load inst riscv|mem_aluResult[31]_i_7 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[31]_i_7 -pg 1 -lvl 28 -x 30310 -y 22028
load inst riscv|mem_aluResult[31]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[31]_i_8 -pg 1 -lvl 27 -x 28840 -y 19338
load inst riscv|mem_aluResult[31]_i_9 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[31]_i_9 -pg 1 -lvl 27 -x 28840 -y 19538
load inst riscv|mem_aluResult[3]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[3]_i_1 -pg 1 -lvl 28 -x 30310 -y 12778
load inst riscv|mem_aluResult[3]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[3]_i_2 -pg 1 -lvl 27 -x 28840 -y 12538
load inst riscv|mem_aluResult[3]_i_3 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[3]_i_3 -pg 1 -lvl 27 -x 28840 -y 12708
load inst riscv|mem_aluResult[3]_i_4 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[3]_i_4 -pg 1 -lvl 27 -x 28840 -y 12838
load inst riscv|mem_aluResult[3]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[3]_i_5 -pg 1 -lvl 26 -x 26830 -y 8438
load inst riscv|mem_aluResult[3]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[3]_i_6 -pg 1 -lvl 26 -x 26830 -y 9238
load inst riscv|mem_aluResult[3]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[3]_i_7 -pg 1 -lvl 25 -x 24850 -y 9058
load inst riscv|mem_aluResult[3]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[3]_i_8 -pg 1 -lvl 25 -x 24850 -y 9218
load inst riscv|mem_aluResult[4]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[4]_i_1 -pg 1 -lvl 27 -x 28840 -y 7788
load inst riscv|mem_aluResult[4]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[4]_i_2 -pg 1 -lvl 27 -x 28840 -y 9058
load inst riscv|mem_aluResult[4]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[4]_i_3 -pg 1 -lvl 26 -x 26830 -y 7828
load inst riscv|mem_aluResult[4]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[4]_i_4 -pg 1 -lvl 26 -x 26830 -y 7998
load inst riscv|mem_aluResult[4]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[4]_i_5 -pg 1 -lvl 26 -x 26830 -y 13018
load inst riscv|mem_aluResult[4]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[4]_i_6 -pg 1 -lvl 25 -x 24850 -y 7958
load inst riscv|mem_aluResult[4]_i_7 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[4]_i_7 -pg 1 -lvl 25 -x 24850 -y 8138
load inst riscv|mem_aluResult[5]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_1 -pg 1 -lvl 27 -x 28840 -y 6518
load inst riscv|mem_aluResult[5]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_2 -pg 1 -lvl 26 -x 26830 -y 5788
load inst riscv|mem_aluResult[5]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_3 -pg 1 -lvl 26 -x 26830 -y 6128
load inst riscv|mem_aluResult[5]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[5]_i_4 -pg 1 -lvl 26 -x 26830 -y 6298
load inst riscv|mem_aluResult[5]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_5 -pg 1 -lvl 25 -x 24850 -y 3478
load inst riscv|mem_aluResult[5]_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[5]_i_6 -pg 1 -lvl 23 -x 21170 -y 10558
load inst riscv|mem_aluResult[5]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_7 -pg 1 -lvl 25 -x 24850 -y 6258
load inst riscv|mem_aluResult[5]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[5]_i_8 -pg 1 -lvl 25 -x 24850 -y 6438
load inst riscv|mem_aluResult[6]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_1 -pg 1 -lvl 27 -x 28840 -y 6688
load inst riscv|mem_aluResult[6]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_2 -pg 1 -lvl 26 -x 26830 -y 5618
load inst riscv|mem_aluResult[6]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_3 -pg 1 -lvl 26 -x 26830 -y 5958
load inst riscv|mem_aluResult[6]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[6]_i_4 -pg 1 -lvl 26 -x 26830 -y 6748
load inst riscv|mem_aluResult[6]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_5 -pg 1 -lvl 25 -x 24850 -y 3648
load inst riscv|mem_aluResult[6]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_6 -pg 1 -lvl 25 -x 24850 -y 4958
load inst riscv|mem_aluResult[6]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[6]_i_7 -pg 1 -lvl 25 -x 24850 -y 6608
load inst riscv|mem_aluResult[7]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_1 -pg 1 -lvl 27 -x 28840 -y 7078
load inst riscv|mem_aluResult[7]_i_10 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[7]_i_10 -pg 1 -lvl 24 -x 22970 -y 6838
load inst riscv|mem_aluResult[7]_i_11 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[7]_i_11 -pg 1 -lvl 16 -x 11660 -y 19798
load inst riscv|mem_aluResult[7]_i_12 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[7]_i_12 -pg 1 -lvl 16 -x 11660 -y 19978
load inst riscv|mem_aluResult[7]_i_13 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[7]_i_13 -pg 1 -lvl 16 -x 11660 -y 20448
load inst riscv|mem_aluResult[7]_i_14 LUT4 hdi_primitives -hier riscv -attr @cell(#000000) LUT4 -attr @name mem_aluResult[7]_i_14 -pg 1 -lvl 16 -x 11660 -y 20588
load inst riscv|mem_aluResult[7]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_2 -pg 1 -lvl 26 -x 26830 -y 6898
load inst riscv|mem_aluResult[7]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_3 -pg 1 -lvl 26 -x 26830 -y 7118
load inst riscv|mem_aluResult[7]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[7]_i_4 -pg 1 -lvl 26 -x 26830 -y 7288
load inst riscv|mem_aluResult[7]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_5 -pg 1 -lvl 25 -x 24850 -y 3818
load inst riscv|mem_aluResult[7]_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[7]_i_6 -pg 1 -lvl 23 -x 21170 -y 13238
load inst riscv|mem_aluResult[7]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_7 -pg 1 -lvl 25 -x 24850 -y 5128
load inst riscv|mem_aluResult[7]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[7]_i_8 -pg 1 -lvl 25 -x 24850 -y 6778
load inst riscv|mem_aluResult[8]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_1 -pg 1 -lvl 20 -x 17570 -y 14338
load inst riscv|mem_aluResult[8]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_2 -pg 1 -lvl 26 -x 26830 -y 8148
load inst riscv|mem_aluResult[8]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_3 -pg 1 -lvl 19 -x 15960 -y 14218
load inst riscv|mem_aluResult[8]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[8]_i_4 -pg 1 -lvl 19 -x 15960 -y 14718
load inst riscv|mem_aluResult[8]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_5 -pg 1 -lvl 25 -x 24850 -y 5508
load inst riscv|mem_aluResult[8]_i_6 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_6 -pg 1 -lvl 18 -x 14620 -y 15398
load inst riscv|mem_aluResult[8]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[8]_i_7 -pg 1 -lvl 25 -x 24850 -y 7238
load inst riscv|mem_aluResult[8]_i_8 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[8]_i_8 -pg 1 -lvl 24 -x 22970 -y 7298
load inst riscv|mem_aluResult[9]_i_1 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_1 -pg 1 -lvl 19 -x 15960 -y 11708
load inst riscv|mem_aluResult[9]_i_2 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_2 -pg 1 -lvl 19 -x 15960 -y 11928
load inst riscv|mem_aluResult[9]_i_3 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_3 -pg 1 -lvl 18 -x 14620 -y 14178
load inst riscv|mem_aluResult[9]_i_4 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[9]_i_4 -pg 1 -lvl 18 -x 14620 -y 14588
load inst riscv|mem_aluResult[9]_i_5 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_5 -pg 1 -lvl 25 -x 24850 -y 5328
load inst riscv|mem_aluResult[9]_i_6 LUT3 hdi_primitives -hier riscv -attr @cell(#000000) LUT3 -attr @name mem_aluResult[9]_i_6 -pg 1 -lvl 17 -x 13140 -y 14018
load inst riscv|mem_aluResult[9]_i_7 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_7 -pg 1 -lvl 17 -x 13140 -y 14128
load inst riscv|mem_aluResult[9]_i_8 LUT6 hdi_primitives -hier riscv -attr @cell(#000000) LUT6 -attr @name mem_aluResult[9]_i_8 -pg 1 -lvl 17 -x 13140 -y 14308
load inst riscv|mem_aluResult[9]_i_9 LUT5 hdi_primitives -hier riscv -attr @cell(#000000) LUT5 -attr @name mem_aluResult[9]_i_9 -pg 1 -lvl 16 -x 11660 -y 14248
load inst riscv|mem_aluResult_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[0] -pg 1 -lvl 31 -x 32130 -y 19208
load inst riscv|mem_aluResult_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[10] -pg 1 -lvl 18 -x 14620 -y 23238
load inst riscv|mem_aluResult_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[11] -pg 1 -lvl 18 -x 14620 -y 23388
load inst riscv|mem_aluResult_reg[11]_i_14 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[11]_i_14 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 18 -x 14620 -y 17018
load inst riscv|mem_aluResult_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[12] -pg 1 -lvl 23 -x 21170 -y 24758
load inst riscv|mem_aluResult_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[13] -pg 1 -lvl 21 -x 18810 -y 21918
load inst riscv|mem_aluResult_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[14] -pg 1 -lvl 12 -x 8440 -y 23988
load inst riscv|mem_aluResult_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[15] -pg 1 -lvl 12 -x 8440 -y 24838
load inst riscv|mem_aluResult_reg[15]_i_11 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[15]_i_11 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 19 -x 15960 -y 17098
load inst riscv|mem_aluResult_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[16] -pg 1 -lvl 21 -x 18810 -y 24958
load inst riscv|mem_aluResult_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[17] -pg 1 -lvl 23 -x 21170 -y 29428
load inst riscv|mem_aluResult_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[18] -pg 1 -lvl 23 -x 21170 -y 29628
load inst riscv|mem_aluResult_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[19] -pg 1 -lvl 18 -x 14620 -y 24198
load inst riscv|mem_aluResult_reg[19]_i_13 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[19]_i_13 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 15 -x 10380 -y 17038
load inst riscv|mem_aluResult_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[1] -pg 1 -lvl 23 -x 21170 -y 9488
load inst riscv|mem_aluResult_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[20] -pg 1 -lvl 23 -x 21170 -y 29778
load inst riscv|mem_aluResult_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[21] -pg 1 -lvl 21 -x 18810 -y 26338
load inst riscv|mem_aluResult_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[22] -pg 1 -lvl 4 -x 5060 -y 26238
load inst riscv|mem_aluResult_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[23] -pg 1 -lvl 12 -x 8440 -y 25018
load inst riscv|mem_aluResult_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[24] -pg 1 -lvl 21 -x 18810 -y 27378
load inst riscv|mem_aluResult_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[25] -pg 1 -lvl 12 -x 8440 -y 25238
load inst riscv|mem_aluResult_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[26] -pg 1 -lvl 20 -x 17570 -y 23258
load inst riscv|mem_aluResult_reg[26]_i_13 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[26]_i_13 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 16 -x 11660 -y 18248
load inst riscv|mem_aluResult_reg[26]_i_9 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[26]_i_9 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 13140 -y 18288
load inst riscv|mem_aluResult_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[27] -pg 1 -lvl 20 -x 17570 -y 23408
load inst riscv|mem_aluResult_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[28] -pg 1 -lvl 22 -x 19770 -y 27788
load inst riscv|mem_aluResult_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[29] -pg 1 -lvl 20 -x 17570 -y 24008
load inst riscv|mem_aluResult_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[2] -pg 1 -lvl 23 -x 21170 -y 9638
load inst riscv|mem_aluResult_reg[2]_i_12 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[2]_i_12 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 25 -x 24850 -y 8618
load inst riscv|mem_aluResult_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[30] -pg 1 -lvl 18 -x 14620 -y 24578
load inst riscv|mem_aluResult_reg[30]_i_22 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[30]_i_22 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 26 -x 26830 -y 31848
load inst riscv|mem_aluResult_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[31] -pg 1 -lvl 21 -x 18810 -y 28128
load inst riscv|mem_aluResult_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[3] -pg 1 -lvl 20 -x 17570 -y 21038
load inst riscv|mem_aluResult_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[4] -pg 1 -lvl 22 -x 19770 -y 10098
load inst riscv|mem_aluResult_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[5] -pg 1 -lvl 23 -x 21170 -y 9788
load inst riscv|mem_aluResult_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[6] -pg 1 -lvl 22 -x 19770 -y 10248
load inst riscv|mem_aluResult_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[7] -pg 1 -lvl 10 -x 7600 -y 26228
load inst riscv|mem_aluResult_reg[7]_i_9 CARRY4 hdi_primitives -hier riscv -attr @cell(#000000) CARRY4 -attr @name mem_aluResult_reg[7]_i_9 -pinBusAttr CO @name CO[3:0] -pinBusAttr O @name O[3:0] -pinBusAttr DI @name DI[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 13140 -y 17418
load inst riscv|mem_aluResult_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[8] -pg 1 -lvl 21 -x 18810 -y 17408
load inst riscv|mem_aluResult_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_aluResult_reg[9] -pg 1 -lvl 20 -x 17570 -y 21258
load inst riscv|mem_branchAddress_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[0] -pg 1 -lvl 32 -x 32620 -y 16378
load inst riscv|mem_branchAddress_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[10] -pg 1 -lvl 26 -x 26830 -y 15558
load inst riscv|mem_branchAddress_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[11] -pg 1 -lvl 26 -x 26830 -y 15778
load inst riscv|mem_branchAddress_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[12] -pg 1 -lvl 26 -x 26830 -y 15928
load inst riscv|mem_branchAddress_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[13] -pg 1 -lvl 27 -x 28840 -y 15328
load inst riscv|mem_branchAddress_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[14] -pg 1 -lvl 27 -x 28840 -y 15478
load inst riscv|mem_branchAddress_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[15] -pg 1 -lvl 27 -x 28840 -y 15628
load inst riscv|mem_branchAddress_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[16] -pg 1 -lvl 27 -x 28840 -y 15778
load inst riscv|mem_branchAddress_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[17] -pg 1 -lvl 28 -x 30310 -y 14778
load inst riscv|mem_branchAddress_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[18] -pg 1 -lvl 28 -x 30310 -y 14928
load inst riscv|mem_branchAddress_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[19] -pg 1 -lvl 28 -x 30310 -y 15078
load inst riscv|mem_branchAddress_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[1] -pg 1 -lvl 24 -x 22970 -y 3068
load inst riscv|mem_branchAddress_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[20] -pg 1 -lvl 28 -x 30310 -y 15228
load inst riscv|mem_branchAddress_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[21] -pg 1 -lvl 29 -x 31190 -y 16208
load inst riscv|mem_branchAddress_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[22] -pg 1 -lvl 29 -x 31190 -y 16358
load inst riscv|mem_branchAddress_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[23] -pg 1 -lvl 29 -x 31190 -y 16508
load inst riscv|mem_branchAddress_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[24] -pg 1 -lvl 29 -x 31190 -y 16658
load inst riscv|mem_branchAddress_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[25] -pg 1 -lvl 30 -x 31750 -y 16608
load inst riscv|mem_branchAddress_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[26] -pg 1 -lvl 30 -x 31750 -y 16788
load inst riscv|mem_branchAddress_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[27] -pg 1 -lvl 30 -x 31750 -y 16938
load inst riscv|mem_branchAddress_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[28] -pg 1 -lvl 30 -x 31750 -y 17088
load inst riscv|mem_branchAddress_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[29] -pg 1 -lvl 31 -x 32130 -y 22338
load inst riscv|mem_branchAddress_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[2] -pg 1 -lvl 24 -x 22970 -y 3218
load inst riscv|mem_branchAddress_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[30] -pg 1 -lvl 31 -x 32130 -y 22488
load inst riscv|mem_branchAddress_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[31] -pg 1 -lvl 31 -x 32130 -y 22638
load inst riscv|mem_branchAddress_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[3] -pg 1 -lvl 24 -x 22970 -y 3398
load inst riscv|mem_branchAddress_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[4] -pg 1 -lvl 24 -x 22970 -y 3558
load inst riscv|mem_branchAddress_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[5] -pg 1 -lvl 25 -x 24850 -y 2368
load inst riscv|mem_branchAddress_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[6] -pg 1 -lvl 25 -x 24850 -y 2518
load inst riscv|mem_branchAddress_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[7] -pg 1 -lvl 25 -x 24850 -y 2668
load inst riscv|mem_branchAddress_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[8] -pg 1 -lvl 25 -x 24850 -y 11618
load inst riscv|mem_branchAddress_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_branchAddress_reg[9] -pg 1 -lvl 26 -x 26830 -y 15408
load inst riscv|mem_instruction_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[10] -pg 1 -lvl 24 -x 22970 -y 2768
load inst riscv|mem_instruction_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[11] -pg 1 -lvl 24 -x 22970 -y 2918
load inst riscv|mem_instruction_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[12] -pg 1 -lvl 31 -x 32130 -y 23088
load inst riscv|mem_instruction_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[13] -pg 1 -lvl 31 -x 32130 -y 23238
load inst riscv|mem_instruction_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[14] -pg 1 -lvl 31 -x 32130 -y 23388
load inst riscv|mem_instruction_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[7] -pg 1 -lvl 24 -x 22970 -y 2318
load inst riscv|mem_instruction_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[8] -pg 1 -lvl 24 -x 22970 -y 2468
load inst riscv|mem_instruction_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name mem_instruction_reg[9] -pg 1 -lvl 24 -x 22970 -y 2618
load inst riscv|wb_MemToReg_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_MemToReg_reg[0] -pg 1 -lvl 23 -x 21170 -y 28358
load inst riscv|wb_RegWrite_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_RegWrite_reg[0] -pg 1 -lvl 25 -x 24850 -y 30488
load inst riscv|wb_aluResult_reg[0] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[0] -pg 1 -lvl 23 -x 21170 -y 9938
load inst riscv|wb_aluResult_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[10] -pg 1 -lvl 19 -x 15960 -y 23228
load inst riscv|wb_aluResult_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[11] -pg 1 -lvl 19 -x 15960 -y 23378
load inst riscv|wb_aluResult_reg[12] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[12] -pg 1 -lvl 24 -x 22970 -y 26778
load inst riscv|wb_aluResult_reg[13] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[13] -pg 1 -lvl 22 -x 19770 -y 23998
load inst riscv|wb_aluResult_reg[14] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[14] -pg 1 -lvl 13 -x 8770 -y 23978
load inst riscv|wb_aluResult_reg[15] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[15] -pg 1 -lvl 13 -x 8770 -y 24828
load inst riscv|wb_aluResult_reg[16] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[16] -pg 1 -lvl 22 -x 19770 -y 27038
load inst riscv|wb_aluResult_reg[17] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[17] -pg 1 -lvl 24 -x 22970 -y 30598
load inst riscv|wb_aluResult_reg[18] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[18] -pg 1 -lvl 24 -x 22970 -y 32398
load inst riscv|wb_aluResult_reg[19] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[19] -pg 1 -lvl 19 -x 15960 -y 24188
load inst riscv|wb_aluResult_reg[1] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[1] -pg 1 -lvl 24 -x 22970 -y 17848
load inst riscv|wb_aluResult_reg[20] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[20] -pg 1 -lvl 24 -x 22970 -y 32578
load inst riscv|wb_aluResult_reg[21] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[21] -pg 1 -lvl 22 -x 19770 -y 27218
load inst riscv|wb_aluResult_reg[22] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[22] -pg 1 -lvl 5 -x 5290 -y 26228
load inst riscv|wb_aluResult_reg[23] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[23] -pg 1 -lvl 13 -x 8770 -y 25008
load inst riscv|wb_aluResult_reg[24] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[24] -pg 1 -lvl 22 -x 19770 -y 27368
load inst riscv|wb_aluResult_reg[25] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[25] -pg 1 -lvl 13 -x 8770 -y 26438
load inst riscv|wb_aluResult_reg[26] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[26] -pg 1 -lvl 21 -x 18810 -y 23248
load inst riscv|wb_aluResult_reg[27] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[27] -pg 1 -lvl 21 -x 18810 -y 23398
load inst riscv|wb_aluResult_reg[28] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[28] -pg 1 -lvl 23 -x 21170 -y 27968
load inst riscv|wb_aluResult_reg[29] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[29] -pg 1 -lvl 21 -x 18810 -y 23998
load inst riscv|wb_aluResult_reg[2] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[2] -pg 1 -lvl 24 -x 22970 -y 18398
load inst riscv|wb_aluResult_reg[30] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[30] -pg 1 -lvl 19 -x 15960 -y 24758
load inst riscv|wb_aluResult_reg[31] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[31] -pg 1 -lvl 22 -x 19770 -y 28918
load inst riscv|wb_aluResult_reg[3] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[3] -pg 1 -lvl 21 -x 18810 -y 21058
load inst riscv|wb_aluResult_reg[4] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[4] -pg 1 -lvl 23 -x 21170 -y 10088
load inst riscv|wb_aluResult_reg[5] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[5] -pg 1 -lvl 24 -x 22970 -y 18798
load inst riscv|wb_aluResult_reg[6] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[6] -pg 1 -lvl 23 -x 21170 -y 10238
load inst riscv|wb_aluResult_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[7] -pg 1 -lvl 11 -x 8060 -y 26218
load inst riscv|wb_aluResult_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[8] -pg 1 -lvl 22 -x 19770 -y 17398
load inst riscv|wb_aluResult_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_aluResult_reg[9] -pg 1 -lvl 21 -x 18810 -y 21258
load inst riscv|wb_instruction_reg[10] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_instruction_reg[10] -pg 1 -lvl 25 -x 24850 -y 2208
load inst riscv|wb_instruction_reg[11] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_instruction_reg[11] -pg 1 -lvl 25 -x 24850 -y 2828
load inst riscv|wb_instruction_reg[7] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_instruction_reg[7] -pg 1 -lvl 25 -x 24850 -y 1748
load inst riscv|wb_instruction_reg[8] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_instruction_reg[8] -pg 1 -lvl 25 -x 24850 -y 1908
load inst riscv|wb_instruction_reg[9] FDRE hdi_primitives -hier riscv -attr @cell(#000000) FDRE -attr @name wb_instruction_reg[9] -pg 1 -lvl 25 -x 24850 -y 2058
load net <const0> -ground -pin dReadData_reg[0]_i_1 CI -pin dReadData_reg[0]_i_1 CYINIT -pin dReadData_reg[0]_i_1 DI[3] -pin dReadData_reg[0]_i_1 DI[2] -pin dReadData_reg[0]_i_1 DI[1] -pin dReadData_reg[12]_i_1 CYINIT -pin dReadData_reg[12]_i_1 DI[3] -pin dReadData_reg[12]_i_1 DI[2] -pin dReadData_reg[12]_i_1 DI[1] -pin dReadData_reg[12]_i_1 DI[0] -pin dReadData_reg[16]_i_1 CYINIT -pin dReadData_reg[16]_i_1 DI[3] -pin dReadData_reg[16]_i_1 DI[2] -pin dReadData_reg[16]_i_1 DI[1] -pin dReadData_reg[16]_i_1 DI[0] -pin dReadData_reg[20]_i_1 CYINIT -pin dReadData_reg[20]_i_1 DI[3] -pin dReadData_reg[20]_i_1 DI[2] -pin dReadData_reg[20]_i_1 DI[1] -pin dReadData_reg[20]_i_1 DI[0] -pin dReadData_reg[24]_i_1 CYINIT -pin dReadData_reg[24]_i_1 DI[3] -pin dReadData_reg[24]_i_1 DI[2] -pin dReadData_reg[24]_i_1 DI[1] -pin dReadData_reg[24]_i_1 DI[0] -pin dReadData_reg[28]_i_1 CYINIT -pin dReadData_reg[28]_i_1 DI[3] -pin dReadData_reg[28]_i_1 DI[2] -pin dReadData_reg[28]_i_1 DI[1] -pin dReadData_reg[28]_i_1 DI[0] -pin dReadData_reg[4]_i_1 CYINIT -pin dReadData_reg[4]_i_1 DI[3] -pin dReadData_reg[4]_i_1 DI[2] -pin dReadData_reg[4]_i_1 DI[1] -pin dReadData_reg[4]_i_1 DI[0] -pin dReadData_reg[8]_i_1 CYINIT -pin dReadData_reg[8]_i_1 DI[3] -pin dReadData_reg[8]_i_1 DI[2] -pin dReadData_reg[8]_i_1 DI[1] -pin dReadData_reg[8]_i_1 DI[0]
load net <const1> -power -attr @rip(#000000) 0 -pin dReadData_reg[0] CE -pin dReadData_reg[0]_i_1 DI[0] -pin dReadData_reg[10] CE -pin dReadData_reg[11] CE -pin dReadData_reg[12] CE -pin dReadData_reg[13] CE -pin dReadData_reg[14] CE -pin dReadData_reg[15] CE -pin dReadData_reg[16] CE -pin dReadData_reg[17] CE -pin dReadData_reg[18] CE -pin dReadData_reg[19] CE -pin dReadData_reg[1] CE -pin dReadData_reg[20] CE -pin dReadData_reg[21] CE -pin dReadData_reg[22] CE -pin dReadData_reg[23] CE -pin dReadData_reg[24] CE -pin dReadData_reg[25] CE -pin dReadData_reg[26] CE -pin dReadData_reg[27] CE -pin dReadData_reg[28] CE -pin dReadData_reg[29] CE -pin dReadData_reg[2] CE -pin dReadData_reg[30] CE -pin dReadData_reg[31] CE -pin dReadData_reg[3] CE -pin dReadData_reg[4] CE -pin dReadData_reg[5] CE -pin dReadData_reg[6] CE -pin dReadData_reg[7] CE -pin dReadData_reg[8] CE -pin dReadData_reg[9] CE
load net PC[0] -attr @rip(#000000) 0 -port PC[0] -pin PC_OBUF[0]_inst O
load net PC[10] -attr @rip(#000000) 10 -port PC[10] -pin PC_OBUF[10]_inst O
load net PC[11] -attr @rip(#000000) 11 -port PC[11] -pin PC_OBUF[11]_inst O
load net PC[12] -attr @rip(#000000) 12 -port PC[12] -pin PC_OBUF[12]_inst O
load net PC[13] -attr @rip(#000000) 13 -port PC[13] -pin PC_OBUF[13]_inst O
load net PC[14] -attr @rip(#000000) 14 -port PC[14] -pin PC_OBUF[14]_inst O
load net PC[15] -attr @rip(#000000) 15 -port PC[15] -pin PC_OBUF[15]_inst O
load net PC[16] -attr @rip(#000000) 16 -port PC[16] -pin PC_OBUF[16]_inst O
load net PC[17] -attr @rip(#000000) 17 -port PC[17] -pin PC_OBUF[17]_inst O
load net PC[18] -attr @rip(#000000) 18 -port PC[18] -pin PC_OBUF[18]_inst O
load net PC[19] -attr @rip(#000000) 19 -port PC[19] -pin PC_OBUF[19]_inst O
load net PC[1] -attr @rip(#000000) 1 -port PC[1] -pin PC_OBUF[1]_inst O
load net PC[20] -attr @rip(#000000) 20 -port PC[20] -pin PC_OBUF[20]_inst O
load net PC[21] -attr @rip(#000000) 21 -port PC[21] -pin PC_OBUF[21]_inst O
load net PC[22] -attr @rip(#000000) 22 -port PC[22] -pin PC_OBUF[22]_inst O
load net PC[23] -attr @rip(#000000) 23 -port PC[23] -pin PC_OBUF[23]_inst O
load net PC[24] -attr @rip(#000000) 24 -port PC[24] -pin PC_OBUF[24]_inst O
load net PC[25] -attr @rip(#000000) 25 -port PC[25] -pin PC_OBUF[25]_inst O
load net PC[26] -attr @rip(#000000) 26 -port PC[26] -pin PC_OBUF[26]_inst O
load net PC[27] -attr @rip(#000000) 27 -port PC[27] -pin PC_OBUF[27]_inst O
load net PC[28] -attr @rip(#000000) 28 -port PC[28] -pin PC_OBUF[28]_inst O
load net PC[29] -attr @rip(#000000) 29 -port PC[29] -pin PC_OBUF[29]_inst O
load net PC[2] -attr @rip(#000000) 2 -port PC[2] -pin PC_OBUF[2]_inst O
load net PC[30] -attr @rip(#000000) 30 -port PC[30] -pin PC_OBUF[30]_inst O
load net PC[31] -attr @rip(#000000) 31 -port PC[31] -pin PC_OBUF[31]_inst O
load net PC[3] -attr @rip(#000000) 3 -port PC[3] -pin PC_OBUF[3]_inst O
load net PC[4] -attr @rip(#000000) 4 -port PC[4] -pin PC_OBUF[4]_inst O
load net PC[5] -attr @rip(#000000) 5 -port PC[5] -pin PC_OBUF[5]_inst O
load net PC[6] -attr @rip(#000000) 6 -port PC[6] -pin PC_OBUF[6]_inst O
load net PC[7] -attr @rip(#000000) 7 -port PC[7] -pin PC_OBUF[7]_inst O
load net PC[8] -attr @rip(#000000) 8 -port PC[8] -pin PC_OBUF[8]_inst O
load net PC[9] -attr @rip(#000000) 9 -port PC[9] -pin PC_OBUF[9]_inst O
load net PC_OBUF[0] -attr @rip(#000000) D[0] -pin PC_OBUF[0]_inst I -pin riscv D[0]
load net PC_OBUF[10] -attr @rip(#000000) D[10] -pin PC_OBUF[10]_inst I -pin riscv D[10]
load net PC_OBUF[11] -attr @rip(#000000) D[11] -pin PC_OBUF[11]_inst I -pin riscv D[11]
load net PC_OBUF[12] -attr @rip(#000000) D[12] -pin PC_OBUF[12]_inst I -pin riscv D[12]
load net PC_OBUF[13] -attr @rip(#000000) D[13] -pin PC_OBUF[13]_inst I -pin riscv D[13]
load net PC_OBUF[14] -attr @rip(#000000) D[14] -pin PC_OBUF[14]_inst I -pin riscv D[14]
load net PC_OBUF[15] -attr @rip(#000000) D[15] -pin PC_OBUF[15]_inst I -pin riscv D[15]
load net PC_OBUF[16] -attr @rip(#000000) D[16] -pin PC_OBUF[16]_inst I -pin riscv D[16]
load net PC_OBUF[17] -attr @rip(#000000) D[17] -pin PC_OBUF[17]_inst I -pin riscv D[17]
load net PC_OBUF[18] -attr @rip(#000000) D[18] -pin PC_OBUF[18]_inst I -pin riscv D[18]
load net PC_OBUF[19] -attr @rip(#000000) D[19] -pin PC_OBUF[19]_inst I -pin riscv D[19]
load net PC_OBUF[1] -attr @rip(#000000) D[1] -pin PC_OBUF[1]_inst I -pin riscv D[1]
load net PC_OBUF[20] -attr @rip(#000000) D[20] -pin PC_OBUF[20]_inst I -pin riscv D[20]
load net PC_OBUF[21] -attr @rip(#000000) D[21] -pin PC_OBUF[21]_inst I -pin riscv D[21]
load net PC_OBUF[22] -attr @rip(#000000) D[22] -pin PC_OBUF[22]_inst I -pin riscv D[22]
load net PC_OBUF[23] -attr @rip(#000000) D[23] -pin PC_OBUF[23]_inst I -pin riscv D[23]
load net PC_OBUF[24] -attr @rip(#000000) D[24] -pin PC_OBUF[24]_inst I -pin riscv D[24]
load net PC_OBUF[25] -attr @rip(#000000) D[25] -pin PC_OBUF[25]_inst I -pin riscv D[25]
load net PC_OBUF[26] -attr @rip(#000000) D[26] -pin PC_OBUF[26]_inst I -pin riscv D[26]
load net PC_OBUF[27] -attr @rip(#000000) D[27] -pin PC_OBUF[27]_inst I -pin riscv D[27]
load net PC_OBUF[28] -attr @rip(#000000) D[28] -pin PC_OBUF[28]_inst I -pin riscv D[28]
load net PC_OBUF[29] -attr @rip(#000000) D[29] -pin PC_OBUF[29]_inst I -pin riscv D[29]
load net PC_OBUF[2] -attr @rip(#000000) D[2] -pin PC_OBUF[2]_inst I -pin riscv D[2]
load net PC_OBUF[30] -attr @rip(#000000) D[30] -pin PC_OBUF[30]_inst I -pin riscv D[30]
load net PC_OBUF[31] -attr @rip(#000000) D[31] -pin PC_OBUF[31]_inst I -pin riscv D[31]
load net PC_OBUF[3] -attr @rip(#000000) D[3] -pin PC_OBUF[3]_inst I -pin riscv D[3]
load net PC_OBUF[4] -attr @rip(#000000) D[4] -pin PC_OBUF[4]_inst I -pin riscv D[4]
load net PC_OBUF[5] -attr @rip(#000000) D[5] -pin PC_OBUF[5]_inst I -pin riscv D[5]
load net PC_OBUF[6] -attr @rip(#000000) D[6] -pin PC_OBUF[6]_inst I -pin riscv D[6]
load net PC_OBUF[7] -attr @rip(#000000) D[7] -pin PC_OBUF[7]_inst I -pin riscv D[7]
load net PC_OBUF[8] -attr @rip(#000000) D[8] -pin PC_OBUF[8]_inst I -pin riscv D[8]
load net PC_OBUF[9] -attr @rip(#000000) D[9] -pin PC_OBUF[9]_inst I -pin riscv D[9]
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 940
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 940
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin dReadData_reg[0] C -pin dReadData_reg[10] C -pin dReadData_reg[11] C -pin dReadData_reg[12] C -pin dReadData_reg[13] C -pin dReadData_reg[14] C -pin dReadData_reg[15] C -pin dReadData_reg[16] C -pin dReadData_reg[17] C -pin dReadData_reg[18] C -pin dReadData_reg[19] C -pin dReadData_reg[1] C -pin dReadData_reg[20] C -pin dReadData_reg[21] C -pin dReadData_reg[22] C -pin dReadData_reg[23] C -pin dReadData_reg[24] C -pin dReadData_reg[25] C -pin dReadData_reg[26] C -pin dReadData_reg[27] C -pin dReadData_reg[28] C -pin dReadData_reg[29] C -pin dReadData_reg[2] C -pin dReadData_reg[30] C -pin dReadData_reg[31] C -pin dReadData_reg[3] C -pin dReadData_reg[4] C -pin dReadData_reg[5] C -pin dReadData_reg[6] C -pin dReadData_reg[7] C -pin dReadData_reg[8] C -pin dReadData_reg[9] C -pin riscv clk_IBUF_BUFG
netloc clk_IBUF_BUFG 1 2 12 370 940 630 660 850 660 1210 660 1550 450 1870 300 2240 650 2610 1050 NJ 1050 NJ 1050 3440 740 3900
load net dReadData[0]_i_2_n_0 -attr @rip(#000000) 0 -pin dReadData[0]_i_2 O -pin dReadData_reg[0]_i_1 S[0]
load net dReadData_reg[0]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[0]_i_1 CO[3] -pin dReadData_reg[4]_i_1 CI
load net dReadData_reg[0]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[0]_i_1 CO[2]
load net dReadData_reg[0]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[0]_i_1 CO[1]
load net dReadData_reg[0]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[0]_i_1 CO[0]
load net dReadData_reg[0]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[0]_i_1 O[3] -pin dReadData_reg[3] D
load net dReadData_reg[0]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[0]_i_1 O[2] -pin dReadData_reg[2] D
load net dReadData_reg[0]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[0]_i_1 O[1] -pin dReadData_reg[1] D
load net dReadData_reg[0]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[0] D -pin dReadData_reg[0]_i_1 O[0]
load net dReadData_reg[12]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[12]_i_1 CO[3] -pin dReadData_reg[16]_i_1 CI
load net dReadData_reg[12]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[12]_i_1 CO[2]
load net dReadData_reg[12]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[12]_i_1 CO[1]
load net dReadData_reg[12]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[12]_i_1 CO[0]
load net dReadData_reg[12]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[12]_i_1 O[3] -pin dReadData_reg[15] D
load net dReadData_reg[12]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[12]_i_1 O[2] -pin dReadData_reg[14] D
load net dReadData_reg[12]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[12]_i_1 O[1] -pin dReadData_reg[13] D
load net dReadData_reg[12]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[12] D -pin dReadData_reg[12]_i_1 O[0]
load net dReadData_reg[16]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[16]_i_1 CO[3] -pin dReadData_reg[20]_i_1 CI
load net dReadData_reg[16]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[16]_i_1 CO[2]
load net dReadData_reg[16]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[16]_i_1 CO[1]
load net dReadData_reg[16]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[16]_i_1 CO[0]
load net dReadData_reg[16]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[16]_i_1 O[3] -pin dReadData_reg[19] D
load net dReadData_reg[16]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[16]_i_1 O[2] -pin dReadData_reg[18] D
load net dReadData_reg[16]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[16]_i_1 O[1] -pin dReadData_reg[17] D
load net dReadData_reg[16]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[16] D -pin dReadData_reg[16]_i_1 O[0]
load net dReadData_reg[20]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[20]_i_1 CO[3] -pin dReadData_reg[24]_i_1 CI
load net dReadData_reg[20]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[20]_i_1 CO[2]
load net dReadData_reg[20]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[20]_i_1 CO[1]
load net dReadData_reg[20]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[20]_i_1 CO[0]
load net dReadData_reg[20]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[20]_i_1 O[3] -pin dReadData_reg[23] D
load net dReadData_reg[20]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[20]_i_1 O[2] -pin dReadData_reg[22] D
load net dReadData_reg[20]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[20]_i_1 O[1] -pin dReadData_reg[21] D
load net dReadData_reg[20]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[20] D -pin dReadData_reg[20]_i_1 O[0]
load net dReadData_reg[24]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[24]_i_1 CO[3] -pin dReadData_reg[28]_i_1 CI
load net dReadData_reg[24]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[24]_i_1 CO[2]
load net dReadData_reg[24]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[24]_i_1 CO[1]
load net dReadData_reg[24]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[24]_i_1 CO[0]
load net dReadData_reg[24]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[24]_i_1 O[3] -pin dReadData_reg[27] D
load net dReadData_reg[24]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[24]_i_1 O[2] -pin dReadData_reg[26] D
load net dReadData_reg[24]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[24]_i_1 O[1] -pin dReadData_reg[25] D
load net dReadData_reg[24]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[24] D -pin dReadData_reg[24]_i_1 O[0]
load net dReadData_reg[28]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[28]_i_1 CO[2]
load net dReadData_reg[28]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[28]_i_1 CO[1]
load net dReadData_reg[28]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[28]_i_1 CO[0]
load net dReadData_reg[28]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[28]_i_1 O[3] -pin dReadData_reg[31] D
load net dReadData_reg[28]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[28]_i_1 O[2] -pin dReadData_reg[30] D
load net dReadData_reg[28]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[28]_i_1 O[1] -pin dReadData_reg[29] D
load net dReadData_reg[28]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[28] D -pin dReadData_reg[28]_i_1 O[0]
load net dReadData_reg[4]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[4]_i_1 CO[3] -pin dReadData_reg[8]_i_1 CI
load net dReadData_reg[4]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[4]_i_1 CO[2]
load net dReadData_reg[4]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[4]_i_1 CO[1]
load net dReadData_reg[4]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[4]_i_1 CO[0]
load net dReadData_reg[4]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[4]_i_1 O[3] -pin dReadData_reg[7] D
load net dReadData_reg[4]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[4]_i_1 O[2] -pin dReadData_reg[6] D
load net dReadData_reg[4]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[4]_i_1 O[1] -pin dReadData_reg[5] D
load net dReadData_reg[4]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[4] D -pin dReadData_reg[4]_i_1 O[0]
load net dReadData_reg[8]_i_1_n_0 -attr @rip(#000000) CO[3] -pin dReadData_reg[12]_i_1 CI -pin dReadData_reg[8]_i_1 CO[3]
load net dReadData_reg[8]_i_1_n_1 -attr @rip(#000000) CO[2] -pin dReadData_reg[8]_i_1 CO[2]
load net dReadData_reg[8]_i_1_n_2 -attr @rip(#000000) CO[1] -pin dReadData_reg[8]_i_1 CO[1]
load net dReadData_reg[8]_i_1_n_3 -attr @rip(#000000) CO[0] -pin dReadData_reg[8]_i_1 CO[0]
load net dReadData_reg[8]_i_1_n_4 -attr @rip(#000000) O[3] -pin dReadData_reg[11] D -pin dReadData_reg[8]_i_1 O[3]
load net dReadData_reg[8]_i_1_n_5 -attr @rip(#000000) O[2] -pin dReadData_reg[10] D -pin dReadData_reg[8]_i_1 O[2]
load net dReadData_reg[8]_i_1_n_6 -attr @rip(#000000) O[1] -pin dReadData_reg[8]_i_1 O[1] -pin dReadData_reg[9] D
load net dReadData_reg[8]_i_1_n_7 -attr @rip(#000000) O[0] -pin dReadData_reg[8] D -pin dReadData_reg[8]_i_1 O[0]
load net dReadData_reg_n_0_[10] -pin dReadData_reg[10] Q -pin dReadData_reg[8]_i_1 S[2] -pin riscv out[10]
load net dReadData_reg_n_0_[11] -pin dReadData_reg[11] Q -pin dReadData_reg[8]_i_1 S[3] -pin riscv out[11]
load net dReadData_reg_n_0_[25] -pin dReadData_reg[24]_i_1 S[1] -pin dReadData_reg[25] Q -pin riscv out[25]
load net dReadData_reg_n_0_[26] -pin dReadData_reg[24]_i_1 S[2] -pin dReadData_reg[26] Q -pin riscv out[26]
load net dReadData_reg_n_0_[27] -pin dReadData_reg[24]_i_1 S[3] -pin dReadData_reg[27] Q -pin riscv out[27]
load net dReadData_reg_n_0_[28] -pin dReadData_reg[28] Q -pin dReadData_reg[28]_i_1 S[0] -pin riscv out[28]
load net dReadData_reg_n_0_[29] -pin dReadData_reg[28]_i_1 S[1] -pin dReadData_reg[29] Q -pin riscv out[29]
load net dReadData_reg_n_0_[30] -pin dReadData_reg[28]_i_1 S[2] -pin dReadData_reg[30] Q -pin riscv out[30]
load net dReadData_reg_n_0_[7] -pin dReadData_reg[4]_i_1 S[3] -pin dReadData_reg[7] Q -pin riscv out[7]
load net dReadData_reg_n_0_[8] -pin dReadData_reg[8] Q -pin dReadData_reg[8]_i_1 S[0] -pin riscv out[8]
load net dReadData_reg_n_0_[9] -pin dReadData_reg[8]_i_1 S[1] -pin dReadData_reg[9] Q -pin riscv out[9]
load net data20 -pin dReadData_reg[28]_i_1 S[3] -pin dReadData_reg[31] Q -pin riscv out[31]
load net instruction_reg[12] -pin dReadData_reg[12] Q -pin dReadData_reg[12]_i_1 S[0] -pin riscv out[12]
load net instruction_reg[13] -pin dReadData_reg[12]_i_1 S[1] -pin dReadData_reg[13] Q -pin riscv out[13]
load net instruction_reg[14] -pin dReadData_reg[12]_i_1 S[2] -pin dReadData_reg[14] Q -pin riscv out[14]
load net instruction_reg__0[0] -attr @rip(#000000) 0 -pin dReadData[0]_i_2 I0 -pin dReadData_reg[0] Q -pin riscv out[0]
netloc instruction_reg__0[0] 1 3 11 570 1040 NJ 1040 NJ 1040 1470J 1170 1890J 1190 2240J 1210 2590J 1230 NJ 1230 NJ 1230 3460J 1110 3700
load net instruction_reg__0[1] -attr @rip(#000000) 1 -pin dReadData_reg[0]_i_1 S[1] -pin dReadData_reg[1] Q -pin riscv out[1]
load net instruction_reg__0[2] -attr @rip(#000000) 2 -pin dReadData_reg[0]_i_1 S[2] -pin dReadData_reg[2] Q -pin riscv out[2]
load net instruction_reg__0[3] -attr @rip(#000000) 3 -pin dReadData_reg[0]_i_1 S[3] -pin dReadData_reg[3] Q -pin riscv out[3]
load net instruction_reg__0[4] -pin dReadData_reg[4] Q -pin dReadData_reg[4]_i_1 S[0] -pin riscv out[4]
load net instruction_reg__0[5] -pin dReadData_reg[4]_i_1 S[1] -pin dReadData_reg[5] Q -pin riscv out[5]
load net instruction_reg__0[6] -pin dReadData_reg[4]_i_1 S[2] -pin dReadData_reg[6] Q -pin riscv out[6]
load net p_2_in[0] -pin dReadData_reg[12]_i_1 S[3] -pin dReadData_reg[15] Q -pin riscv out[15]
load net p_2_in[1] -pin dReadData_reg[16] Q -pin dReadData_reg[16]_i_1 S[0] -pin riscv out[16]
load net p_2_in[2] -pin dReadData_reg[16]_i_1 S[1] -pin dReadData_reg[17] Q -pin riscv out[17]
load net p_2_in[3] -pin dReadData_reg[16]_i_1 S[2] -pin dReadData_reg[18] Q -pin riscv out[18]
load net p_2_in[4] -pin dReadData_reg[16]_i_1 S[3] -pin dReadData_reg[19] Q -pin riscv out[19]
load net p_3_in[0] -pin dReadData_reg[20] Q -pin dReadData_reg[20]_i_1 S[0] -pin riscv out[20]
load net p_3_in[1] -pin dReadData_reg[20]_i_1 S[1] -pin dReadData_reg[21] Q -pin riscv out[21]
load net p_3_in[2] -pin dReadData_reg[20]_i_1 S[2] -pin dReadData_reg[22] Q -pin riscv out[22]
load net p_3_in[3] -pin dReadData_reg[20]_i_1 S[3] -pin dReadData_reg[23] Q -pin riscv out[23]
load net p_3_in[4] -pin dReadData_reg[24] Q -pin dReadData_reg[24]_i_1 S[0] -pin riscv out[24]
load net rst -port rst -pin rst_IBUF_inst I
netloc rst 1 0 2 NJ 1070 NJ
load net rst_IBUF -attr @rip(#000000) 0 -pin dReadData_reg[0] R -pin dReadData_reg[10] R -pin dReadData_reg[11] R -pin dReadData_reg[12] R -pin dReadData_reg[13] R -pin dReadData_reg[14] R -pin dReadData_reg[15] R -pin dReadData_reg[16] R -pin dReadData_reg[17] R -pin dReadData_reg[18] R -pin dReadData_reg[19] R -pin dReadData_reg[1] R -pin dReadData_reg[20] R -pin dReadData_reg[21] R -pin dReadData_reg[22] R -pin dReadData_reg[23] R -pin dReadData_reg[24] R -pin dReadData_reg[25] R -pin dReadData_reg[26] R -pin dReadData_reg[27] R -pin dReadData_reg[28] R -pin dReadData_reg[29] R -pin dReadData_reg[2] R -pin dReadData_reg[30] R -pin dReadData_reg[31] R -pin dReadData_reg[3] R -pin dReadData_reg[4] R -pin dReadData_reg[5] R -pin dReadData_reg[6] R -pin dReadData_reg[7] R -pin dReadData_reg[8] R -pin dReadData_reg[9] R -pin riscv SR[0] -pin rst_IBUF_inst O
netloc rst_IBUF 1 2 12 370 1140 590 840 830 680 1170 680 1570 990 1890 1010 2260 1050 2590 1070 NJ 1070 NJ 1070 3480 760 3880
load net riscv|<const0> -ground -attr @name <const0> -pin riscv|ex_aluResult0_inferred__0/i__carry CI -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__6 CYINIT -pin riscv|ex_aluResult0_inferred__0/i__carry__6 DI[3] -pin riscv|ex_aluResult0_inferred__4/i__carry CI -pin riscv|ex_aluResult0_inferred__4/i__carry CYINIT -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CYINIT -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CYINIT -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CYINIT -pin riscv|ex_aluResult0_inferred__5/i__carry CI -pin riscv|ex_aluResult0_inferred__5/i__carry CYINIT -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CYINIT -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CYINIT -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CYINIT -pin riscv|ex_branchAddress_carry CI -pin riscv|ex_branchAddress_carry CYINIT -pin riscv|ex_branchAddress_carry__0 CYINIT -pin riscv|ex_branchAddress_carry__1 CYINIT -pin riscv|ex_branchAddress_carry__2 CYINIT -pin riscv|ex_branchAddress_carry__3 CYINIT -pin riscv|ex_branchAddress_carry__4 CYINIT -pin riscv|ex_branchAddress_carry__5 CYINIT -pin riscv|ex_branchAddress_carry__6 CYINIT -pin riscv|ex_branchAddress_carry__6 DI[3] -pin riscv|ex_rs1_reg[0] R -pin riscv|ex_rs1_reg[10] R -pin riscv|ex_rs1_reg[11] R -pin riscv|ex_rs1_reg[12] R -pin riscv|ex_rs1_reg[13] R -pin riscv|ex_rs1_reg[14] R -pin riscv|ex_rs1_reg[15] R -pin riscv|ex_rs1_reg[16] R -pin riscv|ex_rs1_reg[17] R -pin riscv|ex_rs1_reg[18] R -pin riscv|ex_rs1_reg[19] R -pin riscv|ex_rs1_reg[1] R -pin riscv|ex_rs1_reg[20] R -pin riscv|ex_rs1_reg[21] R -pin riscv|ex_rs1_reg[22] R -pin riscv|ex_rs1_reg[23] R -pin riscv|ex_rs1_reg[24] R -pin riscv|ex_rs1_reg[25] R -pin riscv|ex_rs1_reg[26] R -pin riscv|ex_rs1_reg[27] R -pin riscv|ex_rs1_reg[28] R -pin riscv|ex_rs1_reg[29] R -pin riscv|ex_rs1_reg[2] R -pin riscv|ex_rs1_reg[30] R -pin riscv|ex_rs1_reg[31] R -pin riscv|ex_rs1_reg[3] R -pin riscv|ex_rs1_reg[4] R -pin riscv|ex_rs1_reg[5] R -pin riscv|ex_rs1_reg[6] R -pin riscv|ex_rs1_reg[7] R -pin riscv|ex_rs1_reg[8] R -pin riscv|ex_rs1_reg[9] R -pin riscv|ex_rs2_reg[0] R -pin riscv|ex_rs2_reg[10] R -pin riscv|ex_rs2_reg[11] R -pin riscv|ex_rs2_reg[12] R -pin riscv|ex_rs2_reg[13] R -pin riscv|ex_rs2_reg[14] R -pin riscv|ex_rs2_reg[15] R -pin riscv|ex_rs2_reg[16] R -pin riscv|ex_rs2_reg[17] R -pin riscv|ex_rs2_reg[18] R -pin riscv|ex_rs2_reg[19] R -pin riscv|ex_rs2_reg[1] R -pin riscv|ex_rs2_reg[20] R -pin riscv|ex_rs2_reg[21] R -pin riscv|ex_rs2_reg[22] R -pin riscv|ex_rs2_reg[23] R -pin riscv|ex_rs2_reg[24] R -pin riscv|ex_rs2_reg[25] R -pin riscv|ex_rs2_reg[26] R -pin riscv|ex_rs2_reg[27] R -pin riscv|ex_rs2_reg[28] R -pin riscv|ex_rs2_reg[29] R -pin riscv|ex_rs2_reg[2] R -pin riscv|ex_rs2_reg[30] R -pin riscv|ex_rs2_reg[31] R -pin riscv|ex_rs2_reg[3] R -pin riscv|ex_rs2_reg[4] R -pin riscv|ex_rs2_reg[5] R -pin riscv|ex_rs2_reg[6] R -pin riscv|ex_rs2_reg[7] R -pin riscv|ex_rs2_reg[8] R -pin riscv|ex_rs2_reg[9] R -pin riscv|id_registerFile_reg_r1_0_31_0_5 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DID[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DID[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DID[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DID[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DID[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DID[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_0_5 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_0_5 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_12_17 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_12_17 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_18_23 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_18_23 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_24_29 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_24_29 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIB[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIB[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIC[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIC[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 DID[0] -pin riscv|id_registerFile_reg_r2_0_31_6_11 DID[1] -pin riscv|id_registerFile_reg_r2_0_31_6_11 DID[0] -pin riscv|if_PC_reg[13]_i_1 CYINIT -pin riscv|if_PC_reg[13]_i_1 DI[3] -pin riscv|if_PC_reg[13]_i_1 DI[2] -pin riscv|if_PC_reg[13]_i_1 DI[1] -pin riscv|if_PC_reg[13]_i_1 DI[0] -pin riscv|if_PC_reg[17]_i_1 CYINIT -pin riscv|if_PC_reg[17]_i_1 DI[3] -pin riscv|if_PC_reg[17]_i_1 DI[2] -pin riscv|if_PC_reg[17]_i_1 DI[1] -pin riscv|if_PC_reg[17]_i_1 DI[0] -pin riscv|if_PC_reg[1]_i_1 CI -pin riscv|if_PC_reg[1]_i_1 CYINIT -pin riscv|if_PC_reg[1]_i_1 DI[3] -pin riscv|if_PC_reg[1]_i_1 DI[2] -pin riscv|if_PC_reg[1]_i_1 DI[0] -pin riscv|if_PC_reg[21]_i_1 CYINIT -pin riscv|if_PC_reg[21]_i_1 DI[3] -pin riscv|if_PC_reg[21]_i_1 DI[2] -pin riscv|if_PC_reg[21]_i_1 DI[1] -pin riscv|if_PC_reg[21]_i_1 DI[0] -pin riscv|if_PC_reg[25]_i_1 CYINIT -pin riscv|if_PC_reg[25]_i_1 DI[3] -pin riscv|if_PC_reg[25]_i_1 DI[2] -pin riscv|if_PC_reg[25]_i_1 DI[1] -pin riscv|if_PC_reg[25]_i_1 DI[0] -pin riscv|if_PC_reg[29]_i_1 CYINIT -pin riscv|if_PC_reg[29]_i_1 DI[3] -pin riscv|if_PC_reg[29]_i_1 DI[2] -pin riscv|if_PC_reg[29]_i_1 DI[1] -pin riscv|if_PC_reg[29]_i_1 DI[0] -pin riscv|if_PC_reg[29]_i_1 S[3] -pin riscv|if_PC_reg[5]_i_1 CYINIT -pin riscv|if_PC_reg[5]_i_1 DI[3] -pin riscv|if_PC_reg[5]_i_1 DI[2] -pin riscv|if_PC_reg[5]_i_1 DI[1] -pin riscv|if_PC_reg[5]_i_1 DI[0] -pin riscv|if_PC_reg[9]_i_1 CYINIT -pin riscv|if_PC_reg[9]_i_1 DI[3] -pin riscv|if_PC_reg[9]_i_1 DI[2] -pin riscv|if_PC_reg[9]_i_1 DI[1] -pin riscv|if_PC_reg[9]_i_1 DI[0] -pin riscv|mem_aluResult_reg[11]_i_14 CYINIT -pin riscv|mem_aluResult_reg[15]_i_11 CYINIT -pin riscv|mem_aluResult_reg[19]_i_13 CYINIT -pin riscv|mem_aluResult_reg[26]_i_13 CYINIT -pin riscv|mem_aluResult_reg[26]_i_9 CYINIT -pin riscv|mem_aluResult_reg[2]_i_12 CI -pin riscv|mem_aluResult_reg[2]_i_12 CYINIT -pin riscv|mem_aluResult_reg[30]_i_22 CYINIT -pin riscv|mem_aluResult_reg[30]_i_22 DI[3] -pin riscv|mem_aluResult_reg[7]_i_9 CYINIT
load net riscv|<const1> -power -attr @name <const1> -pin riscv|ex_ALUCtrl_reg[0] CE -pin riscv|ex_ALUCtrl_reg[1] CE -pin riscv|ex_ALUCtrl_reg[2] CE -pin riscv|ex_ALUCtrl_reg[3] CE -pin riscv|ex_ALUSrc_reg CE -pin riscv|ex_Branch_reg CE -pin riscv|ex_MemtoReg_reg CE -pin riscv|ex_PC_reg[0] CE -pin riscv|ex_PC_reg[10] CE -pin riscv|ex_PC_reg[11] CE -pin riscv|ex_PC_reg[12] CE -pin riscv|ex_PC_reg[13] CE -pin riscv|ex_PC_reg[14] CE -pin riscv|ex_PC_reg[15] CE -pin riscv|ex_PC_reg[16] CE -pin riscv|ex_PC_reg[17] CE -pin riscv|ex_PC_reg[18] CE -pin riscv|ex_PC_reg[19] CE -pin riscv|ex_PC_reg[1] CE -pin riscv|ex_PC_reg[20] CE -pin riscv|ex_PC_reg[21] CE -pin riscv|ex_PC_reg[22] CE -pin riscv|ex_PC_reg[23] CE -pin riscv|ex_PC_reg[24] CE -pin riscv|ex_PC_reg[25] CE -pin riscv|ex_PC_reg[26] CE -pin riscv|ex_PC_reg[27] CE -pin riscv|ex_PC_reg[28] CE -pin riscv|ex_PC_reg[29] CE -pin riscv|ex_PC_reg[2] CE -pin riscv|ex_PC_reg[30] CE -pin riscv|ex_PC_reg[31] CE -pin riscv|ex_PC_reg[3] CE -pin riscv|ex_PC_reg[4] CE -pin riscv|ex_PC_reg[5] CE -pin riscv|ex_PC_reg[6] CE -pin riscv|ex_PC_reg[7] CE -pin riscv|ex_PC_reg[8] CE -pin riscv|ex_PC_reg[9] CE -pin riscv|ex_RegWrite_reg CE -pin riscv|ex_aluResult0_inferred__0/i__carry CYINIT -pin riscv|ex_immediate_reg[0] CE -pin riscv|ex_immediate_reg[10] CE -pin riscv|ex_immediate_reg[11] CE -pin riscv|ex_immediate_reg[12] CE -pin riscv|ex_immediate_reg[1] CE -pin riscv|ex_immediate_reg[2] CE -pin riscv|ex_immediate_reg[3] CE -pin riscv|ex_immediate_reg[4] CE -pin riscv|ex_immediate_reg[5] CE -pin riscv|ex_immediate_reg[6] CE -pin riscv|ex_immediate_reg[7] CE -pin riscv|ex_immediate_reg[8] CE -pin riscv|ex_immediate_reg[9] CE -pin riscv|ex_instruction_reg[10] CE -pin riscv|ex_instruction_reg[11] CE -pin riscv|ex_instruction_reg[12] CE -pin riscv|ex_instruction_reg[13] CE -pin riscv|ex_instruction_reg[14] CE -pin riscv|ex_instruction_reg[7] CE -pin riscv|ex_instruction_reg[8] CE -pin riscv|ex_instruction_reg[9] CE -pin riscv|ex_rs1_reg[0] CE -pin riscv|ex_rs1_reg[10] CE -pin riscv|ex_rs1_reg[11] CE -pin riscv|ex_rs1_reg[12] CE -pin riscv|ex_rs1_reg[13] CE -pin riscv|ex_rs1_reg[14] CE -pin riscv|ex_rs1_reg[15] CE -pin riscv|ex_rs1_reg[16] CE -pin riscv|ex_rs1_reg[17] CE -pin riscv|ex_rs1_reg[18] CE -pin riscv|ex_rs1_reg[19] CE -pin riscv|ex_rs1_reg[1] CE -pin riscv|ex_rs1_reg[20] CE -pin riscv|ex_rs1_reg[21] CE -pin riscv|ex_rs1_reg[22] CE -pin riscv|ex_rs1_reg[23] CE -pin riscv|ex_rs1_reg[24] CE -pin riscv|ex_rs1_reg[25] CE -pin riscv|ex_rs1_reg[26] CE -pin riscv|ex_rs1_reg[27] CE -pin riscv|ex_rs1_reg[28] CE -pin riscv|ex_rs1_reg[29] CE -pin riscv|ex_rs1_reg[2] CE -pin riscv|ex_rs1_reg[30] CE -pin riscv|ex_rs1_reg[31] CE -pin riscv|ex_rs1_reg[3] CE -pin riscv|ex_rs1_reg[4] CE -pin riscv|ex_rs1_reg[5] CE -pin riscv|ex_rs1_reg[6] CE -pin riscv|ex_rs1_reg[7] CE -pin riscv|ex_rs1_reg[8] CE -pin riscv|ex_rs1_reg[9] CE -pin riscv|ex_rs2_reg[0] CE -pin riscv|ex_rs2_reg[10] CE -pin riscv|ex_rs2_reg[11] CE -pin riscv|ex_rs2_reg[12] CE -pin riscv|ex_rs2_reg[13] CE -pin riscv|ex_rs2_reg[14] CE -pin riscv|ex_rs2_reg[15] CE -pin riscv|ex_rs2_reg[16] CE -pin riscv|ex_rs2_reg[17] CE -pin riscv|ex_rs2_reg[18] CE -pin riscv|ex_rs2_reg[19] CE -pin riscv|ex_rs2_reg[1] CE -pin riscv|ex_rs2_reg[20] CE -pin riscv|ex_rs2_reg[21] CE -pin riscv|ex_rs2_reg[22] CE -pin riscv|ex_rs2_reg[23] CE -pin riscv|ex_rs2_reg[24] CE -pin riscv|ex_rs2_reg[25] CE -pin riscv|ex_rs2_reg[26] CE -pin riscv|ex_rs2_reg[27] CE -pin riscv|ex_rs2_reg[28] CE -pin riscv|ex_rs2_reg[29] CE -pin riscv|ex_rs2_reg[2] CE -pin riscv|ex_rs2_reg[30] CE -pin riscv|ex_rs2_reg[31] CE -pin riscv|ex_rs2_reg[3] CE -pin riscv|ex_rs2_reg[4] CE -pin riscv|ex_rs2_reg[5] CE -pin riscv|ex_rs2_reg[6] CE -pin riscv|ex_rs2_reg[7] CE -pin riscv|ex_rs2_reg[8] CE -pin riscv|ex_rs2_reg[9] CE -pin riscv|id_PC_reg[0] CE -pin riscv|id_PC_reg[10] CE -pin riscv|id_PC_reg[11] CE -pin riscv|id_PC_reg[12] CE -pin riscv|id_PC_reg[13] CE -pin riscv|id_PC_reg[14] CE -pin riscv|id_PC_reg[15] CE -pin riscv|id_PC_reg[16] CE -pin riscv|id_PC_reg[17] CE -pin riscv|id_PC_reg[18] CE -pin riscv|id_PC_reg[19] CE -pin riscv|id_PC_reg[1] CE -pin riscv|id_PC_reg[20] CE -pin riscv|id_PC_reg[21] CE -pin riscv|id_PC_reg[22] CE -pin riscv|id_PC_reg[23] CE -pin riscv|id_PC_reg[24] CE -pin riscv|id_PC_reg[25] CE -pin riscv|id_PC_reg[26] CE -pin riscv|id_PC_reg[27] CE -pin riscv|id_PC_reg[28] CE -pin riscv|id_PC_reg[29] CE -pin riscv|id_PC_reg[2] CE -pin riscv|id_PC_reg[30] CE -pin riscv|id_PC_reg[31] CE -pin riscv|id_PC_reg[3] CE -pin riscv|id_PC_reg[4] CE -pin riscv|id_PC_reg[5] CE -pin riscv|id_PC_reg[6] CE -pin riscv|id_PC_reg[7] CE -pin riscv|id_PC_reg[8] CE -pin riscv|id_PC_reg[9] CE -pin riscv|if_PC_reg[0] CE -pin riscv|if_PC_reg[10] CE -pin riscv|if_PC_reg[11] CE -pin riscv|if_PC_reg[12] CE -pin riscv|if_PC_reg[13] CE -pin riscv|if_PC_reg[14] CE -pin riscv|if_PC_reg[15] CE -pin riscv|if_PC_reg[16] CE -pin riscv|if_PC_reg[17] CE -pin riscv|if_PC_reg[18] CE -pin riscv|if_PC_reg[19] CE -pin riscv|if_PC_reg[1] CE -pin riscv|if_PC_reg[20] CE -pin riscv|if_PC_reg[21] CE -pin riscv|if_PC_reg[22] CE -pin riscv|if_PC_reg[23] CE -pin riscv|if_PC_reg[24] CE -pin riscv|if_PC_reg[25] CE -pin riscv|if_PC_reg[26] CE -pin riscv|if_PC_reg[27] CE -pin riscv|if_PC_reg[28] CE -pin riscv|if_PC_reg[29] CE -pin riscv|if_PC_reg[2] CE -pin riscv|if_PC_reg[30] CE -pin riscv|if_PC_reg[31] CE -pin riscv|if_PC_reg[3] CE -pin riscv|if_PC_reg[4] CE -pin riscv|if_PC_reg[5] CE -pin riscv|if_PC_reg[6] CE -pin riscv|if_PC_reg[7] CE -pin riscv|if_PC_reg[8] CE -pin riscv|if_PC_reg[9] CE -pin riscv|mem_Branch_reg CE -pin riscv|mem_MemtoReg_reg CE -pin riscv|mem_RegWrite_reg CE -pin riscv|mem_Zero_reg CE -pin riscv|mem_aluResult_reg[0] CE -pin riscv|mem_aluResult_reg[10] CE -pin riscv|mem_aluResult_reg[11] CE -pin riscv|mem_aluResult_reg[12] CE -pin riscv|mem_aluResult_reg[13] CE -pin riscv|mem_aluResult_reg[14] CE -pin riscv|mem_aluResult_reg[15] CE -pin riscv|mem_aluResult_reg[16] CE -pin riscv|mem_aluResult_reg[17] CE -pin riscv|mem_aluResult_reg[18] CE -pin riscv|mem_aluResult_reg[19] CE -pin riscv|mem_aluResult_reg[1] CE -pin riscv|mem_aluResult_reg[20] CE -pin riscv|mem_aluResult_reg[21] CE -pin riscv|mem_aluResult_reg[22] CE -pin riscv|mem_aluResult_reg[23] CE -pin riscv|mem_aluResult_reg[24] CE -pin riscv|mem_aluResult_reg[25] CE -pin riscv|mem_aluResult_reg[26] CE -pin riscv|mem_aluResult_reg[27] CE -pin riscv|mem_aluResult_reg[28] CE -pin riscv|mem_aluResult_reg[29] CE -pin riscv|mem_aluResult_reg[2] CE -pin riscv|mem_aluResult_reg[30] CE -pin riscv|mem_aluResult_reg[31] CE -pin riscv|mem_aluResult_reg[3] CE -pin riscv|mem_aluResult_reg[4] CE -pin riscv|mem_aluResult_reg[5] CE -pin riscv|mem_aluResult_reg[6] CE -pin riscv|mem_aluResult_reg[7] CE -pin riscv|mem_aluResult_reg[8] CE -pin riscv|mem_aluResult_reg[9] CE -pin riscv|mem_branchAddress_reg[0] CE -pin riscv|mem_branchAddress_reg[10] CE -pin riscv|mem_branchAddress_reg[11] CE -pin riscv|mem_branchAddress_reg[12] CE -pin riscv|mem_branchAddress_reg[13] CE -pin riscv|mem_branchAddress_reg[14] CE -pin riscv|mem_branchAddress_reg[15] CE -pin riscv|mem_branchAddress_reg[16] CE -pin riscv|mem_branchAddress_reg[17] CE -pin riscv|mem_branchAddress_reg[18] CE -pin riscv|mem_branchAddress_reg[19] CE -pin riscv|mem_branchAddress_reg[1] CE -pin riscv|mem_branchAddress_reg[20] CE -pin riscv|mem_branchAddress_reg[21] CE -pin riscv|mem_branchAddress_reg[22] CE -pin riscv|mem_branchAddress_reg[23] CE -pin riscv|mem_branchAddress_reg[24] CE -pin riscv|mem_branchAddress_reg[25] CE -pin riscv|mem_branchAddress_reg[26] CE -pin riscv|mem_branchAddress_reg[27] CE -pin riscv|mem_branchAddress_reg[28] CE -pin riscv|mem_branchAddress_reg[29] CE -pin riscv|mem_branchAddress_reg[2] CE -pin riscv|mem_branchAddress_reg[30] CE -pin riscv|mem_branchAddress_reg[31] CE -pin riscv|mem_branchAddress_reg[3] CE -pin riscv|mem_branchAddress_reg[4] CE -pin riscv|mem_branchAddress_reg[5] CE -pin riscv|mem_branchAddress_reg[6] CE -pin riscv|mem_branchAddress_reg[7] CE -pin riscv|mem_branchAddress_reg[8] CE -pin riscv|mem_branchAddress_reg[9] CE -pin riscv|mem_instruction_reg[10] CE -pin riscv|mem_instruction_reg[11] CE -pin riscv|mem_instruction_reg[12] CE -pin riscv|mem_instruction_reg[13] CE -pin riscv|mem_instruction_reg[14] CE -pin riscv|mem_instruction_reg[7] CE -pin riscv|mem_instruction_reg[8] CE -pin riscv|mem_instruction_reg[9] CE -pin riscv|wb_MemToReg_reg[0] CE -pin riscv|wb_RegWrite_reg[0] CE -pin riscv|wb_aluResult_reg[0] CE -pin riscv|wb_aluResult_reg[10] CE -pin riscv|wb_aluResult_reg[11] CE -pin riscv|wb_aluResult_reg[12] CE -pin riscv|wb_aluResult_reg[13] CE -pin riscv|wb_aluResult_reg[14] CE -pin riscv|wb_aluResult_reg[15] CE -pin riscv|wb_aluResult_reg[16] CE -pin riscv|wb_aluResult_reg[17] CE -pin riscv|wb_aluResult_reg[18] CE -pin riscv|wb_aluResult_reg[19] CE -pin riscv|wb_aluResult_reg[1] CE -pin riscv|wb_aluResult_reg[20] CE -pin riscv|wb_aluResult_reg[21] CE -pin riscv|wb_aluResult_reg[22] CE -pin riscv|wb_aluResult_reg[23] CE -pin riscv|wb_aluResult_reg[24] CE -pin riscv|wb_aluResult_reg[25] CE -pin riscv|wb_aluResult_reg[26] CE -pin riscv|wb_aluResult_reg[27] CE -pin riscv|wb_aluResult_reg[28] CE -pin riscv|wb_aluResult_reg[29] CE -pin riscv|wb_aluResult_reg[2] CE -pin riscv|wb_aluResult_reg[30] CE -pin riscv|wb_aluResult_reg[31] CE -pin riscv|wb_aluResult_reg[3] CE -pin riscv|wb_aluResult_reg[4] CE -pin riscv|wb_aluResult_reg[5] CE -pin riscv|wb_aluResult_reg[6] CE -pin riscv|wb_aluResult_reg[7] CE -pin riscv|wb_aluResult_reg[8] CE -pin riscv|wb_aluResult_reg[9] CE -pin riscv|wb_instruction_reg[10] CE -pin riscv|wb_instruction_reg[11] CE -pin riscv|wb_instruction_reg[7] CE -pin riscv|wb_instruction_reg[8] CE -pin riscv|wb_instruction_reg[9] CE
load net riscv|D[0] -attr @rip(#000000) 0 -attr @name D[0] -hierPin riscv D[0] -pin riscv|id_PC_reg[0] D -pin riscv|if_PC[0]_i_1 I0 -pin riscv|if_PC_reg[0] Q
load net riscv|D[10] -attr @rip(#000000) 10 -attr @name D[10] -hierPin riscv D[10] -pin riscv|id_PC_reg[10] D -pin riscv|if_PC[9]_i_4 I0 -pin riscv|if_PC_reg[10] Q
load net riscv|D[11] -attr @rip(#000000) 11 -attr @name D[11] -hierPin riscv D[11] -pin riscv|id_PC_reg[11] D -pin riscv|if_PC[9]_i_3 I0 -pin riscv|if_PC_reg[11] Q
load net riscv|D[12] -attr @rip(#000000) 12 -attr @name D[12] -hierPin riscv D[12] -pin riscv|id_PC_reg[12] D -pin riscv|if_PC[9]_i_2 I0 -pin riscv|if_PC_reg[12] Q
load net riscv|D[13] -attr @rip(#000000) 13 -attr @name D[13] -hierPin riscv D[13] -pin riscv|id_PC_reg[13] D -pin riscv|if_PC[13]_i_5 I0 -pin riscv|if_PC_reg[13] Q
load net riscv|D[14] -attr @rip(#000000) 14 -attr @name D[14] -hierPin riscv D[14] -pin riscv|id_PC_reg[14] D -pin riscv|if_PC[13]_i_4 I0 -pin riscv|if_PC_reg[14] Q
load net riscv|D[15] -attr @rip(#000000) 15 -attr @name D[15] -hierPin riscv D[15] -pin riscv|id_PC_reg[15] D -pin riscv|if_PC[13]_i_3 I0 -pin riscv|if_PC_reg[15] Q
load net riscv|D[16] -attr @rip(#000000) 16 -attr @name D[16] -hierPin riscv D[16] -pin riscv|id_PC_reg[16] D -pin riscv|if_PC[13]_i_2 I0 -pin riscv|if_PC_reg[16] Q
load net riscv|D[17] -attr @rip(#000000) 17 -attr @name D[17] -hierPin riscv D[17] -pin riscv|id_PC_reg[17] D -pin riscv|if_PC[17]_i_5 I0 -pin riscv|if_PC_reg[17] Q
load net riscv|D[18] -attr @rip(#000000) 18 -attr @name D[18] -hierPin riscv D[18] -pin riscv|id_PC_reg[18] D -pin riscv|if_PC[17]_i_4 I0 -pin riscv|if_PC_reg[18] Q
load net riscv|D[19] -attr @rip(#000000) 19 -attr @name D[19] -hierPin riscv D[19] -pin riscv|id_PC_reg[19] D -pin riscv|if_PC[17]_i_3 I0 -pin riscv|if_PC_reg[19] Q
load net riscv|D[1] -attr @rip(#000000) 1 -attr @name D[1] -hierPin riscv D[1] -pin riscv|id_PC_reg[1] D -pin riscv|if_PC[1]_i_5 I0 -pin riscv|if_PC_reg[1] Q
load net riscv|D[20] -attr @rip(#000000) 20 -attr @name D[20] -hierPin riscv D[20] -pin riscv|id_PC_reg[20] D -pin riscv|if_PC[17]_i_2 I0 -pin riscv|if_PC_reg[20] Q
load net riscv|D[21] -attr @rip(#000000) 21 -attr @name D[21] -hierPin riscv D[21] -pin riscv|id_PC_reg[21] D -pin riscv|if_PC[21]_i_5 I0 -pin riscv|if_PC_reg[21] Q
load net riscv|D[22] -attr @rip(#000000) 22 -attr @name D[22] -hierPin riscv D[22] -pin riscv|id_PC_reg[22] D -pin riscv|if_PC[21]_i_4 I0 -pin riscv|if_PC_reg[22] Q
load net riscv|D[23] -attr @rip(#000000) 23 -attr @name D[23] -hierPin riscv D[23] -pin riscv|id_PC_reg[23] D -pin riscv|if_PC[21]_i_3 I0 -pin riscv|if_PC_reg[23] Q
load net riscv|D[24] -attr @rip(#000000) 24 -attr @name D[24] -hierPin riscv D[24] -pin riscv|id_PC_reg[24] D -pin riscv|if_PC[21]_i_2 I0 -pin riscv|if_PC_reg[24] Q
load net riscv|D[25] -attr @rip(#000000) 25 -attr @name D[25] -hierPin riscv D[25] -pin riscv|id_PC_reg[25] D -pin riscv|if_PC[25]_i_5 I0 -pin riscv|if_PC_reg[25] Q
load net riscv|D[26] -attr @rip(#000000) 26 -attr @name D[26] -hierPin riscv D[26] -pin riscv|id_PC_reg[26] D -pin riscv|if_PC[25]_i_4 I0 -pin riscv|if_PC_reg[26] Q
load net riscv|D[27] -attr @rip(#000000) 27 -attr @name D[27] -hierPin riscv D[27] -pin riscv|id_PC_reg[27] D -pin riscv|if_PC[25]_i_3 I0 -pin riscv|if_PC_reg[27] Q
load net riscv|D[28] -attr @rip(#000000) 28 -attr @name D[28] -hierPin riscv D[28] -pin riscv|id_PC_reg[28] D -pin riscv|if_PC[25]_i_2 I0 -pin riscv|if_PC_reg[28] Q
load net riscv|D[29] -attr @rip(#000000) 29 -attr @name D[29] -hierPin riscv D[29] -pin riscv|id_PC_reg[29] D -pin riscv|if_PC[29]_i_4 I0 -pin riscv|if_PC_reg[29] Q
load net riscv|D[2] -attr @rip(#000000) 2 -attr @name D[2] -hierPin riscv D[2] -pin riscv|id_PC_reg[2] D -pin riscv|if_PC[1]_i_4 I1 -pin riscv|if_PC_reg[2] Q
load net riscv|D[30] -attr @rip(#000000) 30 -attr @name D[30] -hierPin riscv D[30] -pin riscv|id_PC_reg[30] D -pin riscv|if_PC[29]_i_3 I0 -pin riscv|if_PC_reg[30] Q
load net riscv|D[31] -attr @rip(#000000) 31 -attr @name D[31] -hierPin riscv D[31] -pin riscv|id_PC_reg[31] D -pin riscv|if_PC[29]_i_2 I0 -pin riscv|if_PC_reg[31] Q
load net riscv|D[3] -attr @rip(#000000) 3 -attr @name D[3] -hierPin riscv D[3] -pin riscv|id_PC_reg[3] D -pin riscv|if_PC[1]_i_3 I0 -pin riscv|if_PC_reg[3] Q
load net riscv|D[4] -attr @rip(#000000) 4 -attr @name D[4] -hierPin riscv D[4] -pin riscv|id_PC_reg[4] D -pin riscv|if_PC[1]_i_2 I0 -pin riscv|if_PC_reg[4] Q
load net riscv|D[5] -attr @rip(#000000) 5 -attr @name D[5] -hierPin riscv D[5] -pin riscv|id_PC_reg[5] D -pin riscv|if_PC[5]_i_5 I0 -pin riscv|if_PC_reg[5] Q
load net riscv|D[6] -attr @rip(#000000) 6 -attr @name D[6] -hierPin riscv D[6] -pin riscv|id_PC_reg[6] D -pin riscv|if_PC[5]_i_4 I0 -pin riscv|if_PC_reg[6] Q
load net riscv|D[7] -attr @rip(#000000) 7 -attr @name D[7] -hierPin riscv D[7] -pin riscv|id_PC_reg[7] D -pin riscv|if_PC[5]_i_3 I0 -pin riscv|if_PC_reg[7] Q
load net riscv|D[8] -attr @rip(#000000) 8 -attr @name D[8] -hierPin riscv D[8] -pin riscv|id_PC_reg[8] D -pin riscv|if_PC[5]_i_2 I0 -pin riscv|if_PC_reg[8] Q
load net riscv|D[9] -attr @rip(#000000) 9 -attr @name D[9] -hierPin riscv D[9] -pin riscv|id_PC_reg[9] D -pin riscv|if_PC[9]_i_5 I0 -pin riscv|if_PC_reg[9] Q
load net riscv|SR[0] -attr @rip(#000000) SR[0] -attr @name SR[0] -hierPin riscv SR[0] -pin riscv|ex_ALUCtrl_reg[0] R -pin riscv|ex_ALUCtrl_reg[1] R -pin riscv|ex_ALUCtrl_reg[2] R -pin riscv|ex_ALUCtrl_reg[3] R -pin riscv|ex_ALUSrc_reg R -pin riscv|ex_Branch_reg R -pin riscv|ex_MemtoReg_reg R -pin riscv|ex_PC_reg[0] R -pin riscv|ex_PC_reg[10] R -pin riscv|ex_PC_reg[11] R -pin riscv|ex_PC_reg[12] R -pin riscv|ex_PC_reg[13] R -pin riscv|ex_PC_reg[14] R -pin riscv|ex_PC_reg[15] R -pin riscv|ex_PC_reg[16] R -pin riscv|ex_PC_reg[17] R -pin riscv|ex_PC_reg[18] R -pin riscv|ex_PC_reg[19] R -pin riscv|ex_PC_reg[1] R -pin riscv|ex_PC_reg[20] R -pin riscv|ex_PC_reg[21] R -pin riscv|ex_PC_reg[22] R -pin riscv|ex_PC_reg[23] R -pin riscv|ex_PC_reg[24] R -pin riscv|ex_PC_reg[25] R -pin riscv|ex_PC_reg[26] R -pin riscv|ex_PC_reg[27] R -pin riscv|ex_PC_reg[28] R -pin riscv|ex_PC_reg[29] R -pin riscv|ex_PC_reg[2] R -pin riscv|ex_PC_reg[30] R -pin riscv|ex_PC_reg[31] R -pin riscv|ex_PC_reg[3] R -pin riscv|ex_PC_reg[4] R -pin riscv|ex_PC_reg[5] R -pin riscv|ex_PC_reg[6] R -pin riscv|ex_PC_reg[7] R -pin riscv|ex_PC_reg[8] R -pin riscv|ex_PC_reg[9] R -pin riscv|ex_RegWrite_reg R -pin riscv|ex_immediate_reg[0] R -pin riscv|ex_immediate_reg[10] R -pin riscv|ex_immediate_reg[11] R -pin riscv|ex_immediate_reg[12] R -pin riscv|ex_immediate_reg[1] R -pin riscv|ex_immediate_reg[2] R -pin riscv|ex_immediate_reg[3] R -pin riscv|ex_immediate_reg[4] R -pin riscv|ex_immediate_reg[5] R -pin riscv|ex_immediate_reg[6] R -pin riscv|ex_immediate_reg[7] R -pin riscv|ex_immediate_reg[8] R -pin riscv|ex_immediate_reg[9] R -pin riscv|ex_instruction_reg[10] R -pin riscv|ex_instruction_reg[11] R -pin riscv|ex_instruction_reg[12] R -pin riscv|ex_instruction_reg[13] R -pin riscv|ex_instruction_reg[14] R -pin riscv|ex_instruction_reg[7] R -pin riscv|ex_instruction_reg[8] R -pin riscv|ex_instruction_reg[9] R -pin riscv|id_PC_reg[0] R -pin riscv|id_PC_reg[10] R -pin riscv|id_PC_reg[11] R -pin riscv|id_PC_reg[12] R -pin riscv|id_PC_reg[13] R -pin riscv|id_PC_reg[14] R -pin riscv|id_PC_reg[15] R -pin riscv|id_PC_reg[16] R -pin riscv|id_PC_reg[17] R -pin riscv|id_PC_reg[18] R -pin riscv|id_PC_reg[19] R -pin riscv|id_PC_reg[1] R -pin riscv|id_PC_reg[20] R -pin riscv|id_PC_reg[21] R -pin riscv|id_PC_reg[22] R -pin riscv|id_PC_reg[23] R -pin riscv|id_PC_reg[24] R -pin riscv|id_PC_reg[25] R -pin riscv|id_PC_reg[26] R -pin riscv|id_PC_reg[27] R -pin riscv|id_PC_reg[28] R -pin riscv|id_PC_reg[29] R -pin riscv|id_PC_reg[2] R -pin riscv|id_PC_reg[30] R -pin riscv|id_PC_reg[31] R -pin riscv|id_PC_reg[3] R -pin riscv|id_PC_reg[4] R -pin riscv|id_PC_reg[5] R -pin riscv|id_PC_reg[6] R -pin riscv|id_PC_reg[7] R -pin riscv|id_PC_reg[8] R -pin riscv|id_PC_reg[9] R -pin riscv|if_PC_reg[0] R -pin riscv|if_PC_reg[10] R -pin riscv|if_PC_reg[11] R -pin riscv|if_PC_reg[12] R -pin riscv|if_PC_reg[13] R -pin riscv|if_PC_reg[14] R -pin riscv|if_PC_reg[15] R -pin riscv|if_PC_reg[16] R -pin riscv|if_PC_reg[17] R -pin riscv|if_PC_reg[18] R -pin riscv|if_PC_reg[19] R -pin riscv|if_PC_reg[1] R -pin riscv|if_PC_reg[20] R -pin riscv|if_PC_reg[21] R -pin riscv|if_PC_reg[22] S -pin riscv|if_PC_reg[23] R -pin riscv|if_PC_reg[24] R -pin riscv|if_PC_reg[25] R -pin riscv|if_PC_reg[26] R -pin riscv|if_PC_reg[27] R -pin riscv|if_PC_reg[28] R -pin riscv|if_PC_reg[29] R -pin riscv|if_PC_reg[2] R -pin riscv|if_PC_reg[30] R -pin riscv|if_PC_reg[31] R -pin riscv|if_PC_reg[3] R -pin riscv|if_PC_reg[4] R -pin riscv|if_PC_reg[5] R -pin riscv|if_PC_reg[6] R -pin riscv|if_PC_reg[7] R -pin riscv|if_PC_reg[8] R -pin riscv|if_PC_reg[9] R -pin riscv|mem_Branch_reg R -pin riscv|mem_MemtoReg_reg R -pin riscv|mem_RegWrite_reg R -pin riscv|mem_Zero_reg R -pin riscv|mem_aluResult_reg[0] R -pin riscv|mem_aluResult_reg[10] R -pin riscv|mem_aluResult_reg[11] R -pin riscv|mem_aluResult_reg[12] R -pin riscv|mem_aluResult_reg[13] R -pin riscv|mem_aluResult_reg[14] R -pin riscv|mem_aluResult_reg[15] R -pin riscv|mem_aluResult_reg[16] R -pin riscv|mem_aluResult_reg[17] R -pin riscv|mem_aluResult_reg[18] R -pin riscv|mem_aluResult_reg[19] R -pin riscv|mem_aluResult_reg[1] R -pin riscv|mem_aluResult_reg[20] R -pin riscv|mem_aluResult_reg[21] R -pin riscv|mem_aluResult_reg[22] R -pin riscv|mem_aluResult_reg[23] R -pin riscv|mem_aluResult_reg[24] R -pin riscv|mem_aluResult_reg[25] R -pin riscv|mem_aluResult_reg[26] R -pin riscv|mem_aluResult_reg[27] R -pin riscv|mem_aluResult_reg[28] R -pin riscv|mem_aluResult_reg[29] R -pin riscv|mem_aluResult_reg[2] R -pin riscv|mem_aluResult_reg[30] R -pin riscv|mem_aluResult_reg[31] R -pin riscv|mem_aluResult_reg[3] R -pin riscv|mem_aluResult_reg[4] R -pin riscv|mem_aluResult_reg[5] R -pin riscv|mem_aluResult_reg[6] R -pin riscv|mem_aluResult_reg[7] R -pin riscv|mem_aluResult_reg[8] R -pin riscv|mem_aluResult_reg[9] R -pin riscv|mem_branchAddress_reg[0] R -pin riscv|mem_branchAddress_reg[10] R -pin riscv|mem_branchAddress_reg[11] R -pin riscv|mem_branchAddress_reg[12] R -pin riscv|mem_branchAddress_reg[13] R -pin riscv|mem_branchAddress_reg[14] R -pin riscv|mem_branchAddress_reg[15] R -pin riscv|mem_branchAddress_reg[16] R -pin riscv|mem_branchAddress_reg[17] R -pin riscv|mem_branchAddress_reg[18] R -pin riscv|mem_branchAddress_reg[19] R -pin riscv|mem_branchAddress_reg[1] R -pin riscv|mem_branchAddress_reg[20] R -pin riscv|mem_branchAddress_reg[21] R -pin riscv|mem_branchAddress_reg[22] R -pin riscv|mem_branchAddress_reg[23] R -pin riscv|mem_branchAddress_reg[24] R -pin riscv|mem_branchAddress_reg[25] R -pin riscv|mem_branchAddress_reg[26] R -pin riscv|mem_branchAddress_reg[27] R -pin riscv|mem_branchAddress_reg[28] R -pin riscv|mem_branchAddress_reg[29] R -pin riscv|mem_branchAddress_reg[2] R -pin riscv|mem_branchAddress_reg[30] R -pin riscv|mem_branchAddress_reg[31] R -pin riscv|mem_branchAddress_reg[3] R -pin riscv|mem_branchAddress_reg[4] R -pin riscv|mem_branchAddress_reg[5] R -pin riscv|mem_branchAddress_reg[6] R -pin riscv|mem_branchAddress_reg[7] R -pin riscv|mem_branchAddress_reg[8] R -pin riscv|mem_branchAddress_reg[9] R -pin riscv|mem_instruction_reg[10] R -pin riscv|mem_instruction_reg[11] R -pin riscv|mem_instruction_reg[12] R -pin riscv|mem_instruction_reg[13] R -pin riscv|mem_instruction_reg[14] R -pin riscv|mem_instruction_reg[7] R -pin riscv|mem_instruction_reg[8] R -pin riscv|mem_instruction_reg[9] R -pin riscv|wb_MemToReg_reg[0] R -pin riscv|wb_RegWrite_reg[0] R -pin riscv|wb_aluResult_reg[0] R -pin riscv|wb_aluResult_reg[10] R -pin riscv|wb_aluResult_reg[11] R -pin riscv|wb_aluResult_reg[12] R -pin riscv|wb_aluResult_reg[13] R -pin riscv|wb_aluResult_reg[14] R -pin riscv|wb_aluResult_reg[15] R -pin riscv|wb_aluResult_reg[16] R -pin riscv|wb_aluResult_reg[17] R -pin riscv|wb_aluResult_reg[18] R -pin riscv|wb_aluResult_reg[19] R -pin riscv|wb_aluResult_reg[1] R -pin riscv|wb_aluResult_reg[20] R -pin riscv|wb_aluResult_reg[21] R -pin riscv|wb_aluResult_reg[22] R -pin riscv|wb_aluResult_reg[23] R -pin riscv|wb_aluResult_reg[24] R -pin riscv|wb_aluResult_reg[25] R -pin riscv|wb_aluResult_reg[26] R -pin riscv|wb_aluResult_reg[27] R -pin riscv|wb_aluResult_reg[28] R -pin riscv|wb_aluResult_reg[29] R -pin riscv|wb_aluResult_reg[2] R -pin riscv|wb_aluResult_reg[30] R -pin riscv|wb_aluResult_reg[31] R -pin riscv|wb_aluResult_reg[3] R -pin riscv|wb_aluResult_reg[4] R -pin riscv|wb_aluResult_reg[5] R -pin riscv|wb_aluResult_reg[6] R -pin riscv|wb_aluResult_reg[7] R -pin riscv|wb_aluResult_reg[8] R -pin riscv|wb_aluResult_reg[9] R -pin riscv|wb_instruction_reg[10] R -pin riscv|wb_instruction_reg[11] R -pin riscv|wb_instruction_reg[7] R -pin riscv|wb_instruction_reg[8] R -pin riscv|wb_instruction_reg[9] R
netloc riscv|SR[0] 1 0 34 NJ 26268 NJ 26268 NJ 26268 4940 26318 5200 26318 NJ 26318 NJ 26318 NJ 26318 NJ 26318 7260 26308 7860 26298 8240 25118 8660 24058 NJ 24058 NJ 24058 10720J 24608 NJ 24608 14500 23488 15720 16368 16740 21978 18440 15438 19320 10468 20780 8848 22120 7448 24030 8268 25390 16968 27830 16288 29800 16168 30890 16778 31610 17188 31930 19088 32330 16458 NJ 16458 33140
load net riscv|clk_IBUF_BUFG -attr @name clk_IBUF_BUFG -hierPin riscv clk_IBUF_BUFG -pin riscv|ex_ALUCtrl_reg[0] C -pin riscv|ex_ALUCtrl_reg[1] C -pin riscv|ex_ALUCtrl_reg[2] C -pin riscv|ex_ALUCtrl_reg[3] C -pin riscv|ex_ALUSrc_reg C -pin riscv|ex_Branch_reg C -pin riscv|ex_MemtoReg_reg C -pin riscv|ex_PC_reg[0] C -pin riscv|ex_PC_reg[10] C -pin riscv|ex_PC_reg[11] C -pin riscv|ex_PC_reg[12] C -pin riscv|ex_PC_reg[13] C -pin riscv|ex_PC_reg[14] C -pin riscv|ex_PC_reg[15] C -pin riscv|ex_PC_reg[16] C -pin riscv|ex_PC_reg[17] C -pin riscv|ex_PC_reg[18] C -pin riscv|ex_PC_reg[19] C -pin riscv|ex_PC_reg[1] C -pin riscv|ex_PC_reg[20] C -pin riscv|ex_PC_reg[21] C -pin riscv|ex_PC_reg[22] C -pin riscv|ex_PC_reg[23] C -pin riscv|ex_PC_reg[24] C -pin riscv|ex_PC_reg[25] C -pin riscv|ex_PC_reg[26] C -pin riscv|ex_PC_reg[27] C -pin riscv|ex_PC_reg[28] C -pin riscv|ex_PC_reg[29] C -pin riscv|ex_PC_reg[2] C -pin riscv|ex_PC_reg[30] C -pin riscv|ex_PC_reg[31] C -pin riscv|ex_PC_reg[3] C -pin riscv|ex_PC_reg[4] C -pin riscv|ex_PC_reg[5] C -pin riscv|ex_PC_reg[6] C -pin riscv|ex_PC_reg[7] C -pin riscv|ex_PC_reg[8] C -pin riscv|ex_PC_reg[9] C -pin riscv|ex_RegWrite_reg C -pin riscv|ex_immediate_reg[0] C -pin riscv|ex_immediate_reg[10] C -pin riscv|ex_immediate_reg[11] C -pin riscv|ex_immediate_reg[12] C -pin riscv|ex_immediate_reg[1] C -pin riscv|ex_immediate_reg[2] C -pin riscv|ex_immediate_reg[3] C -pin riscv|ex_immediate_reg[4] C -pin riscv|ex_immediate_reg[5] C -pin riscv|ex_immediate_reg[6] C -pin riscv|ex_immediate_reg[7] C -pin riscv|ex_immediate_reg[8] C -pin riscv|ex_immediate_reg[9] C -pin riscv|ex_instruction_reg[10] C -pin riscv|ex_instruction_reg[11] C -pin riscv|ex_instruction_reg[12] C -pin riscv|ex_instruction_reg[13] C -pin riscv|ex_instruction_reg[14] C -pin riscv|ex_instruction_reg[7] C -pin riscv|ex_instruction_reg[8] C -pin riscv|ex_instruction_reg[9] C -pin riscv|ex_rs1_reg[0] C -pin riscv|ex_rs1_reg[10] C -pin riscv|ex_rs1_reg[11] C -pin riscv|ex_rs1_reg[12] C -pin riscv|ex_rs1_reg[13] C -pin riscv|ex_rs1_reg[14] C -pin riscv|ex_rs1_reg[15] C -pin riscv|ex_rs1_reg[16] C -pin riscv|ex_rs1_reg[17] C -pin riscv|ex_rs1_reg[18] C -pin riscv|ex_rs1_reg[19] C -pin riscv|ex_rs1_reg[1] C -pin riscv|ex_rs1_reg[20] C -pin riscv|ex_rs1_reg[21] C -pin riscv|ex_rs1_reg[22] C -pin riscv|ex_rs1_reg[23] C -pin riscv|ex_rs1_reg[24] C -pin riscv|ex_rs1_reg[25] C -pin riscv|ex_rs1_reg[26] C -pin riscv|ex_rs1_reg[27] C -pin riscv|ex_rs1_reg[28] C -pin riscv|ex_rs1_reg[29] C -pin riscv|ex_rs1_reg[2] C -pin riscv|ex_rs1_reg[30] C -pin riscv|ex_rs1_reg[31] C -pin riscv|ex_rs1_reg[3] C -pin riscv|ex_rs1_reg[4] C -pin riscv|ex_rs1_reg[5] C -pin riscv|ex_rs1_reg[6] C -pin riscv|ex_rs1_reg[7] C -pin riscv|ex_rs1_reg[8] C -pin riscv|ex_rs1_reg[9] C -pin riscv|ex_rs2_reg[0] C -pin riscv|ex_rs2_reg[10] C -pin riscv|ex_rs2_reg[11] C -pin riscv|ex_rs2_reg[12] C -pin riscv|ex_rs2_reg[13] C -pin riscv|ex_rs2_reg[14] C -pin riscv|ex_rs2_reg[15] C -pin riscv|ex_rs2_reg[16] C -pin riscv|ex_rs2_reg[17] C -pin riscv|ex_rs2_reg[18] C -pin riscv|ex_rs2_reg[19] C -pin riscv|ex_rs2_reg[1] C -pin riscv|ex_rs2_reg[20] C -pin riscv|ex_rs2_reg[21] C -pin riscv|ex_rs2_reg[22] C -pin riscv|ex_rs2_reg[23] C -pin riscv|ex_rs2_reg[24] C -pin riscv|ex_rs2_reg[25] C -pin riscv|ex_rs2_reg[26] C -pin riscv|ex_rs2_reg[27] C -pin riscv|ex_rs2_reg[28] C -pin riscv|ex_rs2_reg[29] C -pin riscv|ex_rs2_reg[2] C -pin riscv|ex_rs2_reg[30] C -pin riscv|ex_rs2_reg[31] C -pin riscv|ex_rs2_reg[3] C -pin riscv|ex_rs2_reg[4] C -pin riscv|ex_rs2_reg[5] C -pin riscv|ex_rs2_reg[6] C -pin riscv|ex_rs2_reg[7] C -pin riscv|ex_rs2_reg[8] C -pin riscv|ex_rs2_reg[9] C -pin riscv|id_PC_reg[0] C -pin riscv|id_PC_reg[10] C -pin riscv|id_PC_reg[11] C -pin riscv|id_PC_reg[12] C -pin riscv|id_PC_reg[13] C -pin riscv|id_PC_reg[14] C -pin riscv|id_PC_reg[15] C -pin riscv|id_PC_reg[16] C -pin riscv|id_PC_reg[17] C -pin riscv|id_PC_reg[18] C -pin riscv|id_PC_reg[19] C -pin riscv|id_PC_reg[1] C -pin riscv|id_PC_reg[20] C -pin riscv|id_PC_reg[21] C -pin riscv|id_PC_reg[22] C -pin riscv|id_PC_reg[23] C -pin riscv|id_PC_reg[24] C -pin riscv|id_PC_reg[25] C -pin riscv|id_PC_reg[26] C -pin riscv|id_PC_reg[27] C -pin riscv|id_PC_reg[28] C -pin riscv|id_PC_reg[29] C -pin riscv|id_PC_reg[2] C -pin riscv|id_PC_reg[30] C -pin riscv|id_PC_reg[31] C -pin riscv|id_PC_reg[3] C -pin riscv|id_PC_reg[4] C -pin riscv|id_PC_reg[5] C -pin riscv|id_PC_reg[6] C -pin riscv|id_PC_reg[7] C -pin riscv|id_PC_reg[8] C -pin riscv|id_PC_reg[9] C -pin riscv|id_registerFile_reg_r1_0_31_0_5 WCLK -pin riscv|id_registerFile_reg_r1_0_31_12_17 WCLK -pin riscv|id_registerFile_reg_r1_0_31_18_23 WCLK -pin riscv|id_registerFile_reg_r1_0_31_24_29 WCLK -pin riscv|id_registerFile_reg_r1_0_31_30_31 WCLK -pin riscv|id_registerFile_reg_r1_0_31_6_11 WCLK -pin riscv|id_registerFile_reg_r2_0_31_0_5 WCLK -pin riscv|id_registerFile_reg_r2_0_31_12_17 WCLK -pin riscv|id_registerFile_reg_r2_0_31_18_23 WCLK -pin riscv|id_registerFile_reg_r2_0_31_24_29 WCLK -pin riscv|id_registerFile_reg_r2_0_31_30_31 WCLK -pin riscv|id_registerFile_reg_r2_0_31_6_11 WCLK -pin riscv|if_PC_reg[0] C -pin riscv|if_PC_reg[10] C -pin riscv|if_PC_reg[11] C -pin riscv|if_PC_reg[12] C -pin riscv|if_PC_reg[13] C -pin riscv|if_PC_reg[14] C -pin riscv|if_PC_reg[15] C -pin riscv|if_PC_reg[16] C -pin riscv|if_PC_reg[17] C -pin riscv|if_PC_reg[18] C -pin riscv|if_PC_reg[19] C -pin riscv|if_PC_reg[1] C -pin riscv|if_PC_reg[20] C -pin riscv|if_PC_reg[21] C -pin riscv|if_PC_reg[22] C -pin riscv|if_PC_reg[23] C -pin riscv|if_PC_reg[24] C -pin riscv|if_PC_reg[25] C -pin riscv|if_PC_reg[26] C -pin riscv|if_PC_reg[27] C -pin riscv|if_PC_reg[28] C -pin riscv|if_PC_reg[29] C -pin riscv|if_PC_reg[2] C -pin riscv|if_PC_reg[30] C -pin riscv|if_PC_reg[31] C -pin riscv|if_PC_reg[3] C -pin riscv|if_PC_reg[4] C -pin riscv|if_PC_reg[5] C -pin riscv|if_PC_reg[6] C -pin riscv|if_PC_reg[7] C -pin riscv|if_PC_reg[8] C -pin riscv|if_PC_reg[9] C -pin riscv|mem_Branch_reg C -pin riscv|mem_MemtoReg_reg C -pin riscv|mem_RegWrite_reg C -pin riscv|mem_Zero_reg C -pin riscv|mem_aluResult_reg[0] C -pin riscv|mem_aluResult_reg[10] C -pin riscv|mem_aluResult_reg[11] C -pin riscv|mem_aluResult_reg[12] C -pin riscv|mem_aluResult_reg[13] C -pin riscv|mem_aluResult_reg[14] C -pin riscv|mem_aluResult_reg[15] C -pin riscv|mem_aluResult_reg[16] C -pin riscv|mem_aluResult_reg[17] C -pin riscv|mem_aluResult_reg[18] C -pin riscv|mem_aluResult_reg[19] C -pin riscv|mem_aluResult_reg[1] C -pin riscv|mem_aluResult_reg[20] C -pin riscv|mem_aluResult_reg[21] C -pin riscv|mem_aluResult_reg[22] C -pin riscv|mem_aluResult_reg[23] C -pin riscv|mem_aluResult_reg[24] C -pin riscv|mem_aluResult_reg[25] C -pin riscv|mem_aluResult_reg[26] C -pin riscv|mem_aluResult_reg[27] C -pin riscv|mem_aluResult_reg[28] C -pin riscv|mem_aluResult_reg[29] C -pin riscv|mem_aluResult_reg[2] C -pin riscv|mem_aluResult_reg[30] C -pin riscv|mem_aluResult_reg[31] C -pin riscv|mem_aluResult_reg[3] C -pin riscv|mem_aluResult_reg[4] C -pin riscv|mem_aluResult_reg[5] C -pin riscv|mem_aluResult_reg[6] C -pin riscv|mem_aluResult_reg[7] C -pin riscv|mem_aluResult_reg[8] C -pin riscv|mem_aluResult_reg[9] C -pin riscv|mem_branchAddress_reg[0] C -pin riscv|mem_branchAddress_reg[10] C -pin riscv|mem_branchAddress_reg[11] C -pin riscv|mem_branchAddress_reg[12] C -pin riscv|mem_branchAddress_reg[13] C -pin riscv|mem_branchAddress_reg[14] C -pin riscv|mem_branchAddress_reg[15] C -pin riscv|mem_branchAddress_reg[16] C -pin riscv|mem_branchAddress_reg[17] C -pin riscv|mem_branchAddress_reg[18] C -pin riscv|mem_branchAddress_reg[19] C -pin riscv|mem_branchAddress_reg[1] C -pin riscv|mem_branchAddress_reg[20] C -pin riscv|mem_branchAddress_reg[21] C -pin riscv|mem_branchAddress_reg[22] C -pin riscv|mem_branchAddress_reg[23] C -pin riscv|mem_branchAddress_reg[24] C -pin riscv|mem_branchAddress_reg[25] C -pin riscv|mem_branchAddress_reg[26] C -pin riscv|mem_branchAddress_reg[27] C -pin riscv|mem_branchAddress_reg[28] C -pin riscv|mem_branchAddress_reg[29] C -pin riscv|mem_branchAddress_reg[2] C -pin riscv|mem_branchAddress_reg[30] C -pin riscv|mem_branchAddress_reg[31] C -pin riscv|mem_branchAddress_reg[3] C -pin riscv|mem_branchAddress_reg[4] C -pin riscv|mem_branchAddress_reg[5] C -pin riscv|mem_branchAddress_reg[6] C -pin riscv|mem_branchAddress_reg[7] C -pin riscv|mem_branchAddress_reg[8] C -pin riscv|mem_branchAddress_reg[9] C -pin riscv|mem_instruction_reg[10] C -pin riscv|mem_instruction_reg[11] C -pin riscv|mem_instruction_reg[12] C -pin riscv|mem_instruction_reg[13] C -pin riscv|mem_instruction_reg[14] C -pin riscv|mem_instruction_reg[7] C -pin riscv|mem_instruction_reg[8] C -pin riscv|mem_instruction_reg[9] C -pin riscv|wb_MemToReg_reg[0] C -pin riscv|wb_RegWrite_reg[0] C -pin riscv|wb_aluResult_reg[0] C -pin riscv|wb_aluResult_reg[10] C -pin riscv|wb_aluResult_reg[11] C -pin riscv|wb_aluResult_reg[12] C -pin riscv|wb_aluResult_reg[13] C -pin riscv|wb_aluResult_reg[14] C -pin riscv|wb_aluResult_reg[15] C -pin riscv|wb_aluResult_reg[16] C -pin riscv|wb_aluResult_reg[17] C -pin riscv|wb_aluResult_reg[18] C -pin riscv|wb_aluResult_reg[19] C -pin riscv|wb_aluResult_reg[1] C -pin riscv|wb_aluResult_reg[20] C -pin riscv|wb_aluResult_reg[21] C -pin riscv|wb_aluResult_reg[22] C -pin riscv|wb_aluResult_reg[23] C -pin riscv|wb_aluResult_reg[24] C -pin riscv|wb_aluResult_reg[25] C -pin riscv|wb_aluResult_reg[26] C -pin riscv|wb_aluResult_reg[27] C -pin riscv|wb_aluResult_reg[28] C -pin riscv|wb_aluResult_reg[29] C -pin riscv|wb_aluResult_reg[2] C -pin riscv|wb_aluResult_reg[30] C -pin riscv|wb_aluResult_reg[31] C -pin riscv|wb_aluResult_reg[3] C -pin riscv|wb_aluResult_reg[4] C -pin riscv|wb_aluResult_reg[5] C -pin riscv|wb_aluResult_reg[6] C -pin riscv|wb_aluResult_reg[7] C -pin riscv|wb_aluResult_reg[8] C -pin riscv|wb_aluResult_reg[9] C -pin riscv|wb_instruction_reg[10] C -pin riscv|wb_instruction_reg[11] C -pin riscv|wb_instruction_reg[7] C -pin riscv|wb_instruction_reg[8] C -pin riscv|wb_instruction_reg[9] C
netloc riscv|clk_IBUF_BUFG 1 0 34 NJ 26288 NJ 26288 NJ 26288 4960 26128 5200 26128 NJ 26128 5660 26118 NJ 26118 NJ 26118 7040 26118 7820 26118 8200 24918 8640 24908 NJ 24908 9930 23708 10760 24078 13000 23928 14520 23468 15760 16168 16700 21958 18360 15418 19160 10448 20260 8868 21880 9088 23630 8288 25570 16988 28350 16188 29740 15918 30930 16738 31570 18888 31910 19108 32310 16478 NJ 16478 33100
load net riscv|data0[0] -attr @rip(#000000) O[0] -attr @name data0[0] -pin riscv|mem_aluResult[0]_i_4 I4 -pin riscv|mem_aluResult_reg[2]_i_12 O[0]
load net riscv|data0[10] -attr @rip(#000000) O[2] -attr @name data0[10] -pin riscv|mem_aluResult[10]_i_6 I2 -pin riscv|mem_aluResult_reg[11]_i_14 O[2]
load net riscv|data0[11] -attr @rip(#000000) O[3] -attr @name data0[11] -pin riscv|mem_aluResult[11]_i_12 I2 -pin riscv|mem_aluResult_reg[11]_i_14 O[3]
load net riscv|data0[12] -attr @rip(#000000) O[0] -attr @name data0[12] -pin riscv|mem_aluResult[12]_i_5 I0 -pin riscv|mem_aluResult_reg[15]_i_11 O[0]
load net riscv|data0[13] -attr @rip(#000000) O[1] -attr @name data0[13] -pin riscv|mem_aluResult[13]_i_5 I0 -pin riscv|mem_aluResult_reg[15]_i_11 O[1]
load net riscv|data0[14] -attr @rip(#000000) O[2] -attr @name data0[14] -pin riscv|mem_aluResult[14]_i_6 I0 -pin riscv|mem_aluResult_reg[15]_i_11 O[2]
load net riscv|data0[15] -attr @rip(#000000) O[3] -attr @name data0[15] -pin riscv|mem_aluResult[15]_i_9 I0 -pin riscv|mem_aluResult_reg[15]_i_11 O[3]
load net riscv|data0[16] -attr @rip(#000000) O[0] -attr @name data0[16] -pin riscv|mem_aluResult[16]_i_10 I1 -pin riscv|mem_aluResult_reg[19]_i_13 O[0]
load net riscv|data0[17] -attr @rip(#000000) O[1] -attr @name data0[17] -pin riscv|mem_aluResult[17]_i_7 I1 -pin riscv|mem_aluResult_reg[19]_i_13 O[1]
load net riscv|data0[18] -attr @rip(#000000) O[2] -attr @name data0[18] -pin riscv|mem_aluResult[18]_i_9 I1 -pin riscv|mem_aluResult_reg[19]_i_13 O[2]
load net riscv|data0[19] -attr @rip(#000000) O[3] -attr @name data0[19] -pin riscv|mem_aluResult[19]_i_11 I1 -pin riscv|mem_aluResult_reg[19]_i_13 O[3]
load net riscv|data0[1] -attr @rip(#000000) O[1] -attr @name data0[1] -pin riscv|mem_aluResult[1]_i_2 I0 -pin riscv|mem_aluResult_reg[2]_i_12 O[1]
load net riscv|data0[20] -attr @rip(#000000) O[0] -attr @name data0[20] -pin riscv|mem_aluResult[20]_i_9 I1 -pin riscv|mem_aluResult_reg[26]_i_13 O[0]
load net riscv|data0[21] -attr @rip(#000000) O[1] -attr @name data0[21] -pin riscv|mem_aluResult[21]_i_11 I1 -pin riscv|mem_aluResult_reg[26]_i_13 O[1]
load net riscv|data0[22] -attr @rip(#000000) O[2] -attr @name data0[22] -pin riscv|mem_aluResult[22]_i_14 I1 -pin riscv|mem_aluResult_reg[26]_i_13 O[2]
load net riscv|data0[23] -attr @rip(#000000) O[3] -attr @name data0[23] -pin riscv|mem_aluResult[23]_i_6 I1 -pin riscv|mem_aluResult_reg[26]_i_13 O[3]
load net riscv|data0[24] -attr @rip(#000000) O[0] -attr @name data0[24] -pin riscv|mem_aluResult[24]_i_6 I1 -pin riscv|mem_aluResult_reg[26]_i_9 O[0]
load net riscv|data0[25] -attr @rip(#000000) O[1] -attr @name data0[25] -pin riscv|mem_aluResult[25]_i_3 I1 -pin riscv|mem_aluResult_reg[26]_i_9 O[1]
load net riscv|data0[26] -attr @rip(#000000) O[2] -attr @name data0[26] -pin riscv|mem_aluResult[26]_i_4 I1 -pin riscv|mem_aluResult_reg[26]_i_9 O[2]
load net riscv|data0[27] -attr @rip(#000000) O[3] -attr @name data0[27] -pin riscv|mem_aluResult[27]_i_7 I1 -pin riscv|mem_aluResult_reg[26]_i_9 O[3]
load net riscv|data0[28] -attr @rip(#000000) O[0] -attr @name data0[28] -pin riscv|mem_aluResult[28]_i_4 I1 -pin riscv|mem_aluResult_reg[30]_i_22 O[0]
load net riscv|data0[29] -attr @rip(#000000) O[1] -attr @name data0[29] -pin riscv|mem_aluResult[29]_i_4 I1 -pin riscv|mem_aluResult_reg[30]_i_22 O[1]
load net riscv|data0[2] -attr @rip(#000000) O[2] -attr @name data0[2] -pin riscv|mem_aluResult[2]_i_4 I2 -pin riscv|mem_aluResult_reg[2]_i_12 O[2]
load net riscv|data0[30] -attr @rip(#000000) O[2] -attr @name data0[30] -pin riscv|mem_aluResult[30]_i_7 I1 -pin riscv|mem_aluResult_reg[30]_i_22 O[2]
load net riscv|data0[31] -attr @rip(#000000) O[3] -attr @name data0[31] -pin riscv|mem_aluResult[31]_i_8 I0 -pin riscv|mem_aluResult_reg[30]_i_22 O[3]
load net riscv|data0[3] -attr @rip(#000000) O[3] -attr @name data0[3] -pin riscv|mem_aluResult[3]_i_7 I4 -pin riscv|mem_aluResult_reg[2]_i_12 O[3]
load net riscv|data0[4] -attr @rip(#000000) O[0] -attr @name data0[4] -pin riscv|mem_aluResult[4]_i_6 I2 -pin riscv|mem_aluResult_reg[7]_i_9 O[0]
load net riscv|data0[5] -attr @rip(#000000) O[1] -attr @name data0[5] -pin riscv|mem_aluResult[5]_i_7 I2 -pin riscv|mem_aluResult_reg[7]_i_9 O[1]
load net riscv|data0[6] -attr @rip(#000000) O[2] -attr @name data0[6] -pin riscv|mem_aluResult[6]_i_6 I2 -pin riscv|mem_aluResult_reg[7]_i_9 O[2]
load net riscv|data0[7] -attr @rip(#000000) O[3] -attr @name data0[7] -pin riscv|mem_aluResult[7]_i_7 I2 -pin riscv|mem_aluResult_reg[7]_i_9 O[3]
load net riscv|data0[8] -attr @rip(#000000) O[0] -attr @name data0[8] -pin riscv|mem_aluResult[8]_i_6 I2 -pin riscv|mem_aluResult_reg[11]_i_14 O[0]
load net riscv|data0[9] -attr @rip(#000000) O[1] -attr @name data0[9] -pin riscv|mem_aluResult[9]_i_7 I2 -pin riscv|mem_aluResult_reg[11]_i_14 O[1]
load net riscv|data5 -attr @rip(#000000) CO[3] -attr @name data5 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CO[3] -pin riscv|mem_aluResult[0]_i_9 I0
load net riscv|data6 -attr @rip(#000000) CO[3] -attr @name data6 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CO[3] -pin riscv|mem_aluResult[0]_i_8 I0
load net riscv|data8[23] -attr @name data8[23] -pin riscv|mem_aluResult[23]_i_1 I2 -pin riscv|mem_aluResult[23]_i_3 O
netloc riscv|data8[23] 1 10 1 N 18198
load net riscv|data8[24] -attr @name data8[24] -pin riscv|mem_aluResult[24]_i_1 I2 -pin riscv|mem_aluResult[24]_i_3 O
netloc riscv|data8[24] 1 19 1 16380 18758n
load net riscv|data8[27] -attr @name data8[27] -pin riscv|mem_aluResult[27]_i_1 I2 -pin riscv|mem_aluResult[27]_i_4 O
netloc riscv|data8[27] 1 18 1 15080 17988n
load net riscv|data8[29] -attr @name data8[29] -pin riscv|mem_aluResult[29]_i_3 I1 -pin riscv|mem_aluResult[29]_i_7 O
netloc riscv|data8[29] 1 27 1 29640 17288n
load net riscv|ex_ALUCtrl[0] -attr @name ex_ALUCtrl[0] -pin riscv|ex_ALUCtrl_reg[0] Q -pin riscv|mem_aluResult[0]_i_3 I3 -pin riscv|mem_aluResult[0]_i_6 I2 -pin riscv|mem_aluResult[0]_i_8 I1 -pin riscv|mem_aluResult[0]_i_9 I1 -pin riscv|mem_aluResult[11]_i_10 I3 -pin riscv|mem_aluResult[12]_i_4 I2 -pin riscv|mem_aluResult[12]_i_5 I5 -pin riscv|mem_aluResult[13]_i_4 I2 -pin riscv|mem_aluResult[13]_i_5 I5 -pin riscv|mem_aluResult[14]_i_5 I2 -pin riscv|mem_aluResult[14]_i_6 I5 -pin riscv|mem_aluResult[15]_i_10 I2 -pin riscv|mem_aluResult[15]_i_9 I5 -pin riscv|mem_aluResult[16]_i_10 I2 -pin riscv|mem_aluResult[16]_i_5 I5 -pin riscv|mem_aluResult[17]_i_4 I3 -pin riscv|mem_aluResult[17]_i_7 I2 -pin riscv|mem_aluResult[18]_i_5 I5 -pin riscv|mem_aluResult[18]_i_9 I2 -pin riscv|mem_aluResult[19]_i_11 I2 -pin riscv|mem_aluResult[19]_i_5 I3 -pin riscv|mem_aluResult[1]_i_3 I2 -pin riscv|mem_aluResult[1]_i_4 I3 -pin riscv|mem_aluResult[1]_i_7 I1 -pin riscv|mem_aluResult[20]_i_5 I5 -pin riscv|mem_aluResult[20]_i_9 I2 -pin riscv|mem_aluResult[21]_i_11 I2 -pin riscv|mem_aluResult[21]_i_5 I3 -pin riscv|mem_aluResult[22]_i_14 I2 -pin riscv|mem_aluResult[22]_i_6 I5 -pin riscv|mem_aluResult[23]_i_5 I0 -pin riscv|mem_aluResult[23]_i_6 I2 -pin riscv|mem_aluResult[24]_i_5 I0 -pin riscv|mem_aluResult[24]_i_6 I2 -pin riscv|mem_aluResult[25]_i_6 I0 -pin riscv|mem_aluResult[26]_i_10 I0 -pin riscv|mem_aluResult[27]_i_3 I0 -pin riscv|mem_aluResult[27]_i_6 I0 -pin riscv|mem_aluResult[27]_i_7 I2 -pin riscv|mem_aluResult[28]_i_10 I0 -pin riscv|mem_aluResult[29]_i_3 I2 -pin riscv|mem_aluResult[29]_i_8 I0 -pin riscv|mem_aluResult[2]_i_16 I5 -pin riscv|mem_aluResult[2]_i_7 I0 -pin riscv|mem_aluResult[30]_i_12 I1 -pin riscv|mem_aluResult[30]_i_21 I0 -pin riscv|mem_aluResult[30]_i_23 I0 -pin riscv|mem_aluResult[31]_i_2 I4 -pin riscv|mem_aluResult[31]_i_22 I1 -pin riscv|mem_aluResult[31]_i_7 I2 -pin riscv|mem_aluResult[31]_i_9 I1 -pin riscv|mem_aluResult[3]_i_6 I2 -pin riscv|mem_aluResult[3]_i_7 I3
netloc riscv|ex_ALUCtrl[0] 1 0 29 4060 17838 4360 17838 NJ 17838 NJ 17838 NJ 17838 NJ 17838 NJ 17838 NJ 17838 6220 16828 7400 16828 NJ 16828 NJ 16828 NJ 16828 NJ 16828 10150 15828 10960 15708 12660 15268 14300 14718 15100 17008 17140 11718 18180 5708 NJ 5708 NJ 5708 22700 9108 23690 10408 26290 18278 27130 21688 30160 20708 31090
load net riscv|ex_ALUCtrl[0]_i_1_n_0 -attr @name ex_ALUCtrl[0]_i_1_n_0 -pin riscv|ex_ALUCtrl[0]_i_1 O -pin riscv|ex_ALUCtrl_reg[0] D
netloc riscv|ex_ALUCtrl[0]_i_1_n_0 1 23 1 22420 21488n
load net riscv|ex_ALUCtrl[1] -attr @name ex_ALUCtrl[1] -pin riscv|ex_ALUCtrl_reg[1] Q -pin riscv|mem_aluResult[0]_i_3 I0 -pin riscv|mem_aluResult[0]_i_6 I1 -pin riscv|mem_aluResult[0]_i_9 I4 -pin riscv|mem_aluResult[11]_i_10 I2 -pin riscv|mem_aluResult[12]_i_4 I4 -pin riscv|mem_aluResult[12]_i_5 I4 -pin riscv|mem_aluResult[13]_i_4 I4 -pin riscv|mem_aluResult[13]_i_5 I4 -pin riscv|mem_aluResult[14]_i_5 I4 -pin riscv|mem_aluResult[14]_i_6 I4 -pin riscv|mem_aluResult[15]_i_10 I4 -pin riscv|mem_aluResult[15]_i_9 I4 -pin riscv|mem_aluResult[16]_i_10 I5 -pin riscv|mem_aluResult[17]_i_7 I5 -pin riscv|mem_aluResult[18]_i_9 I5 -pin riscv|mem_aluResult[19]_i_11 I5 -pin riscv|mem_aluResult[1]_i_7 I2 -pin riscv|mem_aluResult[20]_i_9 I5 -pin riscv|mem_aluResult[21]_i_11 I5 -pin riscv|mem_aluResult[22]_i_11 I1 -pin riscv|mem_aluResult[22]_i_14 I5 -pin riscv|mem_aluResult[22]_i_16 I0 -pin riscv|mem_aluResult[23]_i_6 I5 -pin riscv|mem_aluResult[24]_i_6 I5 -pin riscv|mem_aluResult[27]_i_3 I2 -pin riscv|mem_aluResult[27]_i_7 I5 -pin riscv|mem_aluResult[29]_i_3 I4 -pin riscv|mem_aluResult[30]_i_21 I3 -pin riscv|mem_aluResult[31]_i_2 I3 -pin riscv|mem_aluResult[31]_i_3 I1 -pin riscv|mem_aluResult[31]_i_7 I0 -pin riscv|mem_aluResult[3]_i_7 I0
netloc riscv|ex_ALUCtrl[1] 1 0 29 4100 17568 NJ 17568 NJ 17568 NJ 17568 NJ 17568 NJ 17568 NJ 17568 NJ 17568 6520 16848 7180 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 10090 16598 NJ 16598 12720 16318 13660 17708 15860 17588 17120 11758 18660 11418 NJ 11418 NJ 11418 NJ 11418 24570 11498 25290 22828 NJ 22828 29200 20888 31030
load net riscv|ex_ALUCtrl[2] -attr @name ex_ALUCtrl[2] -pin riscv|ex_ALUCtrl_reg[2] Q -pin riscv|mem_aluResult[0]_i_3 I1 -pin riscv|mem_aluResult[0]_i_6 I3 -pin riscv|mem_aluResult[0]_i_9 I2 -pin riscv|mem_aluResult[11]_i_10 I1 -pin riscv|mem_aluResult[12]_i_4 I1 -pin riscv|mem_aluResult[12]_i_5 I3 -pin riscv|mem_aluResult[13]_i_4 I1 -pin riscv|mem_aluResult[13]_i_5 I3 -pin riscv|mem_aluResult[14]_i_5 I1 -pin riscv|mem_aluResult[14]_i_6 I3 -pin riscv|mem_aluResult[15]_i_10 I1 -pin riscv|mem_aluResult[15]_i_9 I3 -pin riscv|mem_aluResult[16]_i_10 I3 -pin riscv|mem_aluResult[17]_i_7 I3 -pin riscv|mem_aluResult[18]_i_9 I3 -pin riscv|mem_aluResult[19]_i_11 I3 -pin riscv|mem_aluResult[1]_i_7 I0 -pin riscv|mem_aluResult[20]_i_9 I3 -pin riscv|mem_aluResult[21]_i_11 I3 -pin riscv|mem_aluResult[22]_i_11 I0 -pin riscv|mem_aluResult[22]_i_14 I3 -pin riscv|mem_aluResult[22]_i_16 I1 -pin riscv|mem_aluResult[23]_i_6 I3 -pin riscv|mem_aluResult[24]_i_6 I3 -pin riscv|mem_aluResult[27]_i_3 I3 -pin riscv|mem_aluResult[27]_i_7 I3 -pin riscv|mem_aluResult[29]_i_3 I5 -pin riscv|mem_aluResult[30]_i_21 I1 -pin riscv|mem_aluResult[31]_i_2 I5 -pin riscv|mem_aluResult[31]_i_3 I0 -pin riscv|mem_aluResult[31]_i_7 I3 -pin riscv|mem_aluResult[3]_i_7 I2
netloc riscv|ex_ALUCtrl[2] 1 0 29 4080 17548 NJ 17548 NJ 17548 NJ 17548 NJ 17548 NJ 17548 NJ 17548 NJ 17548 6200 16868 7240 16848 NJ 16848 NJ 16848 NJ 16848 NJ 16848 10130 16578 NJ 16578 12680 16278 13900 17668 15020 17568 17060 11698 18700 11438 NJ 11438 NJ 11438 NJ 11438 24550 11478 25330 22988 NJ 22988 29820 20908 31010
load net riscv|ex_ALUCtrl[2]_i_1_n_0 -attr @name ex_ALUCtrl[2]_i_1_n_0 -pin riscv|ex_ALUCtrl[2]_i_1 O -pin riscv|ex_ALUCtrl_reg[2] D
netloc riscv|ex_ALUCtrl[2]_i_1_n_0 1 24 1 24670 30138n
load net riscv|ex_ALUCtrl[2]_i_2_n_0 -attr @name ex_ALUCtrl[2]_i_2_n_0 -pin riscv|ex_ALUCtrl[2]_i_1 I1 -pin riscv|ex_ALUCtrl[2]_i_2 O
netloc riscv|ex_ALUCtrl[2]_i_2_n_0 1 23 1 21620 31908n
load net riscv|ex_ALUCtrl[2]_i_3_n_0 -attr @name ex_ALUCtrl[2]_i_3_n_0 -pin riscv|ex_ALUCtrl[2]_i_2 I0 -pin riscv|ex_ALUCtrl[2]_i_3 O
netloc riscv|ex_ALUCtrl[2]_i_3_n_0 1 22 1 20160 30738n
load net riscv|ex_ALUCtrl[2]_i_4_n_0 -attr @name ex_ALUCtrl[2]_i_4_n_0 -pin riscv|ex_ALUCtrl[2]_i_3 I0 -pin riscv|ex_ALUCtrl[2]_i_4 O
netloc riscv|ex_ALUCtrl[2]_i_4_n_0 1 21 1 18980 30438n
load net riscv|ex_ALUCtrl[2]_i_5_n_0 -attr @name ex_ALUCtrl[2]_i_5_n_0 -pin riscv|ex_ALUCtrl[2]_i_3 I1 -pin riscv|ex_ALUCtrl[2]_i_5 O
netloc riscv|ex_ALUCtrl[2]_i_5_n_0 1 21 1 N 30718
load net riscv|ex_ALUCtrl[2]_i_6_n_0 -attr @name ex_ALUCtrl[2]_i_6_n_0 -pin riscv|ex_ALUCtrl[2]_i_4 I1 -pin riscv|ex_ALUCtrl[2]_i_6 O
netloc riscv|ex_ALUCtrl[2]_i_6_n_0 1 20 1 NJ 30418
load net riscv|ex_ALUCtrl[3] -attr @name ex_ALUCtrl[3] -pin riscv|ex_ALUCtrl_reg[3] Q -pin riscv|mem_aluResult[0]_i_6 I0 -pin riscv|mem_aluResult[0]_i_7 I3 -pin riscv|mem_aluResult[0]_i_8 I4 -pin riscv|mem_aluResult[0]_i_9 I3 -pin riscv|mem_aluResult[11]_i_10 I0 -pin riscv|mem_aluResult[12]_i_4 I3 -pin riscv|mem_aluResult[12]_i_5 I2 -pin riscv|mem_aluResult[13]_i_4 I3 -pin riscv|mem_aluResult[13]_i_5 I2 -pin riscv|mem_aluResult[14]_i_5 I3 -pin riscv|mem_aluResult[14]_i_6 I2 -pin riscv|mem_aluResult[15]_i_10 I3 -pin riscv|mem_aluResult[15]_i_9 I2 -pin riscv|mem_aluResult[16]_i_10 I4 -pin riscv|mem_aluResult[17]_i_7 I4 -pin riscv|mem_aluResult[18]_i_9 I4 -pin riscv|mem_aluResult[19]_i_11 I4 -pin riscv|mem_aluResult[1]_i_4 I1 -pin riscv|mem_aluResult[1]_i_7 I3 -pin riscv|mem_aluResult[20]_i_9 I4 -pin riscv|mem_aluResult[21]_i_11 I4 -pin riscv|mem_aluResult[22]_i_14 I4 -pin riscv|mem_aluResult[22]_i_16 I2 -pin riscv|mem_aluResult[23]_i_6 I4 -pin riscv|mem_aluResult[24]_i_6 I4 -pin riscv|mem_aluResult[27]_i_3 I1 -pin riscv|mem_aluResult[27]_i_7 I4 -pin riscv|mem_aluResult[29]_i_3 I3 -pin riscv|mem_aluResult[2]_i_16 I0 -pin riscv|mem_aluResult[2]_i_3 I1 -pin riscv|mem_aluResult[30]_i_12 I0 -pin riscv|mem_aluResult[30]_i_21 I2 -pin riscv|mem_aluResult[31]_i_2 I2 -pin riscv|mem_aluResult[31]_i_22 I0 -pin riscv|mem_aluResult[31]_i_7 I1 -pin riscv|mem_aluResult[3]_i_7 I1
netloc riscv|ex_ALUCtrl[3] 1 0 29 4120 17528 NJ 17528 NJ 17528 NJ 17528 NJ 17528 NJ 17528 NJ 17528 NJ 17528 6500 16788 7260 16868 NJ 16868 NJ 16868 NJ 16868 NJ 16868 10110 16618 NJ 16618 12700 16298 14420 17688 15200 17768 17100 11738 18640 5688 NJ 5688 NJ 5688 22680 9128 23670 10428 26110 17798 27350J 17048 29520 21508 NJ
load net riscv|ex_ALUCtrl[3]_i_1_n_0 -attr @name ex_ALUCtrl[3]_i_1_n_0 -pin riscv|ex_ALUCtrl[3]_i_1 O -pin riscv|ex_ALUCtrl_reg[3] D
netloc riscv|ex_ALUCtrl[3]_i_1_n_0 1 23 1 21380 22108n
load net riscv|ex_ALUCtrl[3]_i_2_n_0 -attr @name ex_ALUCtrl[3]_i_2_n_0 -pin riscv|ex_ALUCtrl[0]_i_1 I3 -pin riscv|ex_ALUCtrl[1]_i_1 I2 -pin riscv|ex_ALUCtrl[3]_i_1 I1 -pin riscv|ex_ALUCtrl[3]_i_2 O
netloc riscv|ex_ALUCtrl[3]_i_2_n_0 1 22 2 21020 31788 21600
load net riscv|ex_ALUCtrl[3]_i_3_n_0 -attr @name ex_ALUCtrl[3]_i_3_n_0 -pin riscv|ex_ALUCtrl[0]_i_1 I4 -pin riscv|ex_ALUCtrl[1]_i_1 I5 -pin riscv|ex_ALUCtrl[3]_i_1 I5 -pin riscv|ex_ALUCtrl[3]_i_3 O
netloc riscv|ex_ALUCtrl[3]_i_3_n_0 1 22 2 21040 31808 21360
load net riscv|ex_ALUSrc -attr @name ex_ALUSrc -pin riscv|ex_ALUSrc_reg Q -pin riscv|i__carry__0_i_1 I4 -pin riscv|i__carry__0_i_10 I1 -pin riscv|i__carry__0_i_1__0 I5 -pin riscv|i__carry__0_i_1__1 I1 -pin riscv|i__carry__0_i_2 I4 -pin riscv|i__carry__0_i_2__0 I5 -pin riscv|i__carry__0_i_2__1 I1 -pin riscv|i__carry__0_i_3 I1 -pin riscv|i__carry__0_i_3__0 I4 -pin riscv|i__carry__0_i_3__1 I1 -pin riscv|i__carry__0_i_4 I1 -pin riscv|i__carry__0_i_4__0 I4 -pin riscv|i__carry__0_i_4__1 I1 -pin riscv|i__carry__0_i_5 I4 -pin riscv|i__carry__0_i_6 I4 -pin riscv|i__carry__0_i_7 I1 -pin riscv|i__carry__0_i_8 I1 -pin riscv|i__carry__0_i_9 I1 -pin riscv|i__carry__1_i_1 I1 -pin riscv|i__carry__1_i_1__0 I5 -pin riscv|i__carry__1_i_1__1 I1 -pin riscv|i__carry__1_i_2 I1 -pin riscv|i__carry__1_i_2__0 I5 -pin riscv|i__carry__1_i_2__1 I1 -pin riscv|i__carry__1_i_3 I1 -pin riscv|i__carry__1_i_3__0 I5 -pin riscv|i__carry__1_i_3__1 I1 -pin riscv|i__carry__1_i_4 I1 -pin riscv|i__carry__1_i_4__0 I5 -pin riscv|i__carry__1_i_4__1 I1 -pin riscv|i__carry__1_i_5 I1 -pin riscv|i__carry__1_i_6 I1 -pin riscv|i__carry__1_i_7 I1 -pin riscv|i__carry__1_i_8 I1 -pin riscv|i__carry__2_i_1 I5 -pin riscv|i__carry__2_i_1__0 I4 -pin riscv|i__carry__2_i_1__1 I2 -pin riscv|i__carry__2_i_2 I5 -pin riscv|i__carry__2_i_2__0 I2 -pin riscv|i__carry__2_i_2__1 I2 -pin riscv|i__carry__2_i_3 I5 -pin riscv|i__carry__2_i_3__0 I1 -pin riscv|i__carry__2_i_3__1 I2 -pin riscv|i__carry__2_i_4 I5 -pin riscv|i__carry__2_i_4__0 I1 -pin riscv|i__carry__2_i_4__1 I2 -pin riscv|i__carry__2_i_5 I1 -pin riscv|i__carry__2_i_5__0 I2 -pin riscv|i__carry__2_i_6 I1 -pin riscv|i__carry__2_i_7 I1 -pin riscv|i__carry__2_i_8 I1 -pin riscv|i__carry__3_i_1 I1 -pin riscv|i__carry__3_i_2 I2 -pin riscv|i__carry__3_i_3 I1 -pin riscv|i__carry__3_i_4 I2 -pin riscv|i__carry__4_i_1 I1 -pin riscv|i__carry__4_i_2 I2 -pin riscv|i__carry__4_i_3 I1 -pin riscv|i__carry__4_i_4 I2 -pin riscv|i__carry__5_i_1 I1 -pin riscv|i__carry__5_i_2 I2 -pin riscv|i__carry__5_i_3 I1 -pin riscv|i__carry__5_i_4 I2 -pin riscv|i__carry__6_i_1 I1 -pin riscv|i__carry__6_i_2 I1 -pin riscv|i__carry__6_i_3 I1 -pin riscv|i__carry__6_i_4 I2 -pin riscv|i__carry_i_1 I1 -pin riscv|i__carry_i_10 I1 -pin riscv|i__carry_i_11 I1 -pin riscv|i__carry_i_12 I1 -pin riscv|i__carry_i_1__0 I4 -pin riscv|i__carry_i_1__1 I2 -pin riscv|i__carry_i_2 I1 -pin riscv|i__carry_i_2__0 I4 -pin riscv|i__carry_i_2__1 I2 -pin riscv|i__carry_i_3 I2 -pin riscv|i__carry_i_3__0 I4 -pin riscv|i__carry_i_3__1 I2 -pin riscv|i__carry_i_4 I4 -pin riscv|i__carry_i_4__0 I1 -pin riscv|i__carry_i_4__1 I2 -pin riscv|i__carry_i_5 I1 -pin riscv|i__carry_i_6 I1 -pin riscv|i__carry_i_7 I2 -pin riscv|i__carry_i_8 I4 -pin riscv|i__carry_i_9 I1 -pin riscv|mem_aluResult[0]_i_2 I2 -pin riscv|mem_aluResult[11]_i_11 I1 -pin riscv|mem_aluResult[11]_i_16 I2 -pin riscv|mem_aluResult[11]_i_17 I2 -pin riscv|mem_aluResult[11]_i_18 I2 -pin riscv|mem_aluResult[11]_i_19 I2 -pin riscv|mem_aluResult[12]_i_8 I2 -pin riscv|mem_aluResult[13]_i_9 I2 -pin riscv|mem_aluResult[14]_i_11 I2 -pin riscv|mem_aluResult[15]_i_12 I1 -pin riscv|mem_aluResult[15]_i_13 I1 -pin riscv|mem_aluResult[15]_i_14 I1 -pin riscv|mem_aluResult[15]_i_15 I1 -pin riscv|mem_aluResult[15]_i_8 I2 -pin riscv|mem_aluResult[16]_i_11 I2 -pin riscv|mem_aluResult[17]_i_6 I2 -pin riscv|mem_aluResult[18]_i_10 I2 -pin riscv|mem_aluResult[19]_i_10 I2 -pin riscv|mem_aluResult[19]_i_14 I1 -pin riscv|mem_aluResult[19]_i_15 I1 -pin riscv|mem_aluResult[19]_i_16 I1 -pin riscv|mem_aluResult[19]_i_17 I1 -pin riscv|mem_aluResult[20]_i_10 I2 -pin riscv|mem_aluResult[21]_i_10 I2 -pin riscv|mem_aluResult[22]_i_10 I3 -pin riscv|mem_aluResult[22]_i_15 I2 -pin riscv|mem_aluResult[22]_i_8 I3 -pin riscv|mem_aluResult[23]_i_4 I2 -pin riscv|mem_aluResult[23]_i_5 I2 -pin riscv|mem_aluResult[24]_i_4 I2 -pin riscv|mem_aluResult[24]_i_5 I2 -pin riscv|mem_aluResult[25]_i_6 I2 -pin riscv|mem_aluResult[25]_i_7 I2 -pin riscv|mem_aluResult[26]_i_10 I2 -pin riscv|mem_aluResult[26]_i_11 I2 -pin riscv|mem_aluResult[26]_i_14 I1 -pin riscv|mem_aluResult[26]_i_15 I1 -pin riscv|mem_aluResult[26]_i_16 I1 -pin riscv|mem_aluResult[26]_i_17 I1 -pin riscv|mem_aluResult[26]_i_18 I1 -pin riscv|mem_aluResult[26]_i_19 I1 -pin riscv|mem_aluResult[26]_i_20 I1 -pin riscv|mem_aluResult[26]_i_21 I1 -pin riscv|mem_aluResult[27]_i_10 I2 -pin riscv|mem_aluResult[27]_i_5 I2 -pin riscv|mem_aluResult[27]_i_6 I2 -pin riscv|mem_aluResult[28]_i_10 I2 -pin riscv|mem_aluResult[28]_i_7 I2 -pin riscv|mem_aluResult[29]_i_6 I2 -pin riscv|mem_aluResult[29]_i_8 I2 -pin riscv|mem_aluResult[2]_i_11 I1 -pin riscv|mem_aluResult[2]_i_15 I2 -pin riscv|mem_aluResult[2]_i_16 I2 -pin riscv|mem_aluResult[2]_i_17 I1 -pin riscv|mem_aluResult[2]_i_18 I1 -pin riscv|mem_aluResult[2]_i_19 I1 -pin riscv|mem_aluResult[2]_i_2 I2 -pin riscv|mem_aluResult[2]_i_20 I1 -pin riscv|mem_aluResult[2]_i_21 I1 -pin riscv|mem_aluResult[2]_i_23 I1 -pin riscv|mem_aluResult[30]_i_11 I3 -pin riscv|mem_aluResult[30]_i_14 I2 -pin riscv|mem_aluResult[30]_i_23 I2 -pin riscv|mem_aluResult[30]_i_25 I3 -pin riscv|mem_aluResult[30]_i_26 I3 -pin riscv|mem_aluResult[30]_i_27 I3 -pin riscv|mem_aluResult[30]_i_28 I2 -pin riscv|mem_aluResult[30]_i_29 I2 -pin riscv|mem_aluResult[30]_i_30 I4 -pin riscv|mem_aluResult[30]_i_31 I4 -pin riscv|mem_aluResult[30]_i_32 I3 -pin riscv|mem_aluResult[30]_i_33 I3 -pin riscv|mem_aluResult[30]_i_34 I3 -pin riscv|mem_aluResult[30]_i_37 I2 -pin riscv|mem_aluResult[30]_i_38 I0 -pin riscv|mem_aluResult[30]_i_39 I1 -pin riscv|mem_aluResult[30]_i_40 I1 -pin riscv|mem_aluResult[30]_i_6 I3 -pin riscv|mem_aluResult[30]_i_9 I3 -pin riscv|mem_aluResult[31]_i_10 I1 -pin riscv|mem_aluResult[31]_i_12 I1 -pin riscv|mem_aluResult[31]_i_14 I1 -pin riscv|mem_aluResult[31]_i_16 I3 -pin riscv|mem_aluResult[31]_i_18 I3 -pin riscv|mem_aluResult[31]_i_19 I4 -pin riscv|mem_aluResult[31]_i_20 I4 -pin riscv|mem_aluResult[31]_i_22 I3 -pin riscv|mem_aluResult[31]_i_23 I1 -pin riscv|mem_aluResult[31]_i_24 I1 -pin riscv|mem_aluResult[31]_i_6 I2 -pin riscv|mem_aluResult[3]_i_3 I1 -pin riscv|mem_aluResult[5]_i_6 I1 -pin riscv|mem_aluResult[7]_i_11 I2 -pin riscv|mem_aluResult[7]_i_12 I2 -pin riscv|mem_aluResult[7]_i_13 I2 -pin riscv|mem_aluResult[7]_i_14 I2 -pin riscv|mem_aluResult[7]_i_6 I1 -pin riscv|mem_aluResult[9]_i_6 I1
netloc riscv|ex_ALUSrc 1 7 22 5900 17508 6180 16688 7080 16948 NJ 16948 NJ 16948 8640 18558 8920 18558 10050 17208 11460 17308 12740 15288 13540 19678 15340 20238 17380 19238 NJ 19238 NJ 19238 20340 10648 22340 7468 24390 8308 25870 15658 27510 22458 29140 22488 30750
load net riscv|ex_Branch -attr @name ex_Branch -pin riscv|ex_Branch_reg Q -pin riscv|mem_Branch_reg D
netloc riscv|ex_Branch 1 30 1 31950 22798n
load net riscv|ex_Branch_i_1_n_0 -attr @name ex_Branch_i_1_n_0 -pin riscv|ex_Branch_i_1 O -pin riscv|ex_Branch_reg D
netloc riscv|ex_Branch_i_1_n_0 1 29 1 31590 22958n
load net riscv|ex_MemtoReg -attr @name ex_MemtoReg -pin riscv|ex_MemtoReg_reg Q -pin riscv|mem_MemtoReg_reg D
netloc riscv|ex_MemtoReg 1 21 1 N 28378
load net riscv|ex_PC[0] -attr @name ex_PC[0] -pin riscv|ex_PC_reg[0] Q -pin riscv|ex_branchAddress_carry_i_4 I1
netloc riscv|ex_PC[0] 1 20 1 17960 15528n
load net riscv|ex_PC[10] -attr @name ex_PC[10] -pin riscv|ex_PC_reg[10] Q -pin riscv|ex_branchAddress_carry__1_i_2 I1
netloc riscv|ex_PC[10] 1 22 1 20300 14958n
load net riscv|ex_PC[11] -attr @name ex_PC[11] -pin riscv|ex_PC_reg[11] Q -pin riscv|ex_branchAddress_carry__1_i_1 I1
netloc riscv|ex_PC[11] 1 22 1 20400 14868n
load net riscv|ex_PC[12] -attr @name ex_PC[12] -pin riscv|ex_PC_reg[12] Q -pin riscv|ex_branchAddress_carry__2_i_4 I1
netloc riscv|ex_PC[12] 1 23 1 22380 15678n
load net riscv|ex_PC[13] -attr @name ex_PC[13] -pin riscv|ex_PC_reg[13] Q -pin riscv|ex_branchAddress_carry__2_i_3 I1
netloc riscv|ex_PC[13] 1 23 1 N 15828
load net riscv|ex_PC[14] -attr @name ex_PC[14] -pin riscv|ex_PC_reg[14] Q -pin riscv|ex_branchAddress_carry__2_i_2 I1
netloc riscv|ex_PC[14] 1 23 1 22100 15738n
load net riscv|ex_PC[15] -attr @name ex_PC[15] -pin riscv|ex_PC_reg[15] Q -pin riscv|ex_branchAddress_carry__2_i_1 I1
netloc riscv|ex_PC[15] 1 23 1 22080 15648n
load net riscv|ex_PC[16] -attr @name ex_PC[16] -pin riscv|ex_PC_reg[16] Q -pin riscv|ex_branchAddress_carry__3_i_4 I1
netloc riscv|ex_PC[16] 1 24 1 24150 16128n
load net riscv|ex_PC[17] -attr @name ex_PC[17] -pin riscv|ex_PC_reg[17] Q -pin riscv|ex_branchAddress_carry__3_i_3 I1
netloc riscv|ex_PC[17] 1 24 1 24130 16418n
load net riscv|ex_PC[18] -attr @name ex_PC[18] -pin riscv|ex_PC_reg[18] Q -pin riscv|ex_branchAddress_carry__3_i_2 I1
netloc riscv|ex_PC[18] 1 24 1 24110 16548n
load net riscv|ex_PC[19] -attr @name ex_PC[19] -pin riscv|ex_PC_reg[19] Q -pin riscv|ex_branchAddress_carry__3_i_1 I1
netloc riscv|ex_PC[19] 1 24 1 24090 16448n
load net riscv|ex_PC[1] -attr @name ex_PC[1] -pin riscv|ex_PC_reg[1] Q -pin riscv|ex_branchAddress_carry_i_3 I1
netloc riscv|ex_PC[1] 1 20 1 N 15678
load net riscv|ex_PC[20] -attr @name ex_PC[20] -pin riscv|ex_PC_reg[20] Q -pin riscv|ex_branchAddress_carry__4_i_4 I1
netloc riscv|ex_PC[20] 1 25 1 25610 14648n
load net riscv|ex_PC[21] -attr @name ex_PC[21] -pin riscv|ex_PC_reg[21] Q -pin riscv|ex_branchAddress_carry__4_i_3 I1
netloc riscv|ex_PC[21] 1 25 1 25590 14798n
load net riscv|ex_PC[22] -attr @name ex_PC[22] -pin riscv|ex_PC_reg[22] Q -pin riscv|ex_branchAddress_carry__4_i_2 I1
netloc riscv|ex_PC[22] 1 25 1 25970 15048n
load net riscv|ex_PC[23] -attr @name ex_PC[23] -pin riscv|ex_PC_reg[23] Q -pin riscv|ex_branchAddress_carry__4_i_1 I1
netloc riscv|ex_PC[23] 1 25 1 25950 14958n
load net riscv|ex_PC[24] -attr @name ex_PC[24] -pin riscv|ex_PC_reg[24] Q -pin riscv|ex_branchAddress_carry__5_i_4 I1
netloc riscv|ex_PC[24] 1 26 1 28730 2898n
load net riscv|ex_PC[25] -attr @name ex_PC[25] -pin riscv|ex_PC_reg[25] Q -pin riscv|ex_branchAddress_carry__5_i_3 I1
netloc riscv|ex_PC[25] 1 26 1 28690 3048n
load net riscv|ex_PC[26] -attr @name ex_PC[26] -pin riscv|ex_PC_reg[26] Q -pin riscv|ex_branchAddress_carry__5_i_2 I1
netloc riscv|ex_PC[26] 1 26 1 28650 3198n
load net riscv|ex_PC[27] -attr @name ex_PC[27] -pin riscv|ex_PC_reg[27] Q -pin riscv|ex_branchAddress_carry__5_i_1 I1
netloc riscv|ex_PC[27] 1 26 1 N 3348
load net riscv|ex_PC[28] -attr @name ex_PC[28] -pin riscv|ex_PC_reg[28] Q -pin riscv|ex_branchAddress_carry__6_i_4 I1
netloc riscv|ex_PC[28] 1 27 1 29880 16408n
load net riscv|ex_PC[29] -attr @name ex_PC[29] -pin riscv|ex_PC_reg[29] Q -pin riscv|ex_branchAddress_carry__6_i_3 I1
netloc riscv|ex_PC[29] 1 27 1 29860 16558n
load net riscv|ex_PC[2] -attr @name ex_PC[2] -pin riscv|ex_PC_reg[2] Q -pin riscv|ex_branchAddress_carry_i_2 I1
netloc riscv|ex_PC[2] 1 20 1 18040 15588n
load net riscv|ex_PC[30] -attr @name ex_PC[30] -pin riscv|ex_PC_reg[30] Q -pin riscv|ex_branchAddress_carry__6_i_2 I1
netloc riscv|ex_PC[30] 1 27 1 N 16708
load net riscv|ex_PC[31] -attr @name ex_PC[31] -pin riscv|ex_PC_reg[31] Q -pin riscv|ex_branchAddress_carry__6_i_1 I1
netloc riscv|ex_PC[31] 1 27 1 29260 16618n
load net riscv|ex_PC[3] -attr @name ex_PC[3] -pin riscv|ex_PC_reg[3] Q -pin riscv|ex_branchAddress_carry_i_1 I1
netloc riscv|ex_PC[3] 1 20 1 18000 15498n
load net riscv|ex_PC[4] -attr @name ex_PC[4] -pin riscv|ex_PC_reg[4] Q -pin riscv|ex_branchAddress_carry__0_i_4 I1
netloc riscv|ex_PC[4] 1 21 1 19180 15888n
load net riscv|ex_PC[5] -attr @name ex_PC[5] -pin riscv|ex_PC_reg[5] Q -pin riscv|ex_branchAddress_carry__0_i_3 I1
netloc riscv|ex_PC[5] 1 21 1 19240 15968n
load net riscv|ex_PC[6] -attr @name ex_PC[6] -pin riscv|ex_PC_reg[6] Q -pin riscv|ex_branchAddress_carry__0_i_2 I1
netloc riscv|ex_PC[6] 1 21 1 19220 15878n
load net riscv|ex_PC[7] -attr @name ex_PC[7] -pin riscv|ex_PC_reg[7] Q -pin riscv|ex_branchAddress_carry__0_i_1 I1
netloc riscv|ex_PC[7] 1 21 1 19260 15788n
load net riscv|ex_PC[8] -attr @name ex_PC[8] -pin riscv|ex_PC_reg[8] Q -pin riscv|ex_branchAddress_carry__1_i_4 I1
netloc riscv|ex_PC[8] 1 22 1 N 15138
load net riscv|ex_PC[9] -attr @name ex_PC[9] -pin riscv|ex_PC_reg[9] Q -pin riscv|ex_branchAddress_carry__1_i_3 I1
netloc riscv|ex_PC[9] 1 22 1 20280 15048n
load net riscv|ex_RegWrite -attr @name ex_RegWrite -pin riscv|ex_RegWrite_reg Q -pin riscv|mem_RegWrite_reg D
netloc riscv|ex_RegWrite 1 23 1 21780 29928n
load net riscv|ex_Zero -attr @name ex_Zero -pin riscv|mem_Zero_i_1 O -pin riscv|mem_Zero_reg D
netloc riscv|ex_Zero 1 30 1 31970 22948n
load net riscv|ex_aluOp2[0] -attr @name ex_aluOp2[0] -pin riscv|mem_aluResult[0]_i_4 I0 -pin riscv|mem_aluResult[0]_i_8 I3 -pin riscv|mem_aluResult[18]_i_3 I5 -pin riscv|mem_aluResult[22]_i_4 I5 -pin riscv|mem_aluResult[27]_i_11 I5 -pin riscv|mem_aluResult[27]_i_8 I5 -pin riscv|mem_aluResult[2]_i_8 I0 -pin riscv|mem_aluResult[30]_i_3 I5 -pin riscv|mem_aluResult[30]_i_5 I5 -pin riscv|mem_aluResult[31]_i_12 O -pin riscv|mem_aluResult[31]_i_15 I5 -pin riscv|mem_aluResult[31]_i_4 I5
netloc riscv|ex_aluOp2[0] 1 8 21 6720 18958 NJ 18958 NJ 18958 NJ 18958 8620J 18938 NJ 18938 NJ 18938 10620J 18958 NJ 18958 NJ 18958 NJ 18958 NJ 18958 NJ 18958 NJ 18958 20720J 18918 NJ 18918 23610 11458 25670 17028 28690 19308 29100 20188 NJ
load net riscv|ex_aluOp2[10] -attr @name ex_aluOp2[10] -pin riscv|i__carry__0_i_3 I4 -pin riscv|i__carry__0_i_3__0 I0 -pin riscv|i__carry__0_i_7 I4 -pin riscv|i__carry__0_i_9 O -pin riscv|mem_aluResult[10]_i_3 I4 -pin riscv|mem_aluResult[10]_i_6 I4 -pin riscv|mem_aluResult[31]_i_20 I2
netloc riscv|ex_aluOp2[10] 1 14 10 10270 13798 11400 14658 NJ 14658 13520J 15588 15380J 15408 17000J 15388 18040J 15378 19220J 15388 20920J 15398 21800
load net riscv|ex_aluOp2[11] -attr @name ex_aluOp2[11] -pin riscv|mem_aluResult[11]_i_11 O -pin riscv|mem_aluResult[11]_i_12 I4 -pin riscv|mem_aluResult[11]_i_4 I4 -pin riscv|mem_aluResult[30]_i_15 I4
netloc riscv|ex_aluOp2[11] 1 14 13 10230 13618 11140 19408 12920J 19098 NJ 19098 NJ 19098 NJ 19098 NJ 19098 NJ 19098 NJ 19098 NJ 19098 24190J 19078 NJ 19078 27050
load net riscv|ex_aluOp2[12] -attr @name ex_aluOp2[12] -pin riscv|mem_aluResult[12]_i_4 I0 -pin riscv|mem_aluResult[12]_i_6 I0 -pin riscv|mem_aluResult[12]_i_8 O -pin riscv|mem_aluResult[30]_i_15 I1 -pin riscv|mem_aluResult[31]_i_21 I4
netloc riscv|ex_aluOp2[12] 1 19 8 17440 11958 18540 12508 NJ 12508 NJ 12508 21680 11178 NJ 11178 NJ 11178 27190
load net riscv|ex_aluOp2[13] -attr @name ex_aluOp2[13] -pin riscv|mem_aluResult[13]_i_4 I0 -pin riscv|mem_aluResult[13]_i_6 I0 -pin riscv|mem_aluResult[13]_i_9 O -pin riscv|mem_aluResult[30]_i_15 I0 -pin riscv|mem_aluResult[31]_i_21 I5
netloc riscv|ex_aluOp2[13] 1 17 10 14180 18618 15700 17508 NJ 17508 NJ 17508 NJ 17508 NJ 17508 22060 17008 NJ 17008 NJ 17008 27270J
load net riscv|ex_aluOp2[14] -attr @name ex_aluOp2[14] -pin riscv|mem_aluResult[14]_i_11 O -pin riscv|mem_aluResult[14]_i_5 I0 -pin riscv|mem_aluResult[14]_i_7 I0
netloc riscv|ex_aluOp2[14] 1 8 2 6540 17218 7220J
load net riscv|ex_aluOp2[15] -attr @name ex_aluOp2[15] -pin riscv|mem_aluResult[15]_i_10 I0 -pin riscv|mem_aluResult[15]_i_4 I4 -pin riscv|mem_aluResult[15]_i_8 O
netloc riscv|ex_aluOp2[15] 1 8 2 6720 17768 6940
load net riscv|ex_aluOp2[1] -attr @name ex_aluOp2[1] -pin riscv|i__carry_i_12 O -pin riscv|i__carry_i_4 I1 -pin riscv|i__carry_i_4__0 I5 -pin riscv|i__carry_i_8 I1 -pin riscv|mem_aluResult[0]_i_10 I5 -pin riscv|mem_aluResult[10]_i_2 I3 -pin riscv|mem_aluResult[11]_i_2 I3 -pin riscv|mem_aluResult[11]_i_3 I3 -pin riscv|mem_aluResult[13]_i_7 I3 -pin riscv|mem_aluResult[14]_i_4 I3 -pin riscv|mem_aluResult[14]_i_8 I3 -pin riscv|mem_aluResult[15]_i_2 I3 -pin riscv|mem_aluResult[15]_i_3 I3 -pin riscv|mem_aluResult[16]_i_3 I3 -pin riscv|mem_aluResult[16]_i_4 I3 -pin riscv|mem_aluResult[17]_i_3 I3 -pin riscv|mem_aluResult[18]_i_8 I3 -pin riscv|mem_aluResult[19]_i_4 I3 -pin riscv|mem_aluResult[19]_i_6 I3 -pin riscv|mem_aluResult[1]_i_3 I5 -pin riscv|mem_aluResult[1]_i_4 I0 -pin riscv|mem_aluResult[1]_i_5 I1 -pin riscv|mem_aluResult[1]_i_6 I2 -pin riscv|mem_aluResult[20]_i_4 I3 -pin riscv|mem_aluResult[21]_i_4 I3 -pin riscv|mem_aluResult[22]_i_5 I3 -pin riscv|mem_aluResult[23]_i_7 I3 -pin riscv|mem_aluResult[24]_i_7 I3 -pin riscv|mem_aluResult[24]_i_8 I3 -pin riscv|mem_aluResult[25]_i_2 I3 -pin riscv|mem_aluResult[26]_i_12 I4 -pin riscv|mem_aluResult[26]_i_2 I3 -pin riscv|mem_aluResult[26]_i_3 I3 -pin riscv|mem_aluResult[27]_i_9 I3 -pin riscv|mem_aluResult[28]_i_2 I3 -pin riscv|mem_aluResult[29]_i_2 I1 -pin riscv|mem_aluResult[2]_i_5 I2 -pin riscv|mem_aluResult[2]_i_6 I2 -pin riscv|mem_aluResult[30]_i_2 I1 -pin riscv|mem_aluResult[30]_i_4 I1 -pin riscv|mem_aluResult[31]_i_13 I5 -pin riscv|mem_aluResult[3]_i_5 I1 -pin riscv|mem_aluResult[4]_i_2 I3 -pin riscv|mem_aluResult[5]_i_2 I3 -pin riscv|mem_aluResult[5]_i_8 I3 -pin riscv|mem_aluResult[6]_i_2 I3 -pin riscv|mem_aluResult[6]_i_7 I3 -pin riscv|mem_aluResult[7]_i_2 I3 -pin riscv|mem_aluResult[8]_i_2 I3 -pin riscv|mem_aluResult[9]_i_2 I3
netloc riscv|ex_aluOp2[1] 1 8 20 6620 12978 7300 13098 NJ 13098 NJ 13098 NJ 13098 NJ 13098 10210 12858 10840 13978 12860 13558 14080 11998 15680 12158 17160 11638 18500 11248 NJ 11248 20020 9068 NJ 9068 23870 8508 26350 9128 28370 17998 29620
load net riscv|ex_aluOp2[2] -attr @name ex_aluOp2[2] -pin riscv|i__carry_i_11 O -pin riscv|i__carry_i_3 I5 -pin riscv|i__carry_i_3__0 I0 -pin riscv|i__carry_i_7 I5 -pin riscv|mem_aluResult[10]_i_2 I2 -pin riscv|mem_aluResult[11]_i_2 I2 -pin riscv|mem_aluResult[11]_i_3 I2 -pin riscv|mem_aluResult[13]_i_7 I2 -pin riscv|mem_aluResult[14]_i_4 I2 -pin riscv|mem_aluResult[14]_i_8 I2 -pin riscv|mem_aluResult[15]_i_2 I2 -pin riscv|mem_aluResult[15]_i_3 I2 -pin riscv|mem_aluResult[16]_i_3 I2 -pin riscv|mem_aluResult[16]_i_4 I2 -pin riscv|mem_aluResult[17]_i_3 I2 -pin riscv|mem_aluResult[18]_i_8 I2 -pin riscv|mem_aluResult[19]_i_4 I2 -pin riscv|mem_aluResult[19]_i_6 I2 -pin riscv|mem_aluResult[1]_i_6 I1 -pin riscv|mem_aluResult[20]_i_4 I2 -pin riscv|mem_aluResult[21]_i_4 I2 -pin riscv|mem_aluResult[22]_i_5 I2 -pin riscv|mem_aluResult[23]_i_7 I2 -pin riscv|mem_aluResult[24]_i_7 I2 -pin riscv|mem_aluResult[24]_i_8 I4 -pin riscv|mem_aluResult[25]_i_2 I2 -pin riscv|mem_aluResult[26]_i_12 I3 -pin riscv|mem_aluResult[26]_i_2 I2 -pin riscv|mem_aluResult[26]_i_3 I2 -pin riscv|mem_aluResult[27]_i_9 I4 -pin riscv|mem_aluResult[28]_i_2 I2 -pin riscv|mem_aluResult[2]_i_13 I1 -pin riscv|mem_aluResult[2]_i_14 I1 -pin riscv|mem_aluResult[2]_i_22 I4 -pin riscv|mem_aluResult[2]_i_24 I4 -pin riscv|mem_aluResult[2]_i_5 I1 -pin riscv|mem_aluResult[2]_i_6 I1 -pin riscv|mem_aluResult[30]_i_16 I1 -pin riscv|mem_aluResult[30]_i_24 I4 -pin riscv|mem_aluResult[30]_i_35 I4 -pin riscv|mem_aluResult[30]_i_8 I1 -pin riscv|mem_aluResult[4]_i_2 I2 -pin riscv|mem_aluResult[5]_i_2 I2 -pin riscv|mem_aluResult[5]_i_8 I4 -pin riscv|mem_aluResult[6]_i_2 I2 -pin riscv|mem_aluResult[6]_i_7 I4 -pin riscv|mem_aluResult[7]_i_2 I2 -pin riscv|mem_aluResult[8]_i_2 I2 -pin riscv|mem_aluResult[9]_i_2 I2
netloc riscv|ex_aluOp2[2] 1 8 20 6580 12958 7340 13078 NJ 13078 NJ 13078 NJ 13078 NJ 13078 10230 12878 11460 13958 12840 13538 14180 11978 15720 12138 17320 11618 18460 11028 NJ 11028 19960 5808 21460 5628 24370 5478 26550 10488 28650 16308 29920
load net riscv|ex_aluOp2[3] -attr @name ex_aluOp2[3] -pin riscv|mem_aluResult[26]_i_8 I3 -pin riscv|mem_aluResult[28]_i_6 I3 -pin riscv|mem_aluResult[30]_i_18 I3 -pin riscv|mem_aluResult[31]_i_17 I3 -pin riscv|mem_aluResult[31]_i_24 O -pin riscv|mem_aluResult[3]_i_6 I4 -pin riscv|mem_aluResult[3]_i_8 I2 -pin riscv|mem_aluResult[4]_i_5 I3 -pin riscv|mem_aluResult[5]_i_5 I3 -pin riscv|mem_aluResult[6]_i_5 I3 -pin riscv|mem_aluResult[7]_i_5 I3
netloc riscv|ex_aluOp2[3] 1 24 3 23550 10228 26630 14858 27570
load net riscv|ex_aluOp2[4] -attr @name ex_aluOp2[4] -pin riscv|i__carry_i_10 O -pin riscv|i__carry_i_2 I4 -pin riscv|i__carry_i_2__0 I0 -pin riscv|i__carry_i_6 I4 -pin riscv|mem_aluResult[26]_i_8 I2 -pin riscv|mem_aluResult[28]_i_6 I2 -pin riscv|mem_aluResult[30]_i_18 I2 -pin riscv|mem_aluResult[31]_i_17 I2 -pin riscv|mem_aluResult[4]_i_3 I4 -pin riscv|mem_aluResult[4]_i_5 I2 -pin riscv|mem_aluResult[4]_i_6 I4 -pin riscv|mem_aluResult[5]_i_5 I2 -pin riscv|mem_aluResult[6]_i_5 I2 -pin riscv|mem_aluResult[7]_i_5 I2
netloc riscv|ex_aluOp2[4] 1 22 5 21020 12528 21720J 11968 23430 10208 26570 14878 27530
load net riscv|ex_aluOp2[5] -attr @name ex_aluOp2[5] -pin riscv|mem_aluResult[31]_i_21 I3 -pin riscv|mem_aluResult[5]_i_3 I4 -pin riscv|mem_aluResult[5]_i_6 O -pin riscv|mem_aluResult[5]_i_7 I4
netloc riscv|ex_aluOp2[5] 1 23 3 22800 7488 23810 6408 25490
load net riscv|ex_aluOp2[6] -attr @name ex_aluOp2[6] -pin riscv|i__carry_i_1 I4 -pin riscv|i__carry_i_1__0 I0 -pin riscv|i__carry_i_5 I4 -pin riscv|i__carry_i_9 O -pin riscv|mem_aluResult[31]_i_21 I2 -pin riscv|mem_aluResult[6]_i_3 I4 -pin riscv|mem_aluResult[6]_i_6 I4
netloc riscv|ex_aluOp2[6] 1 22 4 21000 11378 21660 7508 23790 6048 NJ
load net riscv|ex_aluOp2[7] -attr @name ex_aluOp2[7] -pin riscv|mem_aluResult[31]_i_21 I1 -pin riscv|mem_aluResult[7]_i_3 I4 -pin riscv|mem_aluResult[7]_i_6 O -pin riscv|mem_aluResult[7]_i_7 I4
netloc riscv|ex_aluOp2[7] 1 23 3 21600 7528 23850 7208 NJ
load net riscv|ex_aluOp2[8] -attr @name ex_aluOp2[8] -pin riscv|i__carry__0_i_10 O -pin riscv|i__carry__0_i_4 I4 -pin riscv|i__carry__0_i_4__0 I0 -pin riscv|i__carry__0_i_8 I4 -pin riscv|mem_aluResult[31]_i_21 I0 -pin riscv|mem_aluResult[8]_i_3 I4 -pin riscv|mem_aluResult[8]_i_6 I4
netloc riscv|ex_aluOp2[8] 1 17 7 14540 15548 15200 15428 17020J 15408 18060J 15398 19200J 15408 19940J 15558 21840
load net riscv|ex_aluOp2[9] -attr @name ex_aluOp2[9] -pin riscv|mem_aluResult[9]_i_3 I4 -pin riscv|mem_aluResult[9]_i_6 O -pin riscv|mem_aluResult[9]_i_7 I4
netloc riscv|ex_aluOp2[9] 1 16 2 13040 13758 13460
load net riscv|ex_aluOp2__76[16] -attr @name ex_aluOp2__76[16] -pin riscv|mem_aluResult[16]_i_11 O -pin riscv|mem_aluResult[16]_i_5 I3
netloc riscv|ex_aluOp2__76[16] 1 18 1 15600 14968n
load net riscv|ex_aluOp2__76[17] -attr @name ex_aluOp2__76[17] -pin riscv|mem_aluResult[17]_i_4 I2 -pin riscv|mem_aluResult[17]_i_6 O
netloc riscv|ex_aluOp2__76[17] 1 20 1 18340 18178n
load net riscv|ex_aluOp2__76[18] -attr @name ex_aluOp2__76[18] -pin riscv|mem_aluResult[18]_i_10 O -pin riscv|mem_aluResult[18]_i_5 I3
netloc riscv|ex_aluOp2__76[18] 1 20 1 18420 18028n
load net riscv|ex_aluOp2__76[19] -attr @name ex_aluOp2__76[19] -pin riscv|mem_aluResult[19]_i_10 O -pin riscv|mem_aluResult[19]_i_5 I2
netloc riscv|ex_aluOp2__76[19] 1 15 1 11100 15788n
load net riscv|ex_aluOp2__76[20] -attr @name ex_aluOp2__76[20] -pin riscv|mem_aluResult[20]_i_10 O -pin riscv|mem_aluResult[20]_i_5 I3
netloc riscv|ex_aluOp2__76[20] 1 20 1 18380 17848n
load net riscv|ex_aluOp2__76[21] -attr @name ex_aluOp2__76[21] -pin riscv|mem_aluResult[21]_i_10 O -pin riscv|mem_aluResult[21]_i_5 I2
netloc riscv|ex_aluOp2__76[21] 1 18 1 15360 14468n
load net riscv|ex_aluOp2__76[22] -attr @name ex_aluOp2__76[22] -pin riscv|mem_aluResult[22]_i_15 O -pin riscv|mem_aluResult[22]_i_6 I3 -pin riscv|mem_aluResult[30]_i_13 I2
netloc riscv|ex_aluOp2__76[22] 1 1 24 4400 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 NJ 18058 10600J 18378 12760J 18238 NJ 18238 15740J 17928 NJ 17928 NJ 17928 NJ 17928 NJ 17928 NJ 17928 24050
load net riscv|ex_aluOp2__76[23] -attr @name ex_aluOp2__76[23] -pin riscv|mem_aluResult[23]_i_1 I5 -pin riscv|mem_aluResult[23]_i_4 O
netloc riscv|ex_aluOp2__76[23] 1 10 1 7940 18258n
load net riscv|ex_aluOp2__76[24] -attr @name ex_aluOp2__76[24] -pin riscv|mem_aluResult[24]_i_1 I3 -pin riscv|mem_aluResult[24]_i_4 O
netloc riscv|ex_aluOp2__76[24] 1 19 1 17260 19868n
load net riscv|ex_aluOp2__76[27] -attr @name ex_aluOp2__76[27] -pin riscv|mem_aluResult[27]_i_1 I5 -pin riscv|mem_aluResult[27]_i_5 O
netloc riscv|ex_aluOp2__76[27] 1 18 1 15820 18088n
load net riscv|ex_aluOp2__76[28] -attr @name ex_aluOp2__76[28] -pin riscv|mem_aluResult[28]_i_3 I2 -pin riscv|mem_aluResult[28]_i_7 O
netloc riscv|ex_aluOp2__76[28] 1 27 1 29080 22038n
load net riscv|ex_aluOp2__76[29] -attr @name ex_aluOp2__76[29] -pin riscv|mem_aluResult[30]_i_13 I0 -pin riscv|mem_aluResult[30]_i_28 O
netloc riscv|ex_aluOp2__76[29] 1 24 1 24010 13958n
load net riscv|ex_aluOp2__76[30] -attr @name ex_aluOp2__76[30] -pin riscv|mem_aluResult[30]_i_13 I1 -pin riscv|mem_aluResult[30]_i_29 O
netloc riscv|ex_aluOp2__76[30] 1 24 1 24210 13978n
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 O[3] -pin riscv|mem_aluResult[7]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 O[2] -pin riscv|mem_aluResult[6]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 O[1] -pin riscv|mem_aluResult[5]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__0_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__0_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 O[0] -pin riscv|mem_aluResult[4]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 O[3] -pin riscv|mem_aluResult[11]_i_4 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 O[2] -pin riscv|mem_aluResult[10]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 O[1] -pin riscv|mem_aluResult[9]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__1_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__1_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 O[0] -pin riscv|mem_aluResult[8]_i_3 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 O[3] -pin riscv|mem_aluResult[15]_i_4 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 O[2] -pin riscv|mem_aluResult[14]_i_7 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 O[1] -pin riscv|mem_aluResult[13]_i_6 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__2_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__2_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 O[0] -pin riscv|mem_aluResult[12]_i_6 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 O[3] -pin riscv|mem_aluResult[19]_i_11 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 O[2] -pin riscv|mem_aluResult[18]_i_9 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 O[1] -pin riscv|mem_aluResult[17]_i_7 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__3_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__3_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 O[0] -pin riscv|mem_aluResult[16]_i_10 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 O[3] -pin riscv|mem_aluResult[23]_i_6 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 O[2] -pin riscv|mem_aluResult[22]_i_14 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 O[1] -pin riscv|mem_aluResult[21]_i_11 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__4_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__4_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 O[0] -pin riscv|mem_aluResult[20]_i_9 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__6 CI
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 O[3] -pin riscv|mem_aluResult[27]_i_7 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 O[2] -pin riscv|mem_aluResult[26]_i_4 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 O[1] -pin riscv|mem_aluResult[25]_i_3 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__5_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__5_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 O[0] -pin riscv|mem_aluResult[24]_i_6 I0
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 O[3] -pin riscv|mem_aluResult[31]_i_2 I1
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 O[2] -pin riscv|mem_aluResult[30]_i_7 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 O[1] -pin riscv|mem_aluResult[29]_i_4 I3
load net riscv|ex_aluResult0_inferred__0/i__carry__6_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry__6_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 O[0] -pin riscv|mem_aluResult[28]_i_4 I3
load net riscv|ex_aluResult0_inferred__0/i__carry_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__0/i__carry_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry CO[3] -pin riscv|ex_aluResult0_inferred__0/i__carry__0 CI
load net riscv|ex_aluResult0_inferred__0/i__carry_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__0/i__carry_n_1 -pin riscv|ex_aluResult0_inferred__0/i__carry CO[2]
load net riscv|ex_aluResult0_inferred__0/i__carry_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__0/i__carry_n_2 -pin riscv|ex_aluResult0_inferred__0/i__carry CO[1]
load net riscv|ex_aluResult0_inferred__0/i__carry_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__0/i__carry_n_3 -pin riscv|ex_aluResult0_inferred__0/i__carry CO[0]
load net riscv|ex_aluResult0_inferred__0/i__carry_n_4 -attr @rip(#000000) O[3] -attr @name ex_aluResult0_inferred__0/i__carry_n_4 -pin riscv|ex_aluResult0_inferred__0/i__carry O[3] -pin riscv|mem_aluResult[3]_i_8 I3
load net riscv|ex_aluResult0_inferred__0/i__carry_n_5 -attr @rip(#000000) O[2] -attr @name ex_aluResult0_inferred__0/i__carry_n_5 -pin riscv|ex_aluResult0_inferred__0/i__carry O[2] -pin riscv|mem_aluResult[2]_i_4 I3
load net riscv|ex_aluResult0_inferred__0/i__carry_n_6 -attr @rip(#000000) O[1] -attr @name ex_aluResult0_inferred__0/i__carry_n_6 -pin riscv|ex_aluResult0_inferred__0/i__carry O[1] -pin riscv|mem_aluResult[1]_i_7 I4
load net riscv|ex_aluResult0_inferred__0/i__carry_n_7 -attr @rip(#000000) O[0] -attr @name ex_aluResult0_inferred__0/i__carry_n_7 -pin riscv|ex_aluResult0_inferred__0/i__carry O[0] -pin riscv|mem_aluResult[0]_i_1 I5
load net riscv|ex_aluResult0_inferred__4/i__carry__0_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__4/i__carry__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CO[3] -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CI
load net riscv|ex_aluResult0_inferred__4/i__carry__0_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__4/i__carry__0_n_1 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CO[2]
load net riscv|ex_aluResult0_inferred__4/i__carry__0_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__4/i__carry__0_n_2 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CO[1]
load net riscv|ex_aluResult0_inferred__4/i__carry__0_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__4/i__carry__0_n_3 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CO[0]
load net riscv|ex_aluResult0_inferred__4/i__carry__1_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__4/i__carry__1_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CO[3] -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CI
load net riscv|ex_aluResult0_inferred__4/i__carry__1_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__4/i__carry__1_n_1 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CO[2]
load net riscv|ex_aluResult0_inferred__4/i__carry__1_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__4/i__carry__1_n_2 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CO[1]
load net riscv|ex_aluResult0_inferred__4/i__carry__1_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__4/i__carry__1_n_3 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 CO[0]
load net riscv|ex_aluResult0_inferred__4/i__carry__2_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__4/i__carry__2_n_1 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CO[2]
load net riscv|ex_aluResult0_inferred__4/i__carry__2_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__4/i__carry__2_n_2 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CO[1]
load net riscv|ex_aluResult0_inferred__4/i__carry__2_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__4/i__carry__2_n_3 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 CO[0]
load net riscv|ex_aluResult0_inferred__4/i__carry_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__4/i__carry_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry CO[3] -pin riscv|ex_aluResult0_inferred__4/i__carry__0 CI
load net riscv|ex_aluResult0_inferred__4/i__carry_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__4/i__carry_n_1 -pin riscv|ex_aluResult0_inferred__4/i__carry CO[2]
load net riscv|ex_aluResult0_inferred__4/i__carry_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__4/i__carry_n_2 -pin riscv|ex_aluResult0_inferred__4/i__carry CO[1]
load net riscv|ex_aluResult0_inferred__4/i__carry_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__4/i__carry_n_3 -pin riscv|ex_aluResult0_inferred__4/i__carry CO[0]
load net riscv|ex_aluResult0_inferred__5/i__carry__0_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__5/i__carry__0_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CO[3] -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CI
load net riscv|ex_aluResult0_inferred__5/i__carry__0_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__5/i__carry__0_n_1 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CO[2]
load net riscv|ex_aluResult0_inferred__5/i__carry__0_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__5/i__carry__0_n_2 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CO[1]
load net riscv|ex_aluResult0_inferred__5/i__carry__0_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__5/i__carry__0_n_3 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CO[0]
load net riscv|ex_aluResult0_inferred__5/i__carry__1_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__5/i__carry__1_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CO[3] -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CI
load net riscv|ex_aluResult0_inferred__5/i__carry__1_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__5/i__carry__1_n_1 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CO[2]
load net riscv|ex_aluResult0_inferred__5/i__carry__1_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__5/i__carry__1_n_2 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CO[1]
load net riscv|ex_aluResult0_inferred__5/i__carry__1_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__5/i__carry__1_n_3 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 CO[0]
load net riscv|ex_aluResult0_inferred__5/i__carry__2_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__5/i__carry__2_n_1 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CO[2]
load net riscv|ex_aluResult0_inferred__5/i__carry__2_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__5/i__carry__2_n_2 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CO[1]
load net riscv|ex_aluResult0_inferred__5/i__carry__2_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__5/i__carry__2_n_3 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 CO[0]
load net riscv|ex_aluResult0_inferred__5/i__carry_n_0 -attr @rip(#000000) CO[3] -attr @name ex_aluResult0_inferred__5/i__carry_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry CO[3] -pin riscv|ex_aluResult0_inferred__5/i__carry__0 CI
load net riscv|ex_aluResult0_inferred__5/i__carry_n_1 -attr @rip(#000000) CO[2] -attr @name ex_aluResult0_inferred__5/i__carry_n_1 -pin riscv|ex_aluResult0_inferred__5/i__carry CO[2]
load net riscv|ex_aluResult0_inferred__5/i__carry_n_2 -attr @rip(#000000) CO[1] -attr @name ex_aluResult0_inferred__5/i__carry_n_2 -pin riscv|ex_aluResult0_inferred__5/i__carry CO[1]
load net riscv|ex_aluResult0_inferred__5/i__carry_n_3 -attr @rip(#000000) CO[0] -attr @name ex_aluResult0_inferred__5/i__carry_n_3 -pin riscv|ex_aluResult0_inferred__5/i__carry CO[0]
load net riscv|ex_aluResult[0] -attr @name ex_aluResult[0] -pin riscv|mem_Zero_i_2 I4 -pin riscv|mem_aluResult[0]_i_1 O -pin riscv|mem_aluResult_reg[0] D
netloc riscv|ex_aluResult[0] 1 28 3 31090 17208 NJ 17208 31950
load net riscv|ex_aluResult[10] -attr @name ex_aluResult[10] -pin riscv|mem_Zero_i_5 I1 -pin riscv|mem_aluResult[10]_i_1 O -pin riscv|mem_aluResult_reg[10] D
netloc riscv|ex_aluResult[10] 1 17 11 14020 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 27890J 16228 NJ
load net riscv|ex_aluResult[11] -attr @name ex_aluResult[11] -pin riscv|mem_Zero_i_5 I0 -pin riscv|mem_aluResult[11]_i_1 O -pin riscv|mem_aluResult_reg[11] D
netloc riscv|ex_aluResult[11] 1 17 11 14040 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 NJ 16888 27270J 16208 NJ
load net riscv|ex_aluResult[12] -attr @name ex_aluResult[12] -pin riscv|mem_Zero_i_6 I3 -pin riscv|mem_aluResult[12]_i_1 O -pin riscv|mem_aluResult_reg[12] D
netloc riscv|ex_aluResult[12] 1 22 6 19960 20798 NJ 20798 NJ 20798 NJ 20798 NJ 20798 29480J
load net riscv|ex_aluResult[13] -attr @name ex_aluResult[13] -pin riscv|mem_Zero_i_6 I2 -pin riscv|mem_aluResult[13]_i_1 O -pin riscv|mem_aluResult_reg[13] D
netloc riscv|ex_aluResult[13] 1 20 8 18100 20918 NJ 20918 NJ 20918 NJ 20918 NJ 20918 NJ 20918 27450J 20978 29360J
load net riscv|ex_aluResult[14] -attr @name ex_aluResult[14] -pin riscv|mem_Zero_i_6 I1 -pin riscv|mem_aluResult[14]_i_1 O -pin riscv|mem_aluResult_reg[14] D
netloc riscv|ex_aluResult[14] 1 11 17 8340 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 NJ 20778 29280J
load net riscv|ex_aluResult[15] -attr @name ex_aluResult[15] -pin riscv|mem_Zero_i_6 I0 -pin riscv|mem_aluResult[15]_i_1 O -pin riscv|mem_aluResult_reg[15] D
netloc riscv|ex_aluResult[15] 1 11 17 8320 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 NJ 21558 24230J 21518 NJ 21518 27290J 21668 29580J
load net riscv|ex_aluResult[16] -attr @name ex_aluResult[16] -pin riscv|mem_Zero_i_3 I3 -pin riscv|mem_aluResult[16]_i_1 O -pin riscv|mem_aluResult_reg[16] D
netloc riscv|ex_aluResult[16] 1 20 9 17780 23628 NJ 23628 NJ 23628 NJ 23628 NJ 23628 NJ 23628 NJ 23628 NJ 23628 NJ
load net riscv|ex_aluResult[17] -attr @name ex_aluResult[17] -pin riscv|mem_Zero_i_3 I2 -pin riscv|mem_aluResult[17]_i_1 O -pin riscv|mem_aluResult_reg[17] D
netloc riscv|ex_aluResult[17] 1 22 7 19980 24058 NJ 24058 24330J 24028 NJ 24028 NJ 24028 NJ 24028 30950J
load net riscv|ex_aluResult[18] -attr @name ex_aluResult[18] -pin riscv|mem_Zero_i_3 I1 -pin riscv|mem_aluResult[18]_i_1 O -pin riscv|mem_aluResult_reg[18] D
netloc riscv|ex_aluResult[18] 1 22 7 20700 23798 NJ 23798 23970J 23828 NJ 23828 NJ 23828 NJ 23828 30890J
load net riscv|ex_aluResult[19] -attr @name ex_aluResult[19] -pin riscv|mem_Zero_i_7 I3 -pin riscv|mem_aluResult[19]_i_1 O -pin riscv|mem_aluResult_reg[19] D
netloc riscv|ex_aluResult[19] 1 17 11 13880 24088 NJ 24088 NJ 24088 18560J 23148 NJ 23148 NJ 23148 NJ 23148 NJ 23148 NJ 23148 NJ 23148 NJ
load net riscv|ex_aluResult[1] -attr @name ex_aluResult[1] -pin riscv|mem_Zero_i_4 I5 -pin riscv|mem_aluResult[1]_i_1 O -pin riscv|mem_aluResult_reg[1] D
netloc riscv|ex_aluResult[1] 1 22 6 20980 8808 NJ 8808 NJ 8808 NJ 8808 NJ 8808 29520
load net riscv|ex_aluResult[20] -attr @name ex_aluResult[20] -pin riscv|mem_Zero_i_7 I2 -pin riscv|mem_aluResult[20]_i_1 O -pin riscv|mem_aluResult_reg[20] D
netloc riscv|ex_aluResult[20] 1 22 6 20020 23128 NJ 23128 NJ 23128 NJ 23128 NJ 23128 NJ
load net riscv|ex_aluResult[21] -attr @name ex_aluResult[21] -pin riscv|mem_Zero_i_7 I1 -pin riscv|mem_aluResult[21]_i_1 O -pin riscv|mem_aluResult_reg[21] D
netloc riscv|ex_aluResult[21] 1 20 8 17940 23108 NJ 23108 NJ 23108 NJ 23108 NJ 23108 NJ 23108 NJ 23108 NJ
load net riscv|ex_aluResult[22] -attr @name ex_aluResult[22] -pin riscv|mem_Zero_i_7 I0 -pin riscv|mem_aluResult[22]_i_1 O -pin riscv|mem_aluResult_reg[22] D
netloc riscv|ex_aluResult[22] 1 3 25 4940 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 NJ 23508 18540J 23088 NJ 23088 NJ 23088 NJ 23088 NJ 23088 NJ 23088 NJ 23088 NJ
load net riscv|ex_aluResult[23] -attr @name ex_aluResult[23] -pin riscv|mem_Zero_i_8 I4 -pin riscv|mem_aluResult[23]_i_1 O -pin riscv|mem_aluResult_reg[23] D
netloc riscv|ex_aluResult[23] 1 11 17 8260 25098 8580J 24078 NJ 24078 NJ 24078 10700J 24838 NJ 24838 NJ 24838 NJ 24838 NJ 24838 NJ 24838 NJ 24838 NJ 24838 NJ 24838 23370J 25278 NJ 25278 NJ 25278 29180
load net riscv|ex_aluResult[24] -attr @name ex_aluResult[24] -pin riscv|mem_Zero_i_8 I0 -pin riscv|mem_aluResult[24]_i_1 O -pin riscv|mem_aluResult_reg[24] D
netloc riscv|ex_aluResult[24] 1 20 8 17760 31728 NJ 31728 NJ 31728 21680J 31898 NJ 31898 25230J 31978 NJ 31978 NJ
load net riscv|ex_aluResult[25] -attr @name ex_aluResult[25] -pin riscv|mem_Zero_i_8 I1 -pin riscv|mem_aluResult[25]_i_1 O -pin riscv|mem_aluResult_reg[25] D
netloc riscv|ex_aluResult[25] 1 11 17 8220 25318 8680J 24338 NJ 24338 NJ 24338 10620J 25258 NJ 25258 NJ 25258 NJ 25258 NJ 25258 NJ 25258 NJ 25258 NJ 25258 22220J 25528 23290J 25548 NJ 25548 NJ 25548 29320
load net riscv|ex_aluResult[26] -attr @name ex_aluResult[26] -pin riscv|mem_Zero_i_8 I2 -pin riscv|mem_aluResult[26]_i_1 O -pin riscv|mem_aluResult_reg[26] D
netloc riscv|ex_aluResult[26] 1 19 9 16280 31748 NJ 31748 NJ 31748 NJ 31748 21660J 31918 NJ 31918 25170J 31998 NJ 31998 29100J
load net riscv|ex_aluResult[27] -attr @name ex_aluResult[27] -pin riscv|mem_Zero_i_8 I3 -pin riscv|mem_aluResult[27]_i_1 O -pin riscv|mem_aluResult_reg[27] D
netloc riscv|ex_aluResult[27] 1 19 9 16260 31768 NJ 31768 NJ 31768 NJ 31768 21640J 31938 NJ 31938 25110J 32018 NJ 32018 29060J
load net riscv|ex_aluResult[28] -attr @name ex_aluResult[28] -pin riscv|mem_Zero_i_1 I2 -pin riscv|mem_aluResult[28]_i_1 O -pin riscv|mem_aluResult_reg[28] D
netloc riscv|ex_aluResult[28] 1 21 9 19640 27868 NJ 27868 NJ 27868 NJ 27868 NJ 27868 NJ 27868 NJ 27868 NJ 27868 31410
load net riscv|ex_aluResult[29] -attr @name ex_aluResult[29] -pin riscv|mem_Zero_i_1 I3 -pin riscv|mem_aluResult[29]_i_1 O -pin riscv|mem_aluResult_reg[29] D
netloc riscv|ex_aluResult[29] 1 19 11 17400 23488 18500J 23068 NJ 23068 NJ 23068 NJ 23068 NJ 23068 26470J 23048 NJ 23048 NJ 23048 NJ 23048 31430
load net riscv|ex_aluResult[2] -attr @name ex_aluResult[2] -pin riscv|mem_Zero_i_4 I0 -pin riscv|mem_aluResult[2]_i_1 O -pin riscv|mem_aluResult_reg[2] D
netloc riscv|ex_aluResult[2] 1 22 6 21020 8828 NJ 8828 NJ 8828 NJ 8828 NJ 8828 29260
load net riscv|ex_aluResult[30] -attr @name ex_aluResult[30] -pin riscv|mem_Zero_i_1 I4 -pin riscv|mem_aluResult[30]_i_1 O -pin riscv|mem_aluResult_reg[30] D
netloc riscv|ex_aluResult[30] 1 17 13 14540 24658 NJ 24658 NJ 24658 NJ 24658 NJ 24658 NJ 24658 22260J 24778 23810J 25138 NJ 25138 NJ 25138 NJ 25138 NJ 25138 31370
load net riscv|ex_aluResult[31] -attr @name ex_aluResult[31] -pin riscv|mem_Zero_i_1 I1 -pin riscv|mem_aluResult[31]_i_1 O -pin riscv|mem_aluResult_reg[31] D
netloc riscv|ex_aluResult[31] 1 20 10 18680 28208 NJ 28208 NJ 28208 NJ 28208 NJ 28208 NJ 28208 NJ 28208 NJ 28208 NJ 28208 31390
load net riscv|ex_aluResult[3] -attr @name ex_aluResult[3] -pin riscv|mem_Zero_i_2 I3 -pin riscv|mem_aluResult[3]_i_1 O -pin riscv|mem_aluResult_reg[3] D
netloc riscv|ex_aluResult[3] 1 19 10 17420 21118 18640J 20958 19240J 21118 NJ 21118 NJ 21118 NJ 21118 NJ 21118 27570J 21328 29540J 20548 30550
load net riscv|ex_aluResult[4] -attr @name ex_aluResult[4] -pin riscv|mem_Zero_i_4 I2 -pin riscv|mem_aluResult[4]_i_1 O -pin riscv|mem_aluResult_reg[4] D
netloc riscv|ex_aluResult[4] 1 21 7 19620 8768 NJ 8768 NJ 8768 NJ 8768 NJ 8768 NJ 8768 29100
load net riscv|ex_aluResult[5] -attr @name ex_aluResult[5] -pin riscv|mem_Zero_i_4 I1 -pin riscv|mem_aluResult[5]_i_1 O -pin riscv|mem_aluResult_reg[5] D
netloc riscv|ex_aluResult[5] 1 22 6 20960 8588 NJ 8588 NJ 8588 NJ 8588 NJ 8588 29200
load net riscv|ex_aluResult[6] -attr @name ex_aluResult[6] -pin riscv|mem_Zero_i_4 I4 -pin riscv|mem_aluResult[6]_i_1 O -pin riscv|mem_aluResult_reg[6] D
netloc riscv|ex_aluResult[6] 1 21 7 19580 8388 NJ 8388 NJ 8388 NJ 8388 NJ 8388 NJ 8388 29160
load net riscv|ex_aluResult[7] -attr @name ex_aluResult[7] -pin riscv|mem_Zero_i_4 I3 -pin riscv|mem_aluResult[7]_i_1 O -pin riscv|mem_aluResult_reg[7] D
netloc riscv|ex_aluResult[7] 1 9 19 7420 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 NJ 6808 23650J 7048 NJ 7048 NJ 7048 30200
load net riscv|ex_aluResult[8] -attr @name ex_aluResult[8] -pin riscv|mem_Zero_i_5 I3 -pin riscv|mem_aluResult[8]_i_1 O -pin riscv|mem_aluResult_reg[8] D
netloc riscv|ex_aluResult[8] 1 20 8 17760 17028 NJ 17028 20580J 16988 22000J 16968 NJ 16968 25370J 16948 27950J 16268 NJ
load net riscv|ex_aluResult[9] -attr @name ex_aluResult[9] -pin riscv|mem_Zero_i_5 I2 -pin riscv|mem_aluResult[9]_i_1 O -pin riscv|mem_aluResult_reg[9] D
netloc riscv|ex_aluResult[9] 1 19 9 16820 16928 NJ 16928 NJ 16928 NJ 16928 NJ 16928 NJ 16928 NJ 16928 27910J 16248 NJ
load net riscv|ex_branchAddress[0] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[0] -pin riscv|ex_branchAddress_carry O[0] -pin riscv|mem_branchAddress_reg[0] D
load net riscv|ex_branchAddress[10] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[10] -pin riscv|ex_branchAddress_carry__1 O[2] -pin riscv|mem_branchAddress_reg[10] D
load net riscv|ex_branchAddress[11] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[11] -pin riscv|ex_branchAddress_carry__1 O[3] -pin riscv|mem_branchAddress_reg[11] D
load net riscv|ex_branchAddress[12] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[12] -pin riscv|ex_branchAddress_carry__2 O[0] -pin riscv|mem_branchAddress_reg[12] D
load net riscv|ex_branchAddress[13] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[13] -pin riscv|ex_branchAddress_carry__2 O[1] -pin riscv|mem_branchAddress_reg[13] D
load net riscv|ex_branchAddress[14] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[14] -pin riscv|ex_branchAddress_carry__2 O[2] -pin riscv|mem_branchAddress_reg[14] D
load net riscv|ex_branchAddress[15] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[15] -pin riscv|ex_branchAddress_carry__2 O[3] -pin riscv|mem_branchAddress_reg[15] D
load net riscv|ex_branchAddress[16] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[16] -pin riscv|ex_branchAddress_carry__3 O[0] -pin riscv|mem_branchAddress_reg[16] D
load net riscv|ex_branchAddress[17] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[17] -pin riscv|ex_branchAddress_carry__3 O[1] -pin riscv|mem_branchAddress_reg[17] D
load net riscv|ex_branchAddress[18] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[18] -pin riscv|ex_branchAddress_carry__3 O[2] -pin riscv|mem_branchAddress_reg[18] D
load net riscv|ex_branchAddress[19] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[19] -pin riscv|ex_branchAddress_carry__3 O[3] -pin riscv|mem_branchAddress_reg[19] D
load net riscv|ex_branchAddress[1] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[1] -pin riscv|ex_branchAddress_carry O[1] -pin riscv|mem_branchAddress_reg[1] D
load net riscv|ex_branchAddress[20] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[20] -pin riscv|ex_branchAddress_carry__4 O[0] -pin riscv|mem_branchAddress_reg[20] D
load net riscv|ex_branchAddress[21] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[21] -pin riscv|ex_branchAddress_carry__4 O[1] -pin riscv|mem_branchAddress_reg[21] D
load net riscv|ex_branchAddress[22] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[22] -pin riscv|ex_branchAddress_carry__4 O[2] -pin riscv|mem_branchAddress_reg[22] D
load net riscv|ex_branchAddress[23] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[23] -pin riscv|ex_branchAddress_carry__4 O[3] -pin riscv|mem_branchAddress_reg[23] D
load net riscv|ex_branchAddress[24] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[24] -pin riscv|ex_branchAddress_carry__5 O[0] -pin riscv|mem_branchAddress_reg[24] D
load net riscv|ex_branchAddress[25] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[25] -pin riscv|ex_branchAddress_carry__5 O[1] -pin riscv|mem_branchAddress_reg[25] D
load net riscv|ex_branchAddress[26] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[26] -pin riscv|ex_branchAddress_carry__5 O[2] -pin riscv|mem_branchAddress_reg[26] D
load net riscv|ex_branchAddress[27] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[27] -pin riscv|ex_branchAddress_carry__5 O[3] -pin riscv|mem_branchAddress_reg[27] D
load net riscv|ex_branchAddress[28] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[28] -pin riscv|ex_branchAddress_carry__6 O[0] -pin riscv|mem_branchAddress_reg[28] D
load net riscv|ex_branchAddress[29] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[29] -pin riscv|ex_branchAddress_carry__6 O[1] -pin riscv|mem_branchAddress_reg[29] D
load net riscv|ex_branchAddress[2] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[2] -pin riscv|ex_branchAddress_carry O[2] -pin riscv|mem_branchAddress_reg[2] D
load net riscv|ex_branchAddress[30] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[30] -pin riscv|ex_branchAddress_carry__6 O[2] -pin riscv|mem_branchAddress_reg[30] D
load net riscv|ex_branchAddress[31] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[31] -pin riscv|ex_branchAddress_carry__6 O[3] -pin riscv|mem_branchAddress_reg[31] D
load net riscv|ex_branchAddress[3] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[3] -pin riscv|ex_branchAddress_carry O[3] -pin riscv|mem_branchAddress_reg[3] D
load net riscv|ex_branchAddress[4] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[4] -pin riscv|ex_branchAddress_carry__0 O[0] -pin riscv|mem_branchAddress_reg[4] D
load net riscv|ex_branchAddress[5] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[5] -pin riscv|ex_branchAddress_carry__0 O[1] -pin riscv|mem_branchAddress_reg[5] D
load net riscv|ex_branchAddress[6] -attr @rip(#000000) O[2] -attr @name ex_branchAddress[6] -pin riscv|ex_branchAddress_carry__0 O[2] -pin riscv|mem_branchAddress_reg[6] D
load net riscv|ex_branchAddress[7] -attr @rip(#000000) O[3] -attr @name ex_branchAddress[7] -pin riscv|ex_branchAddress_carry__0 O[3] -pin riscv|mem_branchAddress_reg[7] D
load net riscv|ex_branchAddress[8] -attr @rip(#000000) O[0] -attr @name ex_branchAddress[8] -pin riscv|ex_branchAddress_carry__1 O[0] -pin riscv|mem_branchAddress_reg[8] D
load net riscv|ex_branchAddress[9] -attr @rip(#000000) O[1] -attr @name ex_branchAddress[9] -pin riscv|ex_branchAddress_carry__1 O[1] -pin riscv|mem_branchAddress_reg[9] D
load net riscv|ex_branchAddress_carry__0_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__0_i_1_n_0 -pin riscv|ex_branchAddress_carry__0 S[3] -pin riscv|ex_branchAddress_carry__0_i_1 O
load net riscv|ex_branchAddress_carry__0_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__0_i_2_n_0 -pin riscv|ex_branchAddress_carry__0 S[2] -pin riscv|ex_branchAddress_carry__0_i_2 O
load net riscv|ex_branchAddress_carry__0_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__0_i_3_n_0 -pin riscv|ex_branchAddress_carry__0 S[1] -pin riscv|ex_branchAddress_carry__0_i_3 O
load net riscv|ex_branchAddress_carry__0_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__0_i_4_n_0 -pin riscv|ex_branchAddress_carry__0 S[0] -pin riscv|ex_branchAddress_carry__0_i_4 O
load net riscv|ex_branchAddress_carry__0_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__0_n_0 -pin riscv|ex_branchAddress_carry__0 CO[3] -pin riscv|ex_branchAddress_carry__1 CI
load net riscv|ex_branchAddress_carry__0_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__0_n_1 -pin riscv|ex_branchAddress_carry__0 CO[2]
load net riscv|ex_branchAddress_carry__0_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__0_n_2 -pin riscv|ex_branchAddress_carry__0 CO[1]
load net riscv|ex_branchAddress_carry__0_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__0_n_3 -pin riscv|ex_branchAddress_carry__0 CO[0]
load net riscv|ex_branchAddress_carry__1_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__1_i_1_n_0 -pin riscv|ex_branchAddress_carry__1 S[3] -pin riscv|ex_branchAddress_carry__1_i_1 O
load net riscv|ex_branchAddress_carry__1_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__1_i_2_n_0 -pin riscv|ex_branchAddress_carry__1 S[2] -pin riscv|ex_branchAddress_carry__1_i_2 O
load net riscv|ex_branchAddress_carry__1_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__1_i_3_n_0 -pin riscv|ex_branchAddress_carry__1 S[1] -pin riscv|ex_branchAddress_carry__1_i_3 O
load net riscv|ex_branchAddress_carry__1_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__1_i_4_n_0 -pin riscv|ex_branchAddress_carry__1 S[0] -pin riscv|ex_branchAddress_carry__1_i_4 O
load net riscv|ex_branchAddress_carry__1_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__1_n_0 -pin riscv|ex_branchAddress_carry__1 CO[3] -pin riscv|ex_branchAddress_carry__2 CI
load net riscv|ex_branchAddress_carry__1_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__1_n_1 -pin riscv|ex_branchAddress_carry__1 CO[2]
load net riscv|ex_branchAddress_carry__1_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__1_n_2 -pin riscv|ex_branchAddress_carry__1 CO[1]
load net riscv|ex_branchAddress_carry__1_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__1_n_3 -pin riscv|ex_branchAddress_carry__1 CO[0]
load net riscv|ex_branchAddress_carry__2_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__2_i_1_n_0 -pin riscv|ex_branchAddress_carry__2 S[3] -pin riscv|ex_branchAddress_carry__2_i_1 O
load net riscv|ex_branchAddress_carry__2_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__2_i_2_n_0 -pin riscv|ex_branchAddress_carry__2 S[2] -pin riscv|ex_branchAddress_carry__2_i_2 O
load net riscv|ex_branchAddress_carry__2_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__2_i_3_n_0 -pin riscv|ex_branchAddress_carry__2 S[1] -pin riscv|ex_branchAddress_carry__2_i_3 O
load net riscv|ex_branchAddress_carry__2_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__2_i_4_n_0 -pin riscv|ex_branchAddress_carry__2 S[0] -pin riscv|ex_branchAddress_carry__2_i_4 O
load net riscv|ex_branchAddress_carry__2_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__2_n_0 -pin riscv|ex_branchAddress_carry__2 CO[3] -pin riscv|ex_branchAddress_carry__3 CI
load net riscv|ex_branchAddress_carry__2_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__2_n_1 -pin riscv|ex_branchAddress_carry__2 CO[2]
load net riscv|ex_branchAddress_carry__2_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__2_n_2 -pin riscv|ex_branchAddress_carry__2 CO[1]
load net riscv|ex_branchAddress_carry__2_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__2_n_3 -pin riscv|ex_branchAddress_carry__2 CO[0]
load net riscv|ex_branchAddress_carry__3_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__3_i_1_n_0 -pin riscv|ex_branchAddress_carry__3 S[3] -pin riscv|ex_branchAddress_carry__3_i_1 O
load net riscv|ex_branchAddress_carry__3_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__3_i_2_n_0 -pin riscv|ex_branchAddress_carry__3 S[2] -pin riscv|ex_branchAddress_carry__3_i_2 O
load net riscv|ex_branchAddress_carry__3_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__3_i_3_n_0 -pin riscv|ex_branchAddress_carry__3 S[1] -pin riscv|ex_branchAddress_carry__3_i_3 O
load net riscv|ex_branchAddress_carry__3_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__3_i_4_n_0 -pin riscv|ex_branchAddress_carry__3 S[0] -pin riscv|ex_branchAddress_carry__3_i_4 O
load net riscv|ex_branchAddress_carry__3_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__3_n_0 -pin riscv|ex_branchAddress_carry__3 CO[3] -pin riscv|ex_branchAddress_carry__4 CI
load net riscv|ex_branchAddress_carry__3_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__3_n_1 -pin riscv|ex_branchAddress_carry__3 CO[2]
load net riscv|ex_branchAddress_carry__3_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__3_n_2 -pin riscv|ex_branchAddress_carry__3 CO[1]
load net riscv|ex_branchAddress_carry__3_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__3_n_3 -pin riscv|ex_branchAddress_carry__3 CO[0]
load net riscv|ex_branchAddress_carry__4_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__4_i_1_n_0 -pin riscv|ex_branchAddress_carry__4 S[3] -pin riscv|ex_branchAddress_carry__4_i_1 O
load net riscv|ex_branchAddress_carry__4_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__4_i_2_n_0 -pin riscv|ex_branchAddress_carry__4 S[2] -pin riscv|ex_branchAddress_carry__4_i_2 O
load net riscv|ex_branchAddress_carry__4_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__4_i_3_n_0 -pin riscv|ex_branchAddress_carry__4 S[1] -pin riscv|ex_branchAddress_carry__4_i_3 O
load net riscv|ex_branchAddress_carry__4_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__4_i_4_n_0 -pin riscv|ex_branchAddress_carry__4 S[0] -pin riscv|ex_branchAddress_carry__4_i_4 O
load net riscv|ex_branchAddress_carry__4_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__4_n_0 -pin riscv|ex_branchAddress_carry__4 CO[3] -pin riscv|ex_branchAddress_carry__5 CI
load net riscv|ex_branchAddress_carry__4_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__4_n_1 -pin riscv|ex_branchAddress_carry__4 CO[2]
load net riscv|ex_branchAddress_carry__4_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__4_n_2 -pin riscv|ex_branchAddress_carry__4 CO[1]
load net riscv|ex_branchAddress_carry__4_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__4_n_3 -pin riscv|ex_branchAddress_carry__4 CO[0]
load net riscv|ex_branchAddress_carry__5_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__5_i_1_n_0 -pin riscv|ex_branchAddress_carry__5 S[3] -pin riscv|ex_branchAddress_carry__5_i_1 O
load net riscv|ex_branchAddress_carry__5_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__5_i_2_n_0 -pin riscv|ex_branchAddress_carry__5 S[2] -pin riscv|ex_branchAddress_carry__5_i_2 O
load net riscv|ex_branchAddress_carry__5_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__5_i_3_n_0 -pin riscv|ex_branchAddress_carry__5 S[1] -pin riscv|ex_branchAddress_carry__5_i_3 O
load net riscv|ex_branchAddress_carry__5_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__5_i_4_n_0 -pin riscv|ex_branchAddress_carry__5 S[0] -pin riscv|ex_branchAddress_carry__5_i_4 O
load net riscv|ex_branchAddress_carry__5_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry__5_n_0 -pin riscv|ex_branchAddress_carry__5 CO[3] -pin riscv|ex_branchAddress_carry__6 CI
load net riscv|ex_branchAddress_carry__5_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__5_n_1 -pin riscv|ex_branchAddress_carry__5 CO[2]
load net riscv|ex_branchAddress_carry__5_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__5_n_2 -pin riscv|ex_branchAddress_carry__5 CO[1]
load net riscv|ex_branchAddress_carry__5_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__5_n_3 -pin riscv|ex_branchAddress_carry__5 CO[0]
load net riscv|ex_branchAddress_carry__6_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry__6_i_1_n_0 -pin riscv|ex_branchAddress_carry__6 S[3] -pin riscv|ex_branchAddress_carry__6_i_1 O
load net riscv|ex_branchAddress_carry__6_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry__6_i_2_n_0 -pin riscv|ex_branchAddress_carry__6 S[2] -pin riscv|ex_branchAddress_carry__6_i_2 O
load net riscv|ex_branchAddress_carry__6_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry__6_i_3_n_0 -pin riscv|ex_branchAddress_carry__6 S[1] -pin riscv|ex_branchAddress_carry__6_i_3 O
load net riscv|ex_branchAddress_carry__6_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry__6_i_4_n_0 -pin riscv|ex_branchAddress_carry__6 S[0] -pin riscv|ex_branchAddress_carry__6_i_4 O
load net riscv|ex_branchAddress_carry__6_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry__6_n_1 -pin riscv|ex_branchAddress_carry__6 CO[2]
load net riscv|ex_branchAddress_carry__6_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry__6_n_2 -pin riscv|ex_branchAddress_carry__6 CO[1]
load net riscv|ex_branchAddress_carry__6_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry__6_n_3 -pin riscv|ex_branchAddress_carry__6 CO[0]
load net riscv|ex_branchAddress_carry_i_1_n_0 -attr @rip(#000000) 3 -attr @name ex_branchAddress_carry_i_1_n_0 -pin riscv|ex_branchAddress_carry S[3] -pin riscv|ex_branchAddress_carry_i_1 O
load net riscv|ex_branchAddress_carry_i_2_n_0 -attr @rip(#000000) 2 -attr @name ex_branchAddress_carry_i_2_n_0 -pin riscv|ex_branchAddress_carry S[2] -pin riscv|ex_branchAddress_carry_i_2 O
load net riscv|ex_branchAddress_carry_i_3_n_0 -attr @rip(#000000) 1 -attr @name ex_branchAddress_carry_i_3_n_0 -pin riscv|ex_branchAddress_carry S[1] -pin riscv|ex_branchAddress_carry_i_3 O
load net riscv|ex_branchAddress_carry_i_4_n_0 -attr @rip(#000000) 0 -attr @name ex_branchAddress_carry_i_4_n_0 -pin riscv|ex_branchAddress_carry S[0] -pin riscv|ex_branchAddress_carry_i_4 O
load net riscv|ex_branchAddress_carry_n_0 -attr @rip(#000000) CO[3] -attr @name ex_branchAddress_carry_n_0 -pin riscv|ex_branchAddress_carry CO[3] -pin riscv|ex_branchAddress_carry__0 CI
load net riscv|ex_branchAddress_carry_n_1 -attr @rip(#000000) CO[2] -attr @name ex_branchAddress_carry_n_1 -pin riscv|ex_branchAddress_carry CO[2]
load net riscv|ex_branchAddress_carry_n_2 -attr @rip(#000000) CO[1] -attr @name ex_branchAddress_carry_n_2 -pin riscv|ex_branchAddress_carry CO[1]
load net riscv|ex_branchAddress_carry_n_3 -attr @rip(#000000) CO[0] -attr @name ex_branchAddress_carry_n_3 -pin riscv|ex_branchAddress_carry CO[0]
load net riscv|ex_immediate[0] -attr @rip(#000000) 0 -attr @name ex_immediate[0] -pin riscv|ex_branchAddress_carry DI[0] -pin riscv|ex_branchAddress_carry_i_4 I0 -pin riscv|ex_immediate_reg[0] Q -pin riscv|i__carry_i_4 I5 -pin riscv|i__carry_i_4__0 I0 -pin riscv|i__carry_i_4__1 I3 -pin riscv|i__carry_i_8 I5 -pin riscv|mem_aluResult[0]_i_2 I1 -pin riscv|mem_aluResult[2]_i_15 I1 -pin riscv|mem_aluResult[2]_i_20 I0 -pin riscv|mem_aluResult[31]_i_12 I0
load net riscv|ex_immediate[0]_i_1_n_0 -attr @name ex_immediate[0]_i_1_n_0 -pin riscv|ex_immediate[0]_i_1 O -pin riscv|ex_immediate_reg[0] D
netloc riscv|ex_immediate[0]_i_1_n_0 1 27 1 30060 24918n
load net riscv|ex_immediate[10] -attr @rip(#000000) 2 -attr @name ex_immediate[10] -pin riscv|ex_branchAddress_carry__1 DI[2] -pin riscv|ex_branchAddress_carry__1_i_2 I0 -pin riscv|ex_immediate_reg[10] Q -pin riscv|i__carry__0_i_9 I0 -pin riscv|i__carry__1_i_2__1 I0 -pin riscv|mem_aluResult[11]_i_17 I3 -pin riscv|mem_aluResult[30]_i_34 I1
load net riscv|ex_immediate[11] -attr @rip(#000000) 3 -attr @name ex_immediate[11] -pin riscv|ex_branchAddress_carry__1 DI[3] -pin riscv|ex_branchAddress_carry__1_i_1 I0 -pin riscv|ex_immediate_reg[11] Q -pin riscv|i__carry__0_i_3 I0 -pin riscv|i__carry__0_i_3__0 I3 -pin riscv|i__carry__0_i_7 I0 -pin riscv|i__carry__1_i_1__1 I0 -pin riscv|mem_aluResult[11]_i_11 I0 -pin riscv|mem_aluResult[11]_i_16 I3 -pin riscv|mem_aluResult[31]_i_20 I5
load net riscv|ex_immediate[11]_i_1_n_0 -attr @name ex_immediate[11]_i_1_n_0 -pin riscv|ex_immediate[11]_i_1 O -pin riscv|ex_immediate_reg[11] D
netloc riscv|ex_immediate[11]_i_1_n_0 1 22 1 20760 18808n
load net riscv|ex_immediate[11]_i_2_n_0 -attr @name ex_immediate[11]_i_2_n_0 -pin riscv|ex_ALUCtrl[0]_i_1 I0 -pin riscv|ex_ALUCtrl[1]_i_1 I0 -pin riscv|ex_ALUCtrl[2]_i_1 I0 -pin riscv|ex_ALUCtrl[3]_i_1 I0 -pin riscv|ex_ALUSrc_i_1 I4 -pin riscv|ex_Branch_i_1 I0 -pin riscv|ex_MemtoReg_i_1 I3 -pin riscv|ex_RegWrite_i_1 I2 -pin riscv|ex_immediate[0]_i_1 I5 -pin riscv|ex_immediate[11]_i_1 I1 -pin riscv|ex_immediate[11]_i_2 O -pin riscv|ex_immediate[1]_i_1 I3 -pin riscv|ex_immediate[2]_i_1 I3 -pin riscv|ex_immediate[3]_i_1 I3 -pin riscv|ex_immediate[4]_i_1 I3
netloc riscv|ex_immediate[11]_i_2_n_0 1 19 10 17400 29698 NJ 29698 19580 30058 20200 30888 22760 31438 NJ 31438 NJ 31438 28610 28478 NJ 28478 31030
load net riscv|ex_immediate[12] -attr @name ex_immediate[12] -pin riscv|ex_branchAddress_carry__2 DI[3] -pin riscv|ex_branchAddress_carry__2 DI[2] -pin riscv|ex_branchAddress_carry__2 DI[1] -pin riscv|ex_branchAddress_carry__2 DI[0] -pin riscv|ex_branchAddress_carry__2_i_1 I0 -pin riscv|ex_branchAddress_carry__2_i_2 I0 -pin riscv|ex_branchAddress_carry__2_i_3 I0 -pin riscv|ex_branchAddress_carry__2_i_4 I0 -pin riscv|ex_branchAddress_carry__3 DI[3] -pin riscv|ex_branchAddress_carry__3 DI[2] -pin riscv|ex_branchAddress_carry__3 DI[1] -pin riscv|ex_branchAddress_carry__3 DI[0] -pin riscv|ex_branchAddress_carry__3_i_1 I0 -pin riscv|ex_branchAddress_carry__3_i_2 I0 -pin riscv|ex_branchAddress_carry__3_i_3 I0 -pin riscv|ex_branchAddress_carry__3_i_4 I0 -pin riscv|ex_branchAddress_carry__4 DI[3] -pin riscv|ex_branchAddress_carry__4 DI[2] -pin riscv|ex_branchAddress_carry__4 DI[1] -pin riscv|ex_branchAddress_carry__4 DI[0] -pin riscv|ex_branchAddress_carry__4_i_1 I0 -pin riscv|ex_branchAddress_carry__4_i_2 I0 -pin riscv|ex_branchAddress_carry__4_i_3 I0 -pin riscv|ex_branchAddress_carry__4_i_4 I0 -pin riscv|ex_branchAddress_carry__5 DI[3] -pin riscv|ex_branchAddress_carry__5 DI[2] -pin riscv|ex_branchAddress_carry__5 DI[1] -pin riscv|ex_branchAddress_carry__5 DI[0] -pin riscv|ex_branchAddress_carry__5_i_1 I0 -pin riscv|ex_branchAddress_carry__5_i_2 I0 -pin riscv|ex_branchAddress_carry__5_i_3 I0 -pin riscv|ex_branchAddress_carry__5_i_4 I0 -pin riscv|ex_branchAddress_carry__6 DI[2] -pin riscv|ex_branchAddress_carry__6 DI[1] -pin riscv|ex_branchAddress_carry__6 DI[0] -pin riscv|ex_branchAddress_carry__6_i_1 I0 -pin riscv|ex_branchAddress_carry__6_i_2 I0 -pin riscv|ex_branchAddress_carry__6_i_3 I0 -pin riscv|ex_branchAddress_carry__6_i_4 I0 -pin riscv|ex_immediate_reg[12] Q -pin riscv|i__carry__0_i_1 I3 -pin riscv|i__carry__0_i_1__0 I4 -pin riscv|i__carry__0_i_2 I3 -pin riscv|i__carry__0_i_2__0 I4 -pin riscv|i__carry__0_i_5 I3 -pin riscv|i__carry__0_i_6 I3 -pin riscv|i__carry__1_i_1 I2 -pin riscv|i__carry__1_i_1__0 I4 -pin riscv|i__carry__1_i_2 I2 -pin riscv|i__carry__1_i_2__0 I4 -pin riscv|i__carry__1_i_3 I2 -pin riscv|i__carry__1_i_3__0 I4 -pin riscv|i__carry__1_i_4 I2 -pin riscv|i__carry__1_i_4__0 I4 -pin riscv|i__carry__1_i_5 I2 -pin riscv|i__carry__1_i_6 I2 -pin riscv|i__carry__1_i_7 I2 -pin riscv|i__carry__1_i_8 I2 -pin riscv|i__carry__2_i_1 I4 -pin riscv|i__carry__2_i_1__0 I3 -pin riscv|i__carry__2_i_1__1 I1 -pin riscv|i__carry__2_i_2 I4 -pin riscv|i__carry__2_i_2__0 I3 -pin riscv|i__carry__2_i_2__1 I1 -pin riscv|i__carry__2_i_3 I4 -pin riscv|i__carry__2_i_3__0 I2 -pin riscv|i__carry__2_i_3__1 I1 -pin riscv|i__carry__2_i_4 I4 -pin riscv|i__carry__2_i_4__0 I2 -pin riscv|i__carry__2_i_4__1 I1 -pin riscv|i__carry__2_i_5 I2 -pin riscv|i__carry__2_i_5__0 I3 -pin riscv|i__carry__2_i_6 I2 -pin riscv|i__carry__2_i_7 I2 -pin riscv|i__carry__2_i_8 I2 -pin riscv|i__carry__3_i_1 I2 -pin riscv|i__carry__3_i_2 I1 -pin riscv|i__carry__3_i_3 I2 -pin riscv|i__carry__3_i_4 I1 -pin riscv|i__carry__4_i_1 I2 -pin riscv|i__carry__4_i_2 I1 -pin riscv|i__carry__4_i_3 I2 -pin riscv|i__carry__4_i_4 I1 -pin riscv|i__carry__5_i_1 I2 -pin riscv|i__carry__5_i_2 I1 -pin riscv|i__carry__5_i_3 I2 -pin riscv|i__carry__5_i_4 I1 -pin riscv|i__carry__6_i_1 I2 -pin riscv|i__carry__6_i_2 I2 -pin riscv|i__carry__6_i_3 I2 -pin riscv|i__carry__6_i_4 I1 -pin riscv|mem_aluResult[12]_i_8 I1 -pin riscv|mem_aluResult[13]_i_9 I1 -pin riscv|mem_aluResult[14]_i_11 I1 -pin riscv|mem_aluResult[15]_i_12 I2 -pin riscv|mem_aluResult[15]_i_13 I2 -pin riscv|mem_aluResult[15]_i_14 I2 -pin riscv|mem_aluResult[15]_i_15 I2 -pin riscv|mem_aluResult[15]_i_8 I1 -pin riscv|mem_aluResult[16]_i_11 I1 -pin riscv|mem_aluResult[17]_i_6 I1 -pin riscv|mem_aluResult[18]_i_10 I1 -pin riscv|mem_aluResult[19]_i_10 I1 -pin riscv|mem_aluResult[19]_i_14 I2 -pin riscv|mem_aluResult[19]_i_15 I2 -pin riscv|mem_aluResult[19]_i_16 I2 -pin riscv|mem_aluResult[19]_i_17 I2 -pin riscv|mem_aluResult[20]_i_10 I1 -pin riscv|mem_aluResult[21]_i_10 I1 -pin riscv|mem_aluResult[22]_i_15 I1 -pin riscv|mem_aluResult[23]_i_4 I1 -pin riscv|mem_aluResult[23]_i_5 I3 -pin riscv|mem_aluResult[24]_i_4 I1 -pin riscv|mem_aluResult[24]_i_5 I3 -pin riscv|mem_aluResult[25]_i_6 I3 -pin riscv|mem_aluResult[25]_i_7 I3 -pin riscv|mem_aluResult[26]_i_10 I3 -pin riscv|mem_aluResult[26]_i_11 I1 -pin riscv|mem_aluResult[26]_i_14 I2 -pin riscv|mem_aluResult[26]_i_15 I2 -pin riscv|mem_aluResult[26]_i_16 I2 -pin riscv|mem_aluResult[26]_i_17 I2 -pin riscv|mem_aluResult[26]_i_18 I2 -pin riscv|mem_aluResult[26]_i_19 I2 -pin riscv|mem_aluResult[26]_i_20 I2 -pin riscv|mem_aluResult[26]_i_21 I2 -pin riscv|mem_aluResult[27]_i_5 I1 -pin riscv|mem_aluResult[27]_i_6 I3 -pin riscv|mem_aluResult[28]_i_10 I3 -pin riscv|mem_aluResult[28]_i_7 I1 -pin riscv|mem_aluResult[29]_i_6 I1 -pin riscv|mem_aluResult[29]_i_8 I3 -pin riscv|mem_aluResult[30]_i_14 I1 -pin riscv|mem_aluResult[30]_i_23 I3 -pin riscv|mem_aluResult[30]_i_28 I1 -pin riscv|mem_aluResult[30]_i_29 I1 -pin riscv|mem_aluResult[30]_i_30 I3 -pin riscv|mem_aluResult[30]_i_31 I3 -pin riscv|mem_aluResult[30]_i_37 I1 -pin riscv|mem_aluResult[30]_i_38 I1 -pin riscv|mem_aluResult[30]_i_39 I2 -pin riscv|mem_aluResult[30]_i_40 I2 -pin riscv|mem_aluResult[30]_i_6 I2 -pin riscv|mem_aluResult[31]_i_18 I2 -pin riscv|mem_aluResult[31]_i_19 I3 -pin riscv|mem_aluResult[31]_i_22 I4 -pin riscv|mem_aluResult[31]_i_6 I1
netloc riscv|ex_immediate[12] 1 7 22 5880 17488 6320 18358 7240 18718 NJ 18718 NJ 18718 8580 18738 9100 18758 10070 17228 11500 18158 12820 16258 13560 20238 14960 20358 17300 20358 NJ 20358 NJ 20358 NJ 20358 22620 28898 24570 17768 25990 15268 27990 18018 29940 16928 30590
load net riscv|ex_immediate[1] -attr @rip(#000000) 1 -attr @name ex_immediate[1] -pin riscv|ex_branchAddress_carry DI[1] -pin riscv|ex_branchAddress_carry_i_3 I0 -pin riscv|ex_immediate_reg[1] Q -pin riscv|i__carry_i_12 I0 -pin riscv|i__carry_i_3__1 I3 -pin riscv|mem_aluResult[22]_i_8 I1 -pin riscv|mem_aluResult[2]_i_19 I0 -pin riscv|mem_aluResult[30]_i_11 I1 -pin riscv|mem_aluResult[30]_i_9 I1 -pin riscv|mem_aluResult[31]_i_16 I4
load net riscv|ex_immediate[1]_i_1_n_0 -attr @name ex_immediate[1]_i_1_n_0 -pin riscv|ex_immediate[1]_i_1 O -pin riscv|ex_immediate_reg[1] D
netloc riscv|ex_immediate[1]_i_1_n_0 1 27 1 30080 25068n
load net riscv|ex_immediate[2] -attr @rip(#000000) 2 -attr @name ex_immediate[2] -pin riscv|ex_branchAddress_carry DI[2] -pin riscv|ex_branchAddress_carry_i_2 I0 -pin riscv|ex_immediate_reg[2] Q -pin riscv|i__carry_i_11 I0 -pin riscv|i__carry_i_2__1 I3 -pin riscv|mem_aluResult[22]_i_8 I4 -pin riscv|mem_aluResult[2]_i_11 I0 -pin riscv|mem_aluResult[2]_i_16 I1 -pin riscv|mem_aluResult[2]_i_18 I0 -pin riscv|mem_aluResult[2]_i_2 I1 -pin riscv|mem_aluResult[2]_i_21 I0 -pin riscv|mem_aluResult[2]_i_23 I0 -pin riscv|mem_aluResult[30]_i_11 I4 -pin riscv|mem_aluResult[30]_i_9 I4 -pin riscv|mem_aluResult[31]_i_16 I1
load net riscv|ex_immediate[2]_i_1_n_0 -attr @name ex_immediate[2]_i_1_n_0 -pin riscv|ex_immediate[2]_i_1 O -pin riscv|ex_immediate_reg[2] D
netloc riscv|ex_immediate[2]_i_1_n_0 1 27 1 30120 26808n
load net riscv|ex_immediate[3] -attr @rip(#000000) 3 -attr @name ex_immediate[3] -pin riscv|ex_branchAddress_carry DI[3] -pin riscv|ex_branchAddress_carry_i_1 I0 -pin riscv|ex_immediate_reg[3] Q -pin riscv|i__carry_i_1__1 I3 -pin riscv|i__carry_i_3 I3 -pin riscv|i__carry_i_3__0 I3 -pin riscv|i__carry_i_7 I3 -pin riscv|mem_aluResult[22]_i_10 I1 -pin riscv|mem_aluResult[27]_i_10 I4 -pin riscv|mem_aluResult[2]_i_17 I0 -pin riscv|mem_aluResult[30]_i_25 I4 -pin riscv|mem_aluResult[30]_i_26 I1 -pin riscv|mem_aluResult[30]_i_27 I1 -pin riscv|mem_aluResult[31]_i_10 I0 -pin riscv|mem_aluResult[31]_i_14 I3 -pin riscv|mem_aluResult[31]_i_23 I3 -pin riscv|mem_aluResult[31]_i_24 I0 -pin riscv|mem_aluResult[3]_i_3 I2
load net riscv|ex_immediate[3]_i_1_n_0 -attr @name ex_immediate[3]_i_1_n_0 -pin riscv|ex_immediate[3]_i_1 O -pin riscv|ex_immediate_reg[3] D
netloc riscv|ex_immediate[3]_i_1_n_0 1 27 1 30140 26958n
load net riscv|ex_immediate[4] -attr @rip(#000000) 0 -attr @name ex_immediate[4] -pin riscv|ex_branchAddress_carry__0 DI[0] -pin riscv|ex_branchAddress_carry__0_i_4 I0 -pin riscv|ex_immediate_reg[4] Q -pin riscv|i__carry__0_i_4__1 I0 -pin riscv|i__carry_i_10 I0 -pin riscv|mem_aluResult[22]_i_10 I4 -pin riscv|mem_aluResult[27]_i_10 I1 -pin riscv|mem_aluResult[30]_i_25 I1 -pin riscv|mem_aluResult[30]_i_26 I4 -pin riscv|mem_aluResult[30]_i_27 I4 -pin riscv|mem_aluResult[31]_i_10 I3 -pin riscv|mem_aluResult[31]_i_14 I0 -pin riscv|mem_aluResult[31]_i_23 I0 -pin riscv|mem_aluResult[7]_i_14 I3
load net riscv|ex_immediate[4]_i_1_n_0 -attr @name ex_immediate[4]_i_1_n_0 -pin riscv|ex_immediate[4]_i_1 O -pin riscv|ex_immediate_reg[4] D
netloc riscv|ex_immediate[4]_i_1_n_0 1 24 1 24450 23258n
load net riscv|ex_immediate[5] -attr @rip(#000000) 1 -attr @name ex_immediate[5] -pin riscv|ex_branchAddress_carry__0 DI[1] -pin riscv|ex_branchAddress_carry__0_i_3 I0 -pin riscv|ex_immediate_reg[5] Q -pin riscv|i__carry__0_i_3__1 I0 -pin riscv|i__carry_i_2 I0 -pin riscv|i__carry_i_2__0 I3 -pin riscv|i__carry_i_6 I0 -pin riscv|mem_aluResult[30]_i_32 I4 -pin riscv|mem_aluResult[5]_i_6 I0 -pin riscv|mem_aluResult[7]_i_13 I3
load net riscv|ex_immediate[6] -attr @rip(#000000) 2 -attr @name ex_immediate[6] -pin riscv|ex_branchAddress_carry__0 DI[2] -pin riscv|ex_branchAddress_carry__0_i_2 I0 -pin riscv|ex_immediate_reg[6] Q -pin riscv|i__carry__0_i_2__1 I0 -pin riscv|i__carry_i_9 I0 -pin riscv|mem_aluResult[30]_i_32 I1 -pin riscv|mem_aluResult[7]_i_12 I3
load net riscv|ex_immediate[7] -attr @rip(#000000) 3 -attr @name ex_immediate[7] -pin riscv|ex_branchAddress_carry__0 DI[3] -pin riscv|ex_branchAddress_carry__0_i_1 I0 -pin riscv|ex_immediate_reg[7] Q -pin riscv|i__carry__0_i_1__1 I0 -pin riscv|i__carry_i_1 I0 -pin riscv|i__carry_i_1__0 I3 -pin riscv|i__carry_i_5 I0 -pin riscv|mem_aluResult[30]_i_33 I4 -pin riscv|mem_aluResult[7]_i_11 I3 -pin riscv|mem_aluResult[7]_i_6 I0
load net riscv|ex_immediate[8] -attr @rip(#000000) 0 -attr @name ex_immediate[8] -pin riscv|ex_branchAddress_carry__1 DI[0] -pin riscv|ex_branchAddress_carry__1_i_4 I0 -pin riscv|ex_immediate_reg[8] Q -pin riscv|i__carry__0_i_10 I0 -pin riscv|i__carry__1_i_4__1 I0 -pin riscv|mem_aluResult[11]_i_19 I3 -pin riscv|mem_aluResult[30]_i_33 I1
load net riscv|ex_immediate[9] -attr @rip(#000000) 1 -attr @name ex_immediate[9] -pin riscv|ex_branchAddress_carry__1 DI[1] -pin riscv|ex_branchAddress_carry__1_i_3 I0 -pin riscv|ex_immediate_reg[9] Q -pin riscv|i__carry__0_i_4 I0 -pin riscv|i__carry__0_i_4__0 I3 -pin riscv|i__carry__0_i_8 I0 -pin riscv|i__carry__1_i_3__1 I0 -pin riscv|mem_aluResult[11]_i_18 I3 -pin riscv|mem_aluResult[30]_i_34 I4 -pin riscv|mem_aluResult[31]_i_20 I0 -pin riscv|mem_aluResult[9]_i_6 I0
load net riscv|ex_instruction[10] -attr @name ex_instruction[10] -pin riscv|ex_instruction_reg[10] Q -pin riscv|mem_instruction_reg[10] D
netloc riscv|ex_instruction[10] 1 23 1 N 2778
load net riscv|ex_instruction[11] -attr @name ex_instruction[11] -pin riscv|ex_instruction_reg[11] Q -pin riscv|mem_instruction_reg[11] D
netloc riscv|ex_instruction[11] 1 23 1 N 2928
load net riscv|ex_instruction[12] -attr @name ex_instruction[12] -pin riscv|ex_instruction_reg[12] Q -pin riscv|mem_instruction_reg[12] D
netloc riscv|ex_instruction[12] 1 30 1 N 23098
load net riscv|ex_instruction[13] -attr @name ex_instruction[13] -pin riscv|ex_instruction_reg[13] Q -pin riscv|mem_instruction_reg[13] D
netloc riscv|ex_instruction[13] 1 30 1 N 23248
load net riscv|ex_instruction[14] -attr @name ex_instruction[14] -pin riscv|ex_instruction_reg[14] Q -pin riscv|mem_instruction_reg[14] D
netloc riscv|ex_instruction[14] 1 30 1 N 23398
load net riscv|ex_instruction[7] -attr @name ex_instruction[7] -pin riscv|ex_instruction_reg[7] Q -pin riscv|mem_instruction_reg[7] D
netloc riscv|ex_instruction[7] 1 23 1 N 2328
load net riscv|ex_instruction[8] -attr @name ex_instruction[8] -pin riscv|ex_instruction_reg[8] Q -pin riscv|mem_instruction_reg[8] D
netloc riscv|ex_instruction[8] 1 23 1 N 2478
load net riscv|ex_instruction[9] -attr @name ex_instruction[9] -pin riscv|ex_instruction_reg[9] Q -pin riscv|mem_instruction_reg[9] D
netloc riscv|ex_instruction[9] 1 23 1 N 2628
load net riscv|ex_rs10[0] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[0] -pin riscv|ex_rs1[0]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOA[0]
load net riscv|ex_rs10[10] -attr @rip(#000000) DOC[0] -attr @name ex_rs10[10] -pin riscv|ex_rs1[10]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOC[0]
load net riscv|ex_rs10[11] -attr @rip(#000000) DOC[1] -attr @name ex_rs10[11] -pin riscv|ex_rs1[11]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOC[1]
load net riscv|ex_rs10[12] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[12] -pin riscv|ex_rs1[12]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOA[0]
load net riscv|ex_rs10[13] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[13] -pin riscv|ex_rs1[13]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOA[1]
load net riscv|ex_rs10[14] -attr @rip(#000000) DOB[0] -attr @name ex_rs10[14] -pin riscv|ex_rs1[14]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOB[0]
load net riscv|ex_rs10[15] -attr @rip(#000000) DOB[1] -attr @name ex_rs10[15] -pin riscv|ex_rs1[15]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOB[1]
load net riscv|ex_rs10[16] -attr @rip(#000000) DOC[0] -attr @name ex_rs10[16] -pin riscv|ex_rs1[16]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOC[0]
load net riscv|ex_rs10[17] -attr @rip(#000000) DOC[1] -attr @name ex_rs10[17] -pin riscv|ex_rs1[17]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 DOC[1]
load net riscv|ex_rs10[18] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[18] -pin riscv|ex_rs1[18]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOA[0]
load net riscv|ex_rs10[19] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[19] -pin riscv|ex_rs1[19]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOA[1]
load net riscv|ex_rs10[1] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[1] -pin riscv|ex_rs1[1]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOA[1]
load net riscv|ex_rs10[20] -attr @rip(#000000) DOB[0] -attr @name ex_rs10[20] -pin riscv|ex_rs1[20]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOB[0]
load net riscv|ex_rs10[21] -attr @rip(#000000) DOB[1] -attr @name ex_rs10[21] -pin riscv|ex_rs1[21]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOB[1]
load net riscv|ex_rs10[22] -attr @rip(#000000) DOC[0] -attr @name ex_rs10[22] -pin riscv|ex_rs1[22]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOC[0]
load net riscv|ex_rs10[23] -attr @rip(#000000) DOC[1] -attr @name ex_rs10[23] -pin riscv|ex_rs1[23]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_18_23 DOC[1]
load net riscv|ex_rs10[24] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[24] -pin riscv|ex_rs1[24]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOA[0]
load net riscv|ex_rs10[25] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[25] -pin riscv|ex_rs1[25]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOA[1]
load net riscv|ex_rs10[26] -attr @rip(#000000) DOB[0] -attr @name ex_rs10[26] -pin riscv|ex_rs1[26]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOB[0]
load net riscv|ex_rs10[27] -attr @rip(#000000) DOB[1] -attr @name ex_rs10[27] -pin riscv|ex_rs1[27]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOB[1]
load net riscv|ex_rs10[28] -attr @rip(#000000) DOC[0] -attr @name ex_rs10[28] -pin riscv|ex_rs1[28]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOC[0]
load net riscv|ex_rs10[29] -attr @rip(#000000) DOC[1] -attr @name ex_rs10[29] -pin riscv|ex_rs1[29]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_24_29 DOC[1]
load net riscv|ex_rs10[2] -attr @rip(#000000) DOB[0] -attr @name ex_rs10[2] -pin riscv|ex_rs1[2]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOB[0]
load net riscv|ex_rs10[30] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[30] -pin riscv|ex_rs1[30]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_30_31 DOA[0]
load net riscv|ex_rs10[31] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[31] -pin riscv|ex_rs1[31]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_30_31 DOA[1]
load net riscv|ex_rs10[3] -attr @rip(#000000) DOB[1] -attr @name ex_rs10[3] -pin riscv|ex_rs1[3]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOB[1]
load net riscv|ex_rs10[4] -attr @rip(#000000) DOC[0] -attr @name ex_rs10[4] -pin riscv|ex_rs1[4]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOC[0]
load net riscv|ex_rs10[5] -attr @rip(#000000) DOC[1] -attr @name ex_rs10[5] -pin riscv|ex_rs1[5]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 DOC[1]
load net riscv|ex_rs10[6] -attr @rip(#000000) DOA[0] -attr @name ex_rs10[6] -pin riscv|ex_rs1[6]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOA[0]
load net riscv|ex_rs10[7] -attr @rip(#000000) DOA[1] -attr @name ex_rs10[7] -pin riscv|ex_rs1[7]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOA[1]
load net riscv|ex_rs10[8] -attr @rip(#000000) DOB[0] -attr @name ex_rs10[8] -pin riscv|ex_rs1[8]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOB[0]
load net riscv|ex_rs10[9] -attr @rip(#000000) DOB[1] -attr @name ex_rs10[9] -pin riscv|ex_rs1[9]_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_6_11 DOB[1]
load net riscv|ex_rs11 -attr @name ex_rs11 -pin riscv|ex_rs1[0]_i_1 I3 -pin riscv|ex_rs1[10]_i_1 I3 -pin riscv|ex_rs1[11]_i_1 I3 -pin riscv|ex_rs1[12]_i_1 I3 -pin riscv|ex_rs1[13]_i_1 I3 -pin riscv|ex_rs1[14]_i_1 I3 -pin riscv|ex_rs1[15]_i_1 I3 -pin riscv|ex_rs1[16]_i_1 I3 -pin riscv|ex_rs1[17]_i_1 I3 -pin riscv|ex_rs1[18]_i_1 I3 -pin riscv|ex_rs1[19]_i_1 I3 -pin riscv|ex_rs1[1]_i_1 I3 -pin riscv|ex_rs1[20]_i_1 I3 -pin riscv|ex_rs1[21]_i_1 I3 -pin riscv|ex_rs1[22]_i_1 I3 -pin riscv|ex_rs1[23]_i_1 I3 -pin riscv|ex_rs1[24]_i_1 I3 -pin riscv|ex_rs1[25]_i_1 I3 -pin riscv|ex_rs1[26]_i_1 I3 -pin riscv|ex_rs1[27]_i_1 I3 -pin riscv|ex_rs1[28]_i_1 I3 -pin riscv|ex_rs1[29]_i_1 I3 -pin riscv|ex_rs1[2]_i_1 I3 -pin riscv|ex_rs1[30]_i_1 I3 -pin riscv|ex_rs1[31]_i_1 I3 -pin riscv|ex_rs1[31]_i_2 O -pin riscv|ex_rs1[3]_i_1 I3 -pin riscv|ex_rs1[4]_i_1 I3 -pin riscv|ex_rs1[5]_i_1 I3 -pin riscv|ex_rs1[6]_i_1 I3 -pin riscv|ex_rs1[7]_i_1 I3 -pin riscv|ex_rs1[8]_i_1 I3 -pin riscv|ex_rs1[9]_i_1 I3
netloc riscv|ex_rs11 1 22 3 20940 28258 22480 30718 24610
load net riscv|ex_rs1[0] -attr @rip(#000000) 0 -attr @name ex_rs1[0] -pin riscv|ex_aluResult0_inferred__0/i__carry DI[0] -pin riscv|ex_rs1_reg[0] Q -pin riscv|i__carry_i_4 I2 -pin riscv|i__carry_i_4__0 I3 -pin riscv|i__carry_i_4__1 I0 -pin riscv|i__carry_i_8 I2 -pin riscv|mem_aluResult[0]_i_10 I1 -pin riscv|mem_aluResult[0]_i_2 I0 -pin riscv|mem_aluResult[0]_i_3 I2 -pin riscv|mem_aluResult[0]_i_4 I1 -pin riscv|mem_aluResult[0]_i_8 I2 -pin riscv|mem_aluResult[14]_i_10 I0 -pin riscv|mem_aluResult[1]_i_2 I5 -pin riscv|mem_aluResult[21]_i_8 I4 -pin riscv|mem_aluResult[26]_i_8 I1 -pin riscv|mem_aluResult[2]_i_20 I3 -pin riscv|mem_aluResult[2]_i_9 I2 -pin riscv|mem_aluResult[3]_i_2 I3 -pin riscv|mem_aluResult[5]_i_8 I2 -pin riscv|mem_aluResult[7]_i_8 I4 -pin riscv|mem_aluResult_reg[2]_i_12 DI[0]
load net riscv|ex_rs1[0]_i_1_n_0 -attr @name ex_rs1[0]_i_1_n_0 -pin riscv|ex_rs1[0]_i_1 O -pin riscv|ex_rs1_reg[0] D
netloc riscv|ex_rs1[0]_i_1_n_0 1 24 1 24330 23938n
load net riscv|ex_rs1[10] -attr @rip(#000000) 2 -attr @name ex_rs1[10] -pin riscv|ex_aluResult0_inferred__0/i__carry__1 DI[2] -pin riscv|ex_rs1_reg[10] Q -pin riscv|i__carry__0_i_3 I5 -pin riscv|i__carry__0_i_3__0 I1 -pin riscv|i__carry__0_i_7 I5 -pin riscv|i__carry__1_i_2__1 I3 -pin riscv|mem_aluResult[10]_i_3 I5 -pin riscv|mem_aluResult[10]_i_5 I1 -pin riscv|mem_aluResult[10]_i_6 I5 -pin riscv|mem_aluResult[11]_i_17 I0 -pin riscv|mem_aluResult[17]_i_5 I2 -pin riscv|mem_aluResult[25]_i_5 I3 -pin riscv|mem_aluResult[2]_i_13 I2 -pin riscv|mem_aluResult[30]_i_18 I0 -pin riscv|mem_aluResult_reg[11]_i_14 DI[2]
load net riscv|ex_rs1[10]_i_1_n_0 -attr @name ex_rs1[10]_i_1_n_0 -pin riscv|ex_rs1[10]_i_1 O -pin riscv|ex_rs1_reg[10] D
netloc riscv|ex_rs1[10]_i_1_n_0 1 23 1 N 22768
load net riscv|ex_rs1[11] -attr @rip(#000000) 3 -attr @name ex_rs1[11] -pin riscv|ex_aluResult0_inferred__0/i__carry__1 DI[3] -pin riscv|ex_rs1_reg[11] Q -pin riscv|i__carry__0_i_3 I3 -pin riscv|i__carry__0_i_3__0 I2 -pin riscv|i__carry__0_i_7 I3 -pin riscv|i__carry__1_i_1__1 I3 -pin riscv|mem_aluResult[11]_i_12 I5 -pin riscv|mem_aluResult[11]_i_16 I0 -pin riscv|mem_aluResult[11]_i_4 I5 -pin riscv|mem_aluResult[11]_i_8 I1 -pin riscv|mem_aluResult[16]_i_8 I2 -pin riscv|mem_aluResult[26]_i_6 I3 -pin riscv|mem_aluResult[2]_i_14 I2 -pin riscv|mem_aluResult[31]_i_17 I0 -pin riscv|mem_aluResult_reg[11]_i_14 DI[3]
load net riscv|ex_rs1[11]_i_1_n_0 -attr @name ex_rs1[11]_i_1_n_0 -pin riscv|ex_rs1[11]_i_1 O -pin riscv|ex_rs1_reg[11] D
netloc riscv|ex_rs1[11]_i_1_n_0 1 23 1 N 22948
load net riscv|ex_rs1[12] -attr @rip(#000000) 0 -attr @name ex_rs1[12] -pin riscv|ex_aluResult0_inferred__0/i__carry__2 DI[0] -pin riscv|ex_rs1_reg[12] Q -pin riscv|i__carry__0_i_2 I5 -pin riscv|i__carry__0_i_2__0 I1 -pin riscv|i__carry__0_i_6 I5 -pin riscv|i__carry__2_i_4__1 I3 -pin riscv|mem_aluResult[11]_i_6 I1 -pin riscv|mem_aluResult[12]_i_4 I5 -pin riscv|mem_aluResult[12]_i_5 I1 -pin riscv|mem_aluResult[12]_i_6 I2 -pin riscv|mem_aluResult[15]_i_15 I0 -pin riscv|mem_aluResult[19]_i_9 I2 -pin riscv|mem_aluResult[26]_i_7 I3 -pin riscv|mem_aluResult[30]_i_16 I3 -pin riscv|mem_aluResult[4]_i_5 I5 -pin riscv|mem_aluResult_reg[15]_i_11 DI[0]
load net riscv|ex_rs1[12]_i_1_n_0 -attr @name ex_rs1[12]_i_1_n_0 -pin riscv|ex_rs1[12]_i_1 O -pin riscv|ex_rs1_reg[12] D
netloc riscv|ex_rs1[12]_i_1_n_0 1 25 1 N 27248
load net riscv|ex_rs1[13] -attr @rip(#000000) 1 -attr @name ex_rs1[13] -pin riscv|ex_aluResult0_inferred__0/i__carry__2 DI[1] -pin riscv|ex_rs1_reg[13] Q -pin riscv|i__carry__0_i_2 I1 -pin riscv|i__carry__0_i_2__0 I2 -pin riscv|i__carry__0_i_6 I1 -pin riscv|i__carry__2_i_3__1 I3 -pin riscv|mem_aluResult[11]_i_9 I1 -pin riscv|mem_aluResult[13]_i_4 I5 -pin riscv|mem_aluResult[13]_i_5 I1 -pin riscv|mem_aluResult[13]_i_6 I2 -pin riscv|mem_aluResult[15]_i_14 I0 -pin riscv|mem_aluResult[20]_i_8 I2 -pin riscv|mem_aluResult[28]_i_5 I3 -pin riscv|mem_aluResult[30]_i_8 I3 -pin riscv|mem_aluResult[5]_i_5 I5 -pin riscv|mem_aluResult_reg[15]_i_11 DI[1]
load net riscv|ex_rs1[13]_i_1_n_0 -attr @name ex_rs1[13]_i_1_n_0 -pin riscv|ex_rs1[13]_i_1 O -pin riscv|ex_rs1_reg[13] D
netloc riscv|ex_rs1[13]_i_1_n_0 1 25 1 N 27418
load net riscv|ex_rs1[14] -attr @rip(#000000) 2 -attr @name ex_rs1[14] -pin riscv|ex_aluResult0_inferred__0/i__carry__2 DI[2] -pin riscv|ex_rs1_reg[14] Q -pin riscv|i__carry__0_i_1 I5 -pin riscv|i__carry__0_i_1__0 I1 -pin riscv|i__carry__0_i_5 I5 -pin riscv|i__carry__2_i_2__1 I3 -pin riscv|mem_aluResult[11]_i_7 I1 -pin riscv|mem_aluResult[14]_i_5 I5 -pin riscv|mem_aluResult[14]_i_6 I1 -pin riscv|mem_aluResult[14]_i_7 I2 -pin riscv|mem_aluResult[15]_i_13 I0 -pin riscv|mem_aluResult[21]_i_9 I2 -pin riscv|mem_aluResult[29]_i_5 I3 -pin riscv|mem_aluResult[30]_i_17 I2 -pin riscv|mem_aluResult[6]_i_5 I5 -pin riscv|mem_aluResult_reg[15]_i_11 DI[2]
load net riscv|ex_rs1[14]_i_1_n_0 -attr @name ex_rs1[14]_i_1_n_0 -pin riscv|ex_rs1[14]_i_1 O -pin riscv|ex_rs1_reg[14] D
netloc riscv|ex_rs1[14]_i_1_n_0 1 25 1 N 27768
load net riscv|ex_rs1[15] -attr @rip(#000000) 3 -attr @name ex_rs1[15] -pin riscv|ex_aluResult0_inferred__0/i__carry__2 DI[3] -pin riscv|ex_rs1_reg[15] Q -pin riscv|i__carry__0_i_1 I1 -pin riscv|i__carry__0_i_1__0 I2 -pin riscv|i__carry__0_i_5 I1 -pin riscv|i__carry__2_i_1__1 I3 -pin riscv|mem_aluResult[15]_i_10 I5 -pin riscv|mem_aluResult[15]_i_12 I0 -pin riscv|mem_aluResult[15]_i_4 I2 -pin riscv|mem_aluResult[15]_i_7 I1 -pin riscv|mem_aluResult[15]_i_9 I1 -pin riscv|mem_aluResult[22]_i_13 I2 -pin riscv|mem_aluResult[30]_i_10 I3 -pin riscv|mem_aluResult[31]_i_4 I1 -pin riscv|mem_aluResult[7]_i_5 I5 -pin riscv|mem_aluResult_reg[15]_i_11 DI[3]
load net riscv|ex_rs1[15]_i_1_n_0 -attr @name ex_rs1[15]_i_1_n_0 -pin riscv|ex_rs1[15]_i_1 O -pin riscv|ex_rs1_reg[15] D
netloc riscv|ex_rs1[15]_i_1_n_0 1 25 1 N 28068
load net riscv|ex_rs1[16] -attr @rip(#000000) 0 -attr @name ex_rs1[16] -pin riscv|ex_aluResult0_inferred__0/i__carry__3 DI[0] -pin riscv|ex_rs1_reg[16] Q -pin riscv|i__carry__1_i_4 I0 -pin riscv|i__carry__1_i_4__0 I1 -pin riscv|i__carry__1_i_8 I0 -pin riscv|i__carry__3_i_4 I3 -pin riscv|mem_aluResult[0]_i_13 I2 -pin riscv|mem_aluResult[15]_i_6 I2 -pin riscv|mem_aluResult[16]_i_5 I2 -pin riscv|mem_aluResult[19]_i_17 I0 -pin riscv|mem_aluResult[21]_i_8 I1 -pin riscv|mem_aluResult[26]_i_8 I5 -pin riscv|mem_aluResult[8]_i_5 I3 -pin riscv|mem_aluResult_reg[19]_i_13 DI[0]
load net riscv|ex_rs1[16]_i_1_n_0 -attr @name ex_rs1[16]_i_1_n_0 -pin riscv|ex_rs1[16]_i_1 O -pin riscv|ex_rs1_reg[16] D
netloc riscv|ex_rs1[16]_i_1_n_0 1 23 1 22060 29078n
load net riscv|ex_rs1[17] -attr @rip(#000000) 1 -attr @name ex_rs1[17] -pin riscv|ex_aluResult0_inferred__0/i__carry__3 DI[1] -pin riscv|ex_rs1_reg[17] Q -pin riscv|i__carry__1_i_4 I5 -pin riscv|i__carry__1_i_4__0 I2 -pin riscv|i__carry__1_i_8 I5 -pin riscv|i__carry__3_i_3 I0 -pin riscv|mem_aluResult[16]_i_6 I2 -pin riscv|mem_aluResult[17]_i_4 I1 -pin riscv|mem_aluResult[19]_i_16 I0 -pin riscv|mem_aluResult[1]_i_8 I2 -pin riscv|mem_aluResult[22]_i_12 I1 -pin riscv|mem_aluResult[28]_i_6 I5 -pin riscv|mem_aluResult[9]_i_5 I3 -pin riscv|mem_aluResult_reg[19]_i_13 DI[1]
load net riscv|ex_rs1[17]_i_1_n_0 -attr @name ex_rs1[17]_i_1_n_0 -pin riscv|ex_rs1[17]_i_1 O -pin riscv|ex_rs1_reg[17] D
netloc riscv|ex_rs1[17]_i_1_n_0 1 23 1 21940 29248n
load net riscv|ex_rs1[18] -attr @rip(#000000) 2 -attr @name ex_rs1[18] -pin riscv|ex_aluResult0_inferred__0/i__carry__3 DI[2] -pin riscv|ex_rs1_reg[18] Q -pin riscv|i__carry__1_i_3 I0 -pin riscv|i__carry__1_i_3__0 I1 -pin riscv|i__carry__1_i_7 I0 -pin riscv|i__carry__3_i_2 I3 -pin riscv|mem_aluResult[10]_i_5 I3 -pin riscv|mem_aluResult[18]_i_5 I2 -pin riscv|mem_aluResult[18]_i_7 I2 -pin riscv|mem_aluResult[19]_i_15 I0 -pin riscv|mem_aluResult[25]_i_5 I1 -pin riscv|mem_aluResult[2]_i_22 I2 -pin riscv|mem_aluResult[30]_i_18 I5 -pin riscv|mem_aluResult_reg[19]_i_13 DI[2]
load net riscv|ex_rs1[18]_i_1_n_0 -attr @name ex_rs1[18]_i_1_n_0 -pin riscv|ex_rs1[18]_i_1 O -pin riscv|ex_rs1_reg[18] D
netloc riscv|ex_rs1[18]_i_1_n_0 1 23 1 21860 29798n
load net riscv|ex_rs1[19] -attr @rip(#000000) 3 -attr @name ex_rs1[19] -pin riscv|ex_aluResult0_inferred__0/i__carry__3 DI[3] -pin riscv|ex_rs1_reg[19] Q -pin riscv|i__carry__1_i_3 I5 -pin riscv|i__carry__1_i_3__0 I2 -pin riscv|i__carry__1_i_7 I5 -pin riscv|i__carry__3_i_1 I0 -pin riscv|mem_aluResult[11]_i_8 I3 -pin riscv|mem_aluResult[16]_i_7 I2 -pin riscv|mem_aluResult[19]_i_14 I0 -pin riscv|mem_aluResult[19]_i_5 I1 -pin riscv|mem_aluResult[26]_i_6 I1 -pin riscv|mem_aluResult[2]_i_24 I2 -pin riscv|mem_aluResult[31]_i_17 I5 -pin riscv|mem_aluResult_reg[19]_i_13 DI[3]
load net riscv|ex_rs1[19]_i_1_n_0 -attr @name ex_rs1[19]_i_1_n_0 -pin riscv|ex_rs1[19]_i_1 O -pin riscv|ex_rs1_reg[19] D
netloc riscv|ex_rs1[19]_i_1_n_0 1 23 1 22540 29948n
load net riscv|ex_rs1[1] -attr @rip(#000000) 1 -attr @name ex_rs1[1] -pin riscv|ex_aluResult0_inferred__0/i__carry DI[1] -pin riscv|ex_rs1_reg[1] Q -pin riscv|i__carry_i_3__1 I0 -pin riscv|i__carry_i_4 I0 -pin riscv|i__carry_i_4__0 I4 -pin riscv|i__carry_i_8 I0 -pin riscv|mem_aluResult[16]_i_9 I0 -pin riscv|mem_aluResult[1]_i_3 I4 -pin riscv|mem_aluResult[1]_i_4 I4 -pin riscv|mem_aluResult[1]_i_9 I2 -pin riscv|mem_aluResult[22]_i_12 I4 -pin riscv|mem_aluResult[28]_i_6 I1 -pin riscv|mem_aluResult[2]_i_15 I0 -pin riscv|mem_aluResult[2]_i_19 I3 -pin riscv|mem_aluResult[4]_i_7 I0 -pin riscv|mem_aluResult[6]_i_7 I2 -pin riscv|mem_aluResult[8]_i_7 I4 -pin riscv|mem_aluResult_reg[2]_i_12 DI[1]
load net riscv|ex_rs1[1]_i_1_n_0 -attr @name ex_rs1[1]_i_1_n_0 -pin riscv|ex_rs1[1]_i_1 O -pin riscv|ex_rs1_reg[1] D
netloc riscv|ex_rs1[1]_i_1_n_0 1 24 1 N 24138
load net riscv|ex_rs1[20] -attr @rip(#000000) 0 -attr @name ex_rs1[20] -pin riscv|ex_aluResult0_inferred__0/i__carry__4 DI[0] -pin riscv|ex_rs1_reg[20] Q -pin riscv|i__carry__1_i_2 I0 -pin riscv|i__carry__1_i_2__0 I1 -pin riscv|i__carry__1_i_6 I0 -pin riscv|i__carry__4_i_4 I3 -pin riscv|mem_aluResult[11]_i_6 I3 -pin riscv|mem_aluResult[19]_i_8 I2 -pin riscv|mem_aluResult[20]_i_5 I2 -pin riscv|mem_aluResult[26]_i_21 I0 -pin riscv|mem_aluResult[26]_i_7 I1 -pin riscv|mem_aluResult[30]_i_35 I3 -pin riscv|mem_aluResult[4]_i_5 I0 -pin riscv|mem_aluResult_reg[26]_i_13 DI[0]
load net riscv|ex_rs1[20]_i_1_n_0 -attr @name ex_rs1[20]_i_1_n_0 -pin riscv|ex_rs1[20]_i_1 O -pin riscv|ex_rs1_reg[20] D
netloc riscv|ex_rs1[20]_i_1_n_0 1 25 1 N 32588
load net riscv|ex_rs1[21] -attr @rip(#000000) 1 -attr @name ex_rs1[21] -pin riscv|ex_aluResult0_inferred__0/i__carry__4 DI[1] -pin riscv|ex_rs1_reg[21] Q -pin riscv|i__carry__1_i_2 I5 -pin riscv|i__carry__1_i_2__0 I2 -pin riscv|i__carry__1_i_6 I5 -pin riscv|i__carry__4_i_3 I0 -pin riscv|mem_aluResult[11]_i_9 I3 -pin riscv|mem_aluResult[20]_i_7 I2 -pin riscv|mem_aluResult[21]_i_5 I1 -pin riscv|mem_aluResult[26]_i_20 I0 -pin riscv|mem_aluResult[28]_i_5 I1 -pin riscv|mem_aluResult[30]_i_24 I3 -pin riscv|mem_aluResult[5]_i_5 I0 -pin riscv|mem_aluResult_reg[26]_i_13 DI[1]
load net riscv|ex_rs1[21]_i_1_n_0 -attr @name ex_rs1[21]_i_1_n_0 -pin riscv|ex_rs1[21]_i_1 O -pin riscv|ex_rs1_reg[21] D
netloc riscv|ex_rs1[21]_i_1_n_0 1 25 1 N 32758
load net riscv|ex_rs1[22] -attr @rip(#000000) 2 -attr @name ex_rs1[22] -pin riscv|ex_aluResult0_inferred__0/i__carry__4 DI[2] -pin riscv|ex_rs1_reg[22] Q -pin riscv|i__carry__1_i_1 I0 -pin riscv|i__carry__1_i_1__0 I1 -pin riscv|i__carry__1_i_5 I0 -pin riscv|i__carry__4_i_2 I3 -pin riscv|mem_aluResult[11]_i_7 I3 -pin riscv|mem_aluResult[21]_i_7 I2 -pin riscv|mem_aluResult[22]_i_6 I2 -pin riscv|mem_aluResult[26]_i_19 I0 -pin riscv|mem_aluResult[29]_i_5 I1 -pin riscv|mem_aluResult[30]_i_19 I0 -pin riscv|mem_aluResult[6]_i_5 I0 -pin riscv|mem_aluResult_reg[26]_i_13 DI[2]
load net riscv|ex_rs1[22]_i_1_n_0 -attr @name ex_rs1[22]_i_1_n_0 -pin riscv|ex_rs1[22]_i_1 O -pin riscv|ex_rs1_reg[22] D
netloc riscv|ex_rs1[22]_i_1_n_0 1 25 1 N 32928
load net riscv|ex_rs1[23] -attr @rip(#000000) 3 -attr @name ex_rs1[23] -pin riscv|ex_aluResult0_inferred__0/i__carry__4 DI[3] -pin riscv|ex_rs1_reg[23] Q -pin riscv|i__carry__1_i_1 I5 -pin riscv|i__carry__1_i_1__0 I2 -pin riscv|i__carry__1_i_5 I5 -pin riscv|i__carry__4_i_1 I0 -pin riscv|mem_aluResult[15]_i_7 I3 -pin riscv|mem_aluResult[22]_i_9 I2 -pin riscv|mem_aluResult[23]_i_1 I4 -pin riscv|mem_aluResult[23]_i_5 I5 -pin riscv|mem_aluResult[26]_i_18 I0 -pin riscv|mem_aluResult[30]_i_10 I1 -pin riscv|mem_aluResult[31]_i_13 I1 -pin riscv|mem_aluResult[7]_i_5 I0 -pin riscv|mem_aluResult_reg[26]_i_13 DI[3]
load net riscv|ex_rs1[23]_i_1_n_0 -attr @name ex_rs1[23]_i_1_n_0 -pin riscv|ex_rs1[23]_i_1 O -pin riscv|ex_rs1_reg[23] D
netloc riscv|ex_rs1[23]_i_1_n_0 1 25 1 N 33098
load net riscv|ex_rs1[24] -attr @rip(#000000) 0 -attr @name ex_rs1[24] -pin riscv|ex_aluResult0_inferred__0/i__carry__5 DI[0] -pin riscv|ex_rs1_reg[24] Q -pin riscv|i__carry__2_i_4 I1 -pin riscv|i__carry__2_i_5 I0 -pin riscv|i__carry__2_i_8 I0 -pin riscv|i__carry__5_i_4 I3 -pin riscv|mem_aluResult[0]_i_11 I1 -pin riscv|mem_aluResult[15]_i_6 I0 -pin riscv|mem_aluResult[18]_i_6 I0 -pin riscv|mem_aluResult[19]_i_7 I2 -pin riscv|mem_aluResult[21]_i_3 I5 -pin riscv|mem_aluResult[23]_i_3 I3 -pin riscv|mem_aluResult[24]_i_1 I4 -pin riscv|mem_aluResult[24]_i_3 I1 -pin riscv|mem_aluResult[24]_i_5 I5 -pin riscv|mem_aluResult[26]_i_17 I0 -pin riscv|mem_aluResult[26]_i_8 I4 -pin riscv|mem_aluResult[8]_i_5 I4 -pin riscv|mem_aluResult_reg[26]_i_9 DI[0]
load net riscv|ex_rs1[24]_i_1_n_0 -attr @name ex_rs1[24]_i_1_n_0 -pin riscv|ex_rs1[24]_i_1 O -pin riscv|ex_rs1_reg[24] D
netloc riscv|ex_rs1[24]_i_1_n_0 1 23 1 22560 30258n
load net riscv|ex_rs1[25] -attr @rip(#000000) 1 -attr @name ex_rs1[25] -pin riscv|ex_aluResult0_inferred__0/i__carry__5 DI[1] -pin riscv|ex_rs1_reg[25] Q -pin riscv|i__carry__2_i_4 I2 -pin riscv|i__carry__2_i_5 I5 -pin riscv|i__carry__2_i_8 I5 -pin riscv|i__carry__5_i_3 I0 -pin riscv|mem_aluResult[16]_i_6 I0 -pin riscv|mem_aluResult[19]_i_12 I2 -pin riscv|mem_aluResult[1]_i_8 I0 -pin riscv|mem_aluResult[20]_i_6 I2 -pin riscv|mem_aluResult[22]_i_3 I5 -pin riscv|mem_aluResult[25]_i_6 I5 -pin riscv|mem_aluResult[25]_i_7 I1 -pin riscv|mem_aluResult[25]_i_9 I2 -pin riscv|mem_aluResult[26]_i_16 I0 -pin riscv|mem_aluResult[28]_i_6 I4 -pin riscv|mem_aluResult[9]_i_5 I4 -pin riscv|mem_aluResult_reg[26]_i_9 DI[1]
load net riscv|ex_rs1[25]_i_1_n_0 -attr @name ex_rs1[25]_i_1_n_0 -pin riscv|ex_rs1[25]_i_1 O -pin riscv|ex_rs1_reg[25] D
netloc riscv|ex_rs1[25]_i_1_n_0 1 23 1 22580 30408n
load net riscv|ex_rs1[26] -attr @rip(#000000) 2 -attr @name ex_rs1[26] -pin riscv|ex_aluResult0_inferred__0/i__carry__5 DI[2] -pin riscv|ex_rs1_reg[26] Q -pin riscv|i__carry__2_i_3 I1 -pin riscv|i__carry__2_i_4__0 I0 -pin riscv|i__carry__2_i_7 I0 -pin riscv|i__carry__5_i_2 I3 -pin riscv|mem_aluResult[10]_i_5 I4 -pin riscv|mem_aluResult[18]_i_7 I0 -pin riscv|mem_aluResult[19]_i_7 I0 -pin riscv|mem_aluResult[21]_i_6 I2 -pin riscv|mem_aluResult[24]_i_8 I1 -pin riscv|mem_aluResult[26]_i_10 I5 -pin riscv|mem_aluResult[26]_i_11 I3 -pin riscv|mem_aluResult[26]_i_12 I1 -pin riscv|mem_aluResult[26]_i_15 I0 -pin riscv|mem_aluResult[2]_i_22 I0 -pin riscv|mem_aluResult[30]_i_18 I4 -pin riscv|mem_aluResult_reg[26]_i_9 DI[2]
load net riscv|ex_rs1[26]_i_1_n_0 -attr @name ex_rs1[26]_i_1_n_0 -pin riscv|ex_rs1[26]_i_1 O -pin riscv|ex_rs1_reg[26] D
netloc riscv|ex_rs1[26]_i_1_n_0 1 23 1 21800 30788n
load net riscv|ex_rs1[27] -attr @rip(#000000) 3 -attr @name ex_rs1[27] -pin riscv|ex_aluResult0_inferred__0/i__carry__5 DI[3] -pin riscv|ex_rs1_reg[27] Q -pin riscv|i__carry__2_i_3 I2 -pin riscv|i__carry__2_i_4__0 I5 -pin riscv|i__carry__2_i_7 I5 -pin riscv|i__carry__5_i_1 I0 -pin riscv|mem_aluResult[11]_i_8 I4 -pin riscv|mem_aluResult[16]_i_7 I0 -pin riscv|mem_aluResult[20]_i_6 I0 -pin riscv|mem_aluResult[22]_i_7 I2 -pin riscv|mem_aluResult[25]_i_9 I0 -pin riscv|mem_aluResult[26]_i_14 I0 -pin riscv|mem_aluResult[27]_i_1 I4 -pin riscv|mem_aluResult[27]_i_6 I5 -pin riscv|mem_aluResult[27]_i_9 I0 -pin riscv|mem_aluResult[2]_i_24 I0 -pin riscv|mem_aluResult[31]_i_17 I4 -pin riscv|mem_aluResult_reg[26]_i_9 DI[3]
load net riscv|ex_rs1[27]_i_1_n_0 -attr @name ex_rs1[27]_i_1_n_0 -pin riscv|ex_rs1[27]_i_1 O -pin riscv|ex_rs1_reg[27] D
netloc riscv|ex_rs1[27]_i_1_n_0 1 23 1 22700 30978n
load net riscv|ex_rs1[28] -attr @rip(#000000) 0 -attr @name ex_rs1[28] -pin riscv|ex_aluResult0_inferred__0/i__carry__6 DI[0] -pin riscv|ex_rs1_reg[28] Q -pin riscv|i__carry__2_i_2 I1 -pin riscv|i__carry__2_i_3__0 I0 -pin riscv|i__carry__2_i_6 I0 -pin riscv|i__carry__6_i_4 I3 -pin riscv|mem_aluResult[11]_i_6 I4 -pin riscv|mem_aluResult[19]_i_8 I0 -pin riscv|mem_aluResult[21]_i_6 I0 -pin riscv|mem_aluResult[24]_i_8 I2 -pin riscv|mem_aluResult[26]_i_12 I2 -pin riscv|mem_aluResult[27]_i_4 I3 -pin riscv|mem_aluResult[28]_i_10 I5 -pin riscv|mem_aluResult[28]_i_3 I1 -pin riscv|mem_aluResult[28]_i_9 I2 -pin riscv|mem_aluResult[30]_i_35 I1 -pin riscv|mem_aluResult[30]_i_40 I0 -pin riscv|mem_aluResult[4]_i_5 I1 -pin riscv|mem_aluResult_reg[30]_i_22 DI[0]
load net riscv|ex_rs1[28]_i_1_n_0 -attr @name ex_rs1[28]_i_1_n_0 -pin riscv|ex_rs1[28]_i_1 O -pin riscv|ex_rs1_reg[28] D
netloc riscv|ex_rs1[28]_i_1_n_0 1 24 1 N 31278
load net riscv|ex_rs1[29] -attr @rip(#000000) 1 -attr @name ex_rs1[29] -pin riscv|ex_aluResult0_inferred__0/i__carry__6 DI[1] -pin riscv|ex_rs1_reg[29] Q -pin riscv|i__carry__2_i_2 I2 -pin riscv|i__carry__2_i_3__0 I5 -pin riscv|i__carry__2_i_6 I5 -pin riscv|i__carry__6_i_3 I0 -pin riscv|mem_aluResult[11]_i_9 I4 -pin riscv|mem_aluResult[20]_i_7 I0 -pin riscv|mem_aluResult[22]_i_7 I0 -pin riscv|mem_aluResult[25]_i_8 I2 -pin riscv|mem_aluResult[27]_i_9 I1 -pin riscv|mem_aluResult[28]_i_9 I0 -pin riscv|mem_aluResult[29]_i_6 I3 -pin riscv|mem_aluResult[29]_i_7 I1 -pin riscv|mem_aluResult[29]_i_8 I5 -pin riscv|mem_aluResult[30]_i_24 I1 -pin riscv|mem_aluResult[30]_i_39 I0 -pin riscv|mem_aluResult[5]_i_5 I1 -pin riscv|mem_aluResult_reg[30]_i_22 DI[1]
load net riscv|ex_rs1[29]_i_1_n_0 -attr @name ex_rs1[29]_i_1_n_0 -pin riscv|ex_rs1[29]_i_1 O -pin riscv|ex_rs1_reg[29] D
netloc riscv|ex_rs1[29]_i_1_n_0 1 24 1 N 31568
load net riscv|ex_rs1[2] -attr @rip(#000000) 2 -attr @name ex_rs1[2] -pin riscv|ex_aluResult0_inferred__0/i__carry DI[2] -pin riscv|ex_rs1_reg[2] Q -pin riscv|i__carry_i_2__1 I0 -pin riscv|i__carry_i_3 I4 -pin riscv|i__carry_i_3__0 I1 -pin riscv|i__carry_i_7 I4 -pin riscv|mem_aluResult[17]_i_5 I0 -pin riscv|mem_aluResult[25]_i_5 I4 -pin riscv|mem_aluResult[2]_i_11 I3 -pin riscv|mem_aluResult[2]_i_16 I4 -pin riscv|mem_aluResult[2]_i_18 I3 -pin riscv|mem_aluResult[2]_i_2 I0 -pin riscv|mem_aluResult[2]_i_21 I4 -pin riscv|mem_aluResult[2]_i_7 I1 -pin riscv|mem_aluResult[30]_i_18 I1 -pin riscv|mem_aluResult[3]_i_4 I3 -pin riscv|mem_aluResult[5]_i_8 I1 -pin riscv|mem_aluResult[7]_i_8 I2 -pin riscv|mem_aluResult[9]_i_9 I0 -pin riscv|mem_aluResult_reg[2]_i_12 DI[2]
load net riscv|ex_rs1[2]_i_1_n_0 -attr @name ex_rs1[2]_i_1_n_0 -pin riscv|ex_rs1[2]_i_1 O -pin riscv|ex_rs1_reg[2] D
netloc riscv|ex_rs1[2]_i_1_n_0 1 24 1 24330 24288n
load net riscv|ex_rs1[30] -attr @rip(#000000) 2 -attr @name ex_rs1[30] -pin riscv|ex_aluResult0_inferred__0/i__carry__6 DI[2] -pin riscv|ex_rs1_reg[30] Q -pin riscv|i__carry__2_i_1 I1 -pin riscv|i__carry__2_i_1__0 I1 -pin riscv|i__carry__2_i_2__0 I5 -pin riscv|i__carry__2_i_5__0 I5 -pin riscv|i__carry__6_i_2 I0 -pin riscv|mem_aluResult[11]_i_7 I4 -pin riscv|mem_aluResult[21]_i_7 I0 -pin riscv|mem_aluResult[24]_i_8 I0 -pin riscv|mem_aluResult[26]_i_12 I0 -pin riscv|mem_aluResult[27]_i_12 I2 -pin riscv|mem_aluResult[28]_i_8 I5 -pin riscv|mem_aluResult[29]_i_7 I3 -pin riscv|mem_aluResult[30]_i_19 I2 -pin riscv|mem_aluResult[30]_i_20 I3 -pin riscv|mem_aluResult[30]_i_23 I5 -pin riscv|mem_aluResult[30]_i_38 I3 -pin riscv|mem_aluResult[30]_i_6 I0 -pin riscv|mem_aluResult[6]_i_5 I1 -pin riscv|mem_aluResult_reg[30]_i_22 DI[2]
load net riscv|ex_rs1[30]_i_1_n_0 -attr @name ex_rs1[30]_i_1_n_0 -pin riscv|ex_rs1[30]_i_1 O -pin riscv|ex_rs1_reg[30] D
netloc riscv|ex_rs1[30]_i_1_n_0 1 24 1 23270 31748n
load net riscv|ex_rs1[31] -attr @name ex_rs1[31] -pin riscv|ex_rs1_reg[31] Q -pin riscv|i__carry__2_i_1 I2 -pin riscv|i__carry__2_i_1__0 I5 -pin riscv|i__carry__2_i_2__0 I1 -pin riscv|i__carry__2_i_5__0 I1 -pin riscv|i__carry__6_i_1 I0 -pin riscv|mem_aluResult[15]_i_7 I4 -pin riscv|mem_aluResult[22]_i_9 I0 -pin riscv|mem_aluResult[25]_i_8 I4 -pin riscv|mem_aluResult[27]_i_9 I2 -pin riscv|mem_aluResult[28]_i_8 I1 -pin riscv|mem_aluResult[29]_i_9 I2 -pin riscv|mem_aluResult[30]_i_20 I5 -pin riscv|mem_aluResult[30]_i_37 I3 -pin riscv|mem_aluResult[31]_i_22 I2 -pin riscv|mem_aluResult[31]_i_6 I3 -pin riscv|mem_aluResult[31]_i_8 I5 -pin riscv|mem_aluResult[31]_i_9 I0 -pin riscv|mem_aluResult[7]_i_5 I1
netloc riscv|ex_rs1[31] 1 8 20 6700 15768 NJ 15768 NJ 15768 NJ 15768 NJ 15768 8960 16298 NJ 16298 NJ 16298 12500 16338 14320 29258 NJ 29258 NJ 29258 NJ 29258 NJ 29258 20840J 28558 NJ 28558 23190 30028 26510 22588 27270 21958 NJ
load net riscv|ex_rs1[31]_i_1_n_0 -attr @name ex_rs1[31]_i_1_n_0 -pin riscv|ex_rs1[31]_i_1 O -pin riscv|ex_rs1_reg[31] D
netloc riscv|ex_rs1[31]_i_1_n_0 1 23 1 22740 31128n
load net riscv|ex_rs1[31]_i_3_n_0 -attr @name ex_rs1[31]_i_3_n_0 -pin riscv|ex_rs1[31]_i_2 I0 -pin riscv|ex_rs1[31]_i_3 O
netloc riscv|ex_rs1[31]_i_3_n_0 1 23 1 21540 32298n
load net riscv|ex_rs1[3] -attr @rip(#000000) 3 -attr @name ex_rs1[3] -pin riscv|ex_aluResult0_inferred__0/i__carry DI[3] -pin riscv|ex_rs1_reg[3] Q -pin riscv|i__carry_i_1__1 I0 -pin riscv|i__carry_i_3 I0 -pin riscv|i__carry_i_3__0 I2 -pin riscv|i__carry_i_7 I0 -pin riscv|mem_aluResult[10]_i_8 I0 -pin riscv|mem_aluResult[16]_i_8 I0 -pin riscv|mem_aluResult[26]_i_6 I4 -pin riscv|mem_aluResult[2]_i_17 I3 -pin riscv|mem_aluResult[2]_i_23 I4 -pin riscv|mem_aluResult[31]_i_17 I1 -pin riscv|mem_aluResult[3]_i_3 I3 -pin riscv|mem_aluResult[3]_i_6 I5 -pin riscv|mem_aluResult[3]_i_8 I1 -pin riscv|mem_aluResult[4]_i_7 I2 -pin riscv|mem_aluResult[6]_i_7 I1 -pin riscv|mem_aluResult[8]_i_7 I2 -pin riscv|mem_aluResult_reg[2]_i_12 DI[3]
load net riscv|ex_rs1[3]_i_1_n_0 -attr @name ex_rs1[3]_i_1_n_0 -pin riscv|ex_rs1[3]_i_1 O -pin riscv|ex_rs1_reg[3] D
netloc riscv|ex_rs1[3]_i_1_n_0 1 24 1 24410 24438n
load net riscv|ex_rs1[4] -attr @rip(#000000) 0 -attr @name ex_rs1[4] -pin riscv|ex_aluResult0_inferred__0/i__carry__0 DI[0] -pin riscv|ex_rs1_reg[4] Q -pin riscv|i__carry__0_i_4__1 I3 -pin riscv|i__carry_i_2 I5 -pin riscv|i__carry_i_2__0 I1 -pin riscv|i__carry_i_6 I5 -pin riscv|mem_aluResult[11]_i_15 I0 -pin riscv|mem_aluResult[19]_i_9 I0 -pin riscv|mem_aluResult[26]_i_7 I4 -pin riscv|mem_aluResult[30]_i_16 I5 -pin riscv|mem_aluResult[4]_i_3 I5 -pin riscv|mem_aluResult[4]_i_5 I4 -pin riscv|mem_aluResult[4]_i_6 I5 -pin riscv|mem_aluResult[5]_i_8 I0 -pin riscv|mem_aluResult[7]_i_10 I0 -pin riscv|mem_aluResult[7]_i_14 I0 -pin riscv|mem_aluResult[9]_i_9 I2 -pin riscv|mem_aluResult_reg[7]_i_9 DI[0]
load net riscv|ex_rs1[4]_i_1_n_0 -attr @name ex_rs1[4]_i_1_n_0 -pin riscv|ex_rs1[4]_i_1 O -pin riscv|ex_rs1_reg[4] D
netloc riscv|ex_rs1[4]_i_1_n_0 1 25 1 N 26408
load net riscv|ex_rs1[5] -attr @rip(#000000) 1 -attr @name ex_rs1[5] -pin riscv|ex_aluResult0_inferred__0/i__carry__0 DI[1] -pin riscv|ex_rs1_reg[5] Q -pin riscv|i__carry__0_i_3__1 I3 -pin riscv|i__carry_i_2 I3 -pin riscv|i__carry_i_2__0 I2 -pin riscv|i__carry_i_6 I3 -pin riscv|mem_aluResult[10]_i_8 I2 -pin riscv|mem_aluResult[12]_i_7 I0 -pin riscv|mem_aluResult[20]_i_8 I0 -pin riscv|mem_aluResult[28]_i_5 I4 -pin riscv|mem_aluResult[30]_i_8 I5 -pin riscv|mem_aluResult[5]_i_3 I5 -pin riscv|mem_aluResult[5]_i_5 I4 -pin riscv|mem_aluResult[5]_i_7 I5 -pin riscv|mem_aluResult[6]_i_7 I0 -pin riscv|mem_aluResult[7]_i_13 I0 -pin riscv|mem_aluResult[8]_i_8 I0 -pin riscv|mem_aluResult_reg[7]_i_9 DI[1]
load net riscv|ex_rs1[5]_i_1_n_0 -attr @name ex_rs1[5]_i_1_n_0 -pin riscv|ex_rs1[5]_i_1 O -pin riscv|ex_rs1_reg[5] D
netloc riscv|ex_rs1[5]_i_1_n_0 1 25 1 N 26578
load net riscv|ex_rs1[6] -attr @rip(#000000) 2 -attr @name ex_rs1[6] -pin riscv|ex_aluResult0_inferred__0/i__carry__0 DI[2] -pin riscv|ex_rs1_reg[6] Q -pin riscv|i__carry__0_i_2__1 I3 -pin riscv|i__carry_i_1 I5 -pin riscv|i__carry_i_1__0 I1 -pin riscv|i__carry_i_5 I5 -pin riscv|mem_aluResult[11]_i_15 I2 -pin riscv|mem_aluResult[13]_i_8 I0 -pin riscv|mem_aluResult[21]_i_9 I0 -pin riscv|mem_aluResult[29]_i_5 I4 -pin riscv|mem_aluResult[30]_i_17 I0 -pin riscv|mem_aluResult[6]_i_3 I5 -pin riscv|mem_aluResult[6]_i_5 I4 -pin riscv|mem_aluResult[6]_i_6 I5 -pin riscv|mem_aluResult[7]_i_10 I2 -pin riscv|mem_aluResult[7]_i_12 I0 -pin riscv|mem_aluResult[9]_i_8 I5 -pin riscv|mem_aluResult_reg[7]_i_9 DI[2]
load net riscv|ex_rs1[6]_i_1_n_0 -attr @name ex_rs1[6]_i_1_n_0 -pin riscv|ex_rs1[6]_i_1 O -pin riscv|ex_rs1_reg[6] D
netloc riscv|ex_rs1[6]_i_1_n_0 1 25 1 N 26748
load net riscv|ex_rs1[7] -attr @rip(#000000) 3 -attr @name ex_rs1[7] -pin riscv|ex_aluResult0_inferred__0/i__carry__0 DI[3] -pin riscv|ex_rs1_reg[7] Q -pin riscv|i__carry__0_i_1__1 I3 -pin riscv|i__carry_i_1 I3 -pin riscv|i__carry_i_1__0 I2 -pin riscv|i__carry_i_5 I3 -pin riscv|mem_aluResult[10]_i_7 I5 -pin riscv|mem_aluResult[12]_i_7 I2 -pin riscv|mem_aluResult[14]_i_9 I0 -pin riscv|mem_aluResult[22]_i_13 I0 -pin riscv|mem_aluResult[30]_i_10 I4 -pin riscv|mem_aluResult[31]_i_5 I1 -pin riscv|mem_aluResult[7]_i_11 I0 -pin riscv|mem_aluResult[7]_i_3 I5 -pin riscv|mem_aluResult[7]_i_5 I4 -pin riscv|mem_aluResult[7]_i_7 I5 -pin riscv|mem_aluResult[8]_i_8 I2 -pin riscv|mem_aluResult_reg[7]_i_9 DI[3]
load net riscv|ex_rs1[7]_i_1_n_0 -attr @name ex_rs1[7]_i_1_n_0 -pin riscv|ex_rs1[7]_i_1 O -pin riscv|ex_rs1_reg[7] D
netloc riscv|ex_rs1[7]_i_1_n_0 1 25 1 N 26918
load net riscv|ex_rs1[8] -attr @rip(#000000) 0 -attr @name ex_rs1[8] -pin riscv|ex_aluResult0_inferred__0/i__carry__1 DI[0] -pin riscv|ex_rs1_reg[8] Q -pin riscv|i__carry__0_i_4 I5 -pin riscv|i__carry__0_i_4__0 I1 -pin riscv|i__carry__0_i_8 I5 -pin riscv|i__carry__1_i_4__1 I3 -pin riscv|mem_aluResult[0]_i_12 I2 -pin riscv|mem_aluResult[11]_i_19 I0 -pin riscv|mem_aluResult[14]_i_10 I2 -pin riscv|mem_aluResult[21]_i_8 I3 -pin riscv|mem_aluResult[26]_i_8 I0 -pin riscv|mem_aluResult[8]_i_3 I5 -pin riscv|mem_aluResult[8]_i_5 I1 -pin riscv|mem_aluResult[8]_i_6 I5 -pin riscv|mem_aluResult_reg[11]_i_14 DI[0]
load net riscv|ex_rs1[8]_i_1_n_0 -attr @name ex_rs1[8]_i_1_n_0 -pin riscv|ex_rs1[8]_i_1 O -pin riscv|ex_rs1_reg[8] D
netloc riscv|ex_rs1[8]_i_1_n_0 1 23 1 22480 8968n
load net riscv|ex_rs1[9] -attr @rip(#000000) 1 -attr @name ex_rs1[9] -pin riscv|ex_aluResult0_inferred__0/i__carry__1 DI[1] -pin riscv|ex_rs1_reg[9] Q -pin riscv|i__carry__0_i_4 I3 -pin riscv|i__carry__0_i_4__0 I2 -pin riscv|i__carry__0_i_8 I3 -pin riscv|i__carry__1_i_3__1 I3 -pin riscv|mem_aluResult[11]_i_18 I0 -pin riscv|mem_aluResult[16]_i_9 I2 -pin riscv|mem_aluResult[1]_i_9 I0 -pin riscv|mem_aluResult[22]_i_12 I3 -pin riscv|mem_aluResult[28]_i_6 I0 -pin riscv|mem_aluResult[9]_i_3 I5 -pin riscv|mem_aluResult[9]_i_5 I1 -pin riscv|mem_aluResult[9]_i_7 I5 -pin riscv|mem_aluResult_reg[11]_i_14 DI[1]
load net riscv|ex_rs1[9]_i_1_n_0 -attr @name ex_rs1[9]_i_1_n_0 -pin riscv|ex_rs1[9]_i_1 O -pin riscv|ex_rs1_reg[9] D
netloc riscv|ex_rs1[9]_i_1_n_0 1 23 1 N 10388
load net riscv|ex_rs20[0] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[0] -pin riscv|ex_rs2[0]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOA[0]
load net riscv|ex_rs20[10] -attr @rip(#000000) DOC[0] -attr @name ex_rs20[10] -pin riscv|ex_rs2[10]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOC[0]
load net riscv|ex_rs20[11] -attr @rip(#000000) DOC[1] -attr @name ex_rs20[11] -pin riscv|ex_rs2[11]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOC[1]
load net riscv|ex_rs20[12] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[12] -pin riscv|ex_rs2[12]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOA[0]
load net riscv|ex_rs20[13] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[13] -pin riscv|ex_rs2[13]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOA[1]
load net riscv|ex_rs20[14] -attr @rip(#000000) DOB[0] -attr @name ex_rs20[14] -pin riscv|ex_rs2[14]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOB[0]
load net riscv|ex_rs20[15] -attr @rip(#000000) DOB[1] -attr @name ex_rs20[15] -pin riscv|ex_rs2[15]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOB[1]
load net riscv|ex_rs20[16] -attr @rip(#000000) DOC[0] -attr @name ex_rs20[16] -pin riscv|ex_rs2[16]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOC[0]
load net riscv|ex_rs20[17] -attr @rip(#000000) DOC[1] -attr @name ex_rs20[17] -pin riscv|ex_rs2[17]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_12_17 DOC[1]
load net riscv|ex_rs20[18] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[18] -pin riscv|ex_rs2[18]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOA[0]
load net riscv|ex_rs20[19] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[19] -pin riscv|ex_rs2[19]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOA[1]
load net riscv|ex_rs20[1] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[1] -pin riscv|ex_rs2[1]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOA[1]
load net riscv|ex_rs20[20] -attr @rip(#000000) DOB[0] -attr @name ex_rs20[20] -pin riscv|ex_rs2[20]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOB[0]
load net riscv|ex_rs20[21] -attr @rip(#000000) DOB[1] -attr @name ex_rs20[21] -pin riscv|ex_rs2[21]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOB[1]
load net riscv|ex_rs20[22] -attr @rip(#000000) DOC[0] -attr @name ex_rs20[22] -pin riscv|ex_rs2[22]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOC[0]
load net riscv|ex_rs20[23] -attr @rip(#000000) DOC[1] -attr @name ex_rs20[23] -pin riscv|ex_rs2[23]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_18_23 DOC[1]
load net riscv|ex_rs20[24] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[24] -pin riscv|ex_rs2[24]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOA[0]
load net riscv|ex_rs20[25] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[25] -pin riscv|ex_rs2[25]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOA[1]
load net riscv|ex_rs20[26] -attr @rip(#000000) DOB[0] -attr @name ex_rs20[26] -pin riscv|ex_rs2[26]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOB[0]
load net riscv|ex_rs20[27] -attr @rip(#000000) DOB[1] -attr @name ex_rs20[27] -pin riscv|ex_rs2[27]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOB[1]
load net riscv|ex_rs20[28] -attr @rip(#000000) DOC[0] -attr @name ex_rs20[28] -pin riscv|ex_rs2[28]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOC[0]
load net riscv|ex_rs20[29] -attr @rip(#000000) DOC[1] -attr @name ex_rs20[29] -pin riscv|ex_rs2[29]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_24_29 DOC[1]
load net riscv|ex_rs20[2] -attr @rip(#000000) DOB[0] -attr @name ex_rs20[2] -pin riscv|ex_rs2[2]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOB[0]
load net riscv|ex_rs20[30] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[30] -pin riscv|ex_rs2[30]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_30_31 DOA[0]
load net riscv|ex_rs20[31] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[31] -pin riscv|ex_rs2[31]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_30_31 DOA[1]
load net riscv|ex_rs20[3] -attr @rip(#000000) DOB[1] -attr @name ex_rs20[3] -pin riscv|ex_rs2[3]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOB[1]
load net riscv|ex_rs20[4] -attr @rip(#000000) DOC[0] -attr @name ex_rs20[4] -pin riscv|ex_rs2[4]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOC[0]
load net riscv|ex_rs20[5] -attr @rip(#000000) DOC[1] -attr @name ex_rs20[5] -pin riscv|ex_rs2[5]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_0_5 DOC[1]
load net riscv|ex_rs20[6] -attr @rip(#000000) DOA[0] -attr @name ex_rs20[6] -pin riscv|ex_rs2[6]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOA[0]
load net riscv|ex_rs20[7] -attr @rip(#000000) DOA[1] -attr @name ex_rs20[7] -pin riscv|ex_rs2[7]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOA[1]
load net riscv|ex_rs20[8] -attr @rip(#000000) DOB[0] -attr @name ex_rs20[8] -pin riscv|ex_rs2[8]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOB[0]
load net riscv|ex_rs20[9] -attr @rip(#000000) DOB[1] -attr @name ex_rs20[9] -pin riscv|ex_rs2[9]_i_1 I5 -pin riscv|id_registerFile_reg_r2_0_31_6_11 DOB[1]
load net riscv|ex_rs21 -attr @name ex_rs21 -pin riscv|ex_rs2[0]_i_1 I3 -pin riscv|ex_rs2[10]_i_1 I3 -pin riscv|ex_rs2[11]_i_1 I3 -pin riscv|ex_rs2[12]_i_1 I3 -pin riscv|ex_rs2[13]_i_1 I3 -pin riscv|ex_rs2[14]_i_1 I3 -pin riscv|ex_rs2[15]_i_1 I3 -pin riscv|ex_rs2[16]_i_1 I3 -pin riscv|ex_rs2[17]_i_1 I3 -pin riscv|ex_rs2[18]_i_1 I3 -pin riscv|ex_rs2[19]_i_1 I3 -pin riscv|ex_rs2[1]_i_1 I3 -pin riscv|ex_rs2[20]_i_1 I3 -pin riscv|ex_rs2[21]_i_1 I3 -pin riscv|ex_rs2[22]_i_1 I3 -pin riscv|ex_rs2[23]_i_1 I3 -pin riscv|ex_rs2[24]_i_1 I3 -pin riscv|ex_rs2[25]_i_1 I3 -pin riscv|ex_rs2[26]_i_1 I3 -pin riscv|ex_rs2[27]_i_1 I3 -pin riscv|ex_rs2[28]_i_1 I3 -pin riscv|ex_rs2[29]_i_1 I3 -pin riscv|ex_rs2[2]_i_1 I3 -pin riscv|ex_rs2[30]_i_1 I3 -pin riscv|ex_rs2[31]_i_1 I3 -pin riscv|ex_rs2[31]_i_2 O -pin riscv|ex_rs2[3]_i_1 I3 -pin riscv|ex_rs2[4]_i_1 I3 -pin riscv|ex_rs2[5]_i_1 I3 -pin riscv|ex_rs2[6]_i_1 I3 -pin riscv|ex_rs2[7]_i_1 I3 -pin riscv|ex_rs2[8]_i_1 I3 -pin riscv|ex_rs2[9]_i_1 I3
netloc riscv|ex_rs21 1 5 22 5480 26518 NJ 26518 NJ 26518 NJ 26518 NJ 26518 NJ 26518 8300 26518 NJ 26518 8980 25738 9870 25478 11420 25998 NJ 25998 NJ 25998 NJ 25998 17400 24238 18660 24298 19560 24078 NJ 24078 22740 24758 23610 31658 26550 31638 28690
load net riscv|ex_rs2[0] -attr @name ex_rs2[0] -pin riscv|ex_rs2_reg[0] Q -pin riscv|i__carry_i_4 I3 -pin riscv|i__carry_i_4__0 I2 -pin riscv|i__carry_i_4__1 I1 -pin riscv|i__carry_i_8 I3 -pin riscv|mem_aluResult[0]_i_2 I3 -pin riscv|mem_aluResult[2]_i_15 I3 -pin riscv|mem_aluResult[2]_i_20 I2 -pin riscv|mem_aluResult[31]_i_12 I2
netloc riscv|ex_rs2[0] 1 12 17 8700 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 NJ 11268 19980 11958 21400 20528 NJ 20528 NJ 20528 28090 21628 29160J 21108 30510
load net riscv|ex_rs2[0]_i_1_n_0 -attr @name ex_rs2[0]_i_1_n_0 -pin riscv|ex_rs2[0]_i_1 O -pin riscv|ex_rs2_reg[0] D
netloc riscv|ex_rs2[0]_i_1_n_0 1 27 1 30160 27108n
load net riscv|ex_rs2[10] -attr @name ex_rs2[10] -pin riscv|ex_rs2_reg[10] Q -pin riscv|i__carry__0_i_9 I2 -pin riscv|i__carry__1_i_2__1 I2 -pin riscv|mem_aluResult[11]_i_17 I1 -pin riscv|mem_aluResult[30]_i_34 I0
netloc riscv|ex_rs2[10] 1 14 12 10190 16558 NJ 16558 12400 17628 NJ 17628 15580J 17488 NJ 17488 NJ 17488 NJ 17488 20600 15418 NJ 15418 NJ 15418 25930
load net riscv|ex_rs2[10]_i_1_n_0 -attr @name ex_rs2[10]_i_1_n_0 -pin riscv|ex_rs2[10]_i_1 O -pin riscv|ex_rs2_reg[10] D
netloc riscv|ex_rs2[10]_i_1_n_0 1 21 1 19380 21708n
load net riscv|ex_rs2[11] -attr @name ex_rs2[11] -pin riscv|ex_rs2_reg[11] Q -pin riscv|i__carry__0_i_3 I2 -pin riscv|i__carry__0_i_3__0 I5 -pin riscv|i__carry__0_i_7 I2 -pin riscv|i__carry__1_i_1__1 I2 -pin riscv|mem_aluResult[11]_i_11 I2 -pin riscv|mem_aluResult[11]_i_16 I1 -pin riscv|mem_aluResult[31]_i_20 I3
netloc riscv|ex_rs2[11] 1 14 12 10170 16538 NJ 16538 12560 16808 14000J 16928 NJ 16928 16300J 16948 NJ 16948 NJ 16948 NJ 16948 21960 17748 NJ 17748 26270
load net riscv|ex_rs2[11]_i_1_n_0 -attr @name ex_rs2[11]_i_1_n_0 -pin riscv|ex_rs2[11]_i_1 O -pin riscv|ex_rs2_reg[11] D
netloc riscv|ex_rs2[11]_i_1_n_0 1 24 1 24290 19768n
load net riscv|ex_rs2[12] -attr @name ex_rs2[12] -pin riscv|ex_rs2_reg[12] Q -pin riscv|i__carry__0_i_2 I2 -pin riscv|i__carry__0_i_2__0 I0 -pin riscv|i__carry__0_i_6 I2 -pin riscv|i__carry__2_i_4__1 I0 -pin riscv|mem_aluResult[12]_i_8 I0 -pin riscv|mem_aluResult[15]_i_15 I3
netloc riscv|ex_rs2[12] 1 15 11 11540 20718 NJ 20718 13440 21538 NJ 21538 NJ 21538 NJ 21538 NJ 21538 NJ 21538 22720 22378 NJ 22378 26450
load net riscv|ex_rs2[12]_i_1_n_0 -attr @name ex_rs2[12]_i_1_n_0 -pin riscv|ex_rs2[12]_i_1 O -pin riscv|ex_rs2_reg[12] D
netloc riscv|ex_rs2[12]_i_1_n_0 1 24 1 24410 24588n
load net riscv|ex_rs2[13] -attr @name ex_rs2[13] -pin riscv|ex_rs2_reg[13] Q -pin riscv|i__carry__0_i_2 I0 -pin riscv|i__carry__0_i_2__0 I3 -pin riscv|i__carry__0_i_6 I0 -pin riscv|i__carry__2_i_3__1 I0 -pin riscv|mem_aluResult[13]_i_9 I0 -pin riscv|mem_aluResult[15]_i_14 I3
netloc riscv|ex_rs2[13] 1 15 9 11520 20088 12960 20538 14460 20538 NJ 20538 NJ 20538 NJ 20538 NJ 20538 NJ 20538 21380
load net riscv|ex_rs2[13]_i_1_n_0 -attr @name ex_rs2[13]_i_1_n_0 -pin riscv|ex_rs2[13]_i_1 O -pin riscv|ex_rs2_reg[13] D
netloc riscv|ex_rs2[13]_i_1_n_0 1 15 1 11520 24188n
load net riscv|ex_rs2[14] -attr @name ex_rs2[14] -pin riscv|ex_rs2_reg[14] Q -pin riscv|i__carry__0_i_1 I2 -pin riscv|i__carry__0_i_1__0 I0 -pin riscv|i__carry__0_i_5 I2 -pin riscv|i__carry__2_i_2__1 I0 -pin riscv|mem_aluResult[14]_i_11 I0 -pin riscv|mem_aluResult[15]_i_13 I3 -pin riscv|mem_aluResult[30]_i_31 I0
netloc riscv|ex_rs2[14] 1 7 19 5920 19258 NJ 19258 NJ 19258 NJ 19258 NJ 19258 NJ 19258 NJ 19258 9530J 19298 10600 20698 NJ 20698 14440 20378 NJ 20378 NJ 20378 NJ 20378 NJ 20378 NJ 20378 22260 14238 NJ 14238 25650J
load net riscv|ex_rs2[14]_i_1_n_0 -attr @name ex_rs2[14]_i_1_n_0 -pin riscv|ex_rs2[14]_i_1 O -pin riscv|ex_rs2_reg[14] D
netloc riscv|ex_rs2[14]_i_1_n_0 1 14 1 N 23618
load net riscv|ex_rs2[15] -attr @name ex_rs2[15] -pin riscv|ex_rs2_reg[15] Q -pin riscv|i__carry__0_i_1 I0 -pin riscv|i__carry__0_i_1__0 I3 -pin riscv|i__carry__0_i_5 I0 -pin riscv|i__carry__2_i_1__1 I0 -pin riscv|mem_aluResult[15]_i_12 I3 -pin riscv|mem_aluResult[15]_i_8 I0 -pin riscv|mem_aluResult[30]_i_31 I1
netloc riscv|ex_rs2[15] 1 8 18 6700 18738 NJ 18738 NJ 18738 NJ 18738 8600J 18718 NJ 18718 NJ 18718 11240 19928 NJ 19928 14460 19928 NJ 19928 16460J 20068 NJ 20068 NJ 20068 NJ 20068 22220 14258 NJ 14258 25710J
load net riscv|ex_rs2[15]_i_1_n_0 -attr @name ex_rs2[15]_i_1_n_0 -pin riscv|ex_rs2[15]_i_1 O -pin riscv|ex_rs2_reg[15] D
netloc riscv|ex_rs2[15]_i_1_n_0 1 14 1 9570 23818n
load net riscv|ex_rs2[16] -attr @name ex_rs2[16] -pin riscv|ex_rs2_reg[16] Q -pin riscv|i__carry__1_i_4 I3 -pin riscv|i__carry__1_i_4__0 I0 -pin riscv|i__carry__1_i_8 I3 -pin riscv|i__carry__3_i_4 I0 -pin riscv|mem_aluResult[16]_i_11 I0 -pin riscv|mem_aluResult[19]_i_17 I3 -pin riscv|mem_aluResult[30]_i_14 I0
netloc riscv|ex_rs2[16] 1 12 15 8700 19488 8900 19908 NJ 19908 NJ 19908 NJ 19908 14480 29898 NJ 29898 NJ 29898 NJ 29898 NJ 29898 19960J 29508 NJ 29508 24710 30388 NJ 30388 28430
load net riscv|ex_rs2[16]_i_1_n_0 -attr @name ex_rs2[16]_i_1_n_0 -pin riscv|ex_rs2[16]_i_1 O -pin riscv|ex_rs2_reg[16] D
netloc riscv|ex_rs2[16]_i_1_n_0 1 25 1 N 30828
load net riscv|ex_rs2[17] -attr @name ex_rs2[17] -pin riscv|ex_rs2_reg[17] Q -pin riscv|i__carry__1_i_4 I4 -pin riscv|i__carry__1_i_4__0 I3 -pin riscv|i__carry__1_i_8 I4 -pin riscv|i__carry__3_i_3 I3 -pin riscv|mem_aluResult[17]_i_6 I0 -pin riscv|mem_aluResult[19]_i_16 I3 -pin riscv|mem_aluResult[30]_i_14 I3
netloc riscv|ex_rs2[17] 1 12 15 8680 19358 8960 19698 NJ 19698 NJ 19698 NJ 19698 14420J 19428 NJ 19428 17360 29918 NJ 29918 NJ 29918 20880J 29528 NJ 29528 24690 31458 NJ 31458 28470
load net riscv|ex_rs2[17]_i_1_n_0 -attr @name ex_rs2[17]_i_1_n_0 -pin riscv|ex_rs2[17]_i_1 O -pin riscv|ex_rs2_reg[17] D
netloc riscv|ex_rs2[17]_i_1_n_0 1 25 1 25150 30998n
load net riscv|ex_rs2[18] -attr @name ex_rs2[18] -pin riscv|ex_rs2_reg[18] Q -pin riscv|i__carry__1_i_3 I3 -pin riscv|i__carry__1_i_3__0 I0 -pin riscv|i__carry__1_i_7 I3 -pin riscv|i__carry__3_i_2 I0 -pin riscv|mem_aluResult[18]_i_10 I0 -pin riscv|mem_aluResult[19]_i_15 I3 -pin riscv|mem_aluResult[30]_i_14 I4
netloc riscv|ex_rs2[18] 1 12 15 8700 18878 9060 20218 NJ 20218 NJ 20218 NJ 20218 NJ 20218 NJ 20218 17280 20128 NJ 20128 NJ 20128 NJ 20128 NJ 20128 24090 23808 NJ 23808 28530
load net riscv|ex_rs2[18]_i_1_n_0 -attr @name ex_rs2[18]_i_1_n_0 -pin riscv|ex_rs2[18]_i_1 O -pin riscv|ex_rs2_reg[18] D
netloc riscv|ex_rs2[18]_i_1_n_0 1 25 1 N 32418
load net riscv|ex_rs2[19] -attr @name ex_rs2[19] -pin riscv|ex_rs2_reg[19] Q -pin riscv|i__carry__1_i_3 I4 -pin riscv|i__carry__1_i_3__0 I3 -pin riscv|i__carry__1_i_7 I4 -pin riscv|i__carry__3_i_1 I3 -pin riscv|mem_aluResult[19]_i_10 I0 -pin riscv|mem_aluResult[19]_i_14 I3 -pin riscv|mem_aluResult[30]_i_31 I5
netloc riscv|ex_rs2[19] 1 12 14 8700 18578 8940 18578 9970 16658 NJ 16658 12440J 16968 NJ 16968 NJ 16968 NJ 16968 NJ 16968 19000 23048 NJ 23048 NJ 23048 24250 19098 26070
load net riscv|ex_rs2[19]_i_1_n_0 -attr @name ex_rs2[19]_i_1_n_0 -pin riscv|ex_rs2[19]_i_1 O -pin riscv|ex_rs2_reg[19] D
netloc riscv|ex_rs2[19]_i_1_n_0 1 20 1 18600 26148n
load net riscv|ex_rs2[1] -attr @name ex_rs2[1] -pin riscv|ex_rs2_reg[1] Q -pin riscv|i__carry_i_12 I2 -pin riscv|i__carry_i_3__1 I1 -pin riscv|mem_aluResult[22]_i_8 I0 -pin riscv|mem_aluResult[2]_i_19 I2 -pin riscv|mem_aluResult[30]_i_11 I0 -pin riscv|mem_aluResult[30]_i_9 I0 -pin riscv|mem_aluResult[31]_i_16 I2
netloc riscv|ex_rs2[1] 1 12 15 8680 10868 NJ 10868 NJ 10868 NJ 10868 NJ 10868 NJ 10868 15780 10828 NJ 10828 NJ 10828 NJ 10828 NJ 10828 22640 16678 NJ 16678 26090 17818 27370
load net riscv|ex_rs2[1]_i_1_n_0 -attr @name ex_rs2[1]_i_1_n_0 -pin riscv|ex_rs2[1]_i_1 O -pin riscv|ex_rs2_reg[1] D
netloc riscv|ex_rs2[1]_i_1_n_0 1 25 1 26390 18968n
load net riscv|ex_rs2[20] -attr @name ex_rs2[20] -pin riscv|ex_rs2_reg[20] Q -pin riscv|i__carry__1_i_2 I3 -pin riscv|i__carry__1_i_2__0 I0 -pin riscv|i__carry__1_i_6 I3 -pin riscv|i__carry__4_i_4 I0 -pin riscv|mem_aluResult[20]_i_10 I0 -pin riscv|mem_aluResult[26]_i_21 I3 -pin riscv|mem_aluResult[30]_i_31 I2
netloc riscv|ex_rs2[20] 1 14 12 10250 19238 11180 20738 NJ 20738 NJ 20738 NJ 20738 17400 21598 NJ 21598 NJ 21598 NJ 21598 NJ 21598 24490 19118 26050
load net riscv|ex_rs2[20]_i_1_n_0 -attr @name ex_rs2[20]_i_1_n_0 -pin riscv|ex_rs2[20]_i_1 O -pin riscv|ex_rs2_reg[20] D
netloc riscv|ex_rs2[20]_i_1_n_0 1 14 1 9690 23968n
load net riscv|ex_rs2[21] -attr @name ex_rs2[21] -pin riscv|ex_rs2_reg[21] Q -pin riscv|i__carry__1_i_2 I4 -pin riscv|i__carry__1_i_2__0 I3 -pin riscv|i__carry__1_i_6 I4 -pin riscv|i__carry__4_i_3 I3 -pin riscv|mem_aluResult[21]_i_10 I0 -pin riscv|mem_aluResult[26]_i_20 I3 -pin riscv|mem_aluResult[31]_i_19 I1
netloc riscv|ex_rs2[21] 1 14 11 10250 19078 11420 18978 NJ 18978 14260 21818 NJ 21818 NJ 21818 NJ 21818 NJ 21818 NJ 21818 22660 22178 24370
load net riscv|ex_rs2[21]_i_1_n_0 -attr @name ex_rs2[21]_i_1_n_0 -pin riscv|ex_rs2[21]_i_1 O -pin riscv|ex_rs2_reg[21] D
netloc riscv|ex_rs2[21]_i_1_n_0 1 16 1 12980 24038n
load net riscv|ex_rs2[22] -attr @name ex_rs2[22] -pin riscv|ex_rs2_reg[22] Q -pin riscv|i__carry__1_i_1 I3 -pin riscv|i__carry__1_i_1__0 I0 -pin riscv|i__carry__1_i_5 I3 -pin riscv|i__carry__4_i_2 I0 -pin riscv|mem_aluResult[22]_i_15 I0 -pin riscv|mem_aluResult[26]_i_19 I3 -pin riscv|mem_aluResult[31]_i_18 I1
netloc riscv|ex_rs2[22] 1 7 18 5840 19238 NJ 19238 NJ 19238 NJ 19238 NJ 19238 NJ 19238 NJ 19238 10030 19218 11380 29938 NJ 29938 13360J 31508 NJ 31508 NJ 31508 NJ 31508 NJ 31508 20140J 31688 22600 29038 24430
load net riscv|ex_rs2[22]_i_1_n_0 -attr @name ex_rs2[22]_i_1_n_0 -pin riscv|ex_rs2[22]_i_1 O -pin riscv|ex_rs2_reg[22] D
netloc riscv|ex_rs2[22]_i_1_n_0 1 6 1 5660 26228n
load net riscv|ex_rs2[23] -attr @name ex_rs2[23] -pin riscv|ex_rs2_reg[23] Q -pin riscv|i__carry__1_i_1 I4 -pin riscv|i__carry__1_i_1__0 I3 -pin riscv|i__carry__1_i_5 I4 -pin riscv|i__carry__4_i_1 I3 -pin riscv|mem_aluResult[23]_i_4 I0 -pin riscv|mem_aluResult[23]_i_5 I4 -pin riscv|mem_aluResult[26]_i_18 I3 -pin riscv|mem_aluResult[31]_i_19 I5
netloc riscv|ex_rs2[23] 1 8 17 6600 17298 6980 18458 7780J 18478 NJ 18478 NJ 18478 NJ 18478 9550 18698 11160 21998 NJ 21998 NJ 21998 NJ 21998 NJ 21998 NJ 21998 NJ 21998 NJ 21998 22680 22198 24690
load net riscv|ex_rs2[23]_i_1_n_0 -attr @name ex_rs2[23]_i_1_n_0 -pin riscv|ex_rs2[23]_i_1 O -pin riscv|ex_rs2_reg[23] D
netloc riscv|ex_rs2[23]_i_1_n_0 1 14 1 9750 24188n
load net riscv|ex_rs2[24] -attr @name ex_rs2[24] -pin riscv|ex_rs2_reg[24] Q -pin riscv|i__carry__2_i_4 I0 -pin riscv|i__carry__2_i_5 I3 -pin riscv|i__carry__2_i_8 I3 -pin riscv|i__carry__5_i_4 I0 -pin riscv|mem_aluResult[24]_i_4 I0 -pin riscv|mem_aluResult[24]_i_5 I4 -pin riscv|mem_aluResult[26]_i_17 I3 -pin riscv|mem_aluResult[31]_i_19 I0
netloc riscv|ex_rs2[24] 1 15 11 11520 18178 12000J 18198 14140 20718 15860 21138 NJ 21138 NJ 21138 NJ 21138 NJ 21138 22440 29688 23590J 30008 26310
load net riscv|ex_rs2[24]_i_1_n_0 -attr @name ex_rs2[24]_i_1_n_0 -pin riscv|ex_rs2[24]_i_1 O -pin riscv|ex_rs2_reg[24] D
netloc riscv|ex_rs2[24]_i_1_n_0 1 16 1 13020 24188n
load net riscv|ex_rs2[25] -attr @name ex_rs2[25] -pin riscv|ex_rs2_reg[25] Q -pin riscv|i__carry__2_i_4 I3 -pin riscv|i__carry__2_i_5 I4 -pin riscv|i__carry__2_i_8 I4 -pin riscv|i__carry__5_i_3 I3 -pin riscv|mem_aluResult[25]_i_6 I4 -pin riscv|mem_aluResult[25]_i_7 I4 -pin riscv|mem_aluResult[26]_i_16 I3 -pin riscv|mem_aluResult[30]_i_30 I1
netloc riscv|ex_rs2[25] 1 8 18 6720 16668 NJ 16668 NJ 16668 NJ 16668 NJ 16668 NJ 16668 9890J 16498 10960 24278 NJ 24278 NJ 24278 NJ 24278 NJ 24278 NJ 24278 NJ 24278 NJ 24278 21360 29288 NJ 29288 25210
load net riscv|ex_rs2[25]_i_1_n_0 -attr @name ex_rs2[25]_i_1_n_0 -pin riscv|ex_rs2[25]_i_1 O -pin riscv|ex_rs2_reg[25] D
netloc riscv|ex_rs2[25]_i_1_n_0 1 22 1 20740 24158n
load net riscv|ex_rs2[26] -attr @name ex_rs2[26] -pin riscv|ex_rs2_reg[26] Q -pin riscv|i__carry__2_i_3 I0 -pin riscv|i__carry__2_i_4__0 I3 -pin riscv|i__carry__2_i_7 I3 -pin riscv|i__carry__5_i_2 I0 -pin riscv|mem_aluResult[26]_i_10 I4 -pin riscv|mem_aluResult[26]_i_11 I0 -pin riscv|mem_aluResult[26]_i_15 I3 -pin riscv|mem_aluResult[31]_i_19 I2
netloc riscv|ex_rs2[26] 1 15 11 11520 17578 12340 21158 NJ 21158 NJ 21158 NJ 21158 NJ 21158 NJ 21158 NJ 21158 22500 29488 23590J 29668 26210
load net riscv|ex_rs2[26]_i_1_n_0 -attr @name ex_rs2[26]_i_1_n_0 -pin riscv|ex_rs2[26]_i_1 O -pin riscv|ex_rs2_reg[26] D
netloc riscv|ex_rs2[26]_i_1_n_0 1 22 1 20640 24558n
load net riscv|ex_rs2[27] -attr @name ex_rs2[27] -pin riscv|ex_rs2_reg[27] Q -pin riscv|i__carry__2_i_3 I3 -pin riscv|i__carry__2_i_4__0 I4 -pin riscv|i__carry__2_i_7 I4 -pin riscv|i__carry__5_i_1 I3 -pin riscv|mem_aluResult[26]_i_14 I3 -pin riscv|mem_aluResult[27]_i_5 I0 -pin riscv|mem_aluResult[27]_i_6 I4 -pin riscv|mem_aluResult[30]_i_30 I5
netloc riscv|ex_rs2[27] 1 15 11 11520 17108 12960 18538 13960 25278 NJ 25278 NJ 25278 NJ 25278 NJ 25278 NJ 25278 22200 29088 NJ 29088 26630
load net riscv|ex_rs2[27]_i_1_n_0 -attr @name ex_rs2[27]_i_1_n_0 -pin riscv|ex_rs2[27]_i_1 O -pin riscv|ex_rs2_reg[27] D
netloc riscv|ex_rs2[27]_i_1_n_0 1 22 1 20640 25158n
load net riscv|ex_rs2[28] -attr @name ex_rs2[28] -pin riscv|ex_rs2_reg[28] Q -pin riscv|i__carry__2_i_2 I0 -pin riscv|i__carry__2_i_3__0 I3 -pin riscv|i__carry__2_i_6 I3 -pin riscv|i__carry__6_i_4 I0 -pin riscv|mem_aluResult[28]_i_10 I4 -pin riscv|mem_aluResult[28]_i_7 I0 -pin riscv|mem_aluResult[30]_i_30 I0 -pin riscv|mem_aluResult[30]_i_40 I3
netloc riscv|ex_rs2[28] 1 23 4 22180 29058 24710 29108 25170 23788 28450
load net riscv|ex_rs2[28]_i_1_n_0 -attr @name ex_rs2[28]_i_1_n_0 -pin riscv|ex_rs2[28]_i_1 O -pin riscv|ex_rs2_reg[28] D
netloc riscv|ex_rs2[28]_i_1_n_0 1 22 1 N 26308
load net riscv|ex_rs2[29] -attr @name ex_rs2[29] -pin riscv|ex_rs2_reg[29] Q -pin riscv|i__carry__2_i_2 I3 -pin riscv|i__carry__2_i_3__0 I4 -pin riscv|i__carry__2_i_6 I4 -pin riscv|i__carry__6_i_3 I3 -pin riscv|mem_aluResult[29]_i_6 I0 -pin riscv|mem_aluResult[29]_i_8 I4 -pin riscv|mem_aluResult[30]_i_28 I0 -pin riscv|mem_aluResult[30]_i_39 I3 -pin riscv|mem_aluResult[31]_i_18 I5
netloc riscv|ex_rs2[29] 1 7 20 5920 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 NJ 26718 21940 28578 23590 28818 25370 18588 28070
load net riscv|ex_rs2[29]_i_1_n_0 -attr @name ex_rs2[29]_i_1_n_0 -pin riscv|ex_rs2[29]_i_1 O -pin riscv|ex_rs2_reg[29] D
netloc riscv|ex_rs2[29]_i_1_n_0 1 22 1 20580 26478n
load net riscv|ex_rs2[2] -attr @name ex_rs2[2] -pin riscv|ex_rs2_reg[2] Q -pin riscv|i__carry_i_11 I2 -pin riscv|i__carry_i_2__1 I1 -pin riscv|mem_aluResult[22]_i_8 I2 -pin riscv|mem_aluResult[2]_i_11 I2 -pin riscv|mem_aluResult[2]_i_16 I3 -pin riscv|mem_aluResult[2]_i_18 I2 -pin riscv|mem_aluResult[2]_i_2 I3 -pin riscv|mem_aluResult[2]_i_21 I2 -pin riscv|mem_aluResult[2]_i_23 I2 -pin riscv|mem_aluResult[30]_i_11 I2 -pin riscv|mem_aluResult[30]_i_9 I2 -pin riscv|mem_aluResult[31]_i_16 I0
netloc riscv|ex_rs2[2] 1 12 15 8700 11008 NJ 11008 NJ 11008 NJ 11008 NJ 11008 NJ 11008 15760 5728 NJ 5728 NJ 5728 NJ 5728 NJ 5728 21380 3978 24450 5278 26010 17778 27310
load net riscv|ex_rs2[2]_i_1_n_0 -attr @name ex_rs2[2]_i_1_n_0 -pin riscv|ex_rs2[2]_i_1 O -pin riscv|ex_rs2_reg[2] D
netloc riscv|ex_rs2[2]_i_1_n_0 1 25 1 26490 22738n
load net riscv|ex_rs2[30] -attr @name ex_rs2[30] -pin riscv|ex_rs2_reg[30] Q -pin riscv|i__carry__2_i_1 I0 -pin riscv|i__carry__2_i_1__0 I0 -pin riscv|i__carry__2_i_2__0 I4 -pin riscv|i__carry__2_i_5__0 I4 -pin riscv|i__carry__6_i_2 I3 -pin riscv|mem_aluResult[30]_i_23 I4 -pin riscv|mem_aluResult[30]_i_29 I0 -pin riscv|mem_aluResult[30]_i_38 I2 -pin riscv|mem_aluResult[30]_i_6 I1 -pin riscv|mem_aluResult[31]_i_18 I4
netloc riscv|ex_rs2[30] 1 7 21 5900 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 NJ 29438 19960J 28578 21900 28878 24250 28798 26610 28298 28490 23028 30020
load net riscv|ex_rs2[30]_i_1_n_0 -attr @name ex_rs2[30]_i_1_n_0 -pin riscv|ex_rs2[30]_i_1 O -pin riscv|ex_rs2_reg[30] D
netloc riscv|ex_rs2[30]_i_1_n_0 1 26 1 28590 24138n
load net riscv|ex_rs2[31] -attr @name ex_rs2[31] -pin riscv|ex_rs2_reg[31] Q -pin riscv|i__carry__2_i_1 I3 -pin riscv|i__carry__2_i_1__0 I2 -pin riscv|i__carry__2_i_2__0 I0 -pin riscv|i__carry__2_i_5__0 I0 -pin riscv|i__carry__6_i_1 I3 -pin riscv|mem_aluResult[30]_i_30 I2 -pin riscv|mem_aluResult[30]_i_37 I0 -pin riscv|mem_aluResult[31]_i_22 I5 -pin riscv|mem_aluResult[31]_i_6 I0
netloc riscv|ex_rs2[31] 1 23 5 22060 28918 23270 28778 26550 23008 NJ 23008 30000J
load net riscv|ex_rs2[31]_i_1_n_0 -attr @name ex_rs2[31]_i_1_n_0 -pin riscv|ex_rs2[31]_i_1 O -pin riscv|ex_rs2_reg[31] D
netloc riscv|ex_rs2[31]_i_1_n_0 1 22 1 19940 28708n
load net riscv|ex_rs2[31]_i_3_n_0 -attr @name ex_rs2[31]_i_3_n_0 -pin riscv|ex_rs2[31]_i_2 I0 -pin riscv|ex_rs2[31]_i_3 O
netloc riscv|ex_rs2[31]_i_3_n_0 1 25 1 N 32058
load net riscv|ex_rs2[3] -attr @name ex_rs2[3] -pin riscv|ex_rs2_reg[3] Q -pin riscv|i__carry_i_1__1 I1 -pin riscv|i__carry_i_3 I1 -pin riscv|i__carry_i_3__0 I5 -pin riscv|i__carry_i_7 I1 -pin riscv|mem_aluResult[22]_i_10 I0 -pin riscv|mem_aluResult[27]_i_10 I5 -pin riscv|mem_aluResult[2]_i_17 I2 -pin riscv|mem_aluResult[30]_i_25 I2 -pin riscv|mem_aluResult[30]_i_26 I0 -pin riscv|mem_aluResult[30]_i_27 I0 -pin riscv|mem_aluResult[31]_i_10 I2 -pin riscv|mem_aluResult[31]_i_14 I4 -pin riscv|mem_aluResult[31]_i_23 I4 -pin riscv|mem_aluResult[31]_i_24 I2 -pin riscv|mem_aluResult[3]_i_3 I0
netloc riscv|ex_rs2[3] 1 12 15 8700 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 NJ 10848 20900 11398 21700 14198 24150 14078 25850 15308 27550
load net riscv|ex_rs2[3]_i_1_n_0 -attr @name ex_rs2[3]_i_1_n_0 -pin riscv|ex_rs2[3]_i_1 O -pin riscv|ex_rs2_reg[3] D
netloc riscv|ex_rs2[3]_i_1_n_0 1 22 1 20660 18038n
load net riscv|ex_rs2[4] -attr @name ex_rs2[4] -pin riscv|ex_rs2_reg[4] Q -pin riscv|i__carry__0_i_4__1 I2 -pin riscv|i__carry_i_10 I2 -pin riscv|mem_aluResult[22]_i_10 I2 -pin riscv|mem_aluResult[27]_i_10 I3 -pin riscv|mem_aluResult[30]_i_25 I0 -pin riscv|mem_aluResult[30]_i_26 I2 -pin riscv|mem_aluResult[30]_i_27 I2 -pin riscv|mem_aluResult[31]_i_10 I4 -pin riscv|mem_aluResult[31]_i_14 I2 -pin riscv|mem_aluResult[31]_i_23 I2 -pin riscv|mem_aluResult[7]_i_14 I1
netloc riscv|ex_rs2[4] 1 13 14 9180 21518 NJ 21518 11360 20558 NJ 20558 NJ 20558 NJ 20558 NJ 20558 NJ 20558 NJ 20558 NJ 20558 22280 14418 24170 14278 25150 19318 27490
load net riscv|ex_rs2[4]_i_1_n_0 -attr @name ex_rs2[4]_i_1_n_0 -pin riscv|ex_rs2[4]_i_1 O -pin riscv|ex_rs2_reg[4] D
netloc riscv|ex_rs2[4]_i_1_n_0 1 24 1 N 19248
load net riscv|ex_rs2[5] -attr @name ex_rs2[5] -pin riscv|ex_rs2_reg[5] Q -pin riscv|i__carry__0_i_3__1 I2 -pin riscv|i__carry_i_2 I2 -pin riscv|i__carry_i_2__0 I5 -pin riscv|i__carry_i_6 I2 -pin riscv|mem_aluResult[30]_i_32 I2 -pin riscv|mem_aluResult[5]_i_6 I2 -pin riscv|mem_aluResult[7]_i_13 I1
netloc riscv|ex_rs2[5] 1 13 13 9180 21358 NJ 21358 11340 20398 NJ 20398 NJ 20398 NJ 20398 NJ 20398 NJ 20398 NJ 20398 20420 14458 NJ 14458 NJ 14458 25690
load net riscv|ex_rs2[5]_i_1_n_0 -attr @name ex_rs2[5]_i_1_n_0 -pin riscv|ex_rs2[5]_i_1 O -pin riscv|ex_rs2_reg[5] D
netloc riscv|ex_rs2[5]_i_1_n_0 1 24 1 N 19468
load net riscv|ex_rs2[6] -attr @name ex_rs2[6] -pin riscv|ex_rs2_reg[6] Q -pin riscv|i__carry__0_i_2__1 I2 -pin riscv|i__carry_i_9 I2 -pin riscv|mem_aluResult[30]_i_32 I0 -pin riscv|mem_aluResult[7]_i_12 I1
netloc riscv|ex_rs2[6] 1 13 13 9180 20078 NJ 20078 11260 19948 NJ 19948 NJ 19948 NJ 19948 16300J 20088 NJ 20088 NJ 20088 20560 17548 NJ 17548 NJ 17548 25270
load net riscv|ex_rs2[6]_i_1_n_0 -attr @name ex_rs2[6]_i_1_n_0 -pin riscv|ex_rs2[6]_i_1 O -pin riscv|ex_rs2_reg[6] D
netloc riscv|ex_rs2[6]_i_1_n_0 1 24 1 24190 19618n
load net riscv|ex_rs2[7] -attr @name ex_rs2[7] -pin riscv|ex_rs2_reg[7] Q -pin riscv|i__carry__0_i_1__1 I2 -pin riscv|i__carry_i_1 I2 -pin riscv|i__carry_i_1__0 I5 -pin riscv|i__carry_i_5 I2 -pin riscv|mem_aluResult[30]_i_33 I2 -pin riscv|mem_aluResult[7]_i_11 I1 -pin riscv|mem_aluResult[7]_i_6 I2
netloc riscv|ex_rs2[7] 1 13 13 8960 21538 NJ 21538 11320 19718 NJ 19718 14440J 19448 NJ 19448 17220J 19258 NJ 19258 NJ 19258 20360 14478 NJ 14478 NJ 14478 25890J
load net riscv|ex_rs2[7]_i_1_n_0 -attr @name ex_rs2[7]_i_1_n_0 -pin riscv|ex_rs2[7]_i_1 O -pin riscv|ex_rs2_reg[7] D
netloc riscv|ex_rs2[7]_i_1_n_0 1 12 1 8600 23828n
load net riscv|ex_rs2[8] -attr @name ex_rs2[8] -pin riscv|ex_rs2_reg[8] Q -pin riscv|i__carry__0_i_10 I2 -pin riscv|i__carry__1_i_4__1 I2 -pin riscv|mem_aluResult[11]_i_19 I1 -pin riscv|mem_aluResult[30]_i_33 I0
netloc riscv|ex_rs2[8] 1 14 12 10250 15518 NJ 15518 12260 21338 NJ 21338 NJ 21338 NJ 21338 NJ 21338 NJ 21338 20620 15578 NJ 15578 NJ 15578 25110
load net riscv|ex_rs2[8]_i_1_n_0 -attr @name ex_rs2[8]_i_1_n_0 -pin riscv|ex_rs2[8]_i_1 O -pin riscv|ex_rs2_reg[8] D
netloc riscv|ex_rs2[8]_i_1_n_0 1 21 1 19360 21448n
load net riscv|ex_rs2[9] -attr @name ex_rs2[9] -pin riscv|ex_rs2_reg[9] Q -pin riscv|i__carry__0_i_4 I2 -pin riscv|i__carry__0_i_4__0 I5 -pin riscv|i__carry__0_i_8 I2 -pin riscv|i__carry__1_i_3__1 I2 -pin riscv|mem_aluResult[11]_i_18 I1 -pin riscv|mem_aluResult[30]_i_34 I2 -pin riscv|mem_aluResult[31]_i_20 I1 -pin riscv|mem_aluResult[9]_i_6 I2
netloc riscv|ex_rs2[9] 1 14 12 10230 15498 NJ 15498 12540 16688 NJ 16688 NJ 16688 16300J 16758 17980J 16808 NJ 16808 19940J 16868 22040 14548 NJ 14548 NJ
load net riscv|ex_rs2[9]_i_1_n_0 -attr @name ex_rs2[9]_i_1_n_0 -pin riscv|ex_rs2[9]_i_1 O -pin riscv|ex_rs2_reg[9] D
netloc riscv|ex_rs2[9]_i_1_n_0 1 22 1 20740 18588n
load net riscv|i__carry__0_i_1__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry__0_i_1__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 DI[3] -pin riscv|ex_aluResult0_inferred__5/i__carry__0 DI[3] -pin riscv|i__carry__0_i_1__0 O
load net riscv|i__carry__0_i_1__1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__0_i_1__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 S[3] -pin riscv|i__carry__0_i_1__1 O
load net riscv|i__carry__0_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__0_i_1_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 S[3] -pin riscv|i__carry__0_i_1 O
load net riscv|i__carry__0_i_2__0_n_0 -attr @rip(#000000) 2 -attr @name i__carry__0_i_2__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 DI[2] -pin riscv|ex_aluResult0_inferred__5/i__carry__0 DI[2] -pin riscv|i__carry__0_i_2__0 O
load net riscv|i__carry__0_i_2__1_n_0 -attr @rip(#000000) 2 -attr @name i__carry__0_i_2__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 S[2] -pin riscv|i__carry__0_i_2__1 O
load net riscv|i__carry__0_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__0_i_2_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 S[2] -pin riscv|i__carry__0_i_2 O
load net riscv|i__carry__0_i_3__0_n_0 -attr @rip(#000000) 1 -attr @name i__carry__0_i_3__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 DI[1] -pin riscv|ex_aluResult0_inferred__5/i__carry__0 DI[1] -pin riscv|i__carry__0_i_3__0 O
load net riscv|i__carry__0_i_3__1_n_0 -attr @rip(#000000) 1 -attr @name i__carry__0_i_3__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 S[1] -pin riscv|i__carry__0_i_3__1 O
load net riscv|i__carry__0_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__0_i_3_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 S[1] -pin riscv|i__carry__0_i_3 O
load net riscv|i__carry__0_i_4__0_n_0 -attr @rip(#000000) 0 -attr @name i__carry__0_i_4__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 DI[0] -pin riscv|ex_aluResult0_inferred__5/i__carry__0 DI[0] -pin riscv|i__carry__0_i_4__0 O
load net riscv|i__carry__0_i_4__1_n_0 -attr @rip(#000000) 0 -attr @name i__carry__0_i_4__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__0 S[0] -pin riscv|i__carry__0_i_4__1 O
load net riscv|i__carry__0_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__0_i_4_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__0 S[0] -pin riscv|i__carry__0_i_4 O
load net riscv|i__carry__0_i_5_n_0 -attr @rip(#000000) 3 -attr @name i__carry__0_i_5_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 S[3] -pin riscv|i__carry__0_i_5 O
load net riscv|i__carry__0_i_6_n_0 -attr @rip(#000000) 2 -attr @name i__carry__0_i_6_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 S[2] -pin riscv|i__carry__0_i_6 O
load net riscv|i__carry__0_i_7_n_0 -attr @rip(#000000) 1 -attr @name i__carry__0_i_7_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 S[1] -pin riscv|i__carry__0_i_7 O
load net riscv|i__carry__0_i_8_n_0 -attr @rip(#000000) 0 -attr @name i__carry__0_i_8_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__0 S[0] -pin riscv|i__carry__0_i_8 O
load net riscv|i__carry__1_i_1__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry__1_i_1__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 DI[3] -pin riscv|ex_aluResult0_inferred__5/i__carry__1 DI[3] -pin riscv|i__carry__1_i_1__0 O
load net riscv|i__carry__1_i_1__1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__1_i_1__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 S[3] -pin riscv|i__carry__1_i_1__1 O
load net riscv|i__carry__1_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__1_i_1_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 S[3] -pin riscv|i__carry__1_i_1 O
load net riscv|i__carry__1_i_2__0_n_0 -attr @rip(#000000) 2 -attr @name i__carry__1_i_2__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 DI[2] -pin riscv|ex_aluResult0_inferred__5/i__carry__1 DI[2] -pin riscv|i__carry__1_i_2__0 O
load net riscv|i__carry__1_i_2__1_n_0 -attr @rip(#000000) 2 -attr @name i__carry__1_i_2__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 S[2] -pin riscv|i__carry__1_i_2__1 O
load net riscv|i__carry__1_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__1_i_2_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 S[2] -pin riscv|i__carry__1_i_2 O
load net riscv|i__carry__1_i_3__0_n_0 -attr @rip(#000000) 1 -attr @name i__carry__1_i_3__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 DI[1] -pin riscv|ex_aluResult0_inferred__5/i__carry__1 DI[1] -pin riscv|i__carry__1_i_3__0 O
load net riscv|i__carry__1_i_3__1_n_0 -attr @rip(#000000) 1 -attr @name i__carry__1_i_3__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 S[1] -pin riscv|i__carry__1_i_3__1 O
load net riscv|i__carry__1_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__1_i_3_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 S[1] -pin riscv|i__carry__1_i_3 O
load net riscv|i__carry__1_i_4__0_n_0 -attr @rip(#000000) 0 -attr @name i__carry__1_i_4__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 DI[0] -pin riscv|ex_aluResult0_inferred__5/i__carry__1 DI[0] -pin riscv|i__carry__1_i_4__0 O
load net riscv|i__carry__1_i_4__1_n_0 -attr @rip(#000000) 0 -attr @name i__carry__1_i_4__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__1 S[0] -pin riscv|i__carry__1_i_4__1 O
load net riscv|i__carry__1_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__1_i_4_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__1 S[0] -pin riscv|i__carry__1_i_4 O
load net riscv|i__carry__1_i_5_n_0 -attr @rip(#000000) 3 -attr @name i__carry__1_i_5_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 S[3] -pin riscv|i__carry__1_i_5 O
load net riscv|i__carry__1_i_6_n_0 -attr @rip(#000000) 2 -attr @name i__carry__1_i_6_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 S[2] -pin riscv|i__carry__1_i_6 O
load net riscv|i__carry__1_i_7_n_0 -attr @rip(#000000) 1 -attr @name i__carry__1_i_7_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 S[1] -pin riscv|i__carry__1_i_7 O
load net riscv|i__carry__1_i_8_n_0 -attr @rip(#000000) 0 -attr @name i__carry__1_i_8_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__1 S[0] -pin riscv|i__carry__1_i_8 O
load net riscv|i__carry__2_i_1__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry__2_i_1__0_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 DI[3] -pin riscv|i__carry__2_i_1__0 O
netloc riscv|i__carry__2_i_1__0_n_0 1 26 1 28570 29488n
load net riscv|i__carry__2_i_1__1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__2_i_1__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 S[3] -pin riscv|i__carry__2_i_1__1 O
load net riscv|i__carry__2_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__2_i_1_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 DI[3] -pin riscv|i__carry__2_i_1 O
load net riscv|i__carry__2_i_2__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry__2_i_2__0_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 S[3] -pin riscv|i__carry__2_i_2__0 O
load net riscv|i__carry__2_i_2__1_n_0 -attr @rip(#000000) 2 -attr @name i__carry__2_i_2__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 S[2] -pin riscv|i__carry__2_i_2__1 O
load net riscv|i__carry__2_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__2_i_2_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 DI[2] -pin riscv|ex_aluResult0_inferred__5/i__carry__2 DI[2] -pin riscv|i__carry__2_i_2 O
load net riscv|i__carry__2_i_3__0_n_0 -attr @rip(#000000) 2 -attr @name i__carry__2_i_3__0_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 S[2] -pin riscv|i__carry__2_i_3__0 O
load net riscv|i__carry__2_i_3__1_n_0 -attr @rip(#000000) 1 -attr @name i__carry__2_i_3__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 S[1] -pin riscv|i__carry__2_i_3__1 O
load net riscv|i__carry__2_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__2_i_3_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 DI[1] -pin riscv|ex_aluResult0_inferred__5/i__carry__2 DI[1] -pin riscv|i__carry__2_i_3 O
load net riscv|i__carry__2_i_4__0_n_0 -attr @rip(#000000) 1 -attr @name i__carry__2_i_4__0_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 S[1] -pin riscv|i__carry__2_i_4__0 O
load net riscv|i__carry__2_i_4__1_n_0 -attr @rip(#000000) 0 -attr @name i__carry__2_i_4__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__2 S[0] -pin riscv|i__carry__2_i_4__1 O
load net riscv|i__carry__2_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__2_i_4_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 DI[0] -pin riscv|ex_aluResult0_inferred__5/i__carry__2 DI[0] -pin riscv|i__carry__2_i_4 O
load net riscv|i__carry__2_i_5__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry__2_i_5__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 S[3] -pin riscv|i__carry__2_i_5__0 O
load net riscv|i__carry__2_i_5_n_0 -attr @rip(#000000) 0 -attr @name i__carry__2_i_5_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry__2 S[0] -pin riscv|i__carry__2_i_5 O
load net riscv|i__carry__2_i_6_n_0 -attr @rip(#000000) 2 -attr @name i__carry__2_i_6_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 S[2] -pin riscv|i__carry__2_i_6 O
load net riscv|i__carry__2_i_7_n_0 -attr @rip(#000000) 1 -attr @name i__carry__2_i_7_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 S[1] -pin riscv|i__carry__2_i_7 O
load net riscv|i__carry__2_i_8_n_0 -attr @rip(#000000) 0 -attr @name i__carry__2_i_8_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry__2 S[0] -pin riscv|i__carry__2_i_8 O
load net riscv|i__carry__3_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__3_i_1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 S[3] -pin riscv|i__carry__3_i_1 O
load net riscv|i__carry__3_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__3_i_2_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 S[2] -pin riscv|i__carry__3_i_2 O
load net riscv|i__carry__3_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__3_i_3_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 S[1] -pin riscv|i__carry__3_i_3 O
load net riscv|i__carry__3_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__3_i_4_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__3 S[0] -pin riscv|i__carry__3_i_4 O
load net riscv|i__carry__4_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__4_i_1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 S[3] -pin riscv|i__carry__4_i_1 O
load net riscv|i__carry__4_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__4_i_2_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 S[2] -pin riscv|i__carry__4_i_2 O
load net riscv|i__carry__4_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__4_i_3_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 S[1] -pin riscv|i__carry__4_i_3 O
load net riscv|i__carry__4_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__4_i_4_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__4 S[0] -pin riscv|i__carry__4_i_4 O
load net riscv|i__carry__5_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__5_i_1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 S[3] -pin riscv|i__carry__5_i_1 O
load net riscv|i__carry__5_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__5_i_2_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 S[2] -pin riscv|i__carry__5_i_2 O
load net riscv|i__carry__5_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__5_i_3_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 S[1] -pin riscv|i__carry__5_i_3 O
load net riscv|i__carry__5_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__5_i_4_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__5 S[0] -pin riscv|i__carry__5_i_4 O
load net riscv|i__carry__6_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry__6_i_1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 S[3] -pin riscv|i__carry__6_i_1 O
load net riscv|i__carry__6_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry__6_i_2_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 S[2] -pin riscv|i__carry__6_i_2 O
load net riscv|i__carry__6_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry__6_i_3_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 S[1] -pin riscv|i__carry__6_i_3 O
load net riscv|i__carry__6_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry__6_i_4_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry__6 S[0] -pin riscv|i__carry__6_i_4 O
load net riscv|i__carry_i_1__0_n_0 -attr @rip(#000000) 3 -attr @name i__carry_i_1__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry DI[3] -pin riscv|ex_aluResult0_inferred__5/i__carry DI[3] -pin riscv|i__carry_i_1__0 O
load net riscv|i__carry_i_1__1_n_0 -attr @rip(#000000) 3 -attr @name i__carry_i_1__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry S[3] -pin riscv|i__carry_i_1__1 O
load net riscv|i__carry_i_1_n_0 -attr @rip(#000000) 3 -attr @name i__carry_i_1_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry S[3] -pin riscv|i__carry_i_1 O
load net riscv|i__carry_i_2__0_n_0 -attr @rip(#000000) 2 -attr @name i__carry_i_2__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry DI[2] -pin riscv|ex_aluResult0_inferred__5/i__carry DI[2] -pin riscv|i__carry_i_2__0 O
load net riscv|i__carry_i_2__1_n_0 -attr @rip(#000000) 2 -attr @name i__carry_i_2__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry S[2] -pin riscv|i__carry_i_2__1 O
load net riscv|i__carry_i_2_n_0 -attr @rip(#000000) 2 -attr @name i__carry_i_2_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry S[2] -pin riscv|i__carry_i_2 O
load net riscv|i__carry_i_3__0_n_0 -attr @rip(#000000) 1 -attr @name i__carry_i_3__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry DI[1] -pin riscv|ex_aluResult0_inferred__5/i__carry DI[1] -pin riscv|i__carry_i_3__0 O
load net riscv|i__carry_i_3__1_n_0 -attr @rip(#000000) 1 -attr @name i__carry_i_3__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry S[1] -pin riscv|i__carry_i_3__1 O
load net riscv|i__carry_i_3_n_0 -attr @rip(#000000) 1 -attr @name i__carry_i_3_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry S[1] -pin riscv|i__carry_i_3 O
load net riscv|i__carry_i_4__0_n_0 -attr @rip(#000000) 0 -attr @name i__carry_i_4__0_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry DI[0] -pin riscv|ex_aluResult0_inferred__5/i__carry DI[0] -pin riscv|i__carry_i_4__0 O
load net riscv|i__carry_i_4__1_n_0 -attr @rip(#000000) 0 -attr @name i__carry_i_4__1_n_0 -pin riscv|ex_aluResult0_inferred__0/i__carry S[0] -pin riscv|i__carry_i_4__1 O
load net riscv|i__carry_i_4_n_0 -attr @rip(#000000) 0 -attr @name i__carry_i_4_n_0 -pin riscv|ex_aluResult0_inferred__5/i__carry S[0] -pin riscv|i__carry_i_4 O
load net riscv|i__carry_i_5_n_0 -attr @rip(#000000) 3 -attr @name i__carry_i_5_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry S[3] -pin riscv|i__carry_i_5 O
load net riscv|i__carry_i_6_n_0 -attr @rip(#000000) 2 -attr @name i__carry_i_6_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry S[2] -pin riscv|i__carry_i_6 O
load net riscv|i__carry_i_7_n_0 -attr @rip(#000000) 1 -attr @name i__carry_i_7_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry S[1] -pin riscv|i__carry_i_7 O
load net riscv|i__carry_i_8_n_0 -attr @rip(#000000) 0 -attr @name i__carry_i_8_n_0 -pin riscv|ex_aluResult0_inferred__4/i__carry S[0] -pin riscv|i__carry_i_8 O
load net riscv|id_ALUCtrl[1] -attr @name id_ALUCtrl[1] -pin riscv|ex_ALUCtrl[1]_i_1 O -pin riscv|ex_ALUCtrl_reg[1] D
netloc riscv|id_ALUCtrl[1] 1 24 1 24650 29938n
load net riscv|id_ALUSrc -attr @name id_ALUSrc -pin riscv|ex_ALUSrc_i_1 O -pin riscv|ex_ALUSrc_reg D
netloc riscv|id_ALUSrc 1 27 1 30040 23558n
load net riscv|id_MemtoReg -attr @name id_MemtoReg -pin riscv|ex_MemtoReg_i_1 O -pin riscv|ex_MemtoReg_reg D
netloc riscv|id_MemtoReg 1 20 1 18620 28388n
load net riscv|id_PC[0] -attr @name id_PC[0] -pin riscv|ex_PC_reg[0] D -pin riscv|id_PC_reg[0] Q
netloc riscv|id_PC[0] 1 19 1 16240 15538n
load net riscv|id_PC[10] -attr @name id_PC[10] -pin riscv|ex_PC_reg[10] D -pin riscv|id_PC_reg[10] Q
netloc riscv|id_PC[10] 1 21 1 19200 15518n
load net riscv|id_PC[11] -attr @name id_PC[11] -pin riscv|ex_PC_reg[11] D -pin riscv|id_PC_reg[11] Q
netloc riscv|id_PC[11] 1 21 1 N 16728
load net riscv|id_PC[12] -attr @name id_PC[12] -pin riscv|ex_PC_reg[12] D -pin riscv|id_PC_reg[12] Q
netloc riscv|id_PC[12] 1 22 1 19940 15658n
load net riscv|id_PC[13] -attr @name id_PC[13] -pin riscv|ex_PC_reg[13] D -pin riscv|id_PC_reg[13] Q
netloc riscv|id_PC[13] 1 22 1 20440 15838n
load net riscv|id_PC[14] -attr @name id_PC[14] -pin riscv|ex_PC_reg[14] D -pin riscv|id_PC_reg[14] Q
netloc riscv|id_PC[14] 1 22 1 20460 15988n
load net riscv|id_PC[15] -attr @name id_PC[15] -pin riscv|ex_PC_reg[15] D -pin riscv|id_PC_reg[15] Q
netloc riscv|id_PC[15] 1 22 1 19940 16138n
load net riscv|id_PC[16] -attr @name id_PC[16] -pin riscv|ex_PC_reg[16] D -pin riscv|id_PC_reg[16] Q
netloc riscv|id_PC[16] 1 23 1 22100 16138n
load net riscv|id_PC[17] -attr @name id_PC[17] -pin riscv|ex_PC_reg[17] D -pin riscv|id_PC_reg[17] Q
netloc riscv|id_PC[17] 1 23 1 22080 16428n
load net riscv|id_PC[18] -attr @name id_PC[18] -pin riscv|ex_PC_reg[18] D -pin riscv|id_PC_reg[18] Q
netloc riscv|id_PC[18] 1 23 1 22080 16608n
load net riscv|id_PC[19] -attr @name id_PC[19] -pin riscv|ex_PC_reg[19] D -pin riscv|id_PC_reg[19] Q
netloc riscv|id_PC[19] 1 23 1 N 16788
load net riscv|id_PC[1] -attr @name id_PC[1] -pin riscv|ex_PC_reg[1] D -pin riscv|id_PC_reg[1] Q
netloc riscv|id_PC[1] 1 19 1 16240 15688n
load net riscv|id_PC[20] -attr @name id_PC[20] -pin riscv|ex_PC_reg[20] D -pin riscv|id_PC_reg[20] Q
netloc riscv|id_PC[20] 1 24 1 24170 14648n
load net riscv|id_PC[21] -attr @name id_PC[21] -pin riscv|ex_PC_reg[21] D -pin riscv|id_PC_reg[21] Q
netloc riscv|id_PC[21] 1 24 1 24170 14798n
load net riscv|id_PC[22] -attr @name id_PC[22] -pin riscv|ex_PC_reg[22] D -pin riscv|id_PC_reg[22] Q
netloc riscv|id_PC[22] 1 24 1 N 15118
load net riscv|id_PC[23] -attr @name id_PC[23] -pin riscv|ex_PC_reg[23] D -pin riscv|id_PC_reg[23] Q
netloc riscv|id_PC[23] 1 24 1 N 15268
load net riscv|id_PC[24] -attr @name id_PC[24] -pin riscv|ex_PC_reg[24] D -pin riscv|id_PC_reg[24] Q
netloc riscv|id_PC[24] 1 25 1 26670 668n
load net riscv|id_PC[25] -attr @name id_PC[25] -pin riscv|ex_PC_reg[25] D -pin riscv|id_PC_reg[25] Q
netloc riscv|id_PC[25] 1 25 1 26650 828n
load net riscv|id_PC[26] -attr @name id_PC[26] -pin riscv|ex_PC_reg[26] D -pin riscv|id_PC_reg[26] Q
netloc riscv|id_PC[26] 1 25 1 26630 988n
load net riscv|id_PC[27] -attr @name id_PC[27] -pin riscv|ex_PC_reg[27] D -pin riscv|id_PC_reg[27] Q
netloc riscv|id_PC[27] 1 25 1 26610 1148n
load net riscv|id_PC[28] -attr @name id_PC[28] -pin riscv|ex_PC_reg[28] D -pin riscv|id_PC_reg[28] Q
netloc riscv|id_PC[28] 1 26 1 27970 16418n
load net riscv|id_PC[29] -attr @name id_PC[29] -pin riscv|ex_PC_reg[29] D -pin riscv|id_PC_reg[29] Q
netloc riscv|id_PC[29] 1 26 1 27070 16568n
load net riscv|id_PC[2] -attr @name id_PC[2] -pin riscv|ex_PC_reg[2] D -pin riscv|id_PC_reg[2] Q
netloc riscv|id_PC[2] 1 19 1 16240 15838n
load net riscv|id_PC[30] -attr @name id_PC[30] -pin riscv|ex_PC_reg[30] D -pin riscv|id_PC_reg[30] Q
netloc riscv|id_PC[30] 1 26 1 27090 16718n
load net riscv|id_PC[31] -attr @name id_PC[31] -pin riscv|ex_PC_reg[31] D -pin riscv|id_PC_reg[31] Q
netloc riscv|id_PC[31] 1 26 1 28010 16868n
load net riscv|id_PC[3] -attr @name id_PC[3] -pin riscv|ex_PC_reg[3] D -pin riscv|id_PC_reg[3] Q
netloc riscv|id_PC[3] 1 19 1 16240 15988n
load net riscv|id_PC[4] -attr @name id_PC[4] -pin riscv|ex_PC_reg[4] D -pin riscv|id_PC_reg[4] Q
netloc riscv|id_PC[4] 1 20 1 18120 15898n
load net riscv|id_PC[5] -attr @name id_PC[5] -pin riscv|ex_PC_reg[5] D -pin riscv|id_PC_reg[5] Q
netloc riscv|id_PC[5] 1 20 1 18140 16048n
load net riscv|id_PC[6] -attr @name id_PC[6] -pin riscv|ex_PC_reg[6] D -pin riscv|id_PC_reg[6] Q
netloc riscv|id_PC[6] 1 20 1 18160 16228n
load net riscv|id_PC[7] -attr @name id_PC[7] -pin riscv|ex_PC_reg[7] D -pin riscv|id_PC_reg[7] Q
netloc riscv|id_PC[7] 1 20 1 18200 16558n
load net riscv|id_PC[8] -attr @name id_PC[8] -pin riscv|ex_PC_reg[8] D -pin riscv|id_PC_reg[8] Q
netloc riscv|id_PC[8] 1 21 1 N 15148
load net riscv|id_PC[9] -attr @name id_PC[9] -pin riscv|ex_PC_reg[9] D -pin riscv|id_PC_reg[9] Q
netloc riscv|id_PC[9] 1 21 1 N 15298
load net riscv|id_RegWrite -attr @name id_RegWrite -pin riscv|ex_RegWrite_i_1 O -pin riscv|ex_RegWrite_reg D
netloc riscv|id_RegWrite 1 22 1 20860 29938n
load net riscv|id_registerFile_reg_r1_0_31_0_5_i_1_n_0 -attr @name id_registerFile_reg_r1_0_31_0_5_i_1_n_0 -pin riscv|ex_rs1[0]_i_1 I4 -pin riscv|ex_rs1[10]_i_1 I4 -pin riscv|ex_rs1[11]_i_1 I4 -pin riscv|ex_rs1[12]_i_1 I4 -pin riscv|ex_rs1[13]_i_1 I4 -pin riscv|ex_rs1[14]_i_1 I4 -pin riscv|ex_rs1[15]_i_1 I4 -pin riscv|ex_rs1[16]_i_1 I4 -pin riscv|ex_rs1[17]_i_1 I4 -pin riscv|ex_rs1[18]_i_1 I4 -pin riscv|ex_rs1[19]_i_1 I4 -pin riscv|ex_rs1[1]_i_1 I4 -pin riscv|ex_rs1[20]_i_1 I4 -pin riscv|ex_rs1[21]_i_1 I4 -pin riscv|ex_rs1[22]_i_1 I4 -pin riscv|ex_rs1[23]_i_1 I4 -pin riscv|ex_rs1[24]_i_1 I4 -pin riscv|ex_rs1[25]_i_1 I4 -pin riscv|ex_rs1[26]_i_1 I4 -pin riscv|ex_rs1[27]_i_1 I4 -pin riscv|ex_rs1[28]_i_1 I4 -pin riscv|ex_rs1[29]_i_1 I4 -pin riscv|ex_rs1[2]_i_1 I4 -pin riscv|ex_rs1[30]_i_1 I4 -pin riscv|ex_rs1[31]_i_1 I4 -pin riscv|ex_rs1[3]_i_1 I4 -pin riscv|ex_rs1[4]_i_1 I4 -pin riscv|ex_rs1[5]_i_1 I4 -pin riscv|ex_rs1[6]_i_1 I4 -pin riscv|ex_rs1[7]_i_1 I4 -pin riscv|ex_rs1[8]_i_1 I4 -pin riscv|ex_rs1[9]_i_1 I4 -pin riscv|ex_rs2[0]_i_1 I4 -pin riscv|ex_rs2[10]_i_1 I4 -pin riscv|ex_rs2[11]_i_1 I4 -pin riscv|ex_rs2[12]_i_1 I4 -pin riscv|ex_rs2[13]_i_1 I4 -pin riscv|ex_rs2[14]_i_1 I4 -pin riscv|ex_rs2[15]_i_1 I4 -pin riscv|ex_rs2[16]_i_1 I4 -pin riscv|ex_rs2[17]_i_1 I4 -pin riscv|ex_rs2[18]_i_1 I4 -pin riscv|ex_rs2[19]_i_1 I4 -pin riscv|ex_rs2[1]_i_1 I4 -pin riscv|ex_rs2[20]_i_1 I4 -pin riscv|ex_rs2[21]_i_1 I4 -pin riscv|ex_rs2[22]_i_1 I4 -pin riscv|ex_rs2[23]_i_1 I4 -pin riscv|ex_rs2[24]_i_1 I4 -pin riscv|ex_rs2[25]_i_1 I4 -pin riscv|ex_rs2[26]_i_1 I4 -pin riscv|ex_rs2[27]_i_1 I4 -pin riscv|ex_rs2[28]_i_1 I4 -pin riscv|ex_rs2[29]_i_1 I4 -pin riscv|ex_rs2[2]_i_1 I4 -pin riscv|ex_rs2[30]_i_1 I4 -pin riscv|ex_rs2[31]_i_1 I4 -pin riscv|ex_rs2[3]_i_1 I4 -pin riscv|ex_rs2[4]_i_1 I4 -pin riscv|ex_rs2[5]_i_1 I4 -pin riscv|ex_rs2[6]_i_1 I4 -pin riscv|ex_rs2[7]_i_1 I4 -pin riscv|ex_rs2[8]_i_1 I4 -pin riscv|ex_rs2[9]_i_1 I4 -pin riscv|id_registerFile_reg_r1_0_31_0_5 WE -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 O -pin riscv|id_registerFile_reg_r1_0_31_12_17 WE -pin riscv|id_registerFile_reg_r1_0_31_18_23 WE -pin riscv|id_registerFile_reg_r1_0_31_24_29 WE -pin riscv|id_registerFile_reg_r1_0_31_30_31 WE -pin riscv|id_registerFile_reg_r1_0_31_6_11 WE -pin riscv|id_registerFile_reg_r2_0_31_0_5 WE -pin riscv|id_registerFile_reg_r2_0_31_12_17 WE -pin riscv|id_registerFile_reg_r2_0_31_18_23 WE -pin riscv|id_registerFile_reg_r2_0_31_24_29 WE -pin riscv|id_registerFile_reg_r2_0_31_30_31 WE -pin riscv|id_registerFile_reg_r2_0_31_6_11 WE
netloc riscv|id_registerFile_reg_r1_0_31_0_5_i_1_n_0 1 5 22 5500 26538 NJ 26538 NJ 26538 NJ 26538 NJ 26538 NJ 26538 8320 26558 NJ 26558 9000 25758 10130 26378 11460 26018 NJ 26018 NJ 26018 NJ 26018 17440 24258 18580 25058 19460 30378 20060 30928 21840 31378 24590 28188 26590 29868 28650
load net riscv|if_PC[0]_i_1_n_0 -attr @name if_PC[0]_i_1_n_0 -pin riscv|if_PC[0]_i_1 O -pin riscv|if_PC_reg[0] D
netloc riscv|if_PC[0]_i_1_n_0 1 33 1 33060 11648n
load net riscv|if_PC[0]_i_2_n_0 -attr @rip(#000000) 1 -attr @name if_PC[0]_i_2_n_0 -pin riscv|if_PC[0]_i_1 I1 -pin riscv|if_PC[0]_i_2 O -pin riscv|if_PC[13]_i_2 I1 -pin riscv|if_PC[13]_i_3 I1 -pin riscv|if_PC[13]_i_4 I1 -pin riscv|if_PC[13]_i_5 I1 -pin riscv|if_PC[17]_i_2 I1 -pin riscv|if_PC[17]_i_3 I1 -pin riscv|if_PC[17]_i_4 I1 -pin riscv|if_PC[17]_i_5 I1 -pin riscv|if_PC[1]_i_2 I1 -pin riscv|if_PC[1]_i_3 I1 -pin riscv|if_PC[1]_i_4 I2 -pin riscv|if_PC[1]_i_5 I1 -pin riscv|if_PC[21]_i_2 I1 -pin riscv|if_PC[21]_i_3 I1 -pin riscv|if_PC[21]_i_4 I1 -pin riscv|if_PC[21]_i_5 I1 -pin riscv|if_PC[25]_i_2 I1 -pin riscv|if_PC[25]_i_3 I1 -pin riscv|if_PC[25]_i_4 I1 -pin riscv|if_PC[25]_i_5 I1 -pin riscv|if_PC[29]_i_2 I1 -pin riscv|if_PC[29]_i_3 I1 -pin riscv|if_PC[29]_i_4 I1 -pin riscv|if_PC[5]_i_2 I1 -pin riscv|if_PC[5]_i_3 I1 -pin riscv|if_PC[5]_i_4 I1 -pin riscv|if_PC[5]_i_5 I1 -pin riscv|if_PC[9]_i_2 I1 -pin riscv|if_PC[9]_i_3 I1 -pin riscv|if_PC[9]_i_4 I1 -pin riscv|if_PC[9]_i_5 I1 -pin riscv|if_PC_reg[1]_i_1 DI[1]
netloc riscv|if_PC[0]_i_2_n_0 1 24 9 24710 3448 25210 13838 28250 15208 29520 15568 31070 16018 31470 16688 31930 16668 32390 16668 32810
load net riscv|if_PC[13]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[13]_i_2_n_0 -pin riscv|if_PC[13]_i_2 O -pin riscv|if_PC_reg[13]_i_1 S[3]
load net riscv|if_PC[13]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[13]_i_3_n_0 -pin riscv|if_PC[13]_i_3 O -pin riscv|if_PC_reg[13]_i_1 S[2]
load net riscv|if_PC[13]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[13]_i_4_n_0 -pin riscv|if_PC[13]_i_4 O -pin riscv|if_PC_reg[13]_i_1 S[1]
load net riscv|if_PC[13]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[13]_i_5_n_0 -pin riscv|if_PC[13]_i_5 O -pin riscv|if_PC_reg[13]_i_1 S[0]
load net riscv|if_PC[17]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[17]_i_2_n_0 -pin riscv|if_PC[17]_i_2 O -pin riscv|if_PC_reg[17]_i_1 S[3]
load net riscv|if_PC[17]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[17]_i_3_n_0 -pin riscv|if_PC[17]_i_3 O -pin riscv|if_PC_reg[17]_i_1 S[2]
load net riscv|if_PC[17]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[17]_i_4_n_0 -pin riscv|if_PC[17]_i_4 O -pin riscv|if_PC_reg[17]_i_1 S[1]
load net riscv|if_PC[17]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[17]_i_5_n_0 -pin riscv|if_PC[17]_i_5 O -pin riscv|if_PC_reg[17]_i_1 S[0]
load net riscv|if_PC[1]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[1]_i_2_n_0 -pin riscv|if_PC[1]_i_2 O -pin riscv|if_PC_reg[1]_i_1 S[3]
load net riscv|if_PC[1]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[1]_i_3_n_0 -pin riscv|if_PC[1]_i_3 O -pin riscv|if_PC_reg[1]_i_1 S[2]
load net riscv|if_PC[1]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[1]_i_4_n_0 -pin riscv|if_PC[1]_i_4 O -pin riscv|if_PC_reg[1]_i_1 S[1]
load net riscv|if_PC[1]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[1]_i_5_n_0 -pin riscv|if_PC[1]_i_5 O -pin riscv|if_PC_reg[1]_i_1 S[0]
load net riscv|if_PC[21]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[21]_i_2_n_0 -pin riscv|if_PC[21]_i_2 O -pin riscv|if_PC_reg[21]_i_1 S[3]
load net riscv|if_PC[21]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[21]_i_3_n_0 -pin riscv|if_PC[21]_i_3 O -pin riscv|if_PC_reg[21]_i_1 S[2]
load net riscv|if_PC[21]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[21]_i_4_n_0 -pin riscv|if_PC[21]_i_4 O -pin riscv|if_PC_reg[21]_i_1 S[1]
load net riscv|if_PC[21]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[21]_i_5_n_0 -pin riscv|if_PC[21]_i_5 O -pin riscv|if_PC_reg[21]_i_1 S[0]
load net riscv|if_PC[25]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[25]_i_2_n_0 -pin riscv|if_PC[25]_i_2 O -pin riscv|if_PC_reg[25]_i_1 S[3]
load net riscv|if_PC[25]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[25]_i_3_n_0 -pin riscv|if_PC[25]_i_3 O -pin riscv|if_PC_reg[25]_i_1 S[2]
load net riscv|if_PC[25]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[25]_i_4_n_0 -pin riscv|if_PC[25]_i_4 O -pin riscv|if_PC_reg[25]_i_1 S[1]
load net riscv|if_PC[25]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[25]_i_5_n_0 -pin riscv|if_PC[25]_i_5 O -pin riscv|if_PC_reg[25]_i_1 S[0]
load net riscv|if_PC[29]_i_2_n_0 -attr @rip(#000000) 2 -attr @name if_PC[29]_i_2_n_0 -pin riscv|if_PC[29]_i_2 O -pin riscv|if_PC_reg[29]_i_1 S[2]
load net riscv|if_PC[29]_i_3_n_0 -attr @rip(#000000) 1 -attr @name if_PC[29]_i_3_n_0 -pin riscv|if_PC[29]_i_3 O -pin riscv|if_PC_reg[29]_i_1 S[1]
load net riscv|if_PC[29]_i_4_n_0 -attr @rip(#000000) 0 -attr @name if_PC[29]_i_4_n_0 -pin riscv|if_PC[29]_i_4 O -pin riscv|if_PC_reg[29]_i_1 S[0]
load net riscv|if_PC[5]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[5]_i_2_n_0 -pin riscv|if_PC[5]_i_2 O -pin riscv|if_PC_reg[5]_i_1 S[3]
load net riscv|if_PC[5]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[5]_i_3_n_0 -pin riscv|if_PC[5]_i_3 O -pin riscv|if_PC_reg[5]_i_1 S[2]
load net riscv|if_PC[5]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[5]_i_4_n_0 -pin riscv|if_PC[5]_i_4 O -pin riscv|if_PC_reg[5]_i_1 S[1]
load net riscv|if_PC[5]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[5]_i_5_n_0 -pin riscv|if_PC[5]_i_5 O -pin riscv|if_PC_reg[5]_i_1 S[0]
load net riscv|if_PC[9]_i_2_n_0 -attr @rip(#000000) 3 -attr @name if_PC[9]_i_2_n_0 -pin riscv|if_PC[9]_i_2 O -pin riscv|if_PC_reg[9]_i_1 S[3]
load net riscv|if_PC[9]_i_3_n_0 -attr @rip(#000000) 2 -attr @name if_PC[9]_i_3_n_0 -pin riscv|if_PC[9]_i_3 O -pin riscv|if_PC_reg[9]_i_1 S[2]
load net riscv|if_PC[9]_i_4_n_0 -attr @rip(#000000) 1 -attr @name if_PC[9]_i_4_n_0 -pin riscv|if_PC[9]_i_4 O -pin riscv|if_PC_reg[9]_i_1 S[1]
load net riscv|if_PC[9]_i_5_n_0 -attr @rip(#000000) 0 -attr @name if_PC[9]_i_5_n_0 -pin riscv|if_PC[9]_i_5 O -pin riscv|if_PC_reg[9]_i_1 S[0]
load net riscv|if_PC_reg[13]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[13]_i_1_n_0 -pin riscv|if_PC_reg[13]_i_1 CO[3] -pin riscv|if_PC_reg[17]_i_1 CI
load net riscv|if_PC_reg[13]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[13]_i_1_n_1 -pin riscv|if_PC_reg[13]_i_1 CO[2]
load net riscv|if_PC_reg[13]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[13]_i_1_n_2 -pin riscv|if_PC_reg[13]_i_1 CO[1]
load net riscv|if_PC_reg[13]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[13]_i_1_n_3 -pin riscv|if_PC_reg[13]_i_1 CO[0]
load net riscv|if_PC_reg[13]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[13]_i_1_n_4 -pin riscv|if_PC_reg[13]_i_1 O[3] -pin riscv|if_PC_reg[16] D
load net riscv|if_PC_reg[13]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[13]_i_1_n_5 -pin riscv|if_PC_reg[13]_i_1 O[2] -pin riscv|if_PC_reg[15] D
load net riscv|if_PC_reg[13]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[13]_i_1_n_6 -pin riscv|if_PC_reg[13]_i_1 O[1] -pin riscv|if_PC_reg[14] D
load net riscv|if_PC_reg[13]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[13]_i_1_n_7 -pin riscv|if_PC_reg[13] D -pin riscv|if_PC_reg[13]_i_1 O[0]
load net riscv|if_PC_reg[17]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[17]_i_1_n_0 -pin riscv|if_PC_reg[17]_i_1 CO[3] -pin riscv|if_PC_reg[21]_i_1 CI
load net riscv|if_PC_reg[17]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[17]_i_1_n_1 -pin riscv|if_PC_reg[17]_i_1 CO[2]
load net riscv|if_PC_reg[17]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[17]_i_1_n_2 -pin riscv|if_PC_reg[17]_i_1 CO[1]
load net riscv|if_PC_reg[17]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[17]_i_1_n_3 -pin riscv|if_PC_reg[17]_i_1 CO[0]
load net riscv|if_PC_reg[17]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[17]_i_1_n_4 -pin riscv|if_PC_reg[17]_i_1 O[3] -pin riscv|if_PC_reg[20] D
load net riscv|if_PC_reg[17]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[17]_i_1_n_5 -pin riscv|if_PC_reg[17]_i_1 O[2] -pin riscv|if_PC_reg[19] D
load net riscv|if_PC_reg[17]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[17]_i_1_n_6 -pin riscv|if_PC_reg[17]_i_1 O[1] -pin riscv|if_PC_reg[18] D
load net riscv|if_PC_reg[17]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[17]_i_1_n_7 -pin riscv|if_PC_reg[17] D -pin riscv|if_PC_reg[17]_i_1 O[0]
load net riscv|if_PC_reg[1]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[1]_i_1_n_0 -pin riscv|if_PC_reg[1]_i_1 CO[3] -pin riscv|if_PC_reg[5]_i_1 CI
load net riscv|if_PC_reg[1]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[1]_i_1_n_1 -pin riscv|if_PC_reg[1]_i_1 CO[2]
load net riscv|if_PC_reg[1]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[1]_i_1_n_2 -pin riscv|if_PC_reg[1]_i_1 CO[1]
load net riscv|if_PC_reg[1]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[1]_i_1_n_3 -pin riscv|if_PC_reg[1]_i_1 CO[0]
load net riscv|if_PC_reg[1]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[1]_i_1_n_4 -pin riscv|if_PC_reg[1]_i_1 O[3] -pin riscv|if_PC_reg[4] D
load net riscv|if_PC_reg[1]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[1]_i_1_n_5 -pin riscv|if_PC_reg[1]_i_1 O[2] -pin riscv|if_PC_reg[3] D
load net riscv|if_PC_reg[1]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[1]_i_1_n_6 -pin riscv|if_PC_reg[1]_i_1 O[1] -pin riscv|if_PC_reg[2] D
load net riscv|if_PC_reg[1]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[1]_i_1_n_7 -pin riscv|if_PC_reg[1] D -pin riscv|if_PC_reg[1]_i_1 O[0]
load net riscv|if_PC_reg[21]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[21]_i_1_n_0 -pin riscv|if_PC_reg[21]_i_1 CO[3] -pin riscv|if_PC_reg[25]_i_1 CI
load net riscv|if_PC_reg[21]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[21]_i_1_n_1 -pin riscv|if_PC_reg[21]_i_1 CO[2]
load net riscv|if_PC_reg[21]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[21]_i_1_n_2 -pin riscv|if_PC_reg[21]_i_1 CO[1]
load net riscv|if_PC_reg[21]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[21]_i_1_n_3 -pin riscv|if_PC_reg[21]_i_1 CO[0]
load net riscv|if_PC_reg[21]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[21]_i_1_n_4 -pin riscv|if_PC_reg[21]_i_1 O[3] -pin riscv|if_PC_reg[24] D
load net riscv|if_PC_reg[21]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[21]_i_1_n_5 -pin riscv|if_PC_reg[21]_i_1 O[2] -pin riscv|if_PC_reg[23] D
load net riscv|if_PC_reg[21]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[21]_i_1_n_6 -pin riscv|if_PC_reg[21]_i_1 O[1] -pin riscv|if_PC_reg[22] D
load net riscv|if_PC_reg[21]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[21]_i_1_n_7 -pin riscv|if_PC_reg[21] D -pin riscv|if_PC_reg[21]_i_1 O[0]
load net riscv|if_PC_reg[25]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[25]_i_1_n_0 -pin riscv|if_PC_reg[25]_i_1 CO[3] -pin riscv|if_PC_reg[29]_i_1 CI
load net riscv|if_PC_reg[25]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[25]_i_1_n_1 -pin riscv|if_PC_reg[25]_i_1 CO[2]
load net riscv|if_PC_reg[25]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[25]_i_1_n_2 -pin riscv|if_PC_reg[25]_i_1 CO[1]
load net riscv|if_PC_reg[25]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[25]_i_1_n_3 -pin riscv|if_PC_reg[25]_i_1 CO[0]
load net riscv|if_PC_reg[25]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[25]_i_1_n_4 -pin riscv|if_PC_reg[25]_i_1 O[3] -pin riscv|if_PC_reg[28] D
load net riscv|if_PC_reg[25]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[25]_i_1_n_5 -pin riscv|if_PC_reg[25]_i_1 O[2] -pin riscv|if_PC_reg[27] D
load net riscv|if_PC_reg[25]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[25]_i_1_n_6 -pin riscv|if_PC_reg[25]_i_1 O[1] -pin riscv|if_PC_reg[26] D
load net riscv|if_PC_reg[25]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[25]_i_1_n_7 -pin riscv|if_PC_reg[25] D -pin riscv|if_PC_reg[25]_i_1 O[0]
load net riscv|if_PC_reg[29]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[29]_i_1_n_2 -pin riscv|if_PC_reg[29]_i_1 CO[1]
load net riscv|if_PC_reg[29]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[29]_i_1_n_3 -pin riscv|if_PC_reg[29]_i_1 CO[0]
load net riscv|if_PC_reg[29]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[29]_i_1_n_5 -pin riscv|if_PC_reg[29]_i_1 O[2] -pin riscv|if_PC_reg[31] D
load net riscv|if_PC_reg[29]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[29]_i_1_n_6 -pin riscv|if_PC_reg[29]_i_1 O[1] -pin riscv|if_PC_reg[30] D
load net riscv|if_PC_reg[29]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[29]_i_1_n_7 -pin riscv|if_PC_reg[29] D -pin riscv|if_PC_reg[29]_i_1 O[0]
load net riscv|if_PC_reg[5]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[5]_i_1_n_0 -pin riscv|if_PC_reg[5]_i_1 CO[3] -pin riscv|if_PC_reg[9]_i_1 CI
load net riscv|if_PC_reg[5]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[5]_i_1_n_1 -pin riscv|if_PC_reg[5]_i_1 CO[2]
load net riscv|if_PC_reg[5]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[5]_i_1_n_2 -pin riscv|if_PC_reg[5]_i_1 CO[1]
load net riscv|if_PC_reg[5]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[5]_i_1_n_3 -pin riscv|if_PC_reg[5]_i_1 CO[0]
load net riscv|if_PC_reg[5]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[5]_i_1_n_4 -pin riscv|if_PC_reg[5]_i_1 O[3] -pin riscv|if_PC_reg[8] D
load net riscv|if_PC_reg[5]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[5]_i_1_n_5 -pin riscv|if_PC_reg[5]_i_1 O[2] -pin riscv|if_PC_reg[7] D
load net riscv|if_PC_reg[5]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[5]_i_1_n_6 -pin riscv|if_PC_reg[5]_i_1 O[1] -pin riscv|if_PC_reg[6] D
load net riscv|if_PC_reg[5]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[5]_i_1_n_7 -pin riscv|if_PC_reg[5] D -pin riscv|if_PC_reg[5]_i_1 O[0]
load net riscv|if_PC_reg[9]_i_1_n_0 -attr @rip(#000000) CO[3] -attr @name if_PC_reg[9]_i_1_n_0 -pin riscv|if_PC_reg[13]_i_1 CI -pin riscv|if_PC_reg[9]_i_1 CO[3]
load net riscv|if_PC_reg[9]_i_1_n_1 -attr @rip(#000000) CO[2] -attr @name if_PC_reg[9]_i_1_n_1 -pin riscv|if_PC_reg[9]_i_1 CO[2]
load net riscv|if_PC_reg[9]_i_1_n_2 -attr @rip(#000000) CO[1] -attr @name if_PC_reg[9]_i_1_n_2 -pin riscv|if_PC_reg[9]_i_1 CO[1]
load net riscv|if_PC_reg[9]_i_1_n_3 -attr @rip(#000000) CO[0] -attr @name if_PC_reg[9]_i_1_n_3 -pin riscv|if_PC_reg[9]_i_1 CO[0]
load net riscv|if_PC_reg[9]_i_1_n_4 -attr @rip(#000000) O[3] -attr @name if_PC_reg[9]_i_1_n_4 -pin riscv|if_PC_reg[12] D -pin riscv|if_PC_reg[9]_i_1 O[3]
load net riscv|if_PC_reg[9]_i_1_n_5 -attr @rip(#000000) O[2] -attr @name if_PC_reg[9]_i_1_n_5 -pin riscv|if_PC_reg[11] D -pin riscv|if_PC_reg[9]_i_1 O[2]
load net riscv|if_PC_reg[9]_i_1_n_6 -attr @rip(#000000) O[1] -attr @name if_PC_reg[9]_i_1_n_6 -pin riscv|if_PC_reg[10] D -pin riscv|if_PC_reg[9]_i_1 O[1]
load net riscv|if_PC_reg[9]_i_1_n_7 -attr @rip(#000000) O[0] -attr @name if_PC_reg[9]_i_1_n_7 -pin riscv|if_PC_reg[9] D -pin riscv|if_PC_reg[9]_i_1 O[0]
load net riscv|mem_Branch -attr @name mem_Branch -pin riscv|if_PC[0]_i_2 I0 -pin riscv|mem_Branch_reg Q
netloc riscv|mem_Branch 1 31 1 32370 19108n
load net riscv|mem_MemtoReg -attr @name mem_MemtoReg -pin riscv|mem_MemtoReg_reg Q -pin riscv|wb_MemToReg_reg[0] D
netloc riscv|mem_MemtoReg 1 22 1 N 28368
load net riscv|mem_RegWrite -attr @name mem_RegWrite -pin riscv|mem_RegWrite_reg Q -pin riscv|wb_RegWrite_reg[0] D
netloc riscv|mem_RegWrite 1 24 1 23550 30098n
load net riscv|mem_Zero -attr @name mem_Zero -pin riscv|if_PC[0]_i_2 I3 -pin riscv|mem_Zero_reg Q
netloc riscv|mem_Zero 1 31 1 32450 19168n
load net riscv|mem_Zero_i_2_n_0 -attr @name mem_Zero_i_2_n_0 -pin riscv|mem_Zero_i_1 I0 -pin riscv|mem_Zero_i_2 O
netloc riscv|mem_Zero_i_2_n_0 1 29 1 31450 17128n
load net riscv|mem_Zero_i_3_n_0 -attr @name mem_Zero_i_3_n_0 -pin riscv|mem_Zero_i_1 I5 -pin riscv|mem_Zero_i_3 O
netloc riscv|mem_Zero_i_3_n_0 1 29 1 N 23608
load net riscv|mem_Zero_i_4_n_0 -attr @name mem_Zero_i_4_n_0 -pin riscv|mem_Zero_i_2 I0 -pin riscv|mem_Zero_i_4 O
netloc riscv|mem_Zero_i_4_n_0 1 28 1 30990 8268n
load net riscv|mem_Zero_i_5_n_0 -attr @name mem_Zero_i_5_n_0 -pin riscv|mem_Zero_i_2 I1 -pin riscv|mem_Zero_i_5 O
netloc riscv|mem_Zero_i_5_n_0 1 28 1 30810 16228n
load net riscv|mem_Zero_i_6_n_0 -attr @name mem_Zero_i_6_n_0 -pin riscv|mem_Zero_i_2 I2 -pin riscv|mem_Zero_i_6 O
netloc riscv|mem_Zero_i_6_n_0 1 28 1 30590 17128n
load net riscv|mem_Zero_i_7_n_0 -attr @name mem_Zero_i_7_n_0 -pin riscv|mem_Zero_i_3 I0 -pin riscv|mem_Zero_i_7 O
netloc riscv|mem_Zero_i_7_n_0 1 28 1 30550 23108n
load net riscv|mem_Zero_i_8_n_0 -attr @name mem_Zero_i_8_n_0 -pin riscv|mem_Zero_i_3 I4 -pin riscv|mem_Zero_i_8 O
netloc riscv|mem_Zero_i_8_n_0 1 28 1 31010 23648n
load net riscv|mem_aluResult[0]_i_10_n_0 -attr @name mem_aluResult[0]_i_10_n_0 -pin riscv|mem_aluResult[0]_i_10 O -pin riscv|mem_aluResult[0]_i_5 I1
netloc riscv|mem_aluResult[0]_i_10_n_0 1 28 1 30730 20788n
load net riscv|mem_aluResult[0]_i_11_n_0 -attr @name mem_aluResult[0]_i_11_n_0 -pin riscv|mem_aluResult[0]_i_11 O -pin riscv|mem_aluResult[0]_i_5 I2
netloc riscv|mem_aluResult[0]_i_11_n_0 1 28 1 30710 21008n
load net riscv|mem_aluResult[0]_i_12_n_0 -attr @name mem_aluResult[0]_i_12_n_0 -pin riscv|mem_aluResult[0]_i_10 I2 -pin riscv|mem_aluResult[0]_i_12 O
netloc riscv|mem_aluResult[0]_i_12_n_0 1 27 1 29700 20788n
load net riscv|mem_aluResult[0]_i_13_n_0 -attr @name mem_aluResult[0]_i_13_n_0 -pin riscv|mem_aluResult[0]_i_11 I0 -pin riscv|mem_aluResult[0]_i_13 O
netloc riscv|mem_aluResult[0]_i_13_n_0 1 27 1 29480 20968n
load net riscv|mem_aluResult[0]_i_2_n_0 -attr @name mem_aluResult[0]_i_2_n_0 -pin riscv|mem_aluResult[0]_i_1 I0 -pin riscv|mem_aluResult[0]_i_2 O
netloc riscv|mem_aluResult[0]_i_2_n_0 1 29 1 31470 18928n
load net riscv|mem_aluResult[0]_i_3_n_0 -attr @name mem_aluResult[0]_i_3_n_0 -pin riscv|mem_aluResult[0]_i_1 I1 -pin riscv|mem_aluResult[0]_i_3 O
netloc riscv|mem_aluResult[0]_i_3_n_0 1 29 1 31490 18948n
load net riscv|mem_aluResult[0]_i_4_n_0 -attr @name mem_aluResult[0]_i_4_n_0 -pin riscv|mem_aluResult[0]_i_1 I2 -pin riscv|mem_aluResult[0]_i_4 O
netloc riscv|mem_aluResult[0]_i_4_n_0 1 29 1 31510 18968n
load net riscv|mem_aluResult[0]_i_5_n_0 -attr @name mem_aluResult[0]_i_5_n_0 -pin riscv|mem_aluResult[0]_i_1 I3 -pin riscv|mem_aluResult[0]_i_5 O
netloc riscv|mem_aluResult[0]_i_5_n_0 1 29 1 31530 18988n
load net riscv|mem_aluResult[0]_i_6_n_0 -attr @name mem_aluResult[0]_i_6_n_0 -pin riscv|mem_aluResult[0]_i_1 I4 -pin riscv|mem_aluResult[0]_i_6 O -pin riscv|mem_aluResult[10]_i_3 I0 -pin riscv|mem_aluResult[11]_i_4 I0 -pin riscv|mem_aluResult[12]_i_6 I4 -pin riscv|mem_aluResult[13]_i_6 I4 -pin riscv|mem_aluResult[14]_i_7 I4 -pin riscv|mem_aluResult[15]_i_4 I0 -pin riscv|mem_aluResult[25]_i_3 I2 -pin riscv|mem_aluResult[26]_i_4 I2 -pin riscv|mem_aluResult[28]_i_4 I2 -pin riscv|mem_aluResult[29]_i_4 I2 -pin riscv|mem_aluResult[2]_i_4 I4 -pin riscv|mem_aluResult[30]_i_7 I2 -pin riscv|mem_aluResult[3]_i_8 I4 -pin riscv|mem_aluResult[4]_i_3 I0 -pin riscv|mem_aluResult[5]_i_3 I0 -pin riscv|mem_aluResult[6]_i_3 I0 -pin riscv|mem_aluResult[7]_i_3 I0 -pin riscv|mem_aluResult[8]_i_3 I0 -pin riscv|mem_aluResult[9]_i_3 I0
netloc riscv|mem_aluResult[0]_i_6_n_0 1 8 22 6720 17238 6960 14278 NJ 14278 NJ 14278 NJ 14278 NJ 14278 NJ 14278 10880 14458 NJ 14458 13740 14128 15660 12198 16220 9328 NJ 9328 NJ 9328 NJ 9328 NJ 9328 23910 9028 25430 8708 NJ 8708 29560 18888 NJ 18888 31370
load net riscv|mem_aluResult[0]_i_7_n_0 -attr @name mem_aluResult[0]_i_7_n_0 -pin riscv|mem_aluResult[0]_i_3 I4 -pin riscv|mem_aluResult[0]_i_7 O -pin riscv|mem_aluResult[31]_i_9 I2
netloc riscv|mem_aluResult[0]_i_7_n_0 1 26 3 27890 19628 NJ 19628 NJ
load net riscv|mem_aluResult[0]_i_8_n_0 -attr @name mem_aluResult[0]_i_8_n_0 -pin riscv|mem_aluResult[0]_i_3 I5 -pin riscv|mem_aluResult[0]_i_8 O
netloc riscv|mem_aluResult[0]_i_8_n_0 1 28 1 30710 19648n
load net riscv|mem_aluResult[0]_i_9_n_0 -attr @name mem_aluResult[0]_i_9_n_0 -pin riscv|mem_aluResult[0]_i_4 I5 -pin riscv|mem_aluResult[0]_i_9 O
netloc riscv|mem_aluResult[0]_i_9_n_0 1 28 1 30770 20288n
load net riscv|mem_aluResult[10]_i_2_n_0 -attr @name mem_aluResult[10]_i_2_n_0 -pin riscv|mem_aluResult[10]_i_1 I2 -pin riscv|mem_aluResult[10]_i_2 O -pin riscv|mem_aluResult[9]_i_1 I0
netloc riscv|mem_aluResult[10]_i_2_n_0 1 16 3 13040 11798 NJ 11798 14860
load net riscv|mem_aluResult[10]_i_3_n_0 -attr @name mem_aluResult[10]_i_3_n_0 -pin riscv|mem_aluResult[10]_i_1 I4 -pin riscv|mem_aluResult[10]_i_3 O
netloc riscv|mem_aluResult[10]_i_3_n_0 1 16 1 11920 12758n
load net riscv|mem_aluResult[10]_i_4_n_0 -attr @name mem_aluResult[10]_i_4_n_0 -pin riscv|mem_aluResult[10]_i_1 I5 -pin riscv|mem_aluResult[10]_i_4 O
netloc riscv|mem_aluResult[10]_i_4_n_0 1 16 1 12080 12778n
load net riscv|mem_aluResult[10]_i_5_n_0 -attr @name mem_aluResult[10]_i_5_n_0 -pin riscv|mem_aluResult[10]_i_2 I4 -pin riscv|mem_aluResult[10]_i_5 O -pin riscv|mem_aluResult[4]_i_2 I1 -pin riscv|mem_aluResult[6]_i_2 I0 -pin riscv|mem_aluResult[8]_i_2 I5
netloc riscv|mem_aluResult[10]_i_5_n_0 1 17 10 14440 9348 NJ 9348 NJ 9348 NJ 9348 NJ 9348 NJ 9348 NJ 9348 NJ 9348 25510 9088 NJ
load net riscv|mem_aluResult[10]_i_6_n_0 -attr @name mem_aluResult[10]_i_6_n_0 -pin riscv|mem_aluResult[10]_i_4 I0 -pin riscv|mem_aluResult[10]_i_6 O
netloc riscv|mem_aluResult[10]_i_6_n_0 1 15 1 10820 13458n
load net riscv|mem_aluResult[10]_i_7_n_0 -attr @name mem_aluResult[10]_i_7_n_0 -pin riscv|mem_aluResult[10]_i_4 I4 -pin riscv|mem_aluResult[10]_i_7 O -pin riscv|mem_aluResult[9]_i_4 I2
netloc riscv|mem_aluResult[10]_i_7_n_0 1 15 3 11560 13418 12160J 13298 13600
load net riscv|mem_aluResult[10]_i_8_n_0 -attr @name mem_aluResult[10]_i_8_n_0 -pin riscv|mem_aluResult[10]_i_7 I0 -pin riscv|mem_aluResult[10]_i_8 O
netloc riscv|mem_aluResult[10]_i_8_n_0 1 16 1 12240 13398n
load net riscv|mem_aluResult[11]_i_10_n_0 -attr @name mem_aluResult[11]_i_10_n_0 -pin riscv|mem_aluResult[10]_i_3 I3 -pin riscv|mem_aluResult[11]_i_10 O -pin riscv|mem_aluResult[11]_i_4 I3 -pin riscv|mem_aluResult[4]_i_3 I3 -pin riscv|mem_aluResult[5]_i_3 I3 -pin riscv|mem_aluResult[6]_i_3 I3 -pin riscv|mem_aluResult[7]_i_3 I3 -pin riscv|mem_aluResult[8]_i_3 I3 -pin riscv|mem_aluResult[9]_i_3 I3
netloc riscv|mem_aluResult[11]_i_10_n_0 1 15 11 11560 12998 11960J 12898 13360 12958 14800 7928 NJ 7928 NJ 7928 NJ 7928 NJ 7928 NJ 7928 NJ 7928 25470
load net riscv|mem_aluResult[11]_i_12_n_0 -attr @name mem_aluResult[11]_i_12_n_0 -pin riscv|mem_aluResult[11]_i_12 O -pin riscv|mem_aluResult[11]_i_5 I0
netloc riscv|mem_aluResult[11]_i_12_n_0 1 15 1 10800 13298n
load net riscv|mem_aluResult[11]_i_13_n_0 -attr @name mem_aluResult[11]_i_13_n_0 -pin riscv|mem_aluResult[10]_i_4 I2 -pin riscv|mem_aluResult[11]_i_13 O -pin riscv|mem_aluResult[11]_i_5 I4
netloc riscv|mem_aluResult[11]_i_13_n_0 1 15 1 10900 13378n
load net riscv|mem_aluResult[11]_i_15_n_0 -attr @name mem_aluResult[11]_i_15_n_0 -pin riscv|mem_aluResult[11]_i_13 I0 -pin riscv|mem_aluResult[11]_i_15 O
netloc riscv|mem_aluResult[11]_i_15_n_0 1 14 1 9790 14798n
load net riscv|mem_aluResult[11]_i_16_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[11]_i_16_n_0 -pin riscv|mem_aluResult[11]_i_16 O -pin riscv|mem_aluResult_reg[11]_i_14 S[3]
load net riscv|mem_aluResult[11]_i_17_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[11]_i_17_n_0 -pin riscv|mem_aluResult[11]_i_17 O -pin riscv|mem_aluResult_reg[11]_i_14 S[2]
load net riscv|mem_aluResult[11]_i_18_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[11]_i_18_n_0 -pin riscv|mem_aluResult[11]_i_18 O -pin riscv|mem_aluResult_reg[11]_i_14 S[1]
load net riscv|mem_aluResult[11]_i_19_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[11]_i_19_n_0 -pin riscv|mem_aluResult[11]_i_19 O -pin riscv|mem_aluResult_reg[11]_i_14 S[0]
load net riscv|mem_aluResult[11]_i_2_n_0 -attr @name mem_aluResult[11]_i_2_n_0 -pin riscv|mem_aluResult[11]_i_1 I0 -pin riscv|mem_aluResult[11]_i_2 O -pin riscv|mem_aluResult[12]_i_2 I3
netloc riscv|mem_aluResult[11]_i_2_n_0 1 16 5 13020 11028 NJ 11028 NJ 11028 NJ 11028 18260
load net riscv|mem_aluResult[11]_i_3_n_0 -attr @name mem_aluResult[11]_i_3_n_0 -pin riscv|mem_aluResult[10]_i_1 I0 -pin riscv|mem_aluResult[11]_i_1 I2 -pin riscv|mem_aluResult[11]_i_3 O
netloc riscv|mem_aluResult[11]_i_3_n_0 1 16 1 12860 11758n
load net riscv|mem_aluResult[11]_i_4_n_0 -attr @name mem_aluResult[11]_i_4_n_0 -pin riscv|mem_aluResult[11]_i_1 I4 -pin riscv|mem_aluResult[11]_i_4 O
netloc riscv|mem_aluResult[11]_i_4_n_0 1 16 1 11880 12158n
load net riscv|mem_aluResult[11]_i_5_n_0 -attr @name mem_aluResult[11]_i_5_n_0 -pin riscv|mem_aluResult[11]_i_1 I5 -pin riscv|mem_aluResult[11]_i_5 O
netloc riscv|mem_aluResult[11]_i_5_n_0 1 16 1 11940 12178n
load net riscv|mem_aluResult[11]_i_6_n_0 -attr @name mem_aluResult[11]_i_6_n_0 -pin riscv|mem_aluResult[10]_i_2 I5 -pin riscv|mem_aluResult[11]_i_2 I4 -pin riscv|mem_aluResult[11]_i_6 O -pin riscv|mem_aluResult[6]_i_2 I1 -pin riscv|mem_aluResult[8]_i_2 I0
netloc riscv|mem_aluResult[11]_i_6_n_0 1 17 9 14460 11298 NJ 11298 16460 5828 NJ 5828 NJ 5828 NJ 5828 NJ 5828 NJ 5828 25290
load net riscv|mem_aluResult[11]_i_7_n_0 -attr @name mem_aluResult[11]_i_7_n_0 -pin riscv|mem_aluResult[10]_i_2 I0 -pin riscv|mem_aluResult[11]_i_2 I5 -pin riscv|mem_aluResult[11]_i_7 O -pin riscv|mem_aluResult[14]_i_8 I4 -pin riscv|mem_aluResult[8]_i_2 I1
netloc riscv|mem_aluResult[11]_i_7_n_0 1 17 9 14480 11598 NJ 11598 16140 7568 NJ 7568 NJ 7568 NJ 7568 NJ 7568 NJ 7568 26170
load net riscv|mem_aluResult[11]_i_8_n_0 -attr @name mem_aluResult[11]_i_8_n_0 -pin riscv|mem_aluResult[11]_i_3 I4 -pin riscv|mem_aluResult[11]_i_8 O -pin riscv|mem_aluResult[5]_i_2 I1 -pin riscv|mem_aluResult[7]_i_2 I0 -pin riscv|mem_aluResult[9]_i_2 I5
netloc riscv|mem_aluResult[11]_i_8_n_0 1 15 11 11520 11378 NJ 11378 NJ 11378 15740 7748 NJ 7748 NJ 7748 NJ 7748 NJ 7748 NJ 7748 NJ 7748 25410
load net riscv|mem_aluResult[11]_i_9_n_0 -attr @name mem_aluResult[11]_i_9_n_0 -pin riscv|mem_aluResult[11]_i_3 I5 -pin riscv|mem_aluResult[11]_i_9 O -pin riscv|mem_aluResult[13]_i_7 I4 -pin riscv|mem_aluResult[7]_i_2 I1 -pin riscv|mem_aluResult[9]_i_2 I0
netloc riscv|mem_aluResult[11]_i_9_n_0 1 15 11 11560 11418 NJ 11418 NJ 11418 14900 11558 16600 6788 NJ 6788 NJ 6788 NJ 6788 NJ 6788 24370J 6928 NJ
load net riscv|mem_aluResult[12]_i_2_n_0 -attr @name mem_aluResult[12]_i_2_n_0 -pin riscv|mem_aluResult[12]_i_1 I0 -pin riscv|mem_aluResult[12]_i_2 O
netloc riscv|mem_aluResult[12]_i_2_n_0 1 21 1 N 12008
load net riscv|mem_aluResult[12]_i_3_n_0 -attr @name mem_aluResult[12]_i_3_n_0 -pin riscv|mem_aluResult[11]_i_5 I2 -pin riscv|mem_aluResult[12]_i_1 I1 -pin riscv|mem_aluResult[12]_i_3 O
netloc riscv|mem_aluResult[12]_i_3_n_0 1 15 7 11500 11858 NJ 11858 NJ 11858 NJ 11858 16540J 11678 18600J 12328 19000
load net riscv|mem_aluResult[12]_i_4_n_0 -attr @name mem_aluResult[12]_i_4_n_0 -pin riscv|mem_aluResult[12]_i_1 I5 -pin riscv|mem_aluResult[12]_i_4 O
netloc riscv|mem_aluResult[12]_i_4_n_0 1 21 1 19080 12108n
load net riscv|mem_aluResult[12]_i_5_n_0 -attr @name mem_aluResult[12]_i_5_n_0 -pin riscv|mem_aluResult[12]_i_2 I0 -pin riscv|mem_aluResult[12]_i_5 O
netloc riscv|mem_aluResult[12]_i_5_n_0 1 20 1 18620 11838n
load net riscv|mem_aluResult[12]_i_6_n_0 -attr @name mem_aluResult[12]_i_6_n_0 -pin riscv|mem_aluResult[12]_i_2 I1 -pin riscv|mem_aluResult[12]_i_6 O
netloc riscv|mem_aluResult[12]_i_6_n_0 1 20 1 17800 11988n
load net riscv|mem_aluResult[12]_i_7_n_0 -attr @name mem_aluResult[12]_i_7_n_0 -pin riscv|mem_aluResult[12]_i_3 I0 -pin riscv|mem_aluResult[12]_i_7 O
netloc riscv|mem_aluResult[12]_i_7_n_0 1 20 1 17820 12188n
load net riscv|mem_aluResult[13]_i_2_n_0 -attr @name mem_aluResult[13]_i_2_n_0 -pin riscv|mem_aluResult[13]_i_1 I0 -pin riscv|mem_aluResult[13]_i_2 O
netloc riscv|mem_aluResult[13]_i_2_n_0 1 19 1 16240 11088n
load net riscv|mem_aluResult[13]_i_3_n_0 -attr @name mem_aluResult[13]_i_3_n_0 -pin riscv|mem_aluResult[12]_i_1 I3 -pin riscv|mem_aluResult[13]_i_1 I1 -pin riscv|mem_aluResult[13]_i_3 O
netloc riscv|mem_aluResult[13]_i_3_n_0 1 19 3 17440 11048 NJ 11048 18980
load net riscv|mem_aluResult[13]_i_4_n_0 -attr @name mem_aluResult[13]_i_4_n_0 -pin riscv|mem_aluResult[13]_i_1 I5 -pin riscv|mem_aluResult[13]_i_4 O
netloc riscv|mem_aluResult[13]_i_4_n_0 1 19 1 16640 11188n
load net riscv|mem_aluResult[13]_i_5_n_0 -attr @name mem_aluResult[13]_i_5_n_0 -pin riscv|mem_aluResult[13]_i_2 I0 -pin riscv|mem_aluResult[13]_i_5 O
netloc riscv|mem_aluResult[13]_i_5_n_0 1 18 1 15120 12318n
load net riscv|mem_aluResult[13]_i_6_n_0 -attr @name mem_aluResult[13]_i_6_n_0 -pin riscv|mem_aluResult[13]_i_2 I1 -pin riscv|mem_aluResult[13]_i_6 O
netloc riscv|mem_aluResult[13]_i_6_n_0 1 18 1 15160 12338n
load net riscv|mem_aluResult[13]_i_7_n_0 -attr @name mem_aluResult[13]_i_7_n_0 -pin riscv|mem_aluResult[12]_i_2 I5 -pin riscv|mem_aluResult[13]_i_2 I3 -pin riscv|mem_aluResult[13]_i_7 O
netloc riscv|mem_aluResult[13]_i_7_n_0 1 18 3 15860 12458 NJ 12458 17780
load net riscv|mem_aluResult[13]_i_8_n_0 -attr @name mem_aluResult[13]_i_8_n_0 -pin riscv|mem_aluResult[13]_i_3 I0 -pin riscv|mem_aluResult[13]_i_8 O
netloc riscv|mem_aluResult[13]_i_8_n_0 1 20 1 17800 12198n
load net riscv|mem_aluResult[14]_i_10_n_0 -attr @name mem_aluResult[14]_i_10_n_0 -pin riscv|mem_aluResult[11]_i_13 I4 -pin riscv|mem_aluResult[13]_i_8 I3 -pin riscv|mem_aluResult[14]_i_10 O -pin riscv|mem_aluResult[14]_i_4 I1 -pin riscv|mem_aluResult[9]_i_8 I2
netloc riscv|mem_aluResult[14]_i_10_n_0 1 8 12 6720 15118 NJ 15118 NJ 15118 NJ 15118 NJ 15118 NJ 15118 9810 14938 NJ 14938 12120 12218 NJ 12218 NJ 12218 NJ
load net riscv|mem_aluResult[14]_i_2_n_0 -attr @name mem_aluResult[14]_i_2_n_0 -pin riscv|mem_aluResult[14]_i_1 I0 -pin riscv|mem_aluResult[14]_i_2 O
netloc riscv|mem_aluResult[14]_i_2_n_0 1 10 1 N 17048
load net riscv|mem_aluResult[14]_i_3_n_0 -attr @name mem_aluResult[14]_i_3_n_0 -pin riscv|mem_aluResult[13]_i_1 I3 -pin riscv|mem_aluResult[14]_i_1 I1 -pin riscv|mem_aluResult[14]_i_3 O
netloc riscv|mem_aluResult[14]_i_3_n_0 1 10 10 7980 11228 NJ 11228 NJ 11228 NJ 11228 NJ 11228 NJ 11228 NJ 11228 NJ 11228 NJ 11228 16520
load net riscv|mem_aluResult[14]_i_4_n_0 -attr @name mem_aluResult[14]_i_4_n_0 -pin riscv|mem_aluResult[14]_i_1 I3 -pin riscv|mem_aluResult[14]_i_4 O -pin riscv|mem_aluResult[15]_i_5 I4
netloc riscv|mem_aluResult[14]_i_4_n_0 1 9 2 7280 17148 7740J
load net riscv|mem_aluResult[14]_i_5_n_0 -attr @name mem_aluResult[14]_i_5_n_0 -pin riscv|mem_aluResult[14]_i_1 I5 -pin riscv|mem_aluResult[14]_i_5 O
netloc riscv|mem_aluResult[14]_i_5_n_0 1 10 1 7800 17148n
load net riscv|mem_aluResult[14]_i_6_n_0 -attr @name mem_aluResult[14]_i_6_n_0 -pin riscv|mem_aluResult[14]_i_2 I0 -pin riscv|mem_aluResult[14]_i_6 O
netloc riscv|mem_aluResult[14]_i_6_n_0 1 9 1 7000 16948n
load net riscv|mem_aluResult[14]_i_7_n_0 -attr @name mem_aluResult[14]_i_7_n_0 -pin riscv|mem_aluResult[14]_i_2 I1 -pin riscv|mem_aluResult[14]_i_7 O
netloc riscv|mem_aluResult[14]_i_7_n_0 1 9 1 7140 17028n
load net riscv|mem_aluResult[14]_i_8_n_0 -attr @name mem_aluResult[14]_i_8_n_0 -pin riscv|mem_aluResult[13]_i_2 I5 -pin riscv|mem_aluResult[14]_i_2 I3 -pin riscv|mem_aluResult[14]_i_8 O
netloc riscv|mem_aluResult[14]_i_8_n_0 1 9 10 7460 14258 NJ 14258 NJ 14258 NJ 14258 NJ 14258 9650J 13598 10640J 14478 11900J 14538 13420J 14918 14860
load net riscv|mem_aluResult[14]_i_9_n_0 -attr @name mem_aluResult[14]_i_9_n_0 -pin riscv|mem_aluResult[14]_i_3 I0 -pin riscv|mem_aluResult[14]_i_9 O
netloc riscv|mem_aluResult[14]_i_9_n_0 1 18 1 14840 12588n
load net riscv|mem_aluResult[15]_i_10_n_0 -attr @name mem_aluResult[15]_i_10_n_0 -pin riscv|mem_aluResult[15]_i_10 O -pin riscv|mem_aluResult[15]_i_5 I0
netloc riscv|mem_aluResult[15]_i_10_n_0 1 9 1 N 17668
load net riscv|mem_aluResult[15]_i_12_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[15]_i_12_n_0 -pin riscv|mem_aluResult[15]_i_12 O -pin riscv|mem_aluResult_reg[15]_i_11 S[3]
load net riscv|mem_aluResult[15]_i_13_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[15]_i_13_n_0 -pin riscv|mem_aluResult[15]_i_13 O -pin riscv|mem_aluResult_reg[15]_i_11 S[2]
load net riscv|mem_aluResult[15]_i_14_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[15]_i_14_n_0 -pin riscv|mem_aluResult[15]_i_14 O -pin riscv|mem_aluResult_reg[15]_i_11 S[1]
load net riscv|mem_aluResult[15]_i_15_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[15]_i_15_n_0 -pin riscv|mem_aluResult[15]_i_15 O -pin riscv|mem_aluResult_reg[15]_i_11 S[0]
load net riscv|mem_aluResult[15]_i_2_n_0 -attr @name mem_aluResult[15]_i_2_n_0 -pin riscv|mem_aluResult[15]_i_1 I0 -pin riscv|mem_aluResult[15]_i_2 O -pin riscv|mem_aluResult[16]_i_2 I0
netloc riscv|mem_aluResult[15]_i_2_n_0 1 10 9 7980 17268 NJ 17268 NJ 17268 NJ 17268 NJ 17268 NJ 17268 12080J 17848 13360J 17648 14880
load net riscv|mem_aluResult[15]_i_3_n_0 -attr @name mem_aluResult[15]_i_3_n_0 -pin riscv|mem_aluResult[14]_i_2 I5 -pin riscv|mem_aluResult[15]_i_1 I2 -pin riscv|mem_aluResult[15]_i_3 O
netloc riscv|mem_aluResult[15]_i_3_n_0 1 9 2 7520 16968 7940
load net riscv|mem_aluResult[15]_i_4_n_0 -attr @name mem_aluResult[15]_i_4_n_0 -pin riscv|mem_aluResult[15]_i_1 I4 -pin riscv|mem_aluResult[15]_i_4 O
netloc riscv|mem_aluResult[15]_i_4_n_0 1 10 1 N 17428
load net riscv|mem_aluResult[15]_i_5_n_0 -attr @name mem_aluResult[15]_i_5_n_0 -pin riscv|mem_aluResult[15]_i_1 I5 -pin riscv|mem_aluResult[15]_i_5 O
netloc riscv|mem_aluResult[15]_i_5_n_0 1 10 1 7880 17448n
load net riscv|mem_aluResult[15]_i_6_n_0 -attr @name mem_aluResult[15]_i_6_n_0 -pin riscv|mem_aluResult[10]_i_2 I1 -pin riscv|mem_aluResult[11]_i_2 I0 -pin riscv|mem_aluResult[14]_i_8 I5 -pin riscv|mem_aluResult[15]_i_2 I4 -pin riscv|mem_aluResult[15]_i_6 O
netloc riscv|mem_aluResult[15]_i_6_n_0 1 17 3 13480 11618 NJ 11618 16480
load net riscv|mem_aluResult[15]_i_7_n_0 -attr @name mem_aluResult[15]_i_7_n_0 -pin riscv|mem_aluResult[11]_i_3 I0 -pin riscv|mem_aluResult[13]_i_7 I5 -pin riscv|mem_aluResult[15]_i_3 I4 -pin riscv|mem_aluResult[15]_i_7 O -pin riscv|mem_aluResult[9]_i_2 I1
netloc riscv|mem_aluResult[15]_i_7_n_0 1 9 11 7520 13298 NJ 13298 NJ 13298 NJ 13298 NJ 13298 NJ 13298 10700 11398 NJ 11398 13480J 11358 14940 11578 NJ
load net riscv|mem_aluResult[15]_i_9_n_0 -attr @name mem_aluResult[15]_i_9_n_0 -pin riscv|mem_aluResult[15]_i_4 I5 -pin riscv|mem_aluResult[15]_i_9 O
netloc riscv|mem_aluResult[15]_i_9_n_0 1 9 1 N 17488
load net riscv|mem_aluResult[16]_i_10_n_0 -attr @name mem_aluResult[16]_i_10_n_0 -pin riscv|mem_aluResult[16]_i_10 O -pin riscv|mem_aluResult[16]_i_5 I1
netloc riscv|mem_aluResult[16]_i_10_n_0 1 18 1 15440 14928n
load net riscv|mem_aluResult[16]_i_2_n_0 -attr @name mem_aluResult[16]_i_2_n_0 -pin riscv|mem_aluResult[16]_i_1 I0 -pin riscv|mem_aluResult[16]_i_2 O
netloc riscv|mem_aluResult[16]_i_2_n_0 1 19 1 16580 12558n
load net riscv|mem_aluResult[16]_i_3_n_0 -attr @name mem_aluResult[16]_i_3_n_0 -pin riscv|mem_aluResult[16]_i_1 I1 -pin riscv|mem_aluResult[16]_i_3 O -pin riscv|mem_aluResult[17]_i_2 I0
netloc riscv|mem_aluResult[16]_i_3_n_0 1 19 2 17440 12698 17800
load net riscv|mem_aluResult[16]_i_4_n_0 -attr @name mem_aluResult[16]_i_4_n_0 -pin riscv|mem_aluResult[15]_i_5 I2 -pin riscv|mem_aluResult[16]_i_1 I3 -pin riscv|mem_aluResult[16]_i_4 O
netloc riscv|mem_aluResult[16]_i_4_n_0 1 9 11 7520 17788 7960J 17888 NJ 17888 NJ 17888 NJ 17888 NJ 17888 NJ 17888 12020J 18178 NJ 18178 14900J 17908 16220
load net riscv|mem_aluResult[16]_i_5_n_0 -attr @name mem_aluResult[16]_i_5_n_0 -pin riscv|mem_aluResult[16]_i_1 I5 -pin riscv|mem_aluResult[16]_i_5 O
netloc riscv|mem_aluResult[16]_i_5_n_0 1 19 1 16660 12658n
load net riscv|mem_aluResult[16]_i_6_n_0 -attr @name mem_aluResult[16]_i_6_n_0 -pin riscv|mem_aluResult[11]_i_3 I1 -pin riscv|mem_aluResult[13]_i_7 I0 -pin riscv|mem_aluResult[15]_i_3 I5 -pin riscv|mem_aluResult[16]_i_3 I4 -pin riscv|mem_aluResult[16]_i_6 O
netloc riscv|mem_aluResult[16]_i_6_n_0 1 9 11 7500 12838 NJ 12838 NJ 12838 NJ 12838 NJ 12838 NJ 12838 10680 11318 NJ 11318 NJ 11318 NJ 11318 16440
load net riscv|mem_aluResult[16]_i_7_n_0 -attr @name mem_aluResult[16]_i_7_n_0 -pin riscv|mem_aluResult[13]_i_7 I1 -pin riscv|mem_aluResult[15]_i_3 I0 -pin riscv|mem_aluResult[16]_i_3 I5 -pin riscv|mem_aluResult[16]_i_7 O -pin riscv|mem_aluResult[19]_i_6 I4
netloc riscv|mem_aluResult[16]_i_7_n_0 1 9 11 7460 13318 NJ 13318 NJ 13318 NJ 13318 NJ 13318 9550 11338 NJ 11338 NJ 11338 NJ 11338 NJ 11338 17300
load net riscv|mem_aluResult[16]_i_8_n_0 -attr @name mem_aluResult[16]_i_8_n_0 -pin riscv|mem_aluResult[12]_i_3 I2 -pin riscv|mem_aluResult[14]_i_3 I4 -pin riscv|mem_aluResult[16]_i_4 I0 -pin riscv|mem_aluResult[16]_i_8 O -pin riscv|mem_aluResult[18]_i_8 I1
netloc riscv|mem_aluResult[16]_i_8_n_0 1 18 3 15840 12878 16140 12978 17900
load net riscv|mem_aluResult[16]_i_9_n_0 -attr @name mem_aluResult[16]_i_9_n_0 -pin riscv|mem_aluResult[10]_i_7 I2 -pin riscv|mem_aluResult[12]_i_3 I4 -pin riscv|mem_aluResult[14]_i_9 I3 -pin riscv|mem_aluResult[16]_i_4 I1 -pin riscv|mem_aluResult[16]_i_9 O
netloc riscv|mem_aluResult[16]_i_9_n_0 1 16 5 12840 12618 13600 12508 14920 12278 NJ 12278 17860J
load net riscv|mem_aluResult[17]_i_2_n_0 -attr @name mem_aluResult[17]_i_2_n_0 -pin riscv|mem_aluResult[17]_i_1 I0 -pin riscv|mem_aluResult[17]_i_2 O
netloc riscv|mem_aluResult[17]_i_2_n_0 1 21 1 N 12808
load net riscv|mem_aluResult[17]_i_3_n_0 -attr @name mem_aluResult[17]_i_3_n_0 -pin riscv|mem_aluResult[16]_i_2 I2 -pin riscv|mem_aluResult[17]_i_1 I3 -pin riscv|mem_aluResult[17]_i_3 O
netloc riscv|mem_aluResult[17]_i_3_n_0 1 18 4 15860 12678 16620J 12518 18420J 12908 19000
load net riscv|mem_aluResult[17]_i_4_n_0 -attr @name mem_aluResult[17]_i_4_n_0 -pin riscv|mem_aluResult[17]_i_1 I5 -pin riscv|mem_aluResult[17]_i_4 O
netloc riscv|mem_aluResult[17]_i_4_n_0 1 21 1 19080 12908n
load net riscv|mem_aluResult[17]_i_5_n_0 -attr @name mem_aluResult[17]_i_5_n_0 -pin riscv|mem_aluResult[11]_i_13 I2 -pin riscv|mem_aluResult[13]_i_3 I4 -pin riscv|mem_aluResult[14]_i_4 I0 -pin riscv|mem_aluResult[17]_i_3 I1 -pin riscv|mem_aluResult[17]_i_5 O
netloc riscv|mem_aluResult[17]_i_5_n_0 1 8 13 6700 15098 NJ 15098 NJ 15098 NJ 15098 NJ 15098 NJ 15098 9730 14718 NJ 14718 12700J 14878 14080J 15608 15420J 15448 17040J 15428 18000
load net riscv|mem_aluResult[17]_i_7_n_0 -attr @name mem_aluResult[17]_i_7_n_0 -pin riscv|mem_aluResult[17]_i_4 I5 -pin riscv|mem_aluResult[17]_i_7 O
netloc riscv|mem_aluResult[17]_i_7_n_0 1 20 1 18400 18238n
load net riscv|mem_aluResult[18]_i_2_n_0 -attr @name mem_aluResult[18]_i_2_n_0 -pin riscv|mem_aluResult[17]_i_1 I1 -pin riscv|mem_aluResult[18]_i_1 I0 -pin riscv|mem_aluResult[18]_i_2 O
netloc riscv|mem_aluResult[18]_i_2_n_0 1 21 1 18980 12828n
load net riscv|mem_aluResult[18]_i_3_n_0 -attr @name mem_aluResult[18]_i_3_n_0 -pin riscv|mem_aluResult[10]_i_1 I3 -pin riscv|mem_aluResult[11]_i_1 I3 -pin riscv|mem_aluResult[12]_i_2 I2 -pin riscv|mem_aluResult[13]_i_2 I2 -pin riscv|mem_aluResult[14]_i_2 I2 -pin riscv|mem_aluResult[15]_i_1 I3 -pin riscv|mem_aluResult[16]_i_2 I1 -pin riscv|mem_aluResult[17]_i_2 I1 -pin riscv|mem_aluResult[18]_i_1 I1 -pin riscv|mem_aluResult[18]_i_3 O -pin riscv|mem_aluResult[19]_i_2 I1 -pin riscv|mem_aluResult[1]_i_1 I3 -pin riscv|mem_aluResult[20]_i_2 I1 -pin riscv|mem_aluResult[21]_i_2 I1 -pin riscv|mem_aluResult[22]_i_2 I1 -pin riscv|mem_aluResult[2]_i_5 I0 -pin riscv|mem_aluResult[31]_i_8 I2 -pin riscv|mem_aluResult[3]_i_2 I5 -pin riscv|mem_aluResult[4]_i_1 I3 -pin riscv|mem_aluResult[5]_i_1 I3 -pin riscv|mem_aluResult[6]_i_1 I3 -pin riscv|mem_aluResult[7]_i_1 I3 -pin riscv|mem_aluResult[8]_i_1 I3 -pin riscv|mem_aluResult[9]_i_1 I3
netloc riscv|mem_aluResult[18]_i_3_n_0 1 1 26 4380 17198 NJ 17198 NJ 17198 NJ 17198 NJ 17198 NJ 17198 NJ 17198 NJ 17198 7000 17348 7960 17288 NJ 17288 NJ 17288 NJ 17288 NJ 17288 10680 13598 12020 11838 NJ 11838 15700 13338 16980 13698 18580 11928 19560 8348 NJ 8348 NJ 8348 NJ 8348 26030 8348 27470
load net riscv|mem_aluResult[18]_i_4_n_0 -attr @name mem_aluResult[18]_i_4_n_0 -pin riscv|mem_aluResult[18]_i_1 I4 -pin riscv|mem_aluResult[18]_i_4 O
netloc riscv|mem_aluResult[18]_i_4_n_0 1 21 1 19000 13128n
load net riscv|mem_aluResult[18]_i_5_n_0 -attr @name mem_aluResult[18]_i_5_n_0 -pin riscv|mem_aluResult[18]_i_1 I5 -pin riscv|mem_aluResult[18]_i_5 O
netloc riscv|mem_aluResult[18]_i_5_n_0 1 21 1 19100 13148n
load net riscv|mem_aluResult[18]_i_6_n_0 -attr @name mem_aluResult[18]_i_6_n_0 -pin riscv|mem_aluResult[18]_i_2 I0 -pin riscv|mem_aluResult[18]_i_6 O
netloc riscv|mem_aluResult[18]_i_6_n_0 1 20 1 17820 13058n
load net riscv|mem_aluResult[18]_i_7_n_0 -attr @name mem_aluResult[18]_i_7_n_0 -pin riscv|mem_aluResult[11]_i_2 I1 -pin riscv|mem_aluResult[14]_i_8 I0 -pin riscv|mem_aluResult[15]_i_2 I5 -pin riscv|mem_aluResult[18]_i_2 I2 -pin riscv|mem_aluResult[18]_i_7 O
netloc riscv|mem_aluResult[18]_i_7_n_0 1 17 4 14540 12178 NJ 12178 17340 12958 17760
load net riscv|mem_aluResult[18]_i_8_n_0 -attr @name mem_aluResult[18]_i_8_n_0 -pin riscv|mem_aluResult[17]_i_2 I2 -pin riscv|mem_aluResult[18]_i_4 I2 -pin riscv|mem_aluResult[18]_i_8 O
netloc riscv|mem_aluResult[18]_i_8_n_0 1 20 1 17920 12828n
load net riscv|mem_aluResult[18]_i_9_n_0 -attr @name mem_aluResult[18]_i_9_n_0 -pin riscv|mem_aluResult[18]_i_5 I1 -pin riscv|mem_aluResult[18]_i_9 O
netloc riscv|mem_aluResult[18]_i_9_n_0 1 20 1 18320 17988n
load net riscv|mem_aluResult[19]_i_11_n_0 -attr @name mem_aluResult[19]_i_11_n_0 -pin riscv|mem_aluResult[19]_i_11 O -pin riscv|mem_aluResult[19]_i_5 I5
netloc riscv|mem_aluResult[19]_i_11_n_0 1 15 1 11120 15848n
load net riscv|mem_aluResult[19]_i_12_n_0 -attr @name mem_aluResult[19]_i_12_n_0 -pin riscv|mem_aluResult[19]_i_12 O -pin riscv|mem_aluResult[19]_i_6 I1
netloc riscv|mem_aluResult[19]_i_12_n_0 1 14 1 9610 13378n
load net riscv|mem_aluResult[19]_i_14_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[19]_i_14_n_0 -pin riscv|mem_aluResult[19]_i_14 O -pin riscv|mem_aluResult_reg[19]_i_13 S[3]
load net riscv|mem_aluResult[19]_i_15_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[19]_i_15_n_0 -pin riscv|mem_aluResult[19]_i_15 O -pin riscv|mem_aluResult_reg[19]_i_13 S[2]
load net riscv|mem_aluResult[19]_i_16_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[19]_i_16_n_0 -pin riscv|mem_aluResult[19]_i_16 O -pin riscv|mem_aluResult_reg[19]_i_13 S[1]
load net riscv|mem_aluResult[19]_i_17_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[19]_i_17_n_0 -pin riscv|mem_aluResult[19]_i_17 O -pin riscv|mem_aluResult_reg[19]_i_13 S[0]
load net riscv|mem_aluResult[19]_i_2_n_0 -attr @name mem_aluResult[19]_i_2_n_0 -pin riscv|mem_aluResult[19]_i_1 I0 -pin riscv|mem_aluResult[19]_i_2 O
netloc riscv|mem_aluResult[19]_i_2_n_0 1 16 1 12180 13658n
load net riscv|mem_aluResult[19]_i_3_n_0 -attr @name mem_aluResult[19]_i_3_n_0 -pin riscv|mem_aluResult[19]_i_1 I1 -pin riscv|mem_aluResult[19]_i_3 O -pin riscv|mem_aluResult[20]_i_2 I0
netloc riscv|mem_aluResult[19]_i_3_n_0 1 16 5 13020 13278 NJ 13278 15540J 13318 16160J 13738 17800
load net riscv|mem_aluResult[19]_i_4_n_0 -attr @name mem_aluResult[19]_i_4_n_0 -pin riscv|mem_aluResult[18]_i_1 I2 -pin riscv|mem_aluResult[19]_i_1 I3 -pin riscv|mem_aluResult[19]_i_4 O
netloc riscv|mem_aluResult[19]_i_4_n_0 1 16 6 12400 12938 13900J 12918 NJ 12918 17240J 12938 18360J 13088 NJ
load net riscv|mem_aluResult[19]_i_5_n_0 -attr @name mem_aluResult[19]_i_5_n_0 -pin riscv|mem_aluResult[19]_i_1 I5 -pin riscv|mem_aluResult[19]_i_5 O
netloc riscv|mem_aluResult[19]_i_5_n_0 1 16 1 12600 14798n
load net riscv|mem_aluResult[19]_i_6_n_0 -attr @name mem_aluResult[19]_i_6_n_0 -pin riscv|mem_aluResult[18]_i_4 I0 -pin riscv|mem_aluResult[19]_i_2 I0 -pin riscv|mem_aluResult[19]_i_6 O
netloc riscv|mem_aluResult[19]_i_6_n_0 1 15 6 11480 13198 12100J 12958 14000J 12938 15620J 13078 16280J 13138 18140J
load net riscv|mem_aluResult[19]_i_7_n_0 -attr @name mem_aluResult[19]_i_7_n_0 -pin riscv|mem_aluResult[19]_i_3 I0 -pin riscv|mem_aluResult[19]_i_7 O
netloc riscv|mem_aluResult[19]_i_7_n_0 1 19 1 16400 13178n
load net riscv|mem_aluResult[19]_i_8_n_0 -attr @name mem_aluResult[19]_i_8_n_0 -pin riscv|mem_aluResult[14]_i_8 I1 -pin riscv|mem_aluResult[15]_i_2 I0 -pin riscv|mem_aluResult[18]_i_2 I4 -pin riscv|mem_aluResult[19]_i_3 I2 -pin riscv|mem_aluResult[19]_i_8 O
netloc riscv|mem_aluResult[19]_i_8_n_0 1 17 4 13820 13218 14980J 13258 16280 13678 NJ
load net riscv|mem_aluResult[19]_i_9_n_0 -attr @name mem_aluResult[19]_i_9_n_0 -pin riscv|mem_aluResult[13]_i_3 I2 -pin riscv|mem_aluResult[14]_i_4 I5 -pin riscv|mem_aluResult[17]_i_3 I0 -pin riscv|mem_aluResult[19]_i_4 I1 -pin riscv|mem_aluResult[19]_i_9 O
netloc riscv|mem_aluResult[19]_i_9_n_0 1 8 13 6720 15608 NJ 15608 NJ 15608 NJ 15608 NJ 15608 NJ 15608 9550J 15788 10760 13018 12040J 12918 13840J 12898 NJ 12898 NJ 12898 18380
load net riscv|mem_aluResult[1]_i_2_n_0 -attr @name mem_aluResult[1]_i_2_n_0 -pin riscv|mem_aluResult[1]_i_1 I0 -pin riscv|mem_aluResult[1]_i_2 O
netloc riscv|mem_aluResult[1]_i_2_n_0 1 26 1 28730 4258n
load net riscv|mem_aluResult[1]_i_3_n_0 -attr @name mem_aluResult[1]_i_3_n_0 -pin riscv|mem_aluResult[1]_i_1 I1 -pin riscv|mem_aluResult[1]_i_3 O
netloc riscv|mem_aluResult[1]_i_3_n_0 1 26 1 28650 4428n
load net riscv|mem_aluResult[1]_i_4_n_0 -attr @name mem_aluResult[1]_i_4_n_0 -pin riscv|mem_aluResult[1]_i_1 I2 -pin riscv|mem_aluResult[1]_i_4 O
netloc riscv|mem_aluResult[1]_i_4_n_0 1 26 1 28610 4598n
load net riscv|mem_aluResult[1]_i_5_n_0 -attr @name mem_aluResult[1]_i_5_n_0 -pin riscv|mem_aluResult[0]_i_5 I3 -pin riscv|mem_aluResult[1]_i_1 I4 -pin riscv|mem_aluResult[1]_i_5 O
netloc riscv|mem_aluResult[1]_i_5_n_0 1 26 3 28530 8368 NJ 8368 30910
load net riscv|mem_aluResult[1]_i_6_n_0 -attr @name mem_aluResult[1]_i_6_n_0 -pin riscv|mem_aluResult[1]_i_1 I5 -pin riscv|mem_aluResult[1]_i_6 O
netloc riscv|mem_aluResult[1]_i_6_n_0 1 26 1 N 5158
load net riscv|mem_aluResult[1]_i_7_n_0 -attr @name mem_aluResult[1]_i_7_n_0 -pin riscv|mem_aluResult[1]_i_3 I1 -pin riscv|mem_aluResult[1]_i_7 O
netloc riscv|mem_aluResult[1]_i_7_n_0 1 25 1 25290 4038n
load net riscv|mem_aluResult[1]_i_8_n_0 -attr @name mem_aluResult[1]_i_8_n_0 -pin riscv|mem_aluResult[1]_i_5 I2 -pin riscv|mem_aluResult[1]_i_8 O
netloc riscv|mem_aluResult[1]_i_8_n_0 1 25 1 26470 4198n
load net riscv|mem_aluResult[1]_i_9_n_0 -attr @name mem_aluResult[1]_i_9_n_0 -pin riscv|mem_aluResult[1]_i_5 I5 -pin riscv|mem_aluResult[1]_i_9 O
netloc riscv|mem_aluResult[1]_i_9_n_0 1 25 1 26450 4348n
load net riscv|mem_aluResult[20]_i_2_n_0 -attr @name mem_aluResult[20]_i_2_n_0 -pin riscv|mem_aluResult[20]_i_1 I0 -pin riscv|mem_aluResult[20]_i_2 O
netloc riscv|mem_aluResult[20]_i_2_n_0 1 21 1 19460 13928n
load net riscv|mem_aluResult[20]_i_3_n_0 -attr @name mem_aluResult[20]_i_3_n_0 -pin riscv|mem_aluResult[20]_i_1 I1 -pin riscv|mem_aluResult[20]_i_3 O -pin riscv|mem_aluResult[21]_i_2 I0
netloc riscv|mem_aluResult[20]_i_3_n_0 1 18 4 15880 13848 16400J 14308 NJ 14308 19420
load net riscv|mem_aluResult[20]_i_4_n_0 -attr @name mem_aluResult[20]_i_4_n_0 -pin riscv|mem_aluResult[19]_i_2 I2 -pin riscv|mem_aluResult[20]_i_1 I3 -pin riscv|mem_aluResult[20]_i_4 O
netloc riscv|mem_aluResult[20]_i_4_n_0 1 15 7 11560 13738 12260J 13578 13520J 14048 15100J 14028 16940J 14508 NJ 14508 18980
load net riscv|mem_aluResult[20]_i_5_n_0 -attr @name mem_aluResult[20]_i_5_n_0 -pin riscv|mem_aluResult[20]_i_1 I5 -pin riscv|mem_aluResult[20]_i_5 O
netloc riscv|mem_aluResult[20]_i_5_n_0 1 21 1 19140 14438n
load net riscv|mem_aluResult[20]_i_6_n_0 -attr @name mem_aluResult[20]_i_6_n_0 -pin riscv|mem_aluResult[20]_i_3 I0 -pin riscv|mem_aluResult[20]_i_6 O
netloc riscv|mem_aluResult[20]_i_6_n_0 1 20 1 N 14188
load net riscv|mem_aluResult[20]_i_7_n_0 -attr @name mem_aluResult[20]_i_7_n_0 -pin riscv|mem_aluResult[15]_i_3 I1 -pin riscv|mem_aluResult[16]_i_3 I0 -pin riscv|mem_aluResult[19]_i_6 I5 -pin riscv|mem_aluResult[20]_i_3 I2 -pin riscv|mem_aluResult[20]_i_7 O
netloc riscv|mem_aluResult[20]_i_7_n_0 1 9 12 7480 13458 NJ 13458 NJ 13458 NJ 13458 NJ 13458 9570 13498 10600J 13778 11900J 13618 13420J 14108 NJ 14108 16580 13758 18020J
load net riscv|mem_aluResult[20]_i_8_n_0 -attr @name mem_aluResult[20]_i_8_n_0 -pin riscv|mem_aluResult[14]_i_3 I2 -pin riscv|mem_aluResult[16]_i_4 I5 -pin riscv|mem_aluResult[18]_i_8 I0 -pin riscv|mem_aluResult[20]_i_4 I1 -pin riscv|mem_aluResult[20]_i_8 O
netloc riscv|mem_aluResult[20]_i_8_n_0 1 18 3 15860 13578 17000 14268 17800
load net riscv|mem_aluResult[20]_i_9_n_0 -attr @name mem_aluResult[20]_i_9_n_0 -pin riscv|mem_aluResult[20]_i_5 I1 -pin riscv|mem_aluResult[20]_i_9 O
netloc riscv|mem_aluResult[20]_i_9_n_0 1 20 1 18300 17808n
load net riscv|mem_aluResult[21]_i_11_n_0 -attr @name mem_aluResult[21]_i_11_n_0 -pin riscv|mem_aluResult[21]_i_11 O -pin riscv|mem_aluResult[21]_i_5 I5
netloc riscv|mem_aluResult[21]_i_11_n_0 1 18 1 15400 14528n
load net riscv|mem_aluResult[21]_i_2_n_0 -attr @name mem_aluResult[21]_i_2_n_0 -pin riscv|mem_aluResult[21]_i_1 I0 -pin riscv|mem_aluResult[21]_i_2 O
netloc riscv|mem_aluResult[21]_i_2_n_0 1 19 1 16180 13218n
load net riscv|mem_aluResult[21]_i_3_n_0 -attr @name mem_aluResult[21]_i_3_n_0 -pin riscv|mem_aluResult[21]_i_1 I1 -pin riscv|mem_aluResult[21]_i_3 O -pin riscv|mem_aluResult[22]_i_2 I0
netloc riscv|mem_aluResult[21]_i_3_n_0 1 1 19 4360 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 NJ 16728 9930J 16638 NJ 16638 12460J 16948 NJ 16948 NJ 16948 16200
load net riscv|mem_aluResult[21]_i_4_n_0 -attr @name mem_aluResult[21]_i_4_n_0 -pin riscv|mem_aluResult[20]_i_2 I2 -pin riscv|mem_aluResult[21]_i_1 I3 -pin riscv|mem_aluResult[21]_i_4 O
netloc riscv|mem_aluResult[21]_i_4_n_0 1 19 2 17440 13718 18060
load net riscv|mem_aluResult[21]_i_5_n_0 -attr @name mem_aluResult[21]_i_5_n_0 -pin riscv|mem_aluResult[21]_i_1 I5 -pin riscv|mem_aluResult[21]_i_5 O
netloc riscv|mem_aluResult[21]_i_5_n_0 1 19 1 16680 13318n
load net riscv|mem_aluResult[21]_i_6_n_0 -attr @name mem_aluResult[21]_i_6_n_0 -pin riscv|mem_aluResult[21]_i_3 I0 -pin riscv|mem_aluResult[21]_i_6 O
netloc riscv|mem_aluResult[21]_i_6_n_0 1 18 1 15360 13438n
load net riscv|mem_aluResult[21]_i_7_n_0 -attr @name mem_aluResult[21]_i_7_n_0 -pin riscv|mem_aluResult[15]_i_2 I1 -pin riscv|mem_aluResult[18]_i_6 I3 -pin riscv|mem_aluResult[19]_i_3 I4 -pin riscv|mem_aluResult[21]_i_3 I2 -pin riscv|mem_aluResult[21]_i_7 O
netloc riscv|mem_aluResult[21]_i_7_n_0 1 17 3 14500 13338 15500 13618 16300
load net riscv|mem_aluResult[21]_i_8_n_0 -attr @name mem_aluResult[21]_i_8_n_0 -pin riscv|mem_aluResult[17]_i_3 I4 -pin riscv|mem_aluResult[19]_i_4 I5 -pin riscv|mem_aluResult[21]_i_4 I0 -pin riscv|mem_aluResult[21]_i_8 O -pin riscv|mem_aluResult[23]_i_7 I1
netloc riscv|mem_aluResult[21]_i_8_n_0 1 8 13 6700 14498 NJ 14498 NJ 14498 NJ 14498 NJ 14498 NJ 14498 NJ 14498 10780 13218 NJ 13218 13800J 13238 15560J 13278 17380 12918 18400J
load net riscv|mem_aluResult[21]_i_9_n_0 -attr @name mem_aluResult[21]_i_9_n_0 -pin riscv|mem_aluResult[14]_i_4 I4 -pin riscv|mem_aluResult[17]_i_3 I5 -pin riscv|mem_aluResult[19]_i_4 I0 -pin riscv|mem_aluResult[21]_i_4 I1 -pin riscv|mem_aluResult[21]_i_9 O
netloc riscv|mem_aluResult[21]_i_9_n_0 1 8 13 6700 15688 NJ 15688 NJ 15688 NJ 15688 NJ 15688 9000J 15748 9530J 15868 10860 13238 NJ 13238 13780J 13258 14920J 13298 16440 13158 17860
load net riscv|mem_aluResult[22]_i_10_n_0 -attr @name mem_aluResult[22]_i_10_n_0 -pin riscv|mem_aluResult[0]_i_7 I1 -pin riscv|mem_aluResult[10]_i_5 I0 -pin riscv|mem_aluResult[10]_i_7 I3 -pin riscv|mem_aluResult[10]_i_8 I4 -pin riscv|mem_aluResult[11]_i_15 I4 -pin riscv|mem_aluResult[11]_i_6 I0 -pin riscv|mem_aluResult[11]_i_7 I0 -pin riscv|mem_aluResult[11]_i_8 I0 -pin riscv|mem_aluResult[11]_i_9 I0 -pin riscv|mem_aluResult[12]_i_7 I4 -pin riscv|mem_aluResult[13]_i_8 I2 -pin riscv|mem_aluResult[14]_i_10 I3 -pin riscv|mem_aluResult[14]_i_9 I2 -pin riscv|mem_aluResult[15]_i_6 I3 -pin riscv|mem_aluResult[15]_i_7 I0 -pin riscv|mem_aluResult[16]_i_6 I3 -pin riscv|mem_aluResult[16]_i_7 I3 -pin riscv|mem_aluResult[16]_i_8 I3 -pin riscv|mem_aluResult[16]_i_9 I3 -pin riscv|mem_aluResult[17]_i_5 I3 -pin riscv|mem_aluResult[18]_i_6 I2 -pin riscv|mem_aluResult[18]_i_7 I3 -pin riscv|mem_aluResult[19]_i_12 I0 -pin riscv|mem_aluResult[19]_i_7 I4 -pin riscv|mem_aluResult[19]_i_8 I3 -pin riscv|mem_aluResult[19]_i_9 I3 -pin riscv|mem_aluResult[1]_i_2 I3 -pin riscv|mem_aluResult[1]_i_9 I4 -pin riscv|mem_aluResult[20]_i_6 I4 -pin riscv|mem_aluResult[20]_i_7 I3 -pin riscv|mem_aluResult[20]_i_8 I3 -pin riscv|mem_aluResult[21]_i_3 I3 -pin riscv|mem_aluResult[21]_i_6 I4 -pin riscv|mem_aluResult[21]_i_7 I3 -pin riscv|mem_aluResult[21]_i_8 I0 -pin riscv|mem_aluResult[21]_i_9 I3 -pin riscv|mem_aluResult[22]_i_10 O -pin riscv|mem_aluResult[22]_i_12 I0 -pin riscv|mem_aluResult[22]_i_13 I3 -pin riscv|mem_aluResult[22]_i_3 I3 -pin riscv|mem_aluResult[22]_i_7 I4 -pin riscv|mem_aluResult[22]_i_9 I3 -pin riscv|mem_aluResult[24]_i_8 I5 -pin riscv|mem_aluResult[25]_i_5 I0 -pin riscv|mem_aluResult[25]_i_8 I0 -pin riscv|mem_aluResult[25]_i_9 I4 -pin riscv|mem_aluResult[26]_i_12 I5 -pin riscv|mem_aluResult[26]_i_6 I0 -pin riscv|mem_aluResult[26]_i_7 I0 -pin riscv|mem_aluResult[27]_i_12 I0 -pin riscv|mem_aluResult[27]_i_9 I5 -pin riscv|mem_aluResult[28]_i_5 I0 -pin riscv|mem_aluResult[28]_i_8 I3 -pin riscv|mem_aluResult[28]_i_9 I4 -pin riscv|mem_aluResult[29]_i_5 I0 -pin riscv|mem_aluResult[29]_i_9 I0 -pin riscv|mem_aluResult[2]_i_15 I4 -pin riscv|mem_aluResult[2]_i_21 I3 -pin riscv|mem_aluResult[2]_i_23 I3 -pin riscv|mem_aluResult[2]_i_9 I0 -pin riscv|mem_aluResult[30]_i_10 I0 -pin riscv|mem_aluResult[30]_i_19 I4 -pin riscv|mem_aluResult[30]_i_24 I0 -pin riscv|mem_aluResult[30]_i_35 I0 -pin riscv|mem_aluResult[30]_i_36 I1 -pin riscv|mem_aluResult[31]_i_8 I3 -pin riscv|mem_aluResult[3]_i_2 I1 -pin riscv|mem_aluResult[4]_i_7 I4 -pin riscv|mem_aluResult[5]_i_8 I5 -pin riscv|mem_aluResult[6]_i_7 I5 -pin riscv|mem_aluResult[7]_i_10 I4 -pin riscv|mem_aluResult[7]_i_8 I0 -pin riscv|mem_aluResult[8]_i_5 I0 -pin riscv|mem_aluResult[8]_i_7 I0 -pin riscv|mem_aluResult[8]_i_8 I4 -pin riscv|mem_aluResult[9]_i_5 I0 -pin riscv|mem_aluResult[9]_i_8 I3 -pin riscv|mem_aluResult[9]_i_9 I4
netloc riscv|mem_aluResult[22]_i_10_n_0 1 7 20 5900 14738 6460 14878 NJ 14878 NJ 14878 NJ 14878 NJ 14878 9040 14678 9590 13038 11420 14038 12480 14598 13700 15348 15180 14048 16320 5748 NJ 5748 NJ 5748 NJ 5748 21440 6768 24490 8108 26190 16028 28170
load net riscv|mem_aluResult[22]_i_11_n_0 -attr @name mem_aluResult[22]_i_11_n_0 -pin riscv|mem_aluResult[18]_i_3 I0 -pin riscv|mem_aluResult[22]_i_11 O -pin riscv|mem_aluResult[22]_i_4 I0
netloc riscv|mem_aluResult[22]_i_11_n_0 1 25 2 26690 16468 27810
load net riscv|mem_aluResult[22]_i_12_n_0 -attr @name mem_aluResult[22]_i_12_n_0 -pin riscv|mem_aluResult[18]_i_8 I4 -pin riscv|mem_aluResult[20]_i_4 I5 -pin riscv|mem_aluResult[22]_i_12 O -pin riscv|mem_aluResult[22]_i_5 I0 -pin riscv|mem_aluResult[24]_i_7 I1
netloc riscv|mem_aluResult[22]_i_12_n_0 1 17 4 14520 13868 NJ 13868 16840 14668 17980
load net riscv|mem_aluResult[22]_i_13_n_0 -attr @name mem_aluResult[22]_i_13_n_0 -pin riscv|mem_aluResult[16]_i_4 I4 -pin riscv|mem_aluResult[18]_i_8 I5 -pin riscv|mem_aluResult[20]_i_4 I0 -pin riscv|mem_aluResult[22]_i_13 O -pin riscv|mem_aluResult[22]_i_5 I1
netloc riscv|mem_aluResult[22]_i_13_n_0 1 17 4 14540 13178 15320 13598 16260 14488 18020
load net riscv|mem_aluResult[22]_i_14_n_0 -attr @name mem_aluResult[22]_i_14_n_0 -pin riscv|mem_aluResult[22]_i_14 O -pin riscv|mem_aluResult[22]_i_6 I1
netloc riscv|mem_aluResult[22]_i_14_n_0 1 1 1 4340 17428n
load net riscv|mem_aluResult[22]_i_16_n_0 -attr @name mem_aluResult[22]_i_16_n_0 -pin riscv|mem_aluResult[10]_i_6 I0 -pin riscv|mem_aluResult[11]_i_12 I0 -pin riscv|mem_aluResult[16]_i_5 I4 -pin riscv|mem_aluResult[17]_i_4 I4 -pin riscv|mem_aluResult[18]_i_5 I4 -pin riscv|mem_aluResult[19]_i_5 I4 -pin riscv|mem_aluResult[1]_i_3 I3 -pin riscv|mem_aluResult[20]_i_5 I4 -pin riscv|mem_aluResult[21]_i_5 I4 -pin riscv|mem_aluResult[22]_i_16 O -pin riscv|mem_aluResult[22]_i_6 I4 -pin riscv|mem_aluResult[23]_i_5 I1 -pin riscv|mem_aluResult[24]_i_5 I1 -pin riscv|mem_aluResult[25]_i_6 I1 -pin riscv|mem_aluResult[26]_i_10 I1 -pin riscv|mem_aluResult[27]_i_6 I1 -pin riscv|mem_aluResult[28]_i_10 I1 -pin riscv|mem_aluResult[29]_i_8 I1 -pin riscv|mem_aluResult[30]_i_23 I1 -pin riscv|mem_aluResult[3]_i_6 I3 -pin riscv|mem_aluResult[4]_i_6 I0 -pin riscv|mem_aluResult[5]_i_7 I0 -pin riscv|mem_aluResult[6]_i_6 I0 -pin riscv|mem_aluResult[7]_i_7 I0 -pin riscv|mem_aluResult[8]_i_6 I0 -pin riscv|mem_aluResult[9]_i_7 I0
netloc riscv|mem_aluResult[22]_i_16_n_0 1 1 26 4420 18078 NJ 18078 NJ 18078 NJ 18078 NJ 18078 NJ 18078 NJ 18078 6280 15788 NJ 15788 NJ 15788 NJ 15788 NJ 15788 8940J 15948 9710 15848 11080 15948 12580 14478 14120 16148 15540 16148 16660J 16378 18220 8248 NJ 8248 NJ 8248 NJ 8248 23770 5868 26310 18298 27170
load net riscv|mem_aluResult[22]_i_2_n_0 -attr @name mem_aluResult[22]_i_2_n_0 -pin riscv|mem_aluResult[22]_i_1 I0 -pin riscv|mem_aluResult[22]_i_2 O
netloc riscv|mem_aluResult[22]_i_2_n_0 1 2 1 4680 17648n
load net riscv|mem_aluResult[22]_i_3_n_0 -attr @name mem_aluResult[22]_i_3_n_0 -pin riscv|mem_aluResult[22]_i_1 I1 -pin riscv|mem_aluResult[22]_i_3 O -pin riscv|mem_aluResult[23]_i_3 I1
netloc riscv|mem_aluResult[22]_i_3_n_0 1 2 8 4720 18238 NJ 18238 NJ 18238 NJ 18238 NJ 18238 NJ 18238 NJ 18238 7020
load net riscv|mem_aluResult[22]_i_4_n_0 -attr @name mem_aluResult[22]_i_4_n_0 -pin riscv|mem_aluResult[10]_i_1 I1 -pin riscv|mem_aluResult[11]_i_1 I1 -pin riscv|mem_aluResult[12]_i_2 I4 -pin riscv|mem_aluResult[13]_i_2 I4 -pin riscv|mem_aluResult[14]_i_2 I4 -pin riscv|mem_aluResult[15]_i_1 I1 -pin riscv|mem_aluResult[16]_i_1 I2 -pin riscv|mem_aluResult[17]_i_1 I2 -pin riscv|mem_aluResult[18]_i_4 I1 -pin riscv|mem_aluResult[19]_i_1 I2 -pin riscv|mem_aluResult[1]_i_6 I0 -pin riscv|mem_aluResult[20]_i_1 I2 -pin riscv|mem_aluResult[21]_i_1 I2 -pin riscv|mem_aluResult[22]_i_1 I2 -pin riscv|mem_aluResult[22]_i_4 O -pin riscv|mem_aluResult[2]_i_6 I0 -pin riscv|mem_aluResult[3]_i_1 I4 -pin riscv|mem_aluResult[4]_i_1 I1 -pin riscv|mem_aluResult[5]_i_1 I1 -pin riscv|mem_aluResult[6]_i_1 I1 -pin riscv|mem_aluResult[7]_i_1 I1 -pin riscv|mem_aluResult[8]_i_1 I1 -pin riscv|mem_aluResult[9]_i_1 I1
netloc riscv|mem_aluResult[22]_i_4_n_0 1 2 26 4700 17798 NJ 17798 NJ 17798 NJ 17798 NJ 17798 NJ 17798 6260J 17808 7200 17528 7840 17488 NJ 17488 NJ 17488 8920J 17418 NJ 17418 10700J 17288 12200 11818 NJ 11818 14980 12518 16600 12878 18260 12568 19500 8368 NJ 8368 NJ 8368 NJ 8368 25670 8368 27510 8348 29220
load net riscv|mem_aluResult[22]_i_5_n_0 -attr @name mem_aluResult[22]_i_5_n_0 -pin riscv|mem_aluResult[21]_i_2 I2 -pin riscv|mem_aluResult[22]_i_1 I3 -pin riscv|mem_aluResult[22]_i_5 O
netloc riscv|mem_aluResult[22]_i_5_n_0 1 2 17 4700 18418 NJ 18418 NJ 18418 NJ 18418 NJ 18418 NJ 18418 NJ 18418 NJ 18418 7840J 18438 NJ 18438 NJ 18438 NJ 18438 NJ 18438 11000J 18458 NJ 18458 14340J 18438 15060
load net riscv|mem_aluResult[22]_i_6_n_0 -attr @name mem_aluResult[22]_i_6_n_0 -pin riscv|mem_aluResult[22]_i_1 I5 -pin riscv|mem_aluResult[22]_i_6 O
netloc riscv|mem_aluResult[22]_i_6_n_0 1 2 1 4660 17918n
load net riscv|mem_aluResult[22]_i_7_n_0 -attr @name mem_aluResult[22]_i_7_n_0 -pin riscv|mem_aluResult[22]_i_3 I0 -pin riscv|mem_aluResult[22]_i_7 O
netloc riscv|mem_aluResult[22]_i_7_n_0 1 8 1 N 15828
load net riscv|mem_aluResult[22]_i_8_n_0 -attr @name mem_aluResult[22]_i_8_n_0 -pin riscv|mem_aluResult[0]_i_12 I0 -pin riscv|mem_aluResult[0]_i_13 I0 -pin riscv|mem_aluResult[0]_i_7 I0 -pin riscv|mem_aluResult[10]_i_7 I1 -pin riscv|mem_aluResult[11]_i_13 I1 -pin riscv|mem_aluResult[12]_i_3 I1 -pin riscv|mem_aluResult[13]_i_3 I1 -pin riscv|mem_aluResult[14]_i_3 I1 -pin riscv|mem_aluResult[18]_i_2 I1 -pin riscv|mem_aluResult[19]_i_3 I1 -pin riscv|mem_aluResult[1]_i_2 I4 -pin riscv|mem_aluResult[1]_i_8 I4 -pin riscv|mem_aluResult[1]_i_9 I3 -pin riscv|mem_aluResult[20]_i_3 I1 -pin riscv|mem_aluResult[21]_i_3 I1 -pin riscv|mem_aluResult[22]_i_3 I1 -pin riscv|mem_aluResult[22]_i_8 O -pin riscv|mem_aluResult[25]_i_9 I3 -pin riscv|mem_aluResult[27]_i_10 I0 -pin riscv|mem_aluResult[28]_i_9 I5 -pin riscv|mem_aluResult[2]_i_15 I5 -pin riscv|mem_aluResult[30]_i_17 I4 -pin riscv|mem_aluResult[30]_i_19 I3 -pin riscv|mem_aluResult[30]_i_36 I2 -pin riscv|mem_aluResult[31]_i_10 I5 -pin riscv|mem_aluResult[31]_i_14 I5 -pin riscv|mem_aluResult[31]_i_23 I5 -pin riscv|mem_aluResult[31]_i_8 I4 -pin riscv|mem_aluResult[4]_i_7 I3 -pin riscv|mem_aluResult[7]_i_10 I3 -pin riscv|mem_aluResult[8]_i_8 I3 -pin riscv|mem_aluResult[9]_i_8 I1
netloc riscv|mem_aluResult[22]_i_8_n_0 1 7 20 5880 13698 6420 15298 NJ 15298 NJ 15298 NJ 15298 NJ 15298 NJ 15298 9770 14738 11100J 14758 12220 12978 NJ 12978 15600 13378 17040 13778 17840 12148 NJ 12148 20900J 12308 21480 5808 24630 5848 26210 16868 27430
load net riscv|mem_aluResult[22]_i_9_n_0 -attr @name mem_aluResult[22]_i_9_n_0 -pin riscv|mem_aluResult[16]_i_3 I1 -pin riscv|mem_aluResult[19]_i_6 I0 -pin riscv|mem_aluResult[20]_i_3 I4 -pin riscv|mem_aluResult[22]_i_3 I2 -pin riscv|mem_aluResult[22]_i_9 O
netloc riscv|mem_aluResult[22]_i_9_n_0 1 8 13 6720 15968 NJ 15968 NJ 15968 NJ 15968 NJ 15968 NJ 15968 9690 13318 10700J 13758 12300J 13598 13400J 14088 NJ 14088 16240 14288 17960J
load net riscv|mem_aluResult[23]_i_2_n_0 -attr @name mem_aluResult[23]_i_2_n_0 -pin riscv|mem_aluResult[23]_i_1 I0 -pin riscv|mem_aluResult[23]_i_2 O
netloc riscv|mem_aluResult[23]_i_2_n_0 1 10 1 7880 17868n
load net riscv|mem_aluResult[23]_i_5_n_0 -attr @name mem_aluResult[23]_i_5_n_0 -pin riscv|mem_aluResult[23]_i_2 I0 -pin riscv|mem_aluResult[23]_i_5 O
netloc riscv|mem_aluResult[23]_i_5_n_0 1 9 1 7340 14058n
load net riscv|mem_aluResult[23]_i_6_n_0 -attr @name mem_aluResult[23]_i_6_n_0 -pin riscv|mem_aluResult[23]_i_2 I1 -pin riscv|mem_aluResult[23]_i_6 O
netloc riscv|mem_aluResult[23]_i_6_n_0 1 9 1 7300 14228n
load net riscv|mem_aluResult[23]_i_7_n_0 -attr @name mem_aluResult[23]_i_7_n_0 -pin riscv|mem_aluResult[22]_i_2 I2 -pin riscv|mem_aluResult[23]_i_2 I5 -pin riscv|mem_aluResult[23]_i_7 O
netloc riscv|mem_aluResult[23]_i_7_n_0 1 1 9 4440 17588 NJ 17588 NJ 17588 NJ 17588 NJ 17588 NJ 17588 NJ 17588 NJ 17588 7120
load net riscv|mem_aluResult[24]_i_2_n_0 -attr @name mem_aluResult[24]_i_2_n_0 -pin riscv|mem_aluResult[24]_i_1 I0 -pin riscv|mem_aluResult[24]_i_2 O
netloc riscv|mem_aluResult[24]_i_2_n_0 1 19 1 16440 15308n
load net riscv|mem_aluResult[24]_i_5_n_0 -attr @name mem_aluResult[24]_i_5_n_0 -pin riscv|mem_aluResult[24]_i_2 I0 -pin riscv|mem_aluResult[24]_i_5 O
netloc riscv|mem_aluResult[24]_i_5_n_0 1 18 1 15280 13588n
load net riscv|mem_aluResult[24]_i_6_n_0 -attr @name mem_aluResult[24]_i_6_n_0 -pin riscv|mem_aluResult[24]_i_2 I1 -pin riscv|mem_aluResult[24]_i_6 O
netloc riscv|mem_aluResult[24]_i_6_n_0 1 18 1 15260 13768n
load net riscv|mem_aluResult[24]_i_7_n_0 -attr @name mem_aluResult[24]_i_7_n_0 -pin riscv|mem_aluResult[23]_i_2 I3 -pin riscv|mem_aluResult[24]_i_2 I5 -pin riscv|mem_aluResult[24]_i_7 O
netloc riscv|mem_aluResult[24]_i_7_n_0 1 9 10 7520 18018 NJ 18018 NJ 18018 NJ 18018 NJ 18018 NJ 18018 11080J 18198 11980J 18218 NJ 18218 14980
load net riscv|mem_aluResult[24]_i_8_n_0 -attr @name mem_aluResult[24]_i_8_n_0 -pin riscv|mem_aluResult[23]_i_3 I5 -pin riscv|mem_aluResult[24]_i_3 I5 -pin riscv|mem_aluResult[24]_i_8 O
netloc riscv|mem_aluResult[24]_i_8_n_0 1 9 10 7060 19078 NJ 19078 NJ 19078 NJ 19078 NJ 19078 9630J 19258 11200J 19248 12880J 19058 NJ 19058 15860J
load net riscv|mem_aluResult[25]_i_2_n_0 -attr @name mem_aluResult[25]_i_2_n_0 -pin riscv|mem_aluResult[24]_i_2 I3 -pin riscv|mem_aluResult[25]_i_1 I0 -pin riscv|mem_aluResult[25]_i_2 O
netloc riscv|mem_aluResult[25]_i_2_n_0 1 10 9 7980 18518 NJ 18518 NJ 18518 NJ 18518 NJ 18518 NJ 18518 NJ 18518 14360J 18458 15000
load net riscv|mem_aluResult[25]_i_3_n_0 -attr @name mem_aluResult[25]_i_3_n_0 -pin riscv|mem_aluResult[25]_i_1 I4 -pin riscv|mem_aluResult[25]_i_3 O
netloc riscv|mem_aluResult[25]_i_3_n_0 1 10 1 7820 16178n
load net riscv|mem_aluResult[25]_i_4_n_0 -attr @name mem_aluResult[25]_i_4_n_0 -pin riscv|mem_aluResult[25]_i_1 I5 -pin riscv|mem_aluResult[25]_i_4 O
netloc riscv|mem_aluResult[25]_i_4_n_0 1 10 1 7780 18558n
load net riscv|mem_aluResult[25]_i_5_n_0 -attr @name mem_aluResult[25]_i_5_n_0 -pin riscv|mem_aluResult[19]_i_4 I4 -pin riscv|mem_aluResult[21]_i_4 I5 -pin riscv|mem_aluResult[23]_i_7 I0 -pin riscv|mem_aluResult[25]_i_2 I1 -pin riscv|mem_aluResult[25]_i_5 O
netloc riscv|mem_aluResult[25]_i_5_n_0 1 8 12 6660 13518 NJ 13518 NJ 13518 NJ 13518 NJ 13518 NJ 13518 NJ 13518 10920 13258 NJ 13258 13760 13198 15100J 13098 16260J
load net riscv|mem_aluResult[25]_i_6_n_0 -attr @name mem_aluResult[25]_i_6_n_0 -pin riscv|mem_aluResult[25]_i_3 I4 -pin riscv|mem_aluResult[25]_i_6 O
netloc riscv|mem_aluResult[25]_i_6_n_0 1 9 1 N 16218
load net riscv|mem_aluResult[25]_i_7_n_0 -attr @name mem_aluResult[25]_i_7_n_0 -pin riscv|mem_aluResult[25]_i_4 I0 -pin riscv|mem_aluResult[25]_i_7 O
netloc riscv|mem_aluResult[25]_i_7_n_0 1 9 1 7100 16418n
load net riscv|mem_aluResult[25]_i_8_n_0 -attr @name mem_aluResult[25]_i_8_n_0 -pin riscv|mem_aluResult[24]_i_3 I3 -pin riscv|mem_aluResult[25]_i_4 I3 -pin riscv|mem_aluResult[25]_i_8 O
netloc riscv|mem_aluResult[25]_i_8_n_0 1 9 10 7040 19218 NJ 19218 NJ 19218 NJ 19218 NJ 19218 9550J 19278 11220J 19268 12900J 19078 NJ 19078 15840J
load net riscv|mem_aluResult[25]_i_9_n_0 -attr @name mem_aluResult[25]_i_9_n_0 -pin riscv|mem_aluResult[25]_i_8 I5 -pin riscv|mem_aluResult[25]_i_9 O
netloc riscv|mem_aluResult[25]_i_9_n_0 1 8 1 6400 13578n
load net riscv|mem_aluResult[26]_i_10_n_0 -attr @name mem_aluResult[26]_i_10_n_0 -pin riscv|mem_aluResult[26]_i_10 O -pin riscv|mem_aluResult[26]_i_4 I4
netloc riscv|mem_aluResult[26]_i_10_n_0 1 17 1 13420 15368n
load net riscv|mem_aluResult[26]_i_11_n_0 -attr @name mem_aluResult[26]_i_11_n_0 -pin riscv|mem_aluResult[26]_i_11 O -pin riscv|mem_aluResult[26]_i_5 I0
netloc riscv|mem_aluResult[26]_i_11_n_0 1 17 1 13960 15568n
load net riscv|mem_aluResult[26]_i_12_n_0 -attr @name mem_aluResult[26]_i_12_n_0 -pin riscv|mem_aluResult[25]_i_4 I2 -pin riscv|mem_aluResult[26]_i_12 O -pin riscv|mem_aluResult[26]_i_5 I4
netloc riscv|mem_aluResult[26]_i_12_n_0 1 9 9 7480 18078 NJ 18078 NJ 18078 NJ 18078 NJ 18078 NJ 18078 11060J 18398 12800J 18258 13460
load net riscv|mem_aluResult[26]_i_14_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[26]_i_14_n_0 -pin riscv|mem_aluResult[26]_i_14 O -pin riscv|mem_aluResult_reg[26]_i_9 S[3]
load net riscv|mem_aluResult[26]_i_15_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[26]_i_15_n_0 -pin riscv|mem_aluResult[26]_i_15 O -pin riscv|mem_aluResult_reg[26]_i_9 S[2]
load net riscv|mem_aluResult[26]_i_16_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[26]_i_16_n_0 -pin riscv|mem_aluResult[26]_i_16 O -pin riscv|mem_aluResult_reg[26]_i_9 S[1]
load net riscv|mem_aluResult[26]_i_17_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[26]_i_17_n_0 -pin riscv|mem_aluResult[26]_i_17 O -pin riscv|mem_aluResult_reg[26]_i_9 S[0]
load net riscv|mem_aluResult[26]_i_18_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[26]_i_18_n_0 -pin riscv|mem_aluResult[26]_i_18 O -pin riscv|mem_aluResult_reg[26]_i_13 S[3]
load net riscv|mem_aluResult[26]_i_19_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[26]_i_19_n_0 -pin riscv|mem_aluResult[26]_i_19 O -pin riscv|mem_aluResult_reg[26]_i_13 S[2]
load net riscv|mem_aluResult[26]_i_20_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[26]_i_20_n_0 -pin riscv|mem_aluResult[26]_i_20 O -pin riscv|mem_aluResult_reg[26]_i_13 S[1]
load net riscv|mem_aluResult[26]_i_21_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[26]_i_21_n_0 -pin riscv|mem_aluResult[26]_i_21 O -pin riscv|mem_aluResult_reg[26]_i_13 S[0]
load net riscv|mem_aluResult[26]_i_2_n_0 -attr @name mem_aluResult[26]_i_2_n_0 -pin riscv|mem_aluResult[25]_i_1 I2 -pin riscv|mem_aluResult[26]_i_1 I0 -pin riscv|mem_aluResult[26]_i_2 O
netloc riscv|mem_aluResult[26]_i_2_n_0 1 10 9 7860 15708 NJ 15708 NJ 15708 8980J 15928 NJ 15928 10720J 15908 12640J 15468 14000J 16208 NJ
load net riscv|mem_aluResult[26]_i_3_n_0 -attr @name mem_aluResult[26]_i_3_n_0 -pin riscv|mem_aluResult[26]_i_1 I2 -pin riscv|mem_aluResult[26]_i_3 O -pin riscv|mem_aluResult[27]_i_2 I5
netloc riscv|mem_aluResult[26]_i_3_n_0 1 17 2 14540 16408 14820
load net riscv|mem_aluResult[26]_i_4_n_0 -attr @name mem_aluResult[26]_i_4_n_0 -pin riscv|mem_aluResult[26]_i_1 I4 -pin riscv|mem_aluResult[26]_i_4 O
netloc riscv|mem_aluResult[26]_i_4_n_0 1 18 1 15180 16068n
load net riscv|mem_aluResult[26]_i_5_n_0 -attr @name mem_aluResult[26]_i_5_n_0 -pin riscv|mem_aluResult[26]_i_1 I5 -pin riscv|mem_aluResult[26]_i_5 O
netloc riscv|mem_aluResult[26]_i_5_n_0 1 18 1 15540 16308n
load net riscv|mem_aluResult[26]_i_6_n_0 -attr @name mem_aluResult[26]_i_6_n_0 -pin riscv|mem_aluResult[20]_i_4 I4 -pin riscv|mem_aluResult[22]_i_5 I5 -pin riscv|mem_aluResult[24]_i_7 I0 -pin riscv|mem_aluResult[26]_i_2 I1 -pin riscv|mem_aluResult[26]_i_6 O
netloc riscv|mem_aluResult[26]_i_6_n_0 1 9 12 7020 13058 NJ 13058 NJ 13058 NJ 13058 NJ 13058 NJ 13058 10680J 13578 12180J 13358 14440 14068 NJ 14068 16180J 14648 17960J
load net riscv|mem_aluResult[26]_i_7_n_0 -attr @name mem_aluResult[26]_i_7_n_0 -pin riscv|mem_aluResult[21]_i_4 I4 -pin riscv|mem_aluResult[23]_i_7 I5 -pin riscv|mem_aluResult[25]_i_2 I0 -pin riscv|mem_aluResult[26]_i_3 I1 -pin riscv|mem_aluResult[26]_i_7 O
netloc riscv|mem_aluResult[26]_i_7_n_0 1 8 12 6720 14698 NJ 14698 NJ 14698 NJ 14698 NJ 14698 NJ 14698 NJ 14698 NJ 14698 12160J 14838 14000 14328 15100J 14188 16700
load net riscv|mem_aluResult[26]_i_8_n_0 -attr @name mem_aluResult[26]_i_8_n_0 -pin riscv|mem_aluResult[25]_i_2 I4 -pin riscv|mem_aluResult[26]_i_3 I5 -pin riscv|mem_aluResult[26]_i_8 O -pin riscv|mem_aluResult[30]_i_35 I5
netloc riscv|mem_aluResult[26]_i_8_n_0 1 17 9 14540 14368 NJ 14368 16160J 14688 NJ 14688 19000J 14478 20080J 14298 NJ 14298 NJ 14298 26030
load net riscv|mem_aluResult[27]_i_10_n_0 -attr @name mem_aluResult[27]_i_10_n_0 -pin riscv|mem_aluResult[0]_i_10 I0 -pin riscv|mem_aluResult[23]_i_3 I2 -pin riscv|mem_aluResult[24]_i_3 I0 -pin riscv|mem_aluResult[27]_i_10 O -pin riscv|mem_aluResult[27]_i_4 I2 -pin riscv|mem_aluResult[29]_i_7 I0 -pin riscv|mem_aluResult[2]_i_8 I5 -pin riscv|mem_aluResult[30]_i_20 I1 -pin riscv|mem_aluResult[3]_i_4 I4
netloc riscv|mem_aluResult[27]_i_10_n_0 1 9 19 7500 18298 NJ 18298 NJ 18298 NJ 18298 NJ 18298 NJ 18298 11040J 18418 NJ 18418 14340 18158 15040 18678 NJ 18678 NJ 18678 NJ 18678 NJ 18678 NJ 18678 23750 11018 NJ 11018 27850 21448 29680J
load net riscv|mem_aluResult[27]_i_11_n_0 -attr @name mem_aluResult[27]_i_11_n_0 -pin riscv|mem_aluResult[0]_i_5 I4 -pin riscv|mem_aluResult[23]_i_3 I4 -pin riscv|mem_aluResult[24]_i_3 I2 -pin riscv|mem_aluResult[25]_i_4 I1 -pin riscv|mem_aluResult[26]_i_5 I2 -pin riscv|mem_aluResult[27]_i_11 O -pin riscv|mem_aluResult[27]_i_4 I4 -pin riscv|mem_aluResult[28]_i_8 I0 -pin riscv|mem_aluResult[30]_i_36 I0
netloc riscv|mem_aluResult[27]_i_11_n_0 1 9 20 7520 18438 7800J 18458 NJ 18458 NJ 18458 NJ 18458 NJ 18458 10980J 18478 NJ 18478 14380 18478 15140 18478 NJ 18478 NJ 18478 NJ 18478 NJ 18478 NJ 18478 NJ 18478 25410 19058 27370 21648 29080J 21148 NJ
load net riscv|mem_aluResult[27]_i_12_n_0 -attr @name mem_aluResult[27]_i_12_n_0 -pin riscv|mem_aluResult[27]_i_12 O -pin riscv|mem_aluResult[27]_i_4 I5
netloc riscv|mem_aluResult[27]_i_12_n_0 1 17 1 13920 16748n
load net riscv|mem_aluResult[27]_i_2_n_0 -attr @name mem_aluResult[27]_i_2_n_0 -pin riscv|mem_aluResult[27]_i_1 I0 -pin riscv|mem_aluResult[27]_i_2 O
netloc riscv|mem_aluResult[27]_i_2_n_0 1 18 1 15120 16288n
load net riscv|mem_aluResult[27]_i_3_n_0 -attr @name mem_aluResult[27]_i_3_n_0 -pin riscv|mem_aluResult[0]_i_5 I0 -pin riscv|mem_aluResult[23]_i_1 I1 -pin riscv|mem_aluResult[24]_i_1 I1 -pin riscv|mem_aluResult[25]_i_4 I5 -pin riscv|mem_aluResult[26]_i_5 I5 -pin riscv|mem_aluResult[27]_i_1 I1 -pin riscv|mem_aluResult[27]_i_3 O -pin riscv|mem_aluResult[28]_i_3 I5 -pin riscv|mem_aluResult[30]_i_20 I0
netloc riscv|mem_aluResult[27]_i_3_n_0 1 9 20 7520 18678 7960 18418 NJ 18418 NJ 18418 NJ 18418 NJ 18418 11020J 18438 NJ 18438 14300 18258 15840 18258 16320 20938 NJ 20938 NJ 20938 NJ 20938 NJ 20938 NJ 20938 25410J 20958 27330 21728 29120 21128 30850J
load net riscv|mem_aluResult[27]_i_6_n_0 -attr @name mem_aluResult[27]_i_6_n_0 -pin riscv|mem_aluResult[27]_i_2 I0 -pin riscv|mem_aluResult[27]_i_6 O
netloc riscv|mem_aluResult[27]_i_6_n_0 1 17 1 13600 15958n
load net riscv|mem_aluResult[27]_i_7_n_0 -attr @name mem_aluResult[27]_i_7_n_0 -pin riscv|mem_aluResult[27]_i_2 I1 -pin riscv|mem_aluResult[27]_i_7 O
netloc riscv|mem_aluResult[27]_i_7_n_0 1 17 1 13980 16138n
load net riscv|mem_aluResult[27]_i_8_n_0 -attr @name mem_aluResult[27]_i_8_n_0 -pin riscv|mem_aluResult[0]_i_10 I4 -pin riscv|mem_aluResult[0]_i_11 I3 -pin riscv|mem_aluResult[0]_i_7 I2 -pin riscv|mem_aluResult[23]_i_3 I0 -pin riscv|mem_aluResult[24]_i_3 I4 -pin riscv|mem_aluResult[25]_i_4 I4 -pin riscv|mem_aluResult[26]_i_5 I3 -pin riscv|mem_aluResult[27]_i_4 I0 -pin riscv|mem_aluResult[27]_i_8 O -pin riscv|mem_aluResult[28]_i_8 I2 -pin riscv|mem_aluResult[28]_i_9 I3 -pin riscv|mem_aluResult[29]_i_7 I4 -pin riscv|mem_aluResult[30]_i_20 I2
netloc riscv|mem_aluResult[27]_i_8_n_0 1 9 19 7400 18658 7740J 18498 NJ 18498 NJ 18498 NJ 18498 NJ 18498 NJ 18498 NJ 18498 14480 18498 15860 18298 NJ 18298 NJ 18298 NJ 18298 NJ 18298 NJ 18298 NJ 18298 25370 18548 27230 21608 29780
load net riscv|mem_aluResult[27]_i_9_n_0 -attr @name mem_aluResult[27]_i_9_n_0 -pin riscv|mem_aluResult[26]_i_5 I1 -pin riscv|mem_aluResult[27]_i_4 I1 -pin riscv|mem_aluResult[27]_i_9 O
netloc riscv|mem_aluResult[27]_i_9_n_0 1 17 1 13940 16418n
load net riscv|mem_aluResult[28]_i_10_n_0 -attr @name mem_aluResult[28]_i_10_n_0 -pin riscv|mem_aluResult[28]_i_10 O -pin riscv|mem_aluResult[28]_i_4 I4
netloc riscv|mem_aluResult[28]_i_10_n_0 1 27 1 29080 22558n
load net riscv|mem_aluResult[28]_i_2_n_0 -attr @name mem_aluResult[28]_i_2_n_0 -pin riscv|mem_aluResult[27]_i_2 I3 -pin riscv|mem_aluResult[28]_i_1 I0 -pin riscv|mem_aluResult[28]_i_2 O
netloc riscv|mem_aluResult[28]_i_2_n_0 1 17 12 14520 16388 NJ 16388 16500J 16578 17980J 16628 19300J 16618 20040J 16538 22240J 16498 24070J 16488 26090J 16408 27770J 16008 29440J 15938 30790
load net riscv|mem_aluResult[28]_i_3_n_0 -attr @name mem_aluResult[28]_i_3_n_0 -pin riscv|mem_aluResult[28]_i_1 I4 -pin riscv|mem_aluResult[28]_i_3 O
netloc riscv|mem_aluResult[28]_i_3_n_0 1 28 1 30830 21858n
load net riscv|mem_aluResult[28]_i_4_n_0 -attr @name mem_aluResult[28]_i_4_n_0 -pin riscv|mem_aluResult[28]_i_1 I5 -pin riscv|mem_aluResult[28]_i_4 O
netloc riscv|mem_aluResult[28]_i_4_n_0 1 28 1 30850 21878n
load net riscv|mem_aluResult[28]_i_5_n_0 -attr @name mem_aluResult[28]_i_5_n_0 -pin riscv|mem_aluResult[22]_i_5 I4 -pin riscv|mem_aluResult[24]_i_7 I5 -pin riscv|mem_aluResult[26]_i_2 I0 -pin riscv|mem_aluResult[28]_i_2 I1 -pin riscv|mem_aluResult[28]_i_5 O
netloc riscv|mem_aluResult[28]_i_5_n_0 1 9 19 7440 12638 NJ 12638 NJ 12638 NJ 12638 NJ 12638 NJ 12638 NJ 12638 NJ 12638 13440 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 NJ 10528 29200
load net riscv|mem_aluResult[28]_i_6_n_0 -attr @name mem_aluResult[28]_i_6_n_0 -pin riscv|mem_aluResult[26]_i_2 I4 -pin riscv|mem_aluResult[28]_i_2 I5 -pin riscv|mem_aluResult[28]_i_6 O -pin riscv|mem_aluResult[30]_i_24 I5
netloc riscv|mem_aluResult[28]_i_6_n_0 1 9 19 7460 12778 NJ 12778 NJ 12778 NJ 12778 NJ 12778 NJ 12778 NJ 12778 11960J 12838 NJ 12838 15020J 12498 NJ 12498 18440J 12888 19460J 13208 NJ 13208 NJ 13208 NJ 13208 25630 15678 27690J 15168 29160
load net riscv|mem_aluResult[28]_i_8_n_0 -attr @name mem_aluResult[28]_i_8_n_0 -pin riscv|mem_aluResult[28]_i_3 I3 -pin riscv|mem_aluResult[28]_i_8 O
netloc riscv|mem_aluResult[28]_i_8_n_0 1 27 1 29180 22168n
load net riscv|mem_aluResult[28]_i_9_n_0 -attr @name mem_aluResult[28]_i_9_n_0 -pin riscv|mem_aluResult[28]_i_3 I4 -pin riscv|mem_aluResult[28]_i_9 O
netloc riscv|mem_aluResult[28]_i_9_n_0 1 27 1 29080 22248n
load net riscv|mem_aluResult[29]_i_2_n_0 -attr @name mem_aluResult[29]_i_2_n_0 -pin riscv|mem_aluResult[28]_i_1 I2 -pin riscv|mem_aluResult[29]_i_1 I0 -pin riscv|mem_aluResult[29]_i_2 O
netloc riscv|mem_aluResult[29]_i_2_n_0 1 28 1 30690 18618n
load net riscv|mem_aluResult[29]_i_3_n_0 -attr @name mem_aluResult[29]_i_3_n_0 -pin riscv|mem_aluResult[29]_i_1 I4 -pin riscv|mem_aluResult[29]_i_3 O
netloc riscv|mem_aluResult[29]_i_3_n_0 1 28 1 30630 21228n
load net riscv|mem_aluResult[29]_i_4_n_0 -attr @name mem_aluResult[29]_i_4_n_0 -pin riscv|mem_aluResult[29]_i_1 I5 -pin riscv|mem_aluResult[29]_i_4 O
netloc riscv|mem_aluResult[29]_i_4_n_0 1 28 1 31050 22048n
load net riscv|mem_aluResult[29]_i_5_n_0 -attr @name mem_aluResult[29]_i_5_n_0 -pin riscv|mem_aluResult[23]_i_7 I4 -pin riscv|mem_aluResult[25]_i_2 I5 -pin riscv|mem_aluResult[26]_i_3 I0 -pin riscv|mem_aluResult[29]_i_2 I4 -pin riscv|mem_aluResult[29]_i_5 O
netloc riscv|mem_aluResult[29]_i_5_n_0 1 8 20 6680 13578 NJ 13578 NJ 13578 NJ 13578 NJ 13578 NJ 13578 NJ 13578 10660J 14438 12560J 14278 13440 14388 NJ 14388 16860J 14708 NJ 14708 19020J 14498 NJ 14498 NJ 14498 NJ 14498 25910J 14468 NJ 14468 29980
load net riscv|mem_aluResult[29]_i_6_n_0 -attr @name mem_aluResult[29]_i_6_n_0 -pin riscv|mem_aluResult[29]_i_3 I0 -pin riscv|mem_aluResult[29]_i_6 O
netloc riscv|mem_aluResult[29]_i_6_n_0 1 27 1 29660 17128n
load net riscv|mem_aluResult[29]_i_8_n_0 -attr @name mem_aluResult[29]_i_8_n_0 -pin riscv|mem_aluResult[29]_i_4 I4 -pin riscv|mem_aluResult[29]_i_8 O
netloc riscv|mem_aluResult[29]_i_8_n_0 1 27 1 29260 17458n
load net riscv|mem_aluResult[29]_i_9_n_0 -attr @name mem_aluResult[29]_i_9_n_0 -pin riscv|mem_aluResult[29]_i_7 I5 -pin riscv|mem_aluResult[29]_i_9 O
netloc riscv|mem_aluResult[29]_i_9_n_0 1 26 1 27070 17348n
load net riscv|mem_aluResult[2]_i_10_n_0 -attr @name mem_aluResult[2]_i_10_n_0 -pin riscv|mem_aluResult[2]_i_10 O -pin riscv|mem_aluResult[2]_i_3 I5
netloc riscv|mem_aluResult[2]_i_10_n_0 1 25 1 26530 3348n
load net riscv|mem_aluResult[2]_i_11_n_0 -attr @name mem_aluResult[2]_i_11_n_0 -pin riscv|mem_aluResult[2]_i_11 O -pin riscv|mem_aluResult[2]_i_4 I0
netloc riscv|mem_aluResult[2]_i_11_n_0 1 25 1 25250 4498n
load net riscv|mem_aluResult[2]_i_13_n_0 -attr @name mem_aluResult[2]_i_13_n_0 -pin riscv|mem_aluResult[0]_i_10 I3 -pin riscv|mem_aluResult[1]_i_6 I5 -pin riscv|mem_aluResult[2]_i_13 O -pin riscv|mem_aluResult[2]_i_5 I5
netloc riscv|mem_aluResult[2]_i_13_n_0 1 25 3 26270 8688 NJ 8688 30020
load net riscv|mem_aluResult[2]_i_14_n_0 -attr @name mem_aluResult[2]_i_14_n_0 -pin riscv|mem_aluResult[1]_i_5 I0 -pin riscv|mem_aluResult[2]_i_14 O -pin riscv|mem_aluResult[2]_i_6 I5 -pin riscv|mem_aluResult[3]_i_5 I0
netloc riscv|mem_aluResult[2]_i_14_n_0 1 25 1 26410 4728n
load net riscv|mem_aluResult[2]_i_15_n_0 -attr @name mem_aluResult[2]_i_15_n_0 -pin riscv|mem_aluResult[2]_i_10 I4 -pin riscv|mem_aluResult[2]_i_15 O
netloc riscv|mem_aluResult[2]_i_15_n_0 1 24 1 23390 3388n
load net riscv|mem_aluResult[2]_i_16_n_0 -attr @name mem_aluResult[2]_i_16_n_0 -pin riscv|mem_aluResult[2]_i_10 I5 -pin riscv|mem_aluResult[2]_i_16 O
netloc riscv|mem_aluResult[2]_i_16_n_0 1 24 1 23410 3408n
load net riscv|mem_aluResult[2]_i_17_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[2]_i_17_n_0 -pin riscv|mem_aluResult[2]_i_17 O -pin riscv|mem_aluResult_reg[2]_i_12 S[3]
load net riscv|mem_aluResult[2]_i_18_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[2]_i_18_n_0 -pin riscv|mem_aluResult[2]_i_18 O -pin riscv|mem_aluResult_reg[2]_i_12 S[2]
load net riscv|mem_aluResult[2]_i_19_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[2]_i_19_n_0 -pin riscv|mem_aluResult[2]_i_19 O -pin riscv|mem_aluResult_reg[2]_i_12 S[1]
load net riscv|mem_aluResult[2]_i_20_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[2]_i_20_n_0 -pin riscv|mem_aluResult[2]_i_20 O -pin riscv|mem_aluResult_reg[2]_i_12 S[0]
load net riscv|mem_aluResult[2]_i_21_n_0 -attr @name mem_aluResult[2]_i_21_n_0 -pin riscv|mem_aluResult[2]_i_13 I4 -pin riscv|mem_aluResult[2]_i_21 O
netloc riscv|mem_aluResult[2]_i_21_n_0 1 24 1 24430 4578n
load net riscv|mem_aluResult[2]_i_22_n_0 -attr @name mem_aluResult[2]_i_22_n_0 -pin riscv|mem_aluResult[2]_i_13 I5 -pin riscv|mem_aluResult[2]_i_22 O
netloc riscv|mem_aluResult[2]_i_22_n_0 1 24 1 23650 4718n
load net riscv|mem_aluResult[2]_i_23_n_0 -attr @name mem_aluResult[2]_i_23_n_0 -pin riscv|mem_aluResult[2]_i_14 I4 -pin riscv|mem_aluResult[2]_i_23 O
netloc riscv|mem_aluResult[2]_i_23_n_0 1 24 1 N 4878
load net riscv|mem_aluResult[2]_i_24_n_0 -attr @name mem_aluResult[2]_i_24_n_0 -pin riscv|mem_aluResult[2]_i_14 I5 -pin riscv|mem_aluResult[2]_i_24 O
netloc riscv|mem_aluResult[2]_i_24_n_0 1 24 1 23230 4898n
load net riscv|mem_aluResult[2]_i_2_n_0 -attr @name mem_aluResult[2]_i_2_n_0 -pin riscv|mem_aluResult[2]_i_1 I0 -pin riscv|mem_aluResult[2]_i_2 O
netloc riscv|mem_aluResult[2]_i_2_n_0 1 26 1 28690 3938n
load net riscv|mem_aluResult[2]_i_3_n_0 -attr @name mem_aluResult[2]_i_3_n_0 -pin riscv|mem_aluResult[2]_i_1 I1 -pin riscv|mem_aluResult[2]_i_3 O
netloc riscv|mem_aluResult[2]_i_3_n_0 1 26 1 28630 4088n
load net riscv|mem_aluResult[2]_i_4_n_0 -attr @name mem_aluResult[2]_i_4_n_0 -pin riscv|mem_aluResult[2]_i_1 I3 -pin riscv|mem_aluResult[2]_i_4 O
netloc riscv|mem_aluResult[2]_i_4_n_0 1 26 1 28590 4938n
load net riscv|mem_aluResult[2]_i_5_n_0 -attr @name mem_aluResult[2]_i_5_n_0 -pin riscv|mem_aluResult[2]_i_1 I4 -pin riscv|mem_aluResult[2]_i_5 O
netloc riscv|mem_aluResult[2]_i_5_n_0 1 26 1 28550 5328n
load net riscv|mem_aluResult[2]_i_6_n_0 -attr @name mem_aluResult[2]_i_6_n_0 -pin riscv|mem_aluResult[2]_i_1 I5 -pin riscv|mem_aluResult[2]_i_6 O
netloc riscv|mem_aluResult[2]_i_6_n_0 1 26 1 N 5498
load net riscv|mem_aluResult[2]_i_7_n_0 -attr @name mem_aluResult[2]_i_7_n_0 -pin riscv|mem_aluResult[2]_i_3 I0 -pin riscv|mem_aluResult[2]_i_7 O
netloc riscv|mem_aluResult[2]_i_7_n_0 1 25 1 25370 2938n
load net riscv|mem_aluResult[2]_i_8_n_0 -attr @name mem_aluResult[2]_i_8_n_0 -pin riscv|mem_aluResult[1]_i_4 I2 -pin riscv|mem_aluResult[2]_i_3 I2 -pin riscv|mem_aluResult[2]_i_8 O
netloc riscv|mem_aluResult[2]_i_8_n_0 1 25 1 25170 3068n
load net riscv|mem_aluResult[2]_i_9_n_0 -attr @name mem_aluResult[2]_i_9_n_0 -pin riscv|mem_aluResult[2]_i_3 I3 -pin riscv|mem_aluResult[2]_i_9 O
netloc riscv|mem_aluResult[2]_i_9_n_0 1 25 1 25250 3218n
load net riscv|mem_aluResult[30]_i_10_n_0 -attr @name mem_aluResult[30]_i_10_n_0 -pin riscv|mem_aluResult[24]_i_7 I4 -pin riscv|mem_aluResult[26]_i_2 I5 -pin riscv|mem_aluResult[28]_i_2 I0 -pin riscv|mem_aluResult[30]_i_10 O -pin riscv|mem_aluResult[30]_i_2 I4
netloc riscv|mem_aluResult[30]_i_10_n_0 1 9 19 7480 12818 NJ 12818 NJ 12818 NJ 12818 NJ 12818 NJ 12818 NJ 12818 11900J 12858 14460 13358 14820J 13558 16360J 13938 18040J 14008 NJ 14008 20920J 14078 NJ 14078 23990J 13918 25110J 13818 NJ 13818 29960
load net riscv|mem_aluResult[30]_i_11_n_0 -attr @name mem_aluResult[30]_i_11_n_0 -pin riscv|mem_aluResult[10]_i_8 I1 -pin riscv|mem_aluResult[11]_i_15 I1 -pin riscv|mem_aluResult[12]_i_7 I1 -pin riscv|mem_aluResult[13]_i_8 I1 -pin riscv|mem_aluResult[14]_i_9 I1 -pin riscv|mem_aluResult[18]_i_6 I1 -pin riscv|mem_aluResult[19]_i_12 I1 -pin riscv|mem_aluResult[19]_i_7 I1 -pin riscv|mem_aluResult[20]_i_6 I1 -pin riscv|mem_aluResult[21]_i_6 I1 -pin riscv|mem_aluResult[22]_i_7 I1 -pin riscv|mem_aluResult[25]_i_8 I3 -pin riscv|mem_aluResult[29]_i_2 I5 -pin riscv|mem_aluResult[30]_i_11 O -pin riscv|mem_aluResult[30]_i_2 I5 -pin riscv|mem_aluResult[3]_i_5 I5 -pin riscv|mem_aluResult[7]_i_8 I3 -pin riscv|mem_aluResult[8]_i_7 I3 -pin riscv|mem_aluResult[9]_i_9 I1
netloc riscv|mem_aluResult[30]_i_11_n_0 1 7 21 5880 16708 6340 15748 NJ 15748 NJ 15748 NJ 15748 NJ 15748 8900 14458 NJ 14458 10920 13998 12260J 13798 13880 13298 14840 13358 17360 12118 18520J 12548 NJ 12548 20800J 12568 21760J 11988 23930 8568 26630 9208 NJ 9208 30060
load net riscv|mem_aluResult[30]_i_12_n_0 -attr @name mem_aluResult[30]_i_12_n_0 -pin riscv|mem_aluResult[18]_i_3 I1 -pin riscv|mem_aluResult[22]_i_4 I1 -pin riscv|mem_aluResult[2]_i_10 I0 -pin riscv|mem_aluResult[30]_i_12 O -pin riscv|mem_aluResult[30]_i_3 I1 -pin riscv|mem_aluResult[30]_i_5 I1 -pin riscv|mem_aluResult[31]_i_11 I0 -pin riscv|mem_aluResult[31]_i_15 I4
netloc riscv|mem_aluResult[30]_i_12_n_0 1 24 4 24690 11398 25790 16368 28310 19268 NJ
load net riscv|mem_aluResult[30]_i_13_n_0 -attr @name mem_aluResult[30]_i_13_n_0 -pin riscv|mem_aluResult[18]_i_3 I2 -pin riscv|mem_aluResult[22]_i_4 I2 -pin riscv|mem_aluResult[2]_i_10 I1 -pin riscv|mem_aluResult[2]_i_8 I4 -pin riscv|mem_aluResult[30]_i_13 O -pin riscv|mem_aluResult[30]_i_3 I2 -pin riscv|mem_aluResult[30]_i_5 I2 -pin riscv|mem_aluResult[31]_i_15 I3
netloc riscv|mem_aluResult[30]_i_13_n_0 1 24 4 24650 11418 25750 16388 28330 19288 NJ
load net riscv|mem_aluResult[30]_i_14_n_0 -attr @name mem_aluResult[30]_i_14_n_0 -pin riscv|mem_aluResult[18]_i_3 I3 -pin riscv|mem_aluResult[22]_i_4 I3 -pin riscv|mem_aluResult[27]_i_11 I2 -pin riscv|mem_aluResult[27]_i_8 I2 -pin riscv|mem_aluResult[2]_i_10 I2 -pin riscv|mem_aluResult[2]_i_8 I3 -pin riscv|mem_aluResult[30]_i_14 O -pin riscv|mem_aluResult[30]_i_3 I3 -pin riscv|mem_aluResult[30]_i_5 I3 -pin riscv|mem_aluResult[31]_i_11 I3 -pin riscv|mem_aluResult[31]_i_15 I2
netloc riscv|mem_aluResult[30]_i_14_n_0 1 8 20 6720 18758 6960J 18898 NJ 18898 NJ 18898 NJ 18898 NJ 18898 NJ 18898 10720J 18918 NJ 18918 NJ 18918 NJ 18918 NJ 18918 NJ 18918 NJ 18918 20640J 18878 NJ 18878 23730 13618 25810 16428 27750 18888 29140
load net riscv|mem_aluResult[30]_i_15_n_0 -attr @name mem_aluResult[30]_i_15_n_0 -pin riscv|mem_aluResult[18]_i_3 I4 -pin riscv|mem_aluResult[22]_i_4 I4 -pin riscv|mem_aluResult[2]_i_10 I3 -pin riscv|mem_aluResult[30]_i_15 O -pin riscv|mem_aluResult[30]_i_3 I4 -pin riscv|mem_aluResult[30]_i_5 I4
netloc riscv|mem_aluResult[30]_i_15_n_0 1 24 4 24670 11438 25730 16448 27790 17208 29580
load net riscv|mem_aluResult[30]_i_16_n_0 -attr @name mem_aluResult[30]_i_16_n_0 -pin riscv|mem_aluResult[29]_i_2 I0 -pin riscv|mem_aluResult[30]_i_16 O -pin riscv|mem_aluResult[30]_i_4 I0
netloc riscv|mem_aluResult[30]_i_16_n_0 1 27 1 29600 18578n
load net riscv|mem_aluResult[30]_i_17_n_0 -attr @name mem_aluResult[30]_i_17_n_0 -pin riscv|mem_aluResult[30]_i_17 O -pin riscv|mem_aluResult[30]_i_4 I2
netloc riscv|mem_aluResult[30]_i_17_n_0 1 27 1 29280 18968n
load net riscv|mem_aluResult[30]_i_18_n_0 -attr @name mem_aluResult[30]_i_18_n_0 -pin riscv|mem_aluResult[26]_i_3 I4 -pin riscv|mem_aluResult[29]_i_2 I3 -pin riscv|mem_aluResult[30]_i_18 O -pin riscv|mem_aluResult[30]_i_4 I4
netloc riscv|mem_aluResult[30]_i_18_n_0 1 17 11 14500 18858 NJ 18858 17180J 18778 NJ 18778 NJ 18778 19940J 18698 NJ 18698 NJ 18698 26250J 18608 28010J 17838 29120
load net riscv|mem_aluResult[30]_i_19_n_0 -attr @name mem_aluResult[30]_i_19_n_0 -pin riscv|mem_aluResult[30]_i_19 O -pin riscv|mem_aluResult[30]_i_4 I5
netloc riscv|mem_aluResult[30]_i_19_n_0 1 27 1 29440 19028n
load net riscv|mem_aluResult[30]_i_20_n_0 -attr @name mem_aluResult[30]_i_20_n_0 -pin riscv|mem_aluResult[30]_i_20 O -pin riscv|mem_aluResult[30]_i_6 I5
netloc riscv|mem_aluResult[30]_i_20_n_0 1 27 1 29160 21858n
load net riscv|mem_aluResult[30]_i_21_n_0 -attr @name mem_aluResult[30]_i_21_n_0 -pin riscv|mem_aluResult[0]_i_4 I3 -pin riscv|mem_aluResult[10]_i_6 I1 -pin riscv|mem_aluResult[11]_i_12 I1 -pin riscv|mem_aluResult[1]_i_2 I1 -pin riscv|mem_aluResult[25]_i_3 I0 -pin riscv|mem_aluResult[26]_i_4 I0 -pin riscv|mem_aluResult[28]_i_4 I0 -pin riscv|mem_aluResult[29]_i_4 I0 -pin riscv|mem_aluResult[2]_i_4 I1 -pin riscv|mem_aluResult[30]_i_21 O -pin riscv|mem_aluResult[30]_i_7 I0 -pin riscv|mem_aluResult[31]_i_8 I1 -pin riscv|mem_aluResult[4]_i_6 I1 -pin riscv|mem_aluResult[5]_i_7 I1 -pin riscv|mem_aluResult[6]_i_6 I1 -pin riscv|mem_aluResult[7]_i_7 I1 -pin riscv|mem_aluResult[8]_i_6 I1 -pin riscv|mem_aluResult[9]_i_7 I1
netloc riscv|mem_aluResult[30]_i_21_n_0 1 9 20 7500 16078 NJ 16078 NJ 16078 NJ 16078 NJ 16078 9750 14258 11180J 14498 12260 14518 13400 15988 15220J 16118 16760J 16358 17980J 16448 19300J 16438 20040J 16208 NJ 16208 23970 13638 26490 14838 28110 19488 29220 20248 NJ
load net riscv|mem_aluResult[30]_i_23_n_0 -attr @name mem_aluResult[30]_i_23_n_0 -pin riscv|mem_aluResult[30]_i_23 O -pin riscv|mem_aluResult[30]_i_7 I4
netloc riscv|mem_aluResult[30]_i_23_n_0 1 27 1 29060 22728n
load net riscv|mem_aluResult[30]_i_24_n_0 -attr @name mem_aluResult[30]_i_24_n_0 -pin riscv|mem_aluResult[30]_i_24 O -pin riscv|mem_aluResult[30]_i_8 I0
netloc riscv|mem_aluResult[30]_i_24_n_0 1 26 1 28210 13378n
load net riscv|mem_aluResult[30]_i_25_n_0 -attr @name mem_aluResult[30]_i_25_n_0 -pin riscv|mem_aluResult[0]_i_13 I1 -pin riscv|mem_aluResult[10]_i_5 I5 -pin riscv|mem_aluResult[11]_i_6 I5 -pin riscv|mem_aluResult[11]_i_7 I5 -pin riscv|mem_aluResult[11]_i_8 I5 -pin riscv|mem_aluResult[11]_i_9 I5 -pin riscv|mem_aluResult[15]_i_7 I5 -pin riscv|mem_aluResult[1]_i_8 I3 -pin riscv|mem_aluResult[21]_i_8 I5 -pin riscv|mem_aluResult[22]_i_12 I5 -pin riscv|mem_aluResult[25]_i_5 I5 -pin riscv|mem_aluResult[26]_i_6 I5 -pin riscv|mem_aluResult[26]_i_7 I5 -pin riscv|mem_aluResult[28]_i_5 I5 -pin riscv|mem_aluResult[29]_i_5 I5 -pin riscv|mem_aluResult[2]_i_22 I3 -pin riscv|mem_aluResult[2]_i_24 I3 -pin riscv|mem_aluResult[30]_i_10 I5 -pin riscv|mem_aluResult[30]_i_16 I2 -pin riscv|mem_aluResult[30]_i_17 I3 -pin riscv|mem_aluResult[30]_i_25 O -pin riscv|mem_aluResult[30]_i_8 I2 -pin riscv|mem_aluResult[8]_i_5 I5 -pin riscv|mem_aluResult[9]_i_5 I5
netloc riscv|mem_aluResult[30]_i_25_n_0 1 8 19 6720 14918 NJ 14918 NJ 14918 NJ 14918 NJ 14918 NJ 14918 9890 14918 NJ 14918 12960 14638 13580 15368 14960J 15228 17000 15178 18080J 15048 19120J 15038 20220J 14808 21580 7908 24590 13658 NJ 13658 27870
load net riscv|mem_aluResult[30]_i_26_n_0 -attr @name mem_aluResult[30]_i_26_n_0 -pin riscv|mem_aluResult[1]_i_8 I1 -pin riscv|mem_aluResult[2]_i_22 I1 -pin riscv|mem_aluResult[2]_i_24 I1 -pin riscv|mem_aluResult[30]_i_16 I4 -pin riscv|mem_aluResult[30]_i_17 I1 -pin riscv|mem_aluResult[30]_i_26 O -pin riscv|mem_aluResult[30]_i_8 I4
netloc riscv|mem_aluResult[30]_i_26_n_0 1 23 4 22800 5788 24470 19338 NJ 19338 27150
load net riscv|mem_aluResult[30]_i_27_n_0 -attr @name mem_aluResult[30]_i_27_n_0 -pin riscv|mem_aluResult[0]_i_12 I1 -pin riscv|mem_aluResult[10]_i_5 I2 -pin riscv|mem_aluResult[11]_i_6 I2 -pin riscv|mem_aluResult[11]_i_7 I2 -pin riscv|mem_aluResult[11]_i_8 I2 -pin riscv|mem_aluResult[11]_i_9 I2 -pin riscv|mem_aluResult[14]_i_10 I1 -pin riscv|mem_aluResult[15]_i_6 I1 -pin riscv|mem_aluResult[15]_i_7 I2 -pin riscv|mem_aluResult[16]_i_6 I1 -pin riscv|mem_aluResult[16]_i_7 I1 -pin riscv|mem_aluResult[16]_i_8 I1 -pin riscv|mem_aluResult[16]_i_9 I1 -pin riscv|mem_aluResult[17]_i_5 I1 -pin riscv|mem_aluResult[18]_i_7 I1 -pin riscv|mem_aluResult[19]_i_8 I1 -pin riscv|mem_aluResult[19]_i_9 I1 -pin riscv|mem_aluResult[1]_i_9 I1 -pin riscv|mem_aluResult[20]_i_7 I1 -pin riscv|mem_aluResult[20]_i_8 I1 -pin riscv|mem_aluResult[21]_i_7 I1 -pin riscv|mem_aluResult[21]_i_8 I2 -pin riscv|mem_aluResult[21]_i_9 I1 -pin riscv|mem_aluResult[22]_i_12 I2 -pin riscv|mem_aluResult[22]_i_13 I1 -pin riscv|mem_aluResult[22]_i_9 I1 -pin riscv|mem_aluResult[25]_i_5 I2 -pin riscv|mem_aluResult[26]_i_6 I2 -pin riscv|mem_aluResult[26]_i_7 I2 -pin riscv|mem_aluResult[28]_i_5 I2 -pin riscv|mem_aluResult[29]_i_5 I2 -pin riscv|mem_aluResult[2]_i_13 I3 -pin riscv|mem_aluResult[2]_i_14 I3 -pin riscv|mem_aluResult[30]_i_10 I2 -pin riscv|mem_aluResult[30]_i_19 I1 -pin riscv|mem_aluResult[30]_i_24 I2 -pin riscv|mem_aluResult[30]_i_27 O -pin riscv|mem_aluResult[30]_i_35 I2 -pin riscv|mem_aluResult[8]_i_5 I2 -pin riscv|mem_aluResult[9]_i_5 I2
netloc riscv|mem_aluResult[30]_i_27_n_0 1 8 19 6680 14938 NJ 14938 NJ 14938 NJ 14938 NJ 14938 9080 15078 9970 13018 10620 14018 12500 14618 14220 15328 14920 14868 17020 7848 NJ 7848 NJ 7848 NJ 7848 NJ 7848 23470 11518 25830 14798 27390
load net riscv|mem_aluResult[30]_i_2_n_0 -attr @name mem_aluResult[30]_i_2_n_0 -pin riscv|mem_aluResult[29]_i_1 I2 -pin riscv|mem_aluResult[30]_i_1 I0 -pin riscv|mem_aluResult[30]_i_2 O
netloc riscv|mem_aluResult[30]_i_2_n_0 1 28 1 30670 18788n
load net riscv|mem_aluResult[30]_i_30_n_0 -attr @name mem_aluResult[30]_i_30_n_0 -pin riscv|mem_aluResult[30]_i_13 I3 -pin riscv|mem_aluResult[30]_i_30 O -pin riscv|mem_aluResult[31]_i_18 I0
netloc riscv|mem_aluResult[30]_i_30_n_0 1 7 18 5860 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 NJ 29578 20860J 28598 22160J 28698 23230
load net riscv|mem_aluResult[30]_i_31_n_0 -attr @name mem_aluResult[30]_i_31_n_0 -pin riscv|mem_aluResult[30]_i_14 I5 -pin riscv|mem_aluResult[30]_i_31 O
netloc riscv|mem_aluResult[30]_i_31_n_0 1 26 1 28150 14068n
load net riscv|mem_aluResult[30]_i_32_n_0 -attr @name mem_aluResult[30]_i_32_n_0 -pin riscv|mem_aluResult[30]_i_15 I2 -pin riscv|mem_aluResult[30]_i_32 O
netloc riscv|mem_aluResult[30]_i_32_n_0 1 26 1 28130 14238n
load net riscv|mem_aluResult[30]_i_33_n_0 -attr @name mem_aluResult[30]_i_33_n_0 -pin riscv|mem_aluResult[30]_i_15 I3 -pin riscv|mem_aluResult[30]_i_33 O
netloc riscv|mem_aluResult[30]_i_33_n_0 1 26 1 28090 14388n
load net riscv|mem_aluResult[30]_i_34_n_0 -attr @name mem_aluResult[30]_i_34_n_0 -pin riscv|mem_aluResult[30]_i_15 I5 -pin riscv|mem_aluResult[30]_i_34 O
netloc riscv|mem_aluResult[30]_i_34_n_0 1 26 1 28030 14548n
load net riscv|mem_aluResult[30]_i_35_n_0 -attr @name mem_aluResult[30]_i_35_n_0 -pin riscv|mem_aluResult[30]_i_16 I0 -pin riscv|mem_aluResult[30]_i_35 O
netloc riscv|mem_aluResult[30]_i_35_n_0 1 26 1 27330 14698n
load net riscv|mem_aluResult[30]_i_36_n_0 -attr @name mem_aluResult[30]_i_36_n_0 -pin riscv|mem_aluResult[28]_i_9 I1 -pin riscv|mem_aluResult[29]_i_7 I2 -pin riscv|mem_aluResult[30]_i_20 I4 -pin riscv|mem_aluResult[30]_i_36 O
netloc riscv|mem_aluResult[30]_i_36_n_0 1 26 1 27210 17288n
load net riscv|mem_aluResult[30]_i_37_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[30]_i_37_n_0 -pin riscv|mem_aluResult[30]_i_37 O -pin riscv|mem_aluResult_reg[30]_i_22 S[3]
load net riscv|mem_aluResult[30]_i_38_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[30]_i_38_n_0 -pin riscv|mem_aluResult[30]_i_38 O -pin riscv|mem_aluResult_reg[30]_i_22 S[2]
load net riscv|mem_aluResult[30]_i_39_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[30]_i_39_n_0 -pin riscv|mem_aluResult[30]_i_39 O -pin riscv|mem_aluResult_reg[30]_i_22 S[1]
load net riscv|mem_aluResult[30]_i_3_n_0 -attr @name mem_aluResult[30]_i_3_n_0 -pin riscv|mem_aluResult[10]_i_4 I3 -pin riscv|mem_aluResult[11]_i_5 I3 -pin riscv|mem_aluResult[12]_i_1 I2 -pin riscv|mem_aluResult[13]_i_1 I2 -pin riscv|mem_aluResult[14]_i_1 I2 -pin riscv|mem_aluResult[15]_i_5 I3 -pin riscv|mem_aluResult[16]_i_1 I4 -pin riscv|mem_aluResult[17]_i_1 I4 -pin riscv|mem_aluResult[18]_i_4 I3 -pin riscv|mem_aluResult[19]_i_1 I4 -pin riscv|mem_aluResult[1]_i_2 I2 -pin riscv|mem_aluResult[20]_i_1 I4 -pin riscv|mem_aluResult[21]_i_1 I4 -pin riscv|mem_aluResult[22]_i_1 I4 -pin riscv|mem_aluResult[23]_i_2 I4 -pin riscv|mem_aluResult[24]_i_2 I4 -pin riscv|mem_aluResult[25]_i_1 I1 -pin riscv|mem_aluResult[26]_i_1 I1 -pin riscv|mem_aluResult[27]_i_2 I4 -pin riscv|mem_aluResult[28]_i_1 I1 -pin riscv|mem_aluResult[29]_i_1 I1 -pin riscv|mem_aluResult[30]_i_1 I1 -pin riscv|mem_aluResult[30]_i_3 O -pin riscv|mem_aluResult[3]_i_2 I0 -pin riscv|mem_aluResult[3]_i_4 I5 -pin riscv|mem_aluResult[4]_i_4 I3 -pin riscv|mem_aluResult[5]_i_4 I3 -pin riscv|mem_aluResult[6]_i_4 I3 -pin riscv|mem_aluResult[7]_i_4 I3 -pin riscv|mem_aluResult[8]_i_4 I3 -pin riscv|mem_aluResult[9]_i_4 I3
netloc riscv|mem_aluResult[30]_i_3_n_0 1 2 27 4720 18678 NJ 18678 NJ 18678 NJ 18678 NJ 18678 NJ 18678 NJ 18678 7360 18478 7760 18098 NJ 18098 NJ 18098 NJ 18098 NJ 18098 11040 14678 12660 15188 13680 16168 15620 14848 16560 13178 18120 13848 19540 10488 NJ 10488 NJ 10488 NJ 10488 26530 12548 28050 21978 29240J 21998 30530
load net riscv|mem_aluResult[30]_i_40_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[30]_i_40_n_0 -pin riscv|mem_aluResult[30]_i_40 O -pin riscv|mem_aluResult_reg[30]_i_22 S[0]
load net riscv|mem_aluResult[30]_i_4_n_0 -attr @name mem_aluResult[30]_i_4_n_0 -pin riscv|mem_aluResult[30]_i_1 I2 -pin riscv|mem_aluResult[30]_i_4 O -pin riscv|mem_aluResult[31]_i_4 I3
netloc riscv|mem_aluResult[30]_i_4_n_0 1 27 2 30180 21688 30650
load net riscv|mem_aluResult[30]_i_5_n_0 -attr @name mem_aluResult[30]_i_5_n_0 -pin riscv|mem_aluResult[10]_i_4 I1 -pin riscv|mem_aluResult[11]_i_5 I1 -pin riscv|mem_aluResult[12]_i_1 I4 -pin riscv|mem_aluResult[13]_i_1 I4 -pin riscv|mem_aluResult[14]_i_1 I4 -pin riscv|mem_aluResult[15]_i_5 I1 -pin riscv|mem_aluResult[16]_i_2 I3 -pin riscv|mem_aluResult[17]_i_2 I3 -pin riscv|mem_aluResult[18]_i_1 I3 -pin riscv|mem_aluResult[19]_i_2 I3 -pin riscv|mem_aluResult[20]_i_2 I3 -pin riscv|mem_aluResult[21]_i_2 I3 -pin riscv|mem_aluResult[22]_i_2 I3 -pin riscv|mem_aluResult[23]_i_2 I2 -pin riscv|mem_aluResult[24]_i_2 I2 -pin riscv|mem_aluResult[25]_i_1 I3 -pin riscv|mem_aluResult[26]_i_1 I3 -pin riscv|mem_aluResult[27]_i_2 I2 -pin riscv|mem_aluResult[28]_i_1 I3 -pin riscv|mem_aluResult[29]_i_1 I3 -pin riscv|mem_aluResult[30]_i_1 I3 -pin riscv|mem_aluResult[30]_i_5 O -pin riscv|mem_aluResult[3]_i_4 I1 -pin riscv|mem_aluResult[4]_i_4 I1 -pin riscv|mem_aluResult[5]_i_4 I1 -pin riscv|mem_aluResult[6]_i_4 I1 -pin riscv|mem_aluResult[7]_i_4 I1 -pin riscv|mem_aluResult[8]_i_4 I1 -pin riscv|mem_aluResult[9]_i_4 I1
netloc riscv|mem_aluResult[30]_i_5_n_0 1 1 28 4440 17818 NJ 17818 NJ 17818 NJ 17818 NJ 17818 NJ 17818 NJ 17818 6240J 17828 7000 18038 7900 17188 NJ 17188 NJ 17188 8920J 17168 NJ 17168 10940 15928 12560J 15488 14460 15808 15640 12538 16500 12478 18280 12748 19620 10508 NJ 10508 NJ 10508 NJ 10508 26070 10508 28190 19228 29280J 19208 30610
load net riscv|mem_aluResult[30]_i_6_n_0 -attr @name mem_aluResult[30]_i_6_n_0 -pin riscv|mem_aluResult[30]_i_1 I4 -pin riscv|mem_aluResult[30]_i_6 O
netloc riscv|mem_aluResult[30]_i_6_n_0 1 28 1 30870 22198n
load net riscv|mem_aluResult[30]_i_7_n_0 -attr @name mem_aluResult[30]_i_7_n_0 -pin riscv|mem_aluResult[30]_i_1 I5 -pin riscv|mem_aluResult[30]_i_7 O
netloc riscv|mem_aluResult[30]_i_7_n_0 1 28 1 31090 22218n
load net riscv|mem_aluResult[30]_i_8_n_0 -attr @name mem_aluResult[30]_i_8_n_0 -pin riscv|mem_aluResult[30]_i_2 I0 -pin riscv|mem_aluResult[30]_i_8 O -pin riscv|mem_aluResult[31]_i_13 I3
netloc riscv|mem_aluResult[30]_i_8_n_0 1 26 2 28710 18868 29100
load net riscv|mem_aluResult[30]_i_9_n_0 -attr @name mem_aluResult[30]_i_9_n_0 -pin riscv|mem_aluResult[10]_i_7 I4 -pin riscv|mem_aluResult[11]_i_13 I3 -pin riscv|mem_aluResult[12]_i_3 I3 -pin riscv|mem_aluResult[13]_i_3 I3 -pin riscv|mem_aluResult[14]_i_3 I3 -pin riscv|mem_aluResult[18]_i_2 I3 -pin riscv|mem_aluResult[19]_i_3 I3 -pin riscv|mem_aluResult[20]_i_3 I3 -pin riscv|mem_aluResult[21]_i_3 I4 -pin riscv|mem_aluResult[22]_i_3 I4 -pin riscv|mem_aluResult[25]_i_9 I1 -pin riscv|mem_aluResult[27]_i_12 I1 -pin riscv|mem_aluResult[28]_i_8 I4 -pin riscv|mem_aluResult[29]_i_2 I2 -pin riscv|mem_aluResult[29]_i_9 I1 -pin riscv|mem_aluResult[2]_i_9 I1 -pin riscv|mem_aluResult[30]_i_2 I2 -pin riscv|mem_aluResult[30]_i_9 O -pin riscv|mem_aluResult[3]_i_2 I2 -pin riscv|mem_aluResult[3]_i_5 I2 -pin riscv|mem_aluResult[4]_i_7 I1 -pin riscv|mem_aluResult[7]_i_10 I1 -pin riscv|mem_aluResult[8]_i_8 I1 -pin riscv|mem_aluResult[9]_i_8 I4
netloc riscv|mem_aluResult[30]_i_9_n_0 1 7 21 5860 13658 6440 15478 NJ 15478 NJ 15478 NJ 15478 NJ 15478 NJ 15478 9910 15478 NJ 15478 12280 12998 NJ 12998 15520 13418 16380 13798 17880 12308 NJ 12308 20800J 12328 21560 7268 23710 8528 25130 16188 28230 18688 29680
load net riscv|mem_aluResult[31]_i_10_n_0 -attr @name mem_aluResult[31]_i_10_n_0 -pin riscv|mem_aluResult[31]_i_10 O -pin riscv|mem_aluResult[31]_i_4 I2
netloc riscv|mem_aluResult[31]_i_10_n_0 1 27 1 29420 19708n
load net riscv|mem_aluResult[31]_i_11_n_0 -attr @name mem_aluResult[31]_i_11_n_0 -pin riscv|mem_aluResult[31]_i_11 O -pin riscv|mem_aluResult[31]_i_4 I4
netloc riscv|mem_aluResult[31]_i_11_n_0 1 27 1 29380 19878n
load net riscv|mem_aluResult[31]_i_13_n_0 -attr @name mem_aluResult[31]_i_13_n_0 -pin riscv|mem_aluResult[31]_i_13 O -pin riscv|mem_aluResult[31]_i_5 I0
netloc riscv|mem_aluResult[31]_i_13_n_0 1 27 1 29340 20158n
load net riscv|mem_aluResult[31]_i_14_n_0 -attr @name mem_aluResult[31]_i_14_n_0 -pin riscv|mem_aluResult[0]_i_11 I2 -pin riscv|mem_aluResult[31]_i_14 O -pin riscv|mem_aluResult[31]_i_5 I2
netloc riscv|mem_aluResult[31]_i_14_n_0 1 27 1 29320 20338n
load net riscv|mem_aluResult[31]_i_15_n_0 -attr @name mem_aluResult[31]_i_15_n_0 -pin riscv|mem_aluResult[2]_i_3 I4 -pin riscv|mem_aluResult[31]_i_13 I4 -pin riscv|mem_aluResult[31]_i_15 O -pin riscv|mem_aluResult[31]_i_5 I3
netloc riscv|mem_aluResult[31]_i_15_n_0 1 25 3 26650 19388 27450 20258 29140
load net riscv|mem_aluResult[31]_i_16_n_0 -attr @name mem_aluResult[31]_i_16_n_0 -pin riscv|mem_aluResult[0]_i_11 I5 -pin riscv|mem_aluResult[10]_i_8 I3 -pin riscv|mem_aluResult[11]_i_15 I3 -pin riscv|mem_aluResult[12]_i_7 I3 -pin riscv|mem_aluResult[13]_i_8 I4 -pin riscv|mem_aluResult[14]_i_9 I4 -pin riscv|mem_aluResult[18]_i_6 I4 -pin riscv|mem_aluResult[19]_i_7 I3 -pin riscv|mem_aluResult[1]_i_5 I3 -pin riscv|mem_aluResult[20]_i_6 I3 -pin riscv|mem_aluResult[21]_i_6 I3 -pin riscv|mem_aluResult[22]_i_7 I3 -pin riscv|mem_aluResult[25]_i_8 I1 -pin riscv|mem_aluResult[30]_i_4 I3 -pin riscv|mem_aluResult[31]_i_16 O -pin riscv|mem_aluResult[31]_i_5 I4 -pin riscv|mem_aluResult[7]_i_8 I1 -pin riscv|mem_aluResult[8]_i_7 I1 -pin riscv|mem_aluResult[9]_i_9 I3
netloc riscv|mem_aluResult[31]_i_16_n_0 1 7 21 5920 16668 6360 16338 NJ 16338 NJ 16338 NJ 16338 NJ 16338 8920 15908 NJ 15908 10600 14218 12300J 13818 13640 13318 15360 13398 16420 11228 NJ 11228 NJ 11228 19980J 11198 NJ 11198 23890 10448 26230 19508 NJ 19508 30140
load net riscv|mem_aluResult[31]_i_17_n_0 -attr @name mem_aluResult[31]_i_17_n_0 -pin riscv|mem_aluResult[28]_i_2 I4 -pin riscv|mem_aluResult[30]_i_2 I3 -pin riscv|mem_aluResult[31]_i_17 O -pin riscv|mem_aluResult[31]_i_5 I5
netloc riscv|mem_aluResult[31]_i_17_n_0 1 27 1 30120 18488n
load net riscv|mem_aluResult[31]_i_18_n_0 -attr @name mem_aluResult[31]_i_18_n_0 -pin riscv|mem_aluResult[27]_i_11 I0 -pin riscv|mem_aluResult[27]_i_8 I0 -pin riscv|mem_aluResult[31]_i_11 I1 -pin riscv|mem_aluResult[31]_i_18 O
netloc riscv|mem_aluResult[31]_i_18_n_0 1 8 19 6240 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 NJ 21578 24170 19858 NJ 19858 NJ
load net riscv|mem_aluResult[31]_i_19_n_0 -attr @name mem_aluResult[31]_i_19_n_0 -pin riscv|mem_aluResult[27]_i_11 I1 -pin riscv|mem_aluResult[27]_i_8 I1 -pin riscv|mem_aluResult[30]_i_13 I4 -pin riscv|mem_aluResult[31]_i_11 I2 -pin riscv|mem_aluResult[31]_i_19 O
netloc riscv|mem_aluResult[31]_i_19_n_0 1 8 19 6660 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 NJ 20758 23250 19878 NJ 19878 NJ
load net riscv|mem_aluResult[31]_i_20_n_0 -attr @name mem_aluResult[31]_i_20_n_0 -pin riscv|mem_aluResult[27]_i_11 I3 -pin riscv|mem_aluResult[27]_i_8 I3 -pin riscv|mem_aluResult[2]_i_8 I2 -pin riscv|mem_aluResult[31]_i_11 I4 -pin riscv|mem_aluResult[31]_i_15 I1 -pin riscv|mem_aluResult[31]_i_20 O
netloc riscv|mem_aluResult[31]_i_20_n_0 1 8 19 6700 18938 NJ 18938 NJ 18938 NJ 18938 8600J 18918 NJ 18918 NJ 18918 10660J 18938 NJ 18938 NJ 18938 NJ 18938 NJ 18938 NJ 18938 NJ 18938 20680J 18898 NJ 18898 24330 20488 NJ 20488 28650
load net riscv|mem_aluResult[31]_i_21_n_0 -attr @name mem_aluResult[31]_i_21_n_0 -pin riscv|mem_aluResult[27]_i_11 I4 -pin riscv|mem_aluResult[27]_i_8 I4 -pin riscv|mem_aluResult[2]_i_8 I1 -pin riscv|mem_aluResult[31]_i_11 I5 -pin riscv|mem_aluResult[31]_i_15 I0 -pin riscv|mem_aluResult[31]_i_21 O
netloc riscv|mem_aluResult[31]_i_21_n_0 1 8 19 6680 19528 NJ 19528 NJ 19528 NJ 19528 NJ 19528 NJ 19528 NJ 19528 11120J 19428 12940J 19118 NJ 19118 NJ 19118 NJ 19118 NJ 19118 NJ 19118 NJ 19118 NJ 19118 24310 20508 NJ 20508 27470
load net riscv|mem_aluResult[31]_i_22_n_0 -attr @name mem_aluResult[31]_i_22_n_0 -pin riscv|mem_aluResult[31]_i_13 I0 -pin riscv|mem_aluResult[31]_i_22 O
netloc riscv|mem_aluResult[31]_i_22_n_0 1 26 1 27910 17898n
load net riscv|mem_aluResult[31]_i_23_n_0 -attr @name mem_aluResult[31]_i_23_n_0 -pin riscv|mem_aluResult[31]_i_13 I2 -pin riscv|mem_aluResult[31]_i_23 O
netloc riscv|mem_aluResult[31]_i_23_n_0 1 26 1 27350 18068n
load net riscv|mem_aluResult[31]_i_2_n_0 -attr @name mem_aluResult[31]_i_2_n_0 -pin riscv|mem_aluResult[31]_i_1 I0 -pin riscv|mem_aluResult[31]_i_2 O
netloc riscv|mem_aluResult[31]_i_2_n_0 1 28 1 30590 21408n
load net riscv|mem_aluResult[31]_i_3_n_0 -attr @name mem_aluResult[31]_i_3_n_0 -pin riscv|mem_aluResult[1]_i_4 I5 -pin riscv|mem_aluResult[2]_i_1 I2 -pin riscv|mem_aluResult[30]_i_3 I0 -pin riscv|mem_aluResult[30]_i_5 I0 -pin riscv|mem_aluResult[31]_i_1 I1 -pin riscv|mem_aluResult[31]_i_3 O
netloc riscv|mem_aluResult[31]_i_3_n_0 1 25 4 26670 12718 27490 19248 29860 22308 NJ
load net riscv|mem_aluResult[31]_i_4_n_0 -attr @name mem_aluResult[31]_i_4_n_0 -pin riscv|mem_aluResult[31]_i_1 I2 -pin riscv|mem_aluResult[31]_i_4 O
netloc riscv|mem_aluResult[31]_i_4_n_0 1 28 1 30570 21588n
load net riscv|mem_aluResult[31]_i_5_n_0 -attr @name mem_aluResult[31]_i_5_n_0 -pin riscv|mem_aluResult[31]_i_1 I3 -pin riscv|mem_aluResult[31]_i_5 O
netloc riscv|mem_aluResult[31]_i_5_n_0 1 28 1 30550 21768n
load net riscv|mem_aluResult[31]_i_6_n_0 -attr @name mem_aluResult[31]_i_6_n_0 -pin riscv|mem_aluResult[31]_i_1 I4 -pin riscv|mem_aluResult[31]_i_6 O
netloc riscv|mem_aluResult[31]_i_6_n_0 1 28 1 30490 21918n
load net riscv|mem_aluResult[31]_i_7_n_0 -attr @name mem_aluResult[31]_i_7_n_0 -pin riscv|mem_aluResult[0]_i_2 I4 -pin riscv|mem_aluResult[0]_i_4 I2 -pin riscv|mem_aluResult[10]_i_3 I2 -pin riscv|mem_aluResult[10]_i_6 I3 -pin riscv|mem_aluResult[11]_i_12 I3 -pin riscv|mem_aluResult[11]_i_4 I2 -pin riscv|mem_aluResult[12]_i_6 I1 -pin riscv|mem_aluResult[13]_i_6 I1 -pin riscv|mem_aluResult[14]_i_7 I1 -pin riscv|mem_aluResult[15]_i_4 I3 -pin riscv|mem_aluResult[16]_i_5 I0 -pin riscv|mem_aluResult[17]_i_4 I0 -pin riscv|mem_aluResult[18]_i_5 I0 -pin riscv|mem_aluResult[19]_i_5 I0 -pin riscv|mem_aluResult[1]_i_3 I0 -pin riscv|mem_aluResult[20]_i_5 I0 -pin riscv|mem_aluResult[21]_i_5 I0 -pin riscv|mem_aluResult[22]_i_6 I0 -pin riscv|mem_aluResult[23]_i_1 I3 -pin riscv|mem_aluResult[24]_i_1 I5 -pin riscv|mem_aluResult[25]_i_7 I0 -pin riscv|mem_aluResult[26]_i_11 I4 -pin riscv|mem_aluResult[27]_i_1 I3 -pin riscv|mem_aluResult[28]_i_3 I0 -pin riscv|mem_aluResult[2]_i_11 I4 -pin riscv|mem_aluResult[2]_i_2 I4 -pin riscv|mem_aluResult[30]_i_6 I4 -pin riscv|mem_aluResult[31]_i_1 I5 -pin riscv|mem_aluResult[31]_i_7 O -pin riscv|mem_aluResult[3]_i_1 I1 -pin riscv|mem_aluResult[3]_i_8 I0 -pin riscv|mem_aluResult[4]_i_3 I2 -pin riscv|mem_aluResult[4]_i_6 I3 -pin riscv|mem_aluResult[5]_i_3 I2 -pin riscv|mem_aluResult[5]_i_7 I3 -pin riscv|mem_aluResult[6]_i_3 I2 -pin riscv|mem_aluResult[6]_i_6 I3 -pin riscv|mem_aluResult[7]_i_3 I2 -pin riscv|mem_aluResult[7]_i_7 I3 -pin riscv|mem_aluResult[8]_i_3 I2 -pin riscv|mem_aluResult[8]_i_6 I3 -pin riscv|mem_aluResult[9]_i_3 I2 -pin riscv|mem_aluResult[9]_i_7 I3
netloc riscv|mem_aluResult[31]_i_7_n_0 1 1 28 4380 18038 NJ 18038 NJ 18038 NJ 18038 NJ 18038 NJ 18038 NJ 18038 6480 17788 7400 18118 7980 17508 NJ 17508 NJ 17508 8960J 17438 9830 15808 10740 14398 12240 14858 14480 15568 15680 17948 17080 18278 18280 17748 NJ 17748 NJ 17748 21920J 17728 23950 10468 26510 12988 NJ 12988 29840 21328 30890
load net riscv|mem_aluResult[31]_i_8_n_0 -attr @name mem_aluResult[31]_i_8_n_0 -pin riscv|mem_aluResult[31]_i_2 I0 -pin riscv|mem_aluResult[31]_i_8 O
netloc riscv|mem_aluResult[31]_i_8_n_0 1 27 1 29500 19388n
load net riscv|mem_aluResult[31]_i_9_n_0 -attr @name mem_aluResult[31]_i_9_n_0 -pin riscv|mem_aluResult[31]_i_4 I0 -pin riscv|mem_aluResult[31]_i_9 O
netloc riscv|mem_aluResult[31]_i_9_n_0 1 27 1 29460 19568n
load net riscv|mem_aluResult[3]_i_2_n_0 -attr @name mem_aluResult[3]_i_2_n_0 -pin riscv|mem_aluResult[3]_i_1 I0 -pin riscv|mem_aluResult[3]_i_2 O
netloc riscv|mem_aluResult[3]_i_2_n_0 1 27 1 30120 12588n
load net riscv|mem_aluResult[3]_i_3_n_0 -attr @name mem_aluResult[3]_i_3_n_0 -pin riscv|mem_aluResult[3]_i_1 I2 -pin riscv|mem_aluResult[3]_i_3 O
netloc riscv|mem_aluResult[3]_i_3_n_0 1 27 1 30080 12738n
load net riscv|mem_aluResult[3]_i_4_n_0 -attr @name mem_aluResult[3]_i_4_n_0 -pin riscv|mem_aluResult[3]_i_1 I5 -pin riscv|mem_aluResult[3]_i_4 O
netloc riscv|mem_aluResult[3]_i_4_n_0 1 27 1 N 12888
load net riscv|mem_aluResult[3]_i_5_n_0 -attr @name mem_aluResult[3]_i_5_n_0 -pin riscv|mem_aluResult[3]_i_2 I4 -pin riscv|mem_aluResult[3]_i_5 O
netloc riscv|mem_aluResult[3]_i_5_n_0 1 26 1 28390 8488n
load net riscv|mem_aluResult[3]_i_6_n_0 -attr @name mem_aluResult[3]_i_6_n_0 -pin riscv|mem_aluResult[3]_i_4 I0 -pin riscv|mem_aluResult[3]_i_6 O
netloc riscv|mem_aluResult[3]_i_6_n_0 1 26 1 28330 9288n
load net riscv|mem_aluResult[3]_i_7_n_0 -attr @name mem_aluResult[3]_i_7_n_0 -pin riscv|mem_aluResult[3]_i_6 I0 -pin riscv|mem_aluResult[3]_i_7 O
netloc riscv|mem_aluResult[3]_i_7_n_0 1 25 1 26090 9108n
load net riscv|mem_aluResult[3]_i_8_n_0 -attr @name mem_aluResult[3]_i_8_n_0 -pin riscv|mem_aluResult[3]_i_6 I1 -pin riscv|mem_aluResult[3]_i_8 O
netloc riscv|mem_aluResult[3]_i_8_n_0 1 25 1 N 9268
load net riscv|mem_aluResult[4]_i_2_n_0 -attr @name mem_aluResult[4]_i_2_n_0 -pin riscv|mem_aluResult[3]_i_1 I3 -pin riscv|mem_aluResult[4]_i_1 I2 -pin riscv|mem_aluResult[4]_i_2 O
netloc riscv|mem_aluResult[4]_i_2_n_0 1 26 2 28730 9028 30140
load net riscv|mem_aluResult[4]_i_3_n_0 -attr @name mem_aluResult[4]_i_3_n_0 -pin riscv|mem_aluResult[4]_i_1 I4 -pin riscv|mem_aluResult[4]_i_3 O
netloc riscv|mem_aluResult[4]_i_3_n_0 1 26 1 N 7878
load net riscv|mem_aluResult[4]_i_4_n_0 -attr @name mem_aluResult[4]_i_4_n_0 -pin riscv|mem_aluResult[4]_i_1 I5 -pin riscv|mem_aluResult[4]_i_4 O
netloc riscv|mem_aluResult[4]_i_4_n_0 1 26 1 27850 7898n
load net riscv|mem_aluResult[4]_i_5_n_0 -attr @name mem_aluResult[4]_i_5_n_0 -pin riscv|mem_aluResult[0]_i_11 I4 -pin riscv|mem_aluResult[1]_i_6 I4 -pin riscv|mem_aluResult[2]_i_5 I4 -pin riscv|mem_aluResult[4]_i_2 I4 -pin riscv|mem_aluResult[4]_i_5 O
netloc riscv|mem_aluResult[4]_i_5_n_0 1 25 3 26690 9148 28630 17068 29720J
load net riscv|mem_aluResult[4]_i_6_n_0 -attr @name mem_aluResult[4]_i_6_n_0 -pin riscv|mem_aluResult[4]_i_4 I0 -pin riscv|mem_aluResult[4]_i_6 O
netloc riscv|mem_aluResult[4]_i_6_n_0 1 25 1 N 8008
load net riscv|mem_aluResult[4]_i_7_n_0 -attr @name mem_aluResult[4]_i_7_n_0 -pin riscv|mem_aluResult[3]_i_4 I2 -pin riscv|mem_aluResult[4]_i_4 I4 -pin riscv|mem_aluResult[4]_i_7 O
netloc riscv|mem_aluResult[4]_i_7_n_0 1 25 2 26150 8748 28350
load net riscv|mem_aluResult[5]_i_2_n_0 -attr @name mem_aluResult[5]_i_2_n_0 -pin riscv|mem_aluResult[4]_i_1 I0 -pin riscv|mem_aluResult[5]_i_1 I2 -pin riscv|mem_aluResult[5]_i_2 O
netloc riscv|mem_aluResult[5]_i_2_n_0 1 26 1 28190 5838n
load net riscv|mem_aluResult[5]_i_3_n_0 -attr @name mem_aluResult[5]_i_3_n_0 -pin riscv|mem_aluResult[5]_i_1 I4 -pin riscv|mem_aluResult[5]_i_3 O
netloc riscv|mem_aluResult[5]_i_3_n_0 1 26 1 28410 6178n
load net riscv|mem_aluResult[5]_i_4_n_0 -attr @name mem_aluResult[5]_i_4_n_0 -pin riscv|mem_aluResult[5]_i_1 I5 -pin riscv|mem_aluResult[5]_i_4 O
netloc riscv|mem_aluResult[5]_i_4_n_0 1 26 1 28350 6348n
load net riscv|mem_aluResult[5]_i_5_n_0 -attr @name mem_aluResult[5]_i_5_n_0 -pin riscv|mem_aluResult[1]_i_5 I4 -pin riscv|mem_aluResult[2]_i_6 I4 -pin riscv|mem_aluResult[3]_i_5 I3 -pin riscv|mem_aluResult[5]_i_2 I4 -pin riscv|mem_aluResult[5]_i_5 O
netloc riscv|mem_aluResult[5]_i_5_n_0 1 25 1 26390 3528n
load net riscv|mem_aluResult[5]_i_7_n_0 -attr @name mem_aluResult[5]_i_7_n_0 -pin riscv|mem_aluResult[5]_i_4 I0 -pin riscv|mem_aluResult[5]_i_7 O
netloc riscv|mem_aluResult[5]_i_7_n_0 1 25 1 N 6308
load net riscv|mem_aluResult[5]_i_8_n_0 -attr @name mem_aluResult[5]_i_8_n_0 -pin riscv|mem_aluResult[4]_i_4 I2 -pin riscv|mem_aluResult[5]_i_4 I4 -pin riscv|mem_aluResult[5]_i_8 O
netloc riscv|mem_aluResult[5]_i_8_n_0 1 25 1 26610 6388n
load net riscv|mem_aluResult[6]_i_2_n_0 -attr @name mem_aluResult[6]_i_2_n_0 -pin riscv|mem_aluResult[5]_i_1 I0 -pin riscv|mem_aluResult[6]_i_1 I2 -pin riscv|mem_aluResult[6]_i_2 O
netloc riscv|mem_aluResult[6]_i_2_n_0 1 26 1 28610 5668n
load net riscv|mem_aluResult[6]_i_3_n_0 -attr @name mem_aluResult[6]_i_3_n_0 -pin riscv|mem_aluResult[6]_i_1 I4 -pin riscv|mem_aluResult[6]_i_3 O
netloc riscv|mem_aluResult[6]_i_3_n_0 1 26 1 28390 6008n
load net riscv|mem_aluResult[6]_i_4_n_0 -attr @name mem_aluResult[6]_i_4_n_0 -pin riscv|mem_aluResult[6]_i_1 I5 -pin riscv|mem_aluResult[6]_i_4 O
netloc riscv|mem_aluResult[6]_i_4_n_0 1 26 1 N 6798
load net riscv|mem_aluResult[6]_i_5_n_0 -attr @name mem_aluResult[6]_i_5_n_0 -pin riscv|mem_aluResult[2]_i_13 I0 -pin riscv|mem_aluResult[4]_i_2 I5 -pin riscv|mem_aluResult[6]_i_2 I4 -pin riscv|mem_aluResult[6]_i_5 O
netloc riscv|mem_aluResult[6]_i_5_n_0 1 24 3 24710 4578 25090 9168 NJ
load net riscv|mem_aluResult[6]_i_6_n_0 -attr @name mem_aluResult[6]_i_6_n_0 -pin riscv|mem_aluResult[6]_i_4 I0 -pin riscv|mem_aluResult[6]_i_6 O
netloc riscv|mem_aluResult[6]_i_6_n_0 1 25 1 25170 5008n
load net riscv|mem_aluResult[6]_i_7_n_0 -attr @name mem_aluResult[6]_i_7_n_0 -pin riscv|mem_aluResult[5]_i_4 I2 -pin riscv|mem_aluResult[6]_i_4 I4 -pin riscv|mem_aluResult[6]_i_7 O
netloc riscv|mem_aluResult[6]_i_7_n_0 1 25 1 26630 6348n
load net riscv|mem_aluResult[7]_i_10_n_0 -attr @name mem_aluResult[7]_i_10_n_0 -pin riscv|mem_aluResult[7]_i_10 O -pin riscv|mem_aluResult[7]_i_8 I5
netloc riscv|mem_aluResult[7]_i_10_n_0 1 24 1 N 6888
load net riscv|mem_aluResult[7]_i_11_n_0 -attr @rip(#000000) 3 -attr @name mem_aluResult[7]_i_11_n_0 -pin riscv|mem_aluResult[7]_i_11 O -pin riscv|mem_aluResult_reg[7]_i_9 S[3]
load net riscv|mem_aluResult[7]_i_12_n_0 -attr @rip(#000000) 2 -attr @name mem_aluResult[7]_i_12_n_0 -pin riscv|mem_aluResult[7]_i_12 O -pin riscv|mem_aluResult_reg[7]_i_9 S[2]
load net riscv|mem_aluResult[7]_i_13_n_0 -attr @rip(#000000) 1 -attr @name mem_aluResult[7]_i_13_n_0 -pin riscv|mem_aluResult[7]_i_13 O -pin riscv|mem_aluResult_reg[7]_i_9 S[1]
load net riscv|mem_aluResult[7]_i_14_n_0 -attr @rip(#000000) 0 -attr @name mem_aluResult[7]_i_14_n_0 -pin riscv|mem_aluResult[7]_i_14 O -pin riscv|mem_aluResult_reg[7]_i_9 S[0]
load net riscv|mem_aluResult[7]_i_2_n_0 -attr @name mem_aluResult[7]_i_2_n_0 -pin riscv|mem_aluResult[6]_i_1 I0 -pin riscv|mem_aluResult[7]_i_1 I2 -pin riscv|mem_aluResult[7]_i_2 O
netloc riscv|mem_aluResult[7]_i_2_n_0 1 26 1 28730 6698n
load net riscv|mem_aluResult[7]_i_3_n_0 -attr @name mem_aluResult[7]_i_3_n_0 -pin riscv|mem_aluResult[7]_i_1 I4 -pin riscv|mem_aluResult[7]_i_3 O
netloc riscv|mem_aluResult[7]_i_3_n_0 1 26 1 N 7168
load net riscv|mem_aluResult[7]_i_4_n_0 -attr @name mem_aluResult[7]_i_4_n_0 -pin riscv|mem_aluResult[7]_i_1 I5 -pin riscv|mem_aluResult[7]_i_4 O
netloc riscv|mem_aluResult[7]_i_4_n_0 1 26 1 27530 7188n
load net riscv|mem_aluResult[7]_i_5_n_0 -attr @name mem_aluResult[7]_i_5_n_0 -pin riscv|mem_aluResult[2]_i_14 I0 -pin riscv|mem_aluResult[5]_i_2 I5 -pin riscv|mem_aluResult[7]_i_2 I4 -pin riscv|mem_aluResult[7]_i_5 O
netloc riscv|mem_aluResult[7]_i_5_n_0 1 24 2 24710 4758 25270
load net riscv|mem_aluResult[7]_i_7_n_0 -attr @name mem_aluResult[7]_i_7_n_0 -pin riscv|mem_aluResult[7]_i_4 I0 -pin riscv|mem_aluResult[7]_i_7 O
netloc riscv|mem_aluResult[7]_i_7_n_0 1 25 1 26330 5178n
load net riscv|mem_aluResult[7]_i_8_n_0 -attr @name mem_aluResult[7]_i_8_n_0 -pin riscv|mem_aluResult[6]_i_4 I2 -pin riscv|mem_aluResult[7]_i_4 I4 -pin riscv|mem_aluResult[7]_i_8 O
netloc riscv|mem_aluResult[7]_i_8_n_0 1 25 1 26470 6798n
load net riscv|mem_aluResult[8]_i_2_n_0 -attr @name mem_aluResult[8]_i_2_n_0 -pin riscv|mem_aluResult[7]_i_1 I0 -pin riscv|mem_aluResult[8]_i_1 I2 -pin riscv|mem_aluResult[8]_i_2 O
netloc riscv|mem_aluResult[8]_i_2_n_0 1 19 8 17400 8408 NJ 8408 NJ 8408 NJ 8408 NJ 8408 NJ 8408 NJ 8408 27550
load net riscv|mem_aluResult[8]_i_3_n_0 -attr @name mem_aluResult[8]_i_3_n_0 -pin riscv|mem_aluResult[8]_i_1 I4 -pin riscv|mem_aluResult[8]_i_3 O
netloc riscv|mem_aluResult[8]_i_3_n_0 1 19 1 16920 14268n
load net riscv|mem_aluResult[8]_i_4_n_0 -attr @name mem_aluResult[8]_i_4_n_0 -pin riscv|mem_aluResult[8]_i_1 I5 -pin riscv|mem_aluResult[8]_i_4 O
netloc riscv|mem_aluResult[8]_i_4_n_0 1 19 1 16880 14448n
load net riscv|mem_aluResult[8]_i_5_n_0 -attr @name mem_aluResult[8]_i_5_n_0 -pin riscv|mem_aluResult[1]_i_6 I3 -pin riscv|mem_aluResult[2]_i_5 I3 -pin riscv|mem_aluResult[4]_i_2 I0 -pin riscv|mem_aluResult[6]_i_2 I5 -pin riscv|mem_aluResult[8]_i_2 I4 -pin riscv|mem_aluResult[8]_i_5 O
netloc riscv|mem_aluResult[8]_i_5_n_0 1 25 2 26370 9068 NJ
load net riscv|mem_aluResult[8]_i_6_n_0 -attr @name mem_aluResult[8]_i_6_n_0 -pin riscv|mem_aluResult[8]_i_4 I0 -pin riscv|mem_aluResult[8]_i_6 O
netloc riscv|mem_aluResult[8]_i_6_n_0 1 18 1 15300 14728n
load net riscv|mem_aluResult[8]_i_7_n_0 -attr @name mem_aluResult[8]_i_7_n_0 -pin riscv|mem_aluResult[7]_i_4 I2 -pin riscv|mem_aluResult[8]_i_4 I4 -pin riscv|mem_aluResult[8]_i_7 O
netloc riscv|mem_aluResult[8]_i_7_n_0 1 18 8 15820 8788 NJ 8788 NJ 8788 NJ 8788 NJ 8788 NJ 8788 NJ 8788 25170
load net riscv|mem_aluResult[8]_i_8_n_0 -attr @name mem_aluResult[8]_i_8_n_0 -pin riscv|mem_aluResult[8]_i_7 I5 -pin riscv|mem_aluResult[8]_i_8 O
netloc riscv|mem_aluResult[8]_i_8_n_0 1 24 1 N 7348
load net riscv|mem_aluResult[9]_i_2_n_0 -attr @name mem_aluResult[9]_i_2_n_0 -pin riscv|mem_aluResult[8]_i_1 I0 -pin riscv|mem_aluResult[9]_i_1 I2 -pin riscv|mem_aluResult[9]_i_2 O
netloc riscv|mem_aluResult[9]_i_2_n_0 1 18 2 15860 11678 16340
load net riscv|mem_aluResult[9]_i_3_n_0 -attr @name mem_aluResult[9]_i_3_n_0 -pin riscv|mem_aluResult[9]_i_1 I4 -pin riscv|mem_aluResult[9]_i_3 O
netloc riscv|mem_aluResult[9]_i_3_n_0 1 18 1 15000 11798n
load net riscv|mem_aluResult[9]_i_4_n_0 -attr @name mem_aluResult[9]_i_4_n_0 -pin riscv|mem_aluResult[9]_i_1 I5 -pin riscv|mem_aluResult[9]_i_4 O
netloc riscv|mem_aluResult[9]_i_4_n_0 1 18 1 15040 11818n
load net riscv|mem_aluResult[9]_i_5_n_0 -attr @name mem_aluResult[9]_i_5_n_0 -pin riscv|mem_aluResult[2]_i_6 I3 -pin riscv|mem_aluResult[3]_i_5 I4 -pin riscv|mem_aluResult[5]_i_2 I0 -pin riscv|mem_aluResult[7]_i_2 I5 -pin riscv|mem_aluResult[9]_i_2 I4 -pin riscv|mem_aluResult[9]_i_5 O
netloc riscv|mem_aluResult[9]_i_5_n_0 1 18 8 15840 8548 NJ 8548 NJ 8548 NJ 8548 NJ 8548 NJ 8548 NJ 8548 25250
load net riscv|mem_aluResult[9]_i_7_n_0 -attr @name mem_aluResult[9]_i_7_n_0 -pin riscv|mem_aluResult[9]_i_4 I0 -pin riscv|mem_aluResult[9]_i_7 O
netloc riscv|mem_aluResult[9]_i_7_n_0 1 17 1 13720 14178n
load net riscv|mem_aluResult[9]_i_8_n_0 -attr @name mem_aluResult[9]_i_8_n_0 -pin riscv|mem_aluResult[8]_i_4 I2 -pin riscv|mem_aluResult[9]_i_4 I4 -pin riscv|mem_aluResult[9]_i_8 O
netloc riscv|mem_aluResult[9]_i_8_n_0 1 17 2 14280 14898 15220J
load net riscv|mem_aluResult[9]_i_9_n_0 -attr @name mem_aluResult[9]_i_9_n_0 -pin riscv|mem_aluResult[9]_i_8 I0 -pin riscv|mem_aluResult[9]_i_9 O
netloc riscv|mem_aluResult[9]_i_9_n_0 1 16 1 12820 14298n
load net riscv|mem_aluResult_reg[11]_i_14_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[11]_i_14_n_0 -pin riscv|mem_aluResult_reg[11]_i_14 CO[3] -pin riscv|mem_aluResult_reg[15]_i_11 CI
load net riscv|mem_aluResult_reg[11]_i_14_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[11]_i_14_n_1 -pin riscv|mem_aluResult_reg[11]_i_14 CO[2]
load net riscv|mem_aluResult_reg[11]_i_14_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[11]_i_14_n_2 -pin riscv|mem_aluResult_reg[11]_i_14 CO[1]
load net riscv|mem_aluResult_reg[11]_i_14_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[11]_i_14_n_3 -pin riscv|mem_aluResult_reg[11]_i_14 CO[0]
load net riscv|mem_aluResult_reg[15]_i_11_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[15]_i_11_n_0 -pin riscv|mem_aluResult_reg[15]_i_11 CO[3] -pin riscv|mem_aluResult_reg[19]_i_13 CI
load net riscv|mem_aluResult_reg[15]_i_11_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[15]_i_11_n_1 -pin riscv|mem_aluResult_reg[15]_i_11 CO[2]
load net riscv|mem_aluResult_reg[15]_i_11_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[15]_i_11_n_2 -pin riscv|mem_aluResult_reg[15]_i_11 CO[1]
load net riscv|mem_aluResult_reg[15]_i_11_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[15]_i_11_n_3 -pin riscv|mem_aluResult_reg[15]_i_11 CO[0]
load net riscv|mem_aluResult_reg[19]_i_13_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[19]_i_13_n_0 -pin riscv|mem_aluResult_reg[19]_i_13 CO[3] -pin riscv|mem_aluResult_reg[26]_i_13 CI
load net riscv|mem_aluResult_reg[19]_i_13_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[19]_i_13_n_1 -pin riscv|mem_aluResult_reg[19]_i_13 CO[2]
load net riscv|mem_aluResult_reg[19]_i_13_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[19]_i_13_n_2 -pin riscv|mem_aluResult_reg[19]_i_13 CO[1]
load net riscv|mem_aluResult_reg[19]_i_13_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[19]_i_13_n_3 -pin riscv|mem_aluResult_reg[19]_i_13 CO[0]
load net riscv|mem_aluResult_reg[26]_i_13_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[26]_i_13_n_0 -pin riscv|mem_aluResult_reg[26]_i_13 CO[3] -pin riscv|mem_aluResult_reg[26]_i_9 CI
load net riscv|mem_aluResult_reg[26]_i_13_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[26]_i_13_n_1 -pin riscv|mem_aluResult_reg[26]_i_13 CO[2]
load net riscv|mem_aluResult_reg[26]_i_13_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[26]_i_13_n_2 -pin riscv|mem_aluResult_reg[26]_i_13 CO[1]
load net riscv|mem_aluResult_reg[26]_i_13_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[26]_i_13_n_3 -pin riscv|mem_aluResult_reg[26]_i_13 CO[0]
load net riscv|mem_aluResult_reg[26]_i_9_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[26]_i_9_n_0 -pin riscv|mem_aluResult_reg[26]_i_9 CO[3] -pin riscv|mem_aluResult_reg[30]_i_22 CI
load net riscv|mem_aluResult_reg[26]_i_9_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[26]_i_9_n_1 -pin riscv|mem_aluResult_reg[26]_i_9 CO[2]
load net riscv|mem_aluResult_reg[26]_i_9_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[26]_i_9_n_2 -pin riscv|mem_aluResult_reg[26]_i_9 CO[1]
load net riscv|mem_aluResult_reg[26]_i_9_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[26]_i_9_n_3 -pin riscv|mem_aluResult_reg[26]_i_9 CO[0]
load net riscv|mem_aluResult_reg[2]_i_12_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[2]_i_12_n_0 -pin riscv|mem_aluResult_reg[2]_i_12 CO[3] -pin riscv|mem_aluResult_reg[7]_i_9 CI
load net riscv|mem_aluResult_reg[2]_i_12_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[2]_i_12_n_1 -pin riscv|mem_aluResult_reg[2]_i_12 CO[2]
load net riscv|mem_aluResult_reg[2]_i_12_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[2]_i_12_n_2 -pin riscv|mem_aluResult_reg[2]_i_12 CO[1]
load net riscv|mem_aluResult_reg[2]_i_12_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[2]_i_12_n_3 -pin riscv|mem_aluResult_reg[2]_i_12 CO[0]
load net riscv|mem_aluResult_reg[30]_i_22_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[30]_i_22_n_1 -pin riscv|mem_aluResult_reg[30]_i_22 CO[2]
load net riscv|mem_aluResult_reg[30]_i_22_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[30]_i_22_n_2 -pin riscv|mem_aluResult_reg[30]_i_22 CO[1]
load net riscv|mem_aluResult_reg[30]_i_22_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[30]_i_22_n_3 -pin riscv|mem_aluResult_reg[30]_i_22 CO[0]
load net riscv|mem_aluResult_reg[7]_i_9_n_0 -attr @rip(#000000) CO[3] -attr @name mem_aluResult_reg[7]_i_9_n_0 -pin riscv|mem_aluResult_reg[11]_i_14 CI -pin riscv|mem_aluResult_reg[7]_i_9 CO[3]
load net riscv|mem_aluResult_reg[7]_i_9_n_1 -attr @rip(#000000) CO[2] -attr @name mem_aluResult_reg[7]_i_9_n_1 -pin riscv|mem_aluResult_reg[7]_i_9 CO[2]
load net riscv|mem_aluResult_reg[7]_i_9_n_2 -attr @rip(#000000) CO[1] -attr @name mem_aluResult_reg[7]_i_9_n_2 -pin riscv|mem_aluResult_reg[7]_i_9 CO[1]
load net riscv|mem_aluResult_reg[7]_i_9_n_3 -attr @rip(#000000) CO[0] -attr @name mem_aluResult_reg[7]_i_9_n_3 -pin riscv|mem_aluResult_reg[7]_i_9 CO[0]
load net riscv|mem_aluResult_reg_n_0_[0] -attr @name mem_aluResult_reg_n_0_[0] -pin riscv|if_PC[0]_i_2 I5 -pin riscv|mem_aluResult_reg[0] Q -pin riscv|wb_aluResult_reg[0] D
netloc riscv|mem_aluResult_reg_n_0_[0] 1 22 10 20980 19358 NJ 19358 NJ 19358 NJ 19358 27630J 19068 NJ 19068 NJ 19068 NJ 19068 NJ 19068 32350
load net riscv|mem_aluResult_reg_n_0_[10] -attr @name mem_aluResult_reg_n_0_[10] -pin riscv|mem_aluResult_reg[10] Q -pin riscv|wb_aluResult_reg[10] D
netloc riscv|mem_aluResult_reg_n_0_[10] 1 18 1 N 23238
load net riscv|mem_aluResult_reg_n_0_[11] -attr @name mem_aluResult_reg_n_0_[11] -pin riscv|mem_aluResult_reg[11] Q -pin riscv|wb_aluResult_reg[11] D
netloc riscv|mem_aluResult_reg_n_0_[11] 1 18 1 N 23388
load net riscv|mem_aluResult_reg_n_0_[12] -attr @name mem_aluResult_reg_n_0_[12] -pin riscv|mem_aluResult_reg[12] Q -pin riscv|wb_aluResult_reg[12] D
netloc riscv|mem_aluResult_reg_n_0_[12] 1 23 1 22240 24758n
load net riscv|mem_aluResult_reg_n_0_[13] -attr @name mem_aluResult_reg_n_0_[13] -pin riscv|mem_aluResult_reg[13] Q -pin riscv|wb_aluResult_reg[13] D
netloc riscv|mem_aluResult_reg_n_0_[13] 1 21 1 19240 21918n
load net riscv|mem_aluResult_reg_n_0_[14] -attr @name mem_aluResult_reg_n_0_[14] -pin riscv|mem_aluResult_reg[14] Q -pin riscv|wb_aluResult_reg[14] D
netloc riscv|mem_aluResult_reg_n_0_[14] 1 12 1 N 23988
load net riscv|mem_aluResult_reg_n_0_[15] -attr @name mem_aluResult_reg_n_0_[15] -pin riscv|mem_aluResult_reg[15] Q -pin riscv|wb_aluResult_reg[15] D
netloc riscv|mem_aluResult_reg_n_0_[15] 1 12 1 N 24838
load net riscv|mem_aluResult_reg_n_0_[16] -attr @name mem_aluResult_reg_n_0_[16] -pin riscv|mem_aluResult_reg[16] Q -pin riscv|wb_aluResult_reg[16] D
netloc riscv|mem_aluResult_reg_n_0_[16] 1 21 1 19260 24958n
load net riscv|mem_aluResult_reg_n_0_[17] -attr @name mem_aluResult_reg_n_0_[17] -pin riscv|mem_aluResult_reg[17] Q -pin riscv|wb_aluResult_reg[17] D
netloc riscv|mem_aluResult_reg_n_0_[17] 1 23 1 21800 29428n
load net riscv|mem_aluResult_reg_n_0_[18] -attr @name mem_aluResult_reg_n_0_[18] -pin riscv|mem_aluResult_reg[18] Q -pin riscv|wb_aluResult_reg[18] D
netloc riscv|mem_aluResult_reg_n_0_[18] 1 23 1 21760 29628n
load net riscv|mem_aluResult_reg_n_0_[19] -attr @name mem_aluResult_reg_n_0_[19] -pin riscv|mem_aluResult_reg[19] Q -pin riscv|wb_aluResult_reg[19] D
netloc riscv|mem_aluResult_reg_n_0_[19] 1 18 1 N 24198
load net riscv|mem_aluResult_reg_n_0_[1] -attr @name mem_aluResult_reg_n_0_[1] -pin riscv|mem_aluResult_reg[1] Q -pin riscv|wb_aluResult_reg[1] D
netloc riscv|mem_aluResult_reg_n_0_[1] 1 23 1 22480 9488n
load net riscv|mem_aluResult_reg_n_0_[20] -attr @name mem_aluResult_reg_n_0_[20] -pin riscv|mem_aluResult_reg[20] Q -pin riscv|wb_aluResult_reg[20] D
netloc riscv|mem_aluResult_reg_n_0_[20] 1 23 1 21700 29778n
load net riscv|mem_aluResult_reg_n_0_[21] -attr @name mem_aluResult_reg_n_0_[21] -pin riscv|mem_aluResult_reg[21] Q -pin riscv|wb_aluResult_reg[21] D
netloc riscv|mem_aluResult_reg_n_0_[21] 1 21 1 19220 26338n
load net riscv|mem_aluResult_reg_n_0_[22] -attr @name mem_aluResult_reg_n_0_[22] -pin riscv|mem_aluResult_reg[22] Q -pin riscv|wb_aluResult_reg[22] D
netloc riscv|mem_aluResult_reg_n_0_[22] 1 4 1 N 26238
load net riscv|mem_aluResult_reg_n_0_[23] -attr @name mem_aluResult_reg_n_0_[23] -pin riscv|mem_aluResult_reg[23] Q -pin riscv|wb_aluResult_reg[23] D
netloc riscv|mem_aluResult_reg_n_0_[23] 1 12 1 N 25018
load net riscv|mem_aluResult_reg_n_0_[24] -attr @name mem_aluResult_reg_n_0_[24] -pin riscv|mem_aluResult_reg[24] Q -pin riscv|wb_aluResult_reg[24] D
netloc riscv|mem_aluResult_reg_n_0_[24] 1 21 1 N 27378
load net riscv|mem_aluResult_reg_n_0_[25] -attr @name mem_aluResult_reg_n_0_[25] -pin riscv|mem_aluResult_reg[25] Q -pin riscv|wb_aluResult_reg[25] D
netloc riscv|mem_aluResult_reg_n_0_[25] 1 12 1 8580 25238n
load net riscv|mem_aluResult_reg_n_0_[26] -attr @name mem_aluResult_reg_n_0_[26] -pin riscv|mem_aluResult_reg[26] Q -pin riscv|wb_aluResult_reg[26] D
netloc riscv|mem_aluResult_reg_n_0_[26] 1 20 1 N 23258
load net riscv|mem_aluResult_reg_n_0_[27] -attr @name mem_aluResult_reg_n_0_[27] -pin riscv|mem_aluResult_reg[27] Q -pin riscv|wb_aluResult_reg[27] D
netloc riscv|mem_aluResult_reg_n_0_[27] 1 20 1 N 23408
load net riscv|mem_aluResult_reg_n_0_[28] -attr @name mem_aluResult_reg_n_0_[28] -pin riscv|mem_aluResult_reg[28] Q -pin riscv|wb_aluResult_reg[28] D
netloc riscv|mem_aluResult_reg_n_0_[28] 1 22 1 20500 27788n
load net riscv|mem_aluResult_reg_n_0_[29] -attr @name mem_aluResult_reg_n_0_[29] -pin riscv|mem_aluResult_reg[29] Q -pin riscv|wb_aluResult_reg[29] D
netloc riscv|mem_aluResult_reg_n_0_[29] 1 20 1 N 24008
load net riscv|mem_aluResult_reg_n_0_[2] -attr @name mem_aluResult_reg_n_0_[2] -pin riscv|mem_aluResult_reg[2] Q -pin riscv|wb_aluResult_reg[2] D
netloc riscv|mem_aluResult_reg_n_0_[2] 1 23 1 22460 9638n
load net riscv|mem_aluResult_reg_n_0_[30] -attr @name mem_aluResult_reg_n_0_[30] -pin riscv|mem_aluResult_reg[30] Q -pin riscv|wb_aluResult_reg[30] D
netloc riscv|mem_aluResult_reg_n_0_[30] 1 18 1 14960 24578n
load net riscv|mem_aluResult_reg_n_0_[31] -attr @name mem_aluResult_reg_n_0_[31] -pin riscv|mem_aluResult_reg[31] Q -pin riscv|wb_aluResult_reg[31] D
netloc riscv|mem_aluResult_reg_n_0_[31] 1 21 1 19100 28128n
load net riscv|mem_aluResult_reg_n_0_[3] -attr @name mem_aluResult_reg_n_0_[3] -pin riscv|mem_aluResult_reg[3] Q -pin riscv|wb_aluResult_reg[3] D
netloc riscv|mem_aluResult_reg_n_0_[3] 1 20 1 17820 21038n
load net riscv|mem_aluResult_reg_n_0_[4] -attr @name mem_aluResult_reg_n_0_[4] -pin riscv|mem_aluResult_reg[4] Q -pin riscv|wb_aluResult_reg[4] D
netloc riscv|mem_aluResult_reg_n_0_[4] 1 22 1 N 10098
load net riscv|mem_aluResult_reg_n_0_[5] -attr @name mem_aluResult_reg_n_0_[5] -pin riscv|mem_aluResult_reg[5] Q -pin riscv|wb_aluResult_reg[5] D
netloc riscv|mem_aluResult_reg_n_0_[5] 1 23 1 22400 9788n
load net riscv|mem_aluResult_reg_n_0_[6] -attr @name mem_aluResult_reg_n_0_[6] -pin riscv|mem_aluResult_reg[6] Q -pin riscv|wb_aluResult_reg[6] D
netloc riscv|mem_aluResult_reg_n_0_[6] 1 22 1 N 10248
load net riscv|mem_aluResult_reg_n_0_[7] -attr @name mem_aluResult_reg_n_0_[7] -pin riscv|mem_aluResult_reg[7] Q -pin riscv|wb_aluResult_reg[7] D
netloc riscv|mem_aluResult_reg_n_0_[7] 1 10 1 N 26228
load net riscv|mem_aluResult_reg_n_0_[8] -attr @name mem_aluResult_reg_n_0_[8] -pin riscv|mem_aluResult_reg[8] Q -pin riscv|wb_aluResult_reg[8] D
netloc riscv|mem_aluResult_reg_n_0_[8] 1 21 1 N 17408
load net riscv|mem_aluResult_reg_n_0_[9] -attr @name mem_aluResult_reg_n_0_[9] -pin riscv|mem_aluResult_reg[9] Q -pin riscv|wb_aluResult_reg[9] D
netloc riscv|mem_aluResult_reg_n_0_[9] 1 20 1 17820 21258n
load net riscv|mem_branchAddress[0] -attr @name mem_branchAddress[0] -pin riscv|if_PC[0]_i_1 I2 -pin riscv|mem_branchAddress_reg[0] Q
netloc riscv|mem_branchAddress[0] 1 32 1 N 16378
load net riscv|mem_branchAddress[10] -attr @name mem_branchAddress[10] -pin riscv|if_PC[9]_i_4 I2 -pin riscv|mem_branchAddress_reg[10] Q
netloc riscv|mem_branchAddress[10] 1 26 1 27610 15018n
load net riscv|mem_branchAddress[11] -attr @name mem_branchAddress[11] -pin riscv|if_PC[9]_i_3 I2 -pin riscv|mem_branchAddress_reg[11] Q
netloc riscv|mem_branchAddress[11] 1 26 1 27670 14908n
load net riscv|mem_branchAddress[12] -attr @name mem_branchAddress[12] -pin riscv|if_PC[9]_i_2 I2 -pin riscv|mem_branchAddress_reg[12] Q
netloc riscv|mem_branchAddress[12] 1 26 1 27650 14798n
load net riscv|mem_branchAddress[13] -attr @name mem_branchAddress[13] -pin riscv|if_PC[13]_i_5 I2 -pin riscv|mem_branchAddress_reg[13] Q
netloc riscv|mem_branchAddress[13] 1 27 1 30000 15328n
load net riscv|mem_branchAddress[14] -attr @name mem_branchAddress[14] -pin riscv|if_PC[13]_i_4 I2 -pin riscv|mem_branchAddress_reg[14] Q
netloc riscv|mem_branchAddress[14] 1 27 1 30040 15478n
load net riscv|mem_branchAddress[15] -attr @name mem_branchAddress[15] -pin riscv|if_PC[13]_i_3 I2 -pin riscv|mem_branchAddress_reg[15] Q
netloc riscv|mem_branchAddress[15] 1 27 1 29120 15628n
load net riscv|mem_branchAddress[16] -attr @name mem_branchAddress[16] -pin riscv|if_PC[13]_i_2 I2 -pin riscv|mem_branchAddress_reg[16] Q
netloc riscv|mem_branchAddress[16] 1 27 1 29440 15648n
load net riscv|mem_branchAddress[17] -attr @name mem_branchAddress[17] -pin riscv|if_PC[17]_i_5 I2 -pin riscv|mem_branchAddress_reg[17] Q
netloc riscv|mem_branchAddress[17] 1 28 1 31090 14778n
load net riscv|mem_branchAddress[18] -attr @name mem_branchAddress[18] -pin riscv|if_PC[17]_i_4 I2 -pin riscv|mem_branchAddress_reg[18] Q
netloc riscv|mem_branchAddress[18] 1 28 1 31030 14928n
load net riscv|mem_branchAddress[19] -attr @name mem_branchAddress[19] -pin riscv|if_PC[17]_i_3 I2 -pin riscv|mem_branchAddress_reg[19] Q
netloc riscv|mem_branchAddress[19] 1 28 1 31010 15078n
load net riscv|mem_branchAddress[1] -attr @name mem_branchAddress[1] -pin riscv|if_PC[1]_i_5 I2 -pin riscv|mem_branchAddress_reg[1] Q
netloc riscv|mem_branchAddress[1] 1 24 1 23270 1628n
load net riscv|mem_branchAddress[20] -attr @name mem_branchAddress[20] -pin riscv|if_PC[17]_i_2 I2 -pin riscv|mem_branchAddress_reg[20] Q
netloc riscv|mem_branchAddress[20] 1 28 1 N 15228
load net riscv|mem_branchAddress[21] -attr @name mem_branchAddress[21] -pin riscv|if_PC[21]_i_5 I2 -pin riscv|mem_branchAddress_reg[21] Q
netloc riscv|mem_branchAddress[21] 1 29 1 31530 16208n
load net riscv|mem_branchAddress[22] -attr @name mem_branchAddress[22] -pin riscv|if_PC[21]_i_4 I2 -pin riscv|mem_branchAddress_reg[22] Q
netloc riscv|mem_branchAddress[22] 1 29 1 N 16358
load net riscv|mem_branchAddress[23] -attr @name mem_branchAddress[23] -pin riscv|if_PC[21]_i_3 I2 -pin riscv|mem_branchAddress_reg[23] Q
netloc riscv|mem_branchAddress[23] 1 29 1 31450 16248n
load net riscv|mem_branchAddress[24] -attr @name mem_branchAddress[24] -pin riscv|if_PC[21]_i_2 I2 -pin riscv|mem_branchAddress_reg[24] Q
netloc riscv|mem_branchAddress[24] 1 29 1 31370 16138n
load net riscv|mem_branchAddress[25] -attr @name mem_branchAddress[25] -pin riscv|if_PC[25]_i_5 I2 -pin riscv|mem_branchAddress_reg[25] Q
netloc riscv|mem_branchAddress[25] 1 30 1 N 16608
load net riscv|mem_branchAddress[26] -attr @name mem_branchAddress[26] -pin riscv|if_PC[25]_i_4 I2 -pin riscv|mem_branchAddress_reg[26] Q
netloc riscv|mem_branchAddress[26] 1 30 1 32010 16498n
load net riscv|mem_branchAddress[27] -attr @name mem_branchAddress[27] -pin riscv|if_PC[25]_i_3 I2 -pin riscv|mem_branchAddress_reg[27] Q
netloc riscv|mem_branchAddress[27] 1 30 1 31970 16388n
load net riscv|mem_branchAddress[28] -attr @name mem_branchAddress[28] -pin riscv|if_PC[25]_i_2 I2 -pin riscv|mem_branchAddress_reg[28] Q
netloc riscv|mem_branchAddress[28] 1 30 1 31950 16278n
load net riscv|mem_branchAddress[29] -attr @name mem_branchAddress[29] -pin riscv|if_PC[29]_i_4 I2 -pin riscv|mem_branchAddress_reg[29] Q
netloc riscv|mem_branchAddress[29] 1 31 1 N 22338
load net riscv|mem_branchAddress[2] -attr @name mem_branchAddress[2] -pin riscv|if_PC[1]_i_4 I0 -pin riscv|mem_branchAddress_reg[2] Q
netloc riscv|mem_branchAddress[2] 1 24 1 23250 1478n
load net riscv|mem_branchAddress[30] -attr @name mem_branchAddress[30] -pin riscv|if_PC[29]_i_3 I2 -pin riscv|mem_branchAddress_reg[30] Q
netloc riscv|mem_branchAddress[30] 1 31 1 32490 22228n
load net riscv|mem_branchAddress[31] -attr @name mem_branchAddress[31] -pin riscv|if_PC[29]_i_2 I2 -pin riscv|mem_branchAddress_reg[31] Q
netloc riscv|mem_branchAddress[31] 1 31 1 32470 22118n
load net riscv|mem_branchAddress[3] -attr @name mem_branchAddress[3] -pin riscv|if_PC[1]_i_3 I2 -pin riscv|mem_branchAddress_reg[3] Q
netloc riscv|mem_branchAddress[3] 1 24 1 23330 1408n
load net riscv|mem_branchAddress[4] -attr @name mem_branchAddress[4] -pin riscv|if_PC[1]_i_2 I2 -pin riscv|mem_branchAddress_reg[4] Q
netloc riscv|mem_branchAddress[4] 1 24 1 23310 1298n
load net riscv|mem_branchAddress[5] -attr @name mem_branchAddress[5] -pin riscv|if_PC[5]_i_5 I2 -pin riscv|mem_branchAddress_reg[5] Q
netloc riscv|mem_branchAddress[5] 1 25 1 26590 2368n
load net riscv|mem_branchAddress[6] -attr @name mem_branchAddress[6] -pin riscv|if_PC[5]_i_4 I2 -pin riscv|mem_branchAddress_reg[6] Q
netloc riscv|mem_branchAddress[6] 1 25 1 26570 2518n
load net riscv|mem_branchAddress[7] -attr @name mem_branchAddress[7] -pin riscv|if_PC[5]_i_3 I2 -pin riscv|mem_branchAddress_reg[7] Q
netloc riscv|mem_branchAddress[7] 1 25 1 26550 2668n
load net riscv|mem_branchAddress[8] -attr @name mem_branchAddress[8] -pin riscv|if_PC[5]_i_2 I2 -pin riscv|mem_branchAddress_reg[8] Q
netloc riscv|mem_branchAddress[8] 1 25 1 25350 3498n
load net riscv|mem_branchAddress[9] -attr @name mem_branchAddress[9] -pin riscv|if_PC[9]_i_5 I2 -pin riscv|mem_branchAddress_reg[9] Q
netloc riscv|mem_branchAddress[9] 1 26 1 27630 15128n
load net riscv|mem_instruction_reg_n_0_[10] -attr @name mem_instruction_reg_n_0_[10] -pin riscv|mem_instruction_reg[10] Q -pin riscv|wb_instruction_reg[10] D
netloc riscv|mem_instruction_reg_n_0_[10] 1 24 1 23350 2218n
load net riscv|mem_instruction_reg_n_0_[11] -attr @name mem_instruction_reg_n_0_[11] -pin riscv|mem_instruction_reg[11] Q -pin riscv|wb_instruction_reg[11] D
netloc riscv|mem_instruction_reg_n_0_[11] 1 24 1 23390 2838n
load net riscv|mem_instruction_reg_n_0_[7] -attr @name mem_instruction_reg_n_0_[7] -pin riscv|mem_instruction_reg[7] Q -pin riscv|wb_instruction_reg[7] D
netloc riscv|mem_instruction_reg_n_0_[7] 1 24 1 23190 1758n
load net riscv|mem_instruction_reg_n_0_[8] -attr @name mem_instruction_reg_n_0_[8] -pin riscv|mem_instruction_reg[8] Q -pin riscv|wb_instruction_reg[8] D
netloc riscv|mem_instruction_reg_n_0_[8] 1 24 1 23230 1918n
load net riscv|mem_instruction_reg_n_0_[9] -attr @name mem_instruction_reg_n_0_[9] -pin riscv|mem_instruction_reg[9] Q -pin riscv|wb_instruction_reg[9] D
netloc riscv|mem_instruction_reg_n_0_[9] 1 24 1 23290 2068n
load net riscv|out[0] -attr @rip(#000000) out[0] -attr @name out[0] -hierPin riscv out[0] -pin riscv|ex_ALUCtrl[2]_i_4 I0 -pin riscv|ex_immediate[11]_i_2 I0 -pin riscv|ex_rs1[0]_i_1 I0 -pin riscv|ex_rs2[0]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_3 I0
load net riscv|out[10] -attr @rip(#000000) out[10] -attr @name out[10] -hierPin riscv out[10] -pin riscv|ex_immediate[3]_i_1 I0 -pin riscv|ex_instruction_reg[10] D -pin riscv|ex_rs1[10]_i_1 I0 -pin riscv|ex_rs2[10]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_6 I0
load net riscv|out[11] -attr @rip(#000000) out[11] -attr @name out[11] -hierPin riscv out[11] -pin riscv|ex_immediate[4]_i_1 I0 -pin riscv|ex_instruction_reg[11] D -pin riscv|ex_rs1[11]_i_1 I0 -pin riscv|ex_rs2[11]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_5 I0
load net riscv|out[12] -attr @rip(#000000) out[12] -attr @name out[12] -hierPin riscv out[12] -pin riscv|ex_ALUCtrl[0]_i_1 I1 -pin riscv|ex_ALUCtrl[1]_i_1 I4 -pin riscv|ex_ALUCtrl[2]_i_2 I1 -pin riscv|ex_ALUCtrl[3]_i_1 I2 -pin riscv|ex_ALUSrc_i_1 I0 -pin riscv|ex_instruction_reg[12] D -pin riscv|ex_rs1[12]_i_1 I0 -pin riscv|ex_rs2[12]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_2 I0
load net riscv|out[13] -attr @rip(#000000) out[13] -attr @name out[13] -hierPin riscv out[13] -pin riscv|ex_ALUCtrl[0]_i_1 I2 -pin riscv|ex_ALUCtrl[1]_i_1 I1 -pin riscv|ex_ALUCtrl[2]_i_1 I2 -pin riscv|ex_ALUCtrl[2]_i_2 I3 -pin riscv|ex_ALUCtrl[3]_i_1 I4 -pin riscv|ex_ALUSrc_i_1 I1 -pin riscv|ex_instruction_reg[13] D -pin riscv|ex_rs1[13]_i_1 I0 -pin riscv|ex_rs2[13]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_1 I0
load net riscv|out[14] -attr @rip(#000000) out[14] -attr @name out[14] -hierPin riscv out[14] -pin riscv|ex_ALUCtrl[0]_i_1 I5 -pin riscv|ex_ALUCtrl[1]_i_1 I3 -pin riscv|ex_ALUCtrl[2]_i_2 I2 -pin riscv|ex_ALUCtrl[3]_i_1 I3 -pin riscv|ex_instruction_reg[14] D -pin riscv|ex_rs1[14]_i_1 I0 -pin riscv|ex_rs2[14]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_4 I0
load net riscv|out[15] -attr @rip(#000000) out[15] -attr @name out[15] -hierPin riscv out[15] -pin riscv|ex_rs1[15]_i_1 I0 -pin riscv|ex_rs1[31]_i_3 I4 -pin riscv|ex_rs2[15]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRC[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRC[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_3 I0 -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRC[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRC[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRC[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRA[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRB[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRC[0]
load net riscv|out[16] -attr @rip(#000000) out[16] -attr @name out[16] -hierPin riscv out[16] -pin riscv|ex_rs1[16]_i_1 I0 -pin riscv|ex_rs1[31]_i_3 I1 -pin riscv|ex_rs2[16]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRC[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRC[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_6 I0 -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRC[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRC[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRC[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRA[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRB[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRC[1]
load net riscv|out[17] -attr @rip(#000000) out[17] -attr @name out[17] -hierPin riscv out[17] -pin riscv|ex_rs1[17]_i_1 I0 -pin riscv|ex_rs1[31]_i_3 I3 -pin riscv|ex_rs2[17]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRC[2] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRC[2] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_5 I0 -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRC[2] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRC[2] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRC[2] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRA[2] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRB[2] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRC[2]
load net riscv|out[18] -attr @rip(#000000) out[18] -attr @name out[18] -hierPin riscv out[18] -pin riscv|ex_rs1[18]_i_1 I0 -pin riscv|ex_rs1[31]_i_2 I3 -pin riscv|ex_rs2[18]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRC[3] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRC[3] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRC[3] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_2 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRC[3] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRC[3] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRA[3] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRB[3] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRC[3]
load net riscv|out[19] -attr @rip(#000000) out[19] -attr @name out[19] -hierPin riscv out[19] -pin riscv|ex_rs1[19]_i_1 I0 -pin riscv|ex_rs1[31]_i_2 I2 -pin riscv|ex_rs2[19]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRC[4] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRC[4] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRC[4] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRC[4] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRC[4] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRA[4] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRB[4] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRC[4]
load net riscv|out[1] -attr @rip(#000000) out[1] -attr @name out[1] -hierPin riscv out[1] -pin riscv|ex_ALUCtrl[2]_i_4 I2 -pin riscv|ex_immediate[11]_i_2 I2 -pin riscv|ex_rs1[1]_i_1 I0 -pin riscv|ex_rs2[1]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_2 I0
load net riscv|out[20] -attr @rip(#000000) out[20] -attr @name out[20] -hierPin riscv out[20] -pin riscv|ex_immediate[0]_i_1 I0 -pin riscv|ex_rs1[20]_i_1 I0 -pin riscv|ex_rs2[20]_i_1 I0 -pin riscv|ex_rs2[31]_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_4 I0 -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRC[0] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRC[0] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRC[0] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRC[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRC[0] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRA[0] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRB[0] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRC[0]
load net riscv|out[21] -attr @rip(#000000) out[21] -attr @name out[21] -hierPin riscv out[21] -pin riscv|ex_immediate[1]_i_1 I4 -pin riscv|ex_rs1[21]_i_1 I0 -pin riscv|ex_rs2[21]_i_1 I0 -pin riscv|ex_rs2[31]_i_3 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_3 I0 -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRC[1] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRC[1] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRC[1] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRC[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRC[1] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRA[1] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRB[1] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRC[1]
load net riscv|out[22] -attr @rip(#000000) out[22] -attr @name out[22] -hierPin riscv out[22] -pin riscv|ex_immediate[2]_i_1 I4 -pin riscv|ex_rs1[22]_i_1 I0 -pin riscv|ex_rs2[22]_i_1 I0 -pin riscv|ex_rs2[31]_i_3 I4 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_6 I0 -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRC[2] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRC[2] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRC[2] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRC[2] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRC[2] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRA[2] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRB[2] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRC[2]
load net riscv|out[23] -attr @rip(#000000) out[23] -attr @name out[23] -hierPin riscv out[23] -pin riscv|ex_immediate[3]_i_1 I4 -pin riscv|ex_rs1[23]_i_1 I0 -pin riscv|ex_rs2[23]_i_1 I0 -pin riscv|ex_rs2[31]_i_2 I4 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_5 I0 -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRC[3] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRC[3] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRC[3] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRC[3] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRC[3] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRA[3] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRB[3] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRC[3]
load net riscv|out[24] -attr @rip(#000000) out[24] -attr @name out[24] -hierPin riscv out[24] -pin riscv|ex_immediate[4]_i_1 I4 -pin riscv|ex_rs1[24]_i_1 I0 -pin riscv|ex_rs2[24]_i_1 I0 -pin riscv|ex_rs2[31]_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_2 I0 -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRC[4] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRC[4] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRC[4] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRC[4] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRC[4] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRA[4] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRB[4] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRC[4]
load net riscv|out[25] -attr @rip(#000000) out[25] -attr @name out[25] -hierPin riscv out[25] -pin riscv|ex_ALUCtrl[2]_i_5 I3 -pin riscv|ex_immediate_reg[5] D -pin riscv|ex_rs1[25]_i_1 I0 -pin riscv|ex_rs2[25]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_1 I0
load net riscv|out[26] -attr @rip(#000000) out[26] -attr @name out[26] -hierPin riscv out[26] -pin riscv|ex_ALUCtrl[2]_i_5 I0 -pin riscv|ex_immediate_reg[6] D -pin riscv|ex_rs1[26]_i_1 I0 -pin riscv|ex_rs2[26]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_4 I0
load net riscv|out[27] -attr @rip(#000000) out[27] -attr @name out[27] -hierPin riscv out[27] -pin riscv|ex_ALUCtrl[2]_i_3 I3 -pin riscv|ex_immediate_reg[7] D -pin riscv|ex_rs1[27]_i_1 I0 -pin riscv|ex_rs2[27]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_3 I0
load net riscv|out[28] -attr @rip(#000000) out[28] -attr @name out[28] -hierPin riscv out[28] -pin riscv|ex_ALUCtrl[2]_i_3 I4 -pin riscv|ex_immediate_reg[8] D -pin riscv|ex_rs1[28]_i_1 I0 -pin riscv|ex_rs2[28]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_6 I0
load net riscv|out[29] -attr @rip(#000000) out[29] -attr @name out[29] -hierPin riscv out[29] -pin riscv|ex_ALUCtrl[2]_i_3 I2 -pin riscv|ex_immediate_reg[9] D -pin riscv|ex_rs1[29]_i_1 I0 -pin riscv|ex_rs2[29]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_5 I0
load net riscv|out[2] -attr @rip(#000000) out[2] -attr @name out[2] -hierPin riscv out[2] -pin riscv|ex_ALUCtrl[2]_i_4 I5 -pin riscv|ex_immediate[11]_i_2 I3 -pin riscv|ex_rs1[2]_i_1 I0 -pin riscv|ex_rs2[2]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_5 I0
load net riscv|out[30] -attr @rip(#000000) out[30] -attr @name out[30] -hierPin riscv out[30] -pin riscv|ex_ALUCtrl[2]_i_5 I2 -pin riscv|ex_immediate_reg[10] D -pin riscv|ex_rs1[30]_i_1 I0 -pin riscv|ex_rs2[30]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_2 I0
load net riscv|out[31] -attr @rip(#000000) out[31] -attr @name out[31] -hierPin riscv out[31] -pin riscv|ex_ALUCtrl[2]_i_5 I1 -pin riscv|ex_immediate[11]_i_1 I5 -pin riscv|ex_immediate_reg[12] D -pin riscv|ex_rs1[31]_i_1 I0 -pin riscv|ex_rs2[31]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_1 I0
load net riscv|out[3] -attr @rip(#000000) out[3] -attr @name out[3] -hierPin riscv out[3] -pin riscv|ex_ALUCtrl[2]_i_4 I4 -pin riscv|ex_immediate[11]_i_2 I1 -pin riscv|ex_rs1[3]_i_1 I0 -pin riscv|ex_rs2[3]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_4 I0
load net riscv|out[4] -attr @rip(#000000) out[4] -attr @name out[4] -hierPin riscv out[4] -pin riscv|ex_ALUCtrl[2]_i_1 I4 -pin riscv|ex_ALUCtrl[2]_i_2 I5 -pin riscv|ex_ALUCtrl[2]_i_4 I3 -pin riscv|ex_ALUCtrl[3]_i_2 I1 -pin riscv|ex_ALUCtrl[3]_i_3 I1 -pin riscv|ex_ALUSrc_i_1 I5 -pin riscv|ex_Branch_i_1 I1 -pin riscv|ex_MemtoReg_i_1 I0 -pin riscv|ex_RegWrite_i_1 I1 -pin riscv|ex_immediate[0]_i_1 I2 -pin riscv|ex_immediate[11]_i_1 I2 -pin riscv|ex_immediate[1]_i_1 I2 -pin riscv|ex_immediate[2]_i_1 I2 -pin riscv|ex_immediate[3]_i_1 I2 -pin riscv|ex_immediate[4]_i_1 I2 -pin riscv|ex_rs1[4]_i_1 I0 -pin riscv|ex_rs2[4]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_7 I0
load net riscv|out[5] -attr @rip(#000000) out[5] -attr @name out[5] -hierPin riscv out[5] -pin riscv|ex_ALUCtrl[2]_i_1 I5 -pin riscv|ex_ALUCtrl[2]_i_6 I1 -pin riscv|ex_ALUCtrl[3]_i_3 I0 -pin riscv|ex_ALUSrc_i_1 I3 -pin riscv|ex_Branch_i_1 I2 -pin riscv|ex_MemtoReg_i_1 I2 -pin riscv|ex_RegWrite_i_1 I0 -pin riscv|ex_immediate[0]_i_1 I1 -pin riscv|ex_immediate[11]_i_1 I3 -pin riscv|ex_immediate[1]_i_1 I1 -pin riscv|ex_immediate[2]_i_1 I1 -pin riscv|ex_immediate[3]_i_1 I1 -pin riscv|ex_immediate[4]_i_1 I1 -pin riscv|ex_rs1[5]_i_1 I0 -pin riscv|ex_rs2[5]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_6 I0
load net riscv|out[6] -attr @rip(#000000) out[6] -attr @name out[6] -hierPin riscv out[6] -pin riscv|ex_ALUCtrl[2]_i_1 I3 -pin riscv|ex_ALUCtrl[2]_i_2 I4 -pin riscv|ex_ALUCtrl[2]_i_6 I0 -pin riscv|ex_ALUCtrl[3]_i_2 I0 -pin riscv|ex_ALUCtrl[3]_i_3 I2 -pin riscv|ex_ALUSrc_i_1 I2 -pin riscv|ex_Branch_i_1 I3 -pin riscv|ex_MemtoReg_i_1 I1 -pin riscv|ex_RegWrite_i_1 I3 -pin riscv|ex_immediate[0]_i_1 I4 -pin riscv|ex_immediate[11]_i_1 I4 -pin riscv|ex_rs1[6]_i_1 I0 -pin riscv|ex_rs2[6]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_2 I0
load net riscv|out[7] -attr @rip(#000000) out[7] -attr @name out[7] -hierPin riscv out[7] -pin riscv|ex_immediate[0]_i_1 I3 -pin riscv|ex_immediate[11]_i_1 I0 -pin riscv|ex_instruction_reg[7] D -pin riscv|ex_rs1[7]_i_1 I0 -pin riscv|ex_rs2[7]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_1 I0
load net riscv|out[8] -attr @rip(#000000) out[8] -attr @name out[8] -hierPin riscv out[8] -pin riscv|ex_immediate[1]_i_1 I0 -pin riscv|ex_instruction_reg[8] D -pin riscv|ex_rs1[8]_i_1 I0 -pin riscv|ex_rs2[8]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_4 I0
load net riscv|out[9] -attr @rip(#000000) out[9] -attr @name out[9] -hierPin riscv out[9] -pin riscv|ex_immediate[2]_i_1 I0 -pin riscv|ex_instruction_reg[9] D -pin riscv|ex_rs1[9]_i_1 I0 -pin riscv|ex_rs2[9]_i_1 I0 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_3 I0
load net riscv|sel0[0] -attr @name sel0[0] -pin riscv|if_PC[0]_i_2 I1 -pin riscv|mem_instruction_reg[12] Q
netloc riscv|sel0[0] 1 31 1 32410 19128n
load net riscv|sel0[1] -attr @name sel0[1] -pin riscv|if_PC[0]_i_2 I2 -pin riscv|mem_instruction_reg[13] Q
netloc riscv|sel0[1] 1 31 1 32510 19148n
load net riscv|sel0[2] -attr @name sel0[2] -pin riscv|if_PC[0]_i_2 I4 -pin riscv|mem_instruction_reg[14] Q
netloc riscv|sel0[2] 1 31 1 32530 19188n
load net riscv|wb_MemToReg -attr @name wb_MemToReg -pin riscv|ex_rs1[0]_i_1 I1 -pin riscv|ex_rs1[10]_i_1 I1 -pin riscv|ex_rs1[11]_i_1 I1 -pin riscv|ex_rs1[12]_i_1 I1 -pin riscv|ex_rs1[13]_i_1 I1 -pin riscv|ex_rs1[14]_i_1 I1 -pin riscv|ex_rs1[15]_i_1 I1 -pin riscv|ex_rs1[16]_i_1 I1 -pin riscv|ex_rs1[17]_i_1 I1 -pin riscv|ex_rs1[18]_i_1 I1 -pin riscv|ex_rs1[19]_i_1 I1 -pin riscv|ex_rs1[1]_i_1 I1 -pin riscv|ex_rs1[20]_i_1 I1 -pin riscv|ex_rs1[21]_i_1 I1 -pin riscv|ex_rs1[22]_i_1 I1 -pin riscv|ex_rs1[23]_i_1 I1 -pin riscv|ex_rs1[24]_i_1 I1 -pin riscv|ex_rs1[25]_i_1 I1 -pin riscv|ex_rs1[26]_i_1 I1 -pin riscv|ex_rs1[27]_i_1 I1 -pin riscv|ex_rs1[28]_i_1 I1 -pin riscv|ex_rs1[29]_i_1 I1 -pin riscv|ex_rs1[2]_i_1 I1 -pin riscv|ex_rs1[30]_i_1 I1 -pin riscv|ex_rs1[31]_i_1 I1 -pin riscv|ex_rs1[3]_i_1 I1 -pin riscv|ex_rs1[4]_i_1 I1 -pin riscv|ex_rs1[5]_i_1 I1 -pin riscv|ex_rs1[6]_i_1 I1 -pin riscv|ex_rs1[7]_i_1 I1 -pin riscv|ex_rs1[8]_i_1 I1 -pin riscv|ex_rs1[9]_i_1 I1 -pin riscv|ex_rs2[0]_i_1 I1 -pin riscv|ex_rs2[10]_i_1 I1 -pin riscv|ex_rs2[11]_i_1 I1 -pin riscv|ex_rs2[12]_i_1 I1 -pin riscv|ex_rs2[13]_i_1 I1 -pin riscv|ex_rs2[14]_i_1 I1 -pin riscv|ex_rs2[15]_i_1 I1 -pin riscv|ex_rs2[16]_i_1 I1 -pin riscv|ex_rs2[17]_i_1 I1 -pin riscv|ex_rs2[18]_i_1 I1 -pin riscv|ex_rs2[19]_i_1 I1 -pin riscv|ex_rs2[1]_i_1 I1 -pin riscv|ex_rs2[20]_i_1 I1 -pin riscv|ex_rs2[21]_i_1 I1 -pin riscv|ex_rs2[22]_i_1 I1 -pin riscv|ex_rs2[23]_i_1 I1 -pin riscv|ex_rs2[24]_i_1 I1 -pin riscv|ex_rs2[25]_i_1 I1 -pin riscv|ex_rs2[26]_i_1 I1 -pin riscv|ex_rs2[27]_i_1 I1 -pin riscv|ex_rs2[28]_i_1 I1 -pin riscv|ex_rs2[29]_i_1 I1 -pin riscv|ex_rs2[2]_i_1 I1 -pin riscv|ex_rs2[30]_i_1 I1 -pin riscv|ex_rs2[31]_i_1 I1 -pin riscv|ex_rs2[3]_i_1 I1 -pin riscv|ex_rs2[4]_i_1 I1 -pin riscv|ex_rs2[5]_i_1 I1 -pin riscv|ex_rs2[6]_i_1 I1 -pin riscv|ex_rs2[7]_i_1 I1 -pin riscv|ex_rs2[8]_i_1 I1 -pin riscv|ex_rs2[9]_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_4 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_5 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_6 I1 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_7 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_4 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_5 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_6 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_4 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_5 I1 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_6 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_4 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_5 I1 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_6 I1 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_2 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_3 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_4 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_5 I1 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_6 I1 -pin riscv|wb_MemToReg_reg[0] Q
netloc riscv|wb_MemToReg 1 5 22 5440 26558 NJ 26558 NJ 26558 NJ 26558 NJ 26558 NJ 26558 8280 26578 NJ 26578 9060 25538 9810 25458 11500 25978 NJ 25978 NJ 25978 NJ 25978 17200 22988 18500 22988 19540 23898 20520 31448 21720 30698 24630 31418 26050 31418 28630J
load net riscv|wb_RegWriteData[0] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_3 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIA[0]
load net riscv|wb_RegWriteData[10] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[10] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_6 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIC[0]
load net riscv|wb_RegWriteData[11] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[11] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_5 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIC[1]
load net riscv|wb_RegWriteData[12] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[12] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIA[0]
load net riscv|wb_RegWriteData[13] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[13] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_1 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIA[1]
load net riscv|wb_RegWriteData[14] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[14] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_4 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIB[0]
load net riscv|wb_RegWriteData[15] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[15] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_3 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIB[1]
load net riscv|wb_RegWriteData[16] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[16] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_6 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIC[0]
load net riscv|wb_RegWriteData[17] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[17] -pin riscv|id_registerFile_reg_r1_0_31_12_17 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_5 O -pin riscv|id_registerFile_reg_r2_0_31_12_17 DIC[1]
load net riscv|wb_RegWriteData[18] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[18] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIA[0]
load net riscv|wb_RegWriteData[19] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[19] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_1 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIA[1]
load net riscv|wb_RegWriteData[1] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIA[1]
load net riscv|wb_RegWriteData[20] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[20] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_4 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIB[0]
load net riscv|wb_RegWriteData[21] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[21] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_3 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIB[1]
load net riscv|wb_RegWriteData[22] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[22] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_6 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIC[0]
load net riscv|wb_RegWriteData[23] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[23] -pin riscv|id_registerFile_reg_r1_0_31_18_23 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_5 O -pin riscv|id_registerFile_reg_r2_0_31_18_23 DIC[1]
load net riscv|wb_RegWriteData[24] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[24] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIA[0]
load net riscv|wb_RegWriteData[25] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[25] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_1 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIA[1]
load net riscv|wb_RegWriteData[26] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[26] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_4 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIB[0]
load net riscv|wb_RegWriteData[27] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[27] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_3 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIB[1]
load net riscv|wb_RegWriteData[28] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[28] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_6 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIC[0]
load net riscv|wb_RegWriteData[29] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[29] -pin riscv|id_registerFile_reg_r1_0_31_24_29 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_5 O -pin riscv|id_registerFile_reg_r2_0_31_24_29 DIC[1]
load net riscv|wb_RegWriteData[2] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[2] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_5 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIB[0]
load net riscv|wb_RegWriteData[30] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[30] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIA[0]
load net riscv|wb_RegWriteData[31] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[31] -pin riscv|id_registerFile_reg_r1_0_31_30_31 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_1 O -pin riscv|id_registerFile_reg_r2_0_31_30_31 DIA[1]
load net riscv|wb_RegWriteData[3] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[3] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_4 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIB[1]
load net riscv|wb_RegWriteData[4] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[4] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIC[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_7 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIC[0]
load net riscv|wb_RegWriteData[5] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[5] -pin riscv|id_registerFile_reg_r1_0_31_0_5 DIC[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_6 O -pin riscv|id_registerFile_reg_r2_0_31_0_5 DIC[1]
load net riscv|wb_RegWriteData[6] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[6] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIA[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_2 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIA[0]
load net riscv|wb_RegWriteData[7] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[7] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIA[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_1 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIA[1]
load net riscv|wb_RegWriteData[8] -attr @rip(#000000) 0 -attr @name wb_RegWriteData[8] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIB[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_4 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIB[0]
load net riscv|wb_RegWriteData[9] -attr @rip(#000000) 1 -attr @name wb_RegWriteData[9] -pin riscv|id_registerFile_reg_r1_0_31_6_11 DIB[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_3 O -pin riscv|id_registerFile_reg_r2_0_31_6_11 DIB[1]
load net riscv|wb_RegWrite_reg_n_0_[0] -attr @name wb_RegWrite_reg_n_0_[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I0 -pin riscv|wb_RegWrite_reg[0] Q
netloc riscv|wb_RegWrite_reg_n_0_[0] 1 25 1 25390 30488n
load net riscv|wb_aluResult[0] -attr @name wb_aluResult[0] -pin riscv|ex_rs1[0]_i_1 I2 -pin riscv|ex_rs2[0]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_3 I2 -pin riscv|wb_aluResult_reg[0] Q
netloc riscv|wb_aluResult[0] 1 23 4 22320 24818 23730 25258 NJ 25258 27170
load net riscv|wb_aluResult[10] -attr @name wb_aluResult[10] -pin riscv|ex_rs1[10]_i_1 I2 -pin riscv|ex_rs2[10]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_6 I2 -pin riscv|wb_aluResult_reg[10] Q
netloc riscv|wb_aluResult[10] 1 19 4 16300 23008 18480 22768 NJ 22768 NJ
load net riscv|wb_aluResult[11] -attr @name wb_aluResult[11] -pin riscv|ex_rs1[11]_i_1 I2 -pin riscv|ex_rs2[11]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_5 I2 -pin riscv|wb_aluResult_reg[11] Q
netloc riscv|wb_aluResult[11] 1 19 5 16220 23028 NJ 23028 NJ 23028 20920 22868 22260
load net riscv|wb_aluResult[12] -attr @name wb_aluResult[12] -pin riscv|ex_rs1[12]_i_1 I2 -pin riscv|ex_rs2[12]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_2 I2 -pin riscv|wb_aluResult_reg[12] Q
netloc riscv|wb_aluResult[12] 1 22 3 21020 27278 22400 26878 23290
load net riscv|wb_aluResult[13] -attr @name wb_aluResult[13] -pin riscv|ex_rs1[13]_i_1 I2 -pin riscv|ex_rs2[13]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_1 I2 -pin riscv|wb_aluResult_reg[13] Q
netloc riscv|wb_aluResult[13] 1 14 11 10250 25298 NJ 25298 NJ 25298 NJ 25298 NJ 25298 NJ 25298 NJ 25298 NJ 25298 20600 27418 NJ 27418 NJ
load net riscv|wb_aluResult[14] -attr @name wb_aluResult[14] -pin riscv|ex_rs1[14]_i_1 I2 -pin riscv|ex_rs2[14]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_4 I2 -pin riscv|wb_aluResult_reg[14] Q
netloc riscv|wb_aluResult[14] 1 13 12 9100 26578 NJ 26578 NJ 26578 NJ 26578 NJ 26578 NJ 26578 NJ 26578 NJ 26578 NJ 26578 20560 27768 NJ 27768 NJ
load net riscv|wb_aluResult[15] -attr @name wb_aluResult[15] -pin riscv|ex_rs1[15]_i_1 I2 -pin riscv|ex_rs2[15]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_3 I2 -pin riscv|wb_aluResult_reg[15] Q
netloc riscv|wb_aluResult[15] 1 13 12 8920 27618 NJ 27618 NJ 27618 NJ 27618 NJ 27618 NJ 27618 NJ 27618 NJ 27618 NJ 27618 20800 28068 NJ 28068 NJ
load net riscv|wb_aluResult[16] -attr @name wb_aluResult[16] -pin riscv|ex_rs1[16]_i_1 I2 -pin riscv|ex_rs2[16]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_6 I2 -pin riscv|wb_aluResult_reg[16] Q
netloc riscv|wb_aluResult[16] 1 22 3 20400 30688 21360J 30498 23530J
load net riscv|wb_aluResult[17] -attr @name wb_aluResult[17] -pin riscv|ex_rs1[17]_i_1 I2 -pin riscv|ex_rs2[17]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17_i_5 I2 -pin riscv|wb_aluResult_reg[17] Q
netloc riscv|wb_aluResult[17] 1 22 3 21020 30708 21400J 30678 23290
load net riscv|wb_aluResult[18] -attr @name wb_aluResult[18] -pin riscv|ex_rs1[18]_i_1 I2 -pin riscv|ex_rs2[18]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_2 I2 -pin riscv|wb_aluResult_reg[18] Q
netloc riscv|wb_aluResult[18] 1 22 3 21000 32218 21560J 32478 23270
load net riscv|wb_aluResult[19] -attr @name wb_aluResult[19] -pin riscv|ex_rs1[19]_i_1 I2 -pin riscv|ex_rs2[19]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_1 I2 -pin riscv|wb_aluResult_reg[19] Q
netloc riscv|wb_aluResult[19] 1 19 4 16240 30358 NJ 30358 NJ 30358 20920
load net riscv|wb_aluResult[1] -attr @name wb_aluResult[1] -pin riscv|ex_rs1[1]_i_1 I2 -pin riscv|ex_rs2[1]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_2 I2 -pin riscv|wb_aluResult_reg[1] Q
netloc riscv|wb_aluResult[1] 1 23 2 22820 23858 24130
load net riscv|wb_aluResult[20] -attr @name wb_aluResult[20] -pin riscv|ex_rs1[20]_i_1 I2 -pin riscv|ex_rs2[20]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_4 I2 -pin riscv|wb_aluResult_reg[20] Q
netloc riscv|wb_aluResult[20] 1 13 12 9140 29918 NJ 29918 NJ 29918 NJ 29918 NJ 29918 NJ 29918 16140J 30818 NJ 30818 NJ 30818 20040 32518 21500J 32818 23270
load net riscv|wb_aluResult[21] -attr @name wb_aluResult[21] -pin riscv|ex_rs1[21]_i_1 I2 -pin riscv|ex_rs2[21]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_3 I2 -pin riscv|wb_aluResult_reg[21] Q
netloc riscv|wb_aluResult[21] 1 15 10 11540 27498 NJ 27498 NJ 27498 NJ 27498 NJ 27498 NJ 27498 19600J 27118 20220 32718 21400J 32898 23330
load net riscv|wb_aluResult[22] -attr @name wb_aluResult[22] -pin riscv|ex_rs1[22]_i_1 I2 -pin riscv|ex_rs2[22]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_6 I2 -pin riscv|wb_aluResult_reg[22] Q
netloc riscv|wb_aluResult[22] 1 5 20 5420 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 NJ 31808 19980 32638 21480J 32838 24310J
load net riscv|wb_aluResult[23] -attr @name wb_aluResult[23] -pin riscv|ex_rs1[23]_i_1 I2 -pin riscv|ex_rs2[23]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_18_23_i_5 I2 -pin riscv|wb_aluResult_reg[23] Q
netloc riscv|wb_aluResult[23] 1 13 12 8900 28998 NJ 28998 NJ 28998 NJ 28998 NJ 28998 NJ 28998 NJ 28998 NJ 28998 NJ 28998 20120 32698 21420J 32878 23770J
load net riscv|wb_aluResult[24] -attr @name wb_aluResult[24] -pin riscv|ex_rs1[24]_i_1 I2 -pin riscv|ex_rs2[24]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_2 I2 -pin riscv|wb_aluResult_reg[24] Q
netloc riscv|wb_aluResult[24] 1 13 10 9180 26558 NJ 26558 11520 27518 NJ 27518 NJ 27518 NJ 27518 NJ 27518 NJ 27518 NJ 27518 20420
load net riscv|wb_aluResult[25] -attr @name wb_aluResult[25] -pin riscv|ex_rs1[25]_i_1 I2 -pin riscv|ex_rs2[25]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_1 I2 -pin riscv|wb_aluResult_reg[25] Q
netloc riscv|wb_aluResult[25] 1 13 10 9120 26438 NJ 26438 NJ 26438 NJ 26438 NJ 26438 NJ 26438 NJ 26438 NJ 26438 19340 28818 20380J
load net riscv|wb_aluResult[26] -attr @name wb_aluResult[26] -pin riscv|ex_rs1[26]_i_1 I2 -pin riscv|ex_rs2[26]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_4 I2 -pin riscv|wb_aluResult_reg[26] Q
netloc riscv|wb_aluResult[26] 1 13 10 9180 26898 NJ 26898 NJ 26898 NJ 26898 NJ 26898 NJ 26898 NJ 26898 NJ 26898 19140 29038 20360J
load net riscv|wb_aluResult[27] -attr @name wb_aluResult[27] -pin riscv|ex_rs1[27]_i_1 I2 -pin riscv|ex_rs2[27]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_3 I2 -pin riscv|wb_aluResult_reg[27] Q
netloc riscv|wb_aluResult[27] 1 13 10 9180 26698 NJ 26698 NJ 26698 NJ 26698 NJ 26698 NJ 26698 NJ 26698 NJ 26698 19120 29018 20300J
load net riscv|wb_aluResult[28] -attr @name wb_aluResult[28] -pin riscv|ex_rs1[28]_i_1 I2 -pin riscv|ex_rs2[28]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_6 I2 -pin riscv|wb_aluResult_reg[28] Q
netloc riscv|wb_aluResult[28] 1 13 11 9180 27478 NJ 27478 NJ 27478 NJ 27478 NJ 27478 NJ 27478 NJ 27478 NJ 27478 19620 27538 NJ 27538 22000
load net riscv|wb_aluResult[29] -attr @name wb_aluResult[29] -pin riscv|ex_rs1[29]_i_1 I2 -pin riscv|ex_rs2[29]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_24_29_i_5 I2 -pin riscv|wb_aluResult_reg[29] Q
netloc riscv|wb_aluResult[29] 1 13 11 9160 27458 NJ 27458 NJ 27458 NJ 27458 NJ 27458 NJ 27458 NJ 27458 NJ 27458 19060 31468 NJ 31468 21820J
load net riscv|wb_aluResult[2] -attr @name wb_aluResult[2] -pin riscv|ex_rs1[2]_i_1 I2 -pin riscv|ex_rs2[2]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_5 I2 -pin riscv|wb_aluResult_reg[2] Q
netloc riscv|wb_aluResult[2] 1 23 2 22840 23878 23890
load net riscv|wb_aluResult[30] -attr @name wb_aluResult[30] -pin riscv|ex_rs1[30]_i_1 I2 -pin riscv|ex_rs2[30]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_2 I2 -pin riscv|wb_aluResult_reg[30] Q
netloc riscv|wb_aluResult[30] 1 19 7 16220 31708 NJ 31708 NJ 31708 NJ 31708 21740 31878 NJ 31878 26510
load net riscv|wb_aluResult[31] -attr @name wb_aluResult[31] -pin riscv|ex_rs1[31]_i_1 I2 -pin riscv|ex_rs2[31]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_30_31_i_1 I2 -pin riscv|wb_aluResult_reg[31] Q
netloc riscv|wb_aluResult[31] 1 19 4 17420 29718 NJ 29718 19640 29218 20320
load net riscv|wb_aluResult[3] -attr @name wb_aluResult[3] -pin riscv|ex_rs1[3]_i_1 I2 -pin riscv|ex_rs2[3]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_4 I2 -pin riscv|wb_aluResult_reg[3] Q
netloc riscv|wb_aluResult[3] 1 21 4 19020 24258 NJ 24258 22280 25058 23290J
load net riscv|wb_aluResult[4] -attr @name wb_aluResult[4] -pin riscv|ex_rs1[4]_i_1 I2 -pin riscv|ex_rs2[4]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_7 I2 -pin riscv|wb_aluResult_reg[4] Q
netloc riscv|wb_aluResult[4] 1 23 2 22360 23818 23690
load net riscv|wb_aluResult[5] -attr @name wb_aluResult[5] -pin riscv|ex_rs1[5]_i_1 I2 -pin riscv|ex_rs2[5]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_6 I2 -pin riscv|wb_aluResult_reg[5] Q
netloc riscv|wb_aluResult[5] 1 23 2 22800 19388 23790
load net riscv|wb_aluResult[6] -attr @name wb_aluResult[6] -pin riscv|ex_rs1[6]_i_1 I2 -pin riscv|ex_rs2[6]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_2 I2 -pin riscv|wb_aluResult_reg[6] Q
netloc riscv|wb_aluResult[6] 1 19 6 17440 14958 NJ 14958 NJ 14958 20180J 14768 21360 23838 23330J
load net riscv|wb_aluResult[7] -attr @name wb_aluResult[7] -pin riscv|ex_rs1[7]_i_1 I2 -pin riscv|ex_rs2[7]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_1 I2 -pin riscv|wb_aluResult_reg[7] Q
netloc riscv|wb_aluResult[7] 1 11 14 8260 25138 8620J 24138 NJ 24138 9530J 24278 10680J 24858 NJ 24858 NJ 24858 NJ 24858 17240 26918 NJ 26918 NJ 26918 NJ 26918 NJ 26918 NJ
load net riscv|wb_aluResult[8] -attr @name wb_aluResult[8] -pin riscv|ex_rs1[8]_i_1 I2 -pin riscv|ex_rs2[8]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_4 I2 -pin riscv|wb_aluResult_reg[8] Q
netloc riscv|wb_aluResult[8] 1 19 4 17400 19078 18660 18278 NJ 18278 20160
load net riscv|wb_aluResult[9] -attr @name wb_aluResult[9] -pin riscv|ex_rs1[9]_i_1 I2 -pin riscv|ex_rs2[9]_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_6_11_i_3 I2 -pin riscv|wb_aluResult_reg[9] Q
netloc riscv|wb_aluResult[9] 1 19 4 17400 18798 NJ 18798 18980 19278 20320
load net riscv|wb_instruction[10] -attr @rip(#000000) 3 -attr @name wb_instruction[10] -pin riscv|ex_rs1[31]_i_2 I4 -pin riscv|ex_rs2[31]_i_2 I3 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRD[3] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I4 -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRD[3] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRD[3] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRD[3] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRD[3] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRD[3] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRD[3] -pin riscv|wb_instruction_reg[10] Q
load net riscv|wb_instruction[11] -attr @rip(#000000) 4 -attr @name wb_instruction[11] -pin riscv|ex_rs1[31]_i_2 I1 -pin riscv|ex_rs2[31]_i_2 I2 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRD[4] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I3 -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRD[4] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRD[4] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRD[4] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRD[4] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRD[4] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRD[4] -pin riscv|wb_instruction_reg[11] Q
load net riscv|wb_instruction[7] -attr @rip(#000000) 0 -attr @name wb_instruction[7] -pin riscv|ex_rs1[31]_i_3 I5 -pin riscv|ex_rs2[31]_i_3 I0 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRD[0] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I2 -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRD[0] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRD[0] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRD[0] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRD[0] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRD[0] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRD[0] -pin riscv|wb_instruction_reg[7] Q
load net riscv|wb_instruction[8] -attr @rip(#000000) 1 -attr @name wb_instruction[8] -pin riscv|ex_rs1[31]_i_3 I0 -pin riscv|ex_rs2[31]_i_3 I3 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRD[1] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I1 -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRD[1] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRD[1] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRD[1] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRD[1] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRD[1] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRD[1] -pin riscv|wb_instruction_reg[8] Q
load net riscv|wb_instruction[9] -attr @rip(#000000) 2 -attr @name wb_instruction[9] -pin riscv|ex_rs1[31]_i_3 I2 -pin riscv|ex_rs2[31]_i_3 I5 -pin riscv|id_registerFile_reg_r1_0_31_0_5 ADDRD[2] -pin riscv|id_registerFile_reg_r1_0_31_0_5_i_1 I5 -pin riscv|id_registerFile_reg_r1_0_31_12_17 ADDRD[2] -pin riscv|id_registerFile_reg_r1_0_31_18_23 ADDRD[2] -pin riscv|id_registerFile_reg_r1_0_31_24_29 ADDRD[2] -pin riscv|id_registerFile_reg_r1_0_31_30_31 ADDRD[2] -pin riscv|id_registerFile_reg_r1_0_31_6_11 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_0_5 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_12_17 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_18_23 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_24_29 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_30_31 ADDRD[2] -pin riscv|id_registerFile_reg_r2_0_31_6_11 ADDRD[2] -pin riscv|wb_instruction_reg[9] Q
load netBundle @riscv|out 32 riscv|out[31] riscv|out[30] riscv|out[29] riscv|out[28] riscv|out[27] riscv|out[26] riscv|out[25] riscv|out[24] riscv|out[23] riscv|out[22] riscv|out[21] riscv|out[20] riscv|out[19] riscv|out[18] riscv|out[17] riscv|out[16] riscv|out[15] riscv|out[14] riscv|out[13] riscv|out[12] riscv|out[11] riscv|out[10] riscv|out[9] riscv|out[8] riscv|out[7] riscv|out[6] riscv|out[5] riscv|out[4] riscv|out[3] riscv|out[2] riscv|out[1] riscv|out[0] -autobundled
netbloc @riscv|out 1 0 30 NJ 26338 NJ 26338 NJ 26338 NJ 26338 NJ 26338 5500 26338 NJ 26338 NJ 26338 NJ 26338 NJ 26338 NJ 26338 8340 26538 NJ 26538 9020 25518 10070 25438 11400 25958 NJ 25958 NJ 25958 NJ 25958 17160 30378 18520 26558 19420 26938 20480 32738 22520 31458 24550 28168 26370 28698 28690 28298 30100 27318 31090 26838 31630
load netBundle @riscv|ex_aluResult0_inferred__ 4 riscv|ex_aluResult0_inferred__0/i__carry_n_0 riscv|ex_aluResult0_inferred__0/i__carry_n_1 riscv|ex_aluResult0_inferred__0/i__carry_n_2 riscv|ex_aluResult0_inferred__0/i__carry_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred__ 1 14 1 9670 13658n
load netBundle @riscv|ex_aluResult0_inferred___1 4 riscv|ex_aluResult0_inferred__0/i__carry_n_4 riscv|ex_aluResult0_inferred__0/i__carry_n_5 riscv|ex_aluResult0_inferred__0/i__carry_n_6 riscv|ex_aluResult0_inferred__0/i__carry_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___1 1 14 16 9530 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 NJ 8888 24610 5298 25410 5018 NJ 5018 NJ 5018 NJ 5018 31550
load netBundle @riscv|ex_aluResult0_inferred___2 4 riscv|ex_aluResult0_inferred__0/i__carry__0_n_0 riscv|ex_aluResult0_inferred__0/i__carry__0_n_1 riscv|ex_aluResult0_inferred__0/i__carry__0_n_2 riscv|ex_aluResult0_inferred__0/i__carry__0_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___2 1 15 1 11160 14358n
load netBundle @riscv|ex_aluResult0_inferred___3 4 riscv|ex_aluResult0_inferred__0/i__carry__0_n_4 riscv|ex_aluResult0_inferred__0/i__carry__0_n_5 riscv|ex_aluResult0_inferred__0/i__carry__0_n_6 riscv|ex_aluResult0_inferred__0/i__carry__0_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___3 1 15 11 10720 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 NJ 8328 25450
load netBundle @riscv|ex_aluResult0_inferred___4 4 riscv|ex_aluResult0_inferred__0/i__carry__1_n_0 riscv|ex_aluResult0_inferred__0/i__carry__1_n_1 riscv|ex_aluResult0_inferred__0/i__carry__1_n_2 riscv|ex_aluResult0_inferred__0/i__carry__1_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___4 1 16 1 12300 14558n
load netBundle @riscv|ex_aluResult0_inferred___5 4 riscv|ex_aluResult0_inferred__0/i__carry__1_n_4 riscv|ex_aluResult0_inferred__0/i__carry__1_n_5 riscv|ex_aluResult0_inferred__0/i__carry__1_n_6 riscv|ex_aluResult0_inferred__0/i__carry__1_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___5 1 15 4 11520 12798 12060 13338 14400 14348 15140J
load netBundle @riscv|ex_aluResult0_inferred___6 4 riscv|ex_aluResult0_inferred__0/i__carry__2_n_0 riscv|ex_aluResult0_inferred__0/i__carry__2_n_1 riscv|ex_aluResult0_inferred__0/i__carry__2_n_2 riscv|ex_aluResult0_inferred__0/i__carry__2_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___6 1 13 5 9180 17188 NJ 17188 11120J 17088 12280J 17808 13400
load netBundle @riscv|ex_aluResult0_inferred___7 4 riscv|ex_aluResult0_inferred__0/i__carry__2_n_4 riscv|ex_aluResult0_inferred__0/i__carry__2_n_5 riscv|ex_aluResult0_inferred__0/i__carry__2_n_6 riscv|ex_aluResult0_inferred__0/i__carry__2_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___7 1 8 12 6700 17258 7160 17598 NJ 17598 NJ 17598 NJ 17598 NJ 17598 NJ 17598 NJ 17598 12060J 17868 13620 15968 15260J 16078 16800
load netBundle @riscv|ex_aluResult0_inferred___8 4 riscv|ex_aluResult0_inferred__0/i__carry__3_n_0 riscv|ex_aluResult0_inferred__0/i__carry__3_n_1 riscv|ex_aluResult0_inferred__0/i__carry__3_n_2 riscv|ex_aluResult0_inferred__0/i__carry__3_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___8 1 14 3 9550J 17618 NJ 17618 12040J
load netBundle @riscv|ex_aluResult0_inferred___9 4 riscv|ex_aluResult0_inferred__0/i__carry__3_n_4 riscv|ex_aluResult0_inferred__0/i__carry__3_n_5 riscv|ex_aluResult0_inferred__0/i__carry__3_n_6 riscv|ex_aluResult0_inferred__0/i__carry__3_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___9 1 14 6 9990 17248 NJ 17248 12220J 17828 14460 19468 NJ 19468 17320
load netBundle @riscv|ex_aluResult0_inferred___10 4 riscv|ex_aluResult0_inferred__0/i__carry__4_n_0 riscv|ex_aluResult0_inferred__0/i__carry__4_n_1 riscv|ex_aluResult0_inferred__0/i__carry__4_n_2 riscv|ex_aluResult0_inferred__0/i__carry__4_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___10 1 16 2 13020 18158 13360
load netBundle @riscv|ex_aluResult0_inferred___11 4 riscv|ex_aluResult0_inferred__0/i__carry__4_n_4 riscv|ex_aluResult0_inferred__0/i__carry__4_n_5 riscv|ex_aluResult0_inferred__0/i__carry__4_n_6 riscv|ex_aluResult0_inferred__0/i__carry__4_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___11 1 0 20 4120 16628 NJ 16628 NJ 16628 NJ 16628 NJ 16628 NJ 16628 NJ 16628 NJ 16628 6160 16808 7320J 16928 NJ 16928 NJ 16928 NJ 16928 NJ 16928 9850J 16988 11120J 16908 12360J 17588 13440 19638 NJ 19638 17400J
load netBundle @riscv|ex_aluResult0_inferred___12 4 riscv|ex_aluResult0_inferred__0/i__carry__5_n_0 riscv|ex_aluResult0_inferred__0/i__carry__5_n_1 riscv|ex_aluResult0_inferred__0/i__carry__5_n_2 riscv|ex_aluResult0_inferred__0/i__carry__5_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___12 1 17 10 13660J 17908 14800J 17788 NJ 17788 18260J 17728 NJ 17728 NJ 17728 21900J 17708 NJ 17708 25110J 17658 27090
load netBundle @riscv|ex_aluResult0_inferred___13 4 riscv|ex_aluResult0_inferred__0/i__carry__5_n_4 riscv|ex_aluResult0_inferred__0/i__carry__5_n_5 riscv|ex_aluResult0_inferred__0/i__carry__5_n_6 riscv|ex_aluResult0_inferred__0/i__carry__5_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___13 1 9 9 7480 16058 NJ 16058 NJ 16058 NJ 16058 NJ 16058 NJ 16058 NJ 16058 12780 16058 13380
load netBundle @riscv|ex_aluResult0_inferred___14 3 riscv|ex_aluResult0_inferred__0/i__carry__6_n_1 riscv|ex_aluResult0_inferred__0/i__carry__6_n_2 riscv|ex_aluResult0_inferred__0/i__carry__6_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___14 1 27 1 N 22888
load netBundle @riscv|ex_aluResult0_inferred___15 4 riscv|ex_aluResult0_inferred__0/i__carry__6_n_4 riscv|ex_aluResult0_inferred__0/i__carry__6_n_5 riscv|ex_aluResult0_inferred__0/i__carry__6_n_6 riscv|ex_aluResult0_inferred__0/i__carry__6_n_7 -autobundled
netbloc @riscv|ex_aluResult0_inferred___15 1 27 1 29980 21388n
load netBundle @riscv|ex_aluResult0_inferred___16 4 riscv|ex_aluResult0_inferred__4/i__carry_n_0 riscv|ex_aluResult0_inferred__4/i__carry_n_1 riscv|ex_aluResult0_inferred__4/i__carry_n_2 riscv|ex_aluResult0_inferred__4/i__carry_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___16 1 24 1 24710 11738
load netBundle @riscv|ex_aluResult0_inferred___17 4 riscv|ex_aluResult0_inferred__4/i__carry__0_n_0 riscv|ex_aluResult0_inferred__4/i__carry__0_n_1 riscv|ex_aluResult0_inferred__4/i__carry__0_n_2 riscv|ex_aluResult0_inferred__4/i__carry__0_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___17 1 25 1 25550 11758n
load netBundle @riscv|ex_aluResult0_inferred___18 4 riscv|ex_aluResult0_inferred__4/i__carry__1_n_0 riscv|ex_aluResult0_inferred__4/i__carry__1_n_1 riscv|ex_aluResult0_inferred__4/i__carry__1_n_2 riscv|ex_aluResult0_inferred__4/i__carry__1_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___18 1 26 1 27210 23688n
load netBundle @riscv|ex_aluResult0_inferred___19 4 riscv|data5 riscv|ex_aluResult0_inferred__4/i__carry__2_n_1 riscv|ex_aluResult0_inferred__4/i__carry__2_n_2 riscv|ex_aluResult0_inferred__4/i__carry__2_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___19 1 27 1 29920 20588n
load netBundle @riscv|ex_aluResult0_inferred___20 4 riscv|ex_aluResult0_inferred__5/i__carry_n_0 riscv|ex_aluResult0_inferred__5/i__carry_n_1 riscv|ex_aluResult0_inferred__5/i__carry_n_2 riscv|ex_aluResult0_inferred__5/i__carry_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___20 1 24 1 24210 11868n
load netBundle @riscv|ex_aluResult0_inferred___21 4 riscv|ex_aluResult0_inferred__5/i__carry__0_n_0 riscv|ex_aluResult0_inferred__5/i__carry__0_n_1 riscv|ex_aluResult0_inferred__5/i__carry__0_n_2 riscv|ex_aluResult0_inferred__5/i__carry__0_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___21 1 25 1 25090 13268n
load netBundle @riscv|ex_aluResult0_inferred___22 4 riscv|ex_aluResult0_inferred__5/i__carry__1_n_0 riscv|ex_aluResult0_inferred__5/i__carry__1_n_1 riscv|ex_aluResult0_inferred__5/i__carry__1_n_2 riscv|ex_aluResult0_inferred__5/i__carry__1_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___22 1 26 1 27090 28928n
load netBundle @riscv|ex_aluResult0_inferred___23 4 riscv|data6 riscv|ex_aluResult0_inferred__5/i__carry__2_n_1 riscv|ex_aluResult0_inferred__5/i__carry__2_n_2 riscv|ex_aluResult0_inferred__5/i__carry__2_n_3 -autobundled
netbloc @riscv|ex_aluResult0_inferred___23 1 27 1 29880 20428n
load netBundle @riscv|ex_branchAddress_carry_n 4 riscv|ex_branchAddress_carry_n_0 riscv|ex_branchAddress_carry_n_1 riscv|ex_branchAddress_carry_n_2 riscv|ex_branchAddress_carry_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry_n 1 22 1 20140 14338n
load netBundle @riscv|ex_branchAddress 4 riscv|ex_branchAddress[3] riscv|ex_branchAddress[2] riscv|ex_branchAddress[1] riscv|ex_branchAddress[0] -autobundled
netbloc @riscv|ex_branchAddress 1 22 10 20120 14038 21500 13728 24010J 13518 25610J 13478 NJ 13478 NJ 13478 NJ 13478 NJ 13478 NJ 13478 32330
load netBundle @riscv|ex_branchAddress_carry__ 4 riscv|ex_branchAddress_carry__0_n_0 riscv|ex_branchAddress_carry__0_n_1 riscv|ex_branchAddress_carry__0_n_2 riscv|ex_branchAddress_carry__0_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry__ 1 23 1 22380 14358n
load netBundle @riscv|ex_branchAddress_1 4 riscv|ex_branchAddress[7] riscv|ex_branchAddress[6] riscv|ex_branchAddress[5] riscv|ex_branchAddress[4] -autobundled
netbloc @riscv|ex_branchAddress_1 1 23 2 21520 3298 23410
load netBundle @riscv|ex_branchAddress_carry___1 4 riscv|ex_branchAddress_carry__1_n_0 riscv|ex_branchAddress_carry__1_n_1 riscv|ex_branchAddress_carry__1_n_2 riscv|ex_branchAddress_carry__1_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___1 1 24 1 24150 14938n
load netBundle @riscv|ex_branchAddress_2 4 riscv|ex_branchAddress[11] riscv|ex_branchAddress[10] riscv|ex_branchAddress[9] riscv|ex_branchAddress[8] -autobundled
netbloc @riscv|ex_branchAddress_2 1 24 2 24690 15838 26090
load netBundle @riscv|ex_branchAddress_carry___2 4 riscv|ex_branchAddress_carry__2_n_0 riscv|ex_branchAddress_carry__2_n_1 riscv|ex_branchAddress_carry__2_n_2 riscv|ex_branchAddress_carry__2_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___2 1 25 1 26690 16068
load netBundle @riscv|ex_branchAddress_3 4 riscv|ex_branchAddress[15] riscv|ex_branchAddress[14] riscv|ex_branchAddress[13] riscv|ex_branchAddress[12] -autobundled
netbloc @riscv|ex_branchAddress_3 1 25 2 26090 16008 27730
load netBundle @riscv|ex_branchAddress_carry___3 4 riscv|ex_branchAddress_carry__3_n_0 riscv|ex_branchAddress_carry__3_n_1 riscv|ex_branchAddress_carry__3_n_2 riscv|ex_branchAddress_carry__3_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___3 1 26 1 27750 15888n
load netBundle @riscv|ex_branchAddress_4 4 riscv|ex_branchAddress[19] riscv|ex_branchAddress[18] riscv|ex_branchAddress[17] riscv|ex_branchAddress[16] -autobundled
netbloc @riscv|ex_branchAddress_4 1 26 2 27710 15228 29260
load netBundle @riscv|ex_branchAddress_carry___4 4 riscv|ex_branchAddress_carry__4_n_0 riscv|ex_branchAddress_carry__4_n_1 riscv|ex_branchAddress_carry__4_n_2 riscv|ex_branchAddress_carry__4_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___4 1 27 1 29120 15908n
load netBundle @riscv|ex_branchAddress_5 4 riscv|ex_branchAddress[23] riscv|ex_branchAddress[22] riscv|ex_branchAddress[21] riscv|ex_branchAddress[20] -autobundled
netbloc @riscv|ex_branchAddress_5 1 27 2 29280 15798 30970
load netBundle @riscv|ex_branchAddress_carry___5 4 riscv|ex_branchAddress_carry__5_n_0 riscv|ex_branchAddress_carry__5_n_1 riscv|ex_branchAddress_carry__5_n_2 riscv|ex_branchAddress_carry__5_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___5 1 28 1 30830 16478n
load netBundle @riscv|ex_branchAddress_6 4 riscv|ex_branchAddress[27] riscv|ex_branchAddress[26] riscv|ex_branchAddress[25] riscv|ex_branchAddress[24] -autobundled
netbloc @riscv|ex_branchAddress_6 1 28 2 30850 16758 31450
load netBundle @riscv|ex_branchAddress_carry___6 3 riscv|ex_branchAddress_carry__6_n_1 riscv|ex_branchAddress_carry__6_n_2 riscv|ex_branchAddress_carry__6_n_3 -autobundled
netbloc @riscv|ex_branchAddress_carry___6 1 29 1 N 16838
load netBundle @riscv|ex_branchAddress_7 4 riscv|ex_branchAddress[31] riscv|ex_branchAddress[30] riscv|ex_branchAddress[29] riscv|ex_branchAddress[28] -autobundled
netbloc @riscv|ex_branchAddress_7 1 29 2 31530 17168 31990
load netBundle @riscv|ex_rs10 2 riscv|ex_rs10[1] riscv|ex_rs10[0] -autobundled
netbloc @riscv|ex_rs10 1 23 1 22300 24018n
load netBundle @riscv|ex_rs10_1 2 riscv|ex_rs10[3] riscv|ex_rs10[2] -autobundled
netbloc @riscv|ex_rs10_1 1 23 1 22380 24368n
load netBundle @riscv|ex_rs10_2 2 riscv|ex_rs10[5] riscv|ex_rs10[4] -autobundled
netbloc @riscv|ex_rs10_2 1 23 2 22220 26898 24470
load netBundle @riscv|ex_rs10_3 2 riscv|ex_rs10[13] riscv|ex_rs10[12] -autobundled
netbloc @riscv|ex_rs10_3 1 22 3 19940 28048 NJ 28048 24510
load netBundle @riscv|ex_rs10_4 2 riscv|ex_rs10[15] riscv|ex_rs10[14] -autobundled
netbloc @riscv|ex_rs10_4 1 22 3 20800 28188 NJ 28188 24530
load netBundle @riscv|ex_rs10_5 2 riscv|ex_rs10[17] riscv|ex_rs10[16] -autobundled
netbloc @riscv|ex_rs10_5 1 22 1 20440 28628n
load netBundle @riscv|ex_rs10_6 2 riscv|ex_rs10[19] riscv|ex_rs10[18] -autobundled
netbloc @riscv|ex_rs10_6 1 22 1 19960 30138n
load netBundle @riscv|ex_rs10_7 2 riscv|ex_rs10[21] riscv|ex_rs10[20] -autobundled
netbloc @riscv|ex_rs10_7 1 22 3 20080 32398 21520J 32658 24730
load netBundle @riscv|ex_rs10_8 2 riscv|ex_rs10[23] riscv|ex_rs10[22] -autobundled
netbloc @riscv|ex_rs10_8 1 22 3 20020 32658 21460J 32858 23270
load netBundle @riscv|ex_rs10_9 2 riscv|ex_rs10[25] riscv|ex_rs10[24] -autobundled
netbloc @riscv|ex_rs10_9 1 22 1 20340 30178n
load netBundle @riscv|ex_rs10_10 2 riscv|ex_rs10[27] riscv|ex_rs10[26] -autobundled
netbloc @riscv|ex_rs10_10 1 22 1 20240 30198n
load netBundle @riscv|ex_rs10_11 2 riscv|ex_rs10[29] riscv|ex_rs10[28] -autobundled
netbloc @riscv|ex_rs10_11 1 22 2 20280 30908 21860
load netBundle @riscv|ex_rs10_12 2 riscv|ex_rs10[31] riscv|ex_rs10[30] -autobundled
netbloc @riscv|ex_rs10_12 1 22 2 20180 31508 21780J
load netBundle @riscv|ex_rs10_13 2 riscv|ex_rs10[7] riscv|ex_rs10[6] -autobundled
netbloc @riscv|ex_rs10_13 1 22 3 20660 27398 NJ 27398 24490
load netBundle @riscv|ex_rs10_14 2 riscv|ex_rs10[9] riscv|ex_rs10[8] -autobundled
netbloc @riscv|ex_rs10_14 1 22 1 20380 9028n
load netBundle @riscv|ex_rs10_15 2 riscv|ex_rs10[11] riscv|ex_rs10[10] -autobundled
netbloc @riscv|ex_rs10_15 1 22 1 20740 22198n
load netBundle @riscv|ex_rs20 2 riscv|ex_rs20[1] riscv|ex_rs20[0] -autobundled
netbloc @riscv|ex_rs20 1 24 3 24710 25528 NJ 25528 27130
load netBundle @riscv|ex_rs20_1 2 riscv|ex_rs20[3] riscv|ex_rs20[2] -autobundled
netbloc @riscv|ex_rs20_1 1 21 6 19620 24478 NJ 24478 22240J 24578 23850 25118 NJ 25118 27090
load netBundle @riscv|ex_rs20_2 2 riscv|ex_rs20[5] riscv|ex_rs20[4] -autobundled
netbloc @riscv|ex_rs20_2 1 23 4 22780 25508 NJ 25508 NJ 25508 27070
load netBundle @riscv|ex_rs20_3 2 riscv|ex_rs20[13] riscv|ex_rs20[12] -autobundled
netbloc @riscv|ex_rs20_3 1 14 11 10230 24298 10660J 25038 NJ 25038 NJ 25038 NJ 25038 NJ 25038 NJ 25038 NJ 25038 NJ 25038 22760 26858 23170
load netBundle @riscv|ex_rs20_4 2 riscv|ex_rs20[15] riscv|ex_rs20[14] -autobundled
netbloc @riscv|ex_rs20_4 1 13 12 9180 24318 NJ 24318 10640J 25078 NJ 25078 NJ 25078 NJ 25078 NJ 25078 NJ 25078 NJ 25078 NJ 25078 NJ 25078 23270
load netBundle @riscv|ex_rs20_5 2 riscv|ex_rs20[17] riscv|ex_rs20[16] -autobundled
netbloc @riscv|ex_rs20_5 1 24 1 23570 28368n
load netBundle @riscv|ex_rs20_6 2 riscv|ex_rs20[19] riscv|ex_rs20[18] -autobundled
netbloc @riscv|ex_rs20_6 1 19 6 17380 31788 NJ 31788 NJ 31788 20100J 32008 21580J 32298 23310
load netBundle @riscv|ex_rs20_7 2 riscv|ex_rs20[21] riscv|ex_rs20[20] -autobundled
netbloc @riscv|ex_rs20_7 1 13 12 9180 25718 NJ 25718 11440 25478 NJ 25478 NJ 25478 NJ 25478 NJ 25478 NJ 25478 NJ 25478 20560J 25588 NJ 25588 23250
load netBundle @riscv|ex_rs20_8 2 riscv|ex_rs20[23] riscv|ex_rs20[22] -autobundled
netbloc @riscv|ex_rs20_8 1 5 20 5460 26598 NJ 26598 NJ 26598 NJ 26598 NJ 26598 NJ 26598 NJ 26598 NJ 26598 9080 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 NJ 25778 23210
load netBundle @riscv|ex_rs20_9 2 riscv|ex_rs20[25] riscv|ex_rs20[24] -autobundled
netbloc @riscv|ex_rs20_9 1 15 7 11480 26038 NJ 26038 NJ 26038 NJ 26038 NJ 26038 NJ 26038 19480
load netBundle @riscv|ex_rs20_10 2 riscv|ex_rs20[27] riscv|ex_rs20[26] -autobundled
netbloc @riscv|ex_rs20_10 1 15 7 10940J 26238 NJ 26238 NJ 26238 NJ 26238 NJ 26238 NJ 26238 19520
load netBundle @riscv|ex_rs20_11 2 riscv|ex_rs20[29] riscv|ex_rs20[28] -autobundled
netbloc @riscv|ex_rs20_11 1 15 7 10680 26418 NJ 26418 NJ 26418 NJ 26418 NJ 26418 NJ 26418 19640
load netBundle @riscv|ex_rs20_12 2 riscv|ex_rs20[31] riscv|ex_rs20[30] -autobundled
netbloc @riscv|ex_rs20_12 1 21 5 19080 29238 20040J 28508 NJ 28508 NJ 28508 25310
load netBundle @riscv|ex_rs20_13 2 riscv|ex_rs20[7] riscv|ex_rs20[6] -autobundled
netbloc @riscv|ex_rs20_13 1 11 13 8360 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 NJ 25498 19440 21798 NJ 21798 22300J
load netBundle @riscv|ex_rs20_14 2 riscv|ex_rs20[9] riscv|ex_rs20[8] -autobundled
netbloc @riscv|ex_rs20_14 1 20 2 18680 22018 19340
load netBundle @riscv|ex_rs20_15 2 riscv|ex_rs20[11] riscv|ex_rs20[10] -autobundled
netbloc @riscv|ex_rs20_15 1 20 4 18680 23008 19480 22338 NJ 22338 22100J
load netBundle @riscv|if_PC_reg 4 riscv|if_PC_reg[13]_i_1_n_0 riscv|if_PC_reg[13]_i_1_n_1 riscv|if_PC_reg[13]_i_1_n_2 riscv|if_PC_reg[13]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg 1 29 1 31570 15658n
load netBundle @riscv|if_PC_reg_1 4 riscv|if_PC_reg[13]_i_1_n_4 riscv|if_PC_reg[13]_i_1_n_5 riscv|if_PC_reg[13]_i_1_n_6 riscv|if_PC_reg[13]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_1 1 29 5 NJ 15678 NJ 15678 NJ 15678 NJ 15678 33080
load netBundle @riscv|if_PC_reg_2 4 riscv|if_PC_reg[17]_i_1_n_0 riscv|if_PC_reg[17]_i_1_n_1 riscv|if_PC_reg[17]_i_1_n_2 riscv|if_PC_reg[17]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_2 1 30 1 31910 15978n
load netBundle @riscv|if_PC_reg_3 4 riscv|if_PC_reg[17]_i_1_n_4 riscv|if_PC_reg[17]_i_1_n_5 riscv|if_PC_reg[17]_i_1_n_6 riscv|if_PC_reg[17]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_3 1 30 4 NJ 15998 NJ 15998 NJ 15998 33020
load netBundle @riscv|if_PC_reg_4 4 riscv|if_PC_reg[1]_i_1_n_0 riscv|if_PC_reg[1]_i_1_n_1 riscv|if_PC_reg[1]_i_1_n_2 riscv|if_PC_reg[1]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_4 1 26 1 28230 11078n
load netBundle @riscv|if_PC_reg_5 4 riscv|if_PC_reg[1]_i_1_n_4 riscv|if_PC_reg[1]_i_1_n_5 riscv|if_PC_reg[1]_i_1_n_6 riscv|if_PC_reg[1]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_5 1 26 8 NJ 11098 NJ 11098 NJ 11098 NJ 11098 NJ 11098 NJ 11098 NJ 11098 33160
load netBundle @riscv|if_PC_reg_6 4 riscv|if_PC_reg[21]_i_1_n_0 riscv|if_PC_reg[21]_i_1_n_1 riscv|if_PC_reg[21]_i_1_n_2 riscv|if_PC_reg[21]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_6 1 31 1 32290 16058n
load netBundle @riscv|if_PC_reg_7 4 riscv|if_PC_reg[21]_i_1_n_4 riscv|if_PC_reg[21]_i_1_n_5 riscv|if_PC_reg[21]_i_1_n_6 riscv|if_PC_reg[21]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_7 1 31 3 NJ 16078 NJ 16078 33120
load netBundle @riscv|if_PC_reg_8 4 riscv|if_PC_reg[25]_i_1_n_0 riscv|if_PC_reg[25]_i_1_n_1 riscv|if_PC_reg[25]_i_1_n_2 riscv|if_PC_reg[25]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_8 1 32 1 32810 16138n
load netBundle @riscv|if_PC_reg_9 4 riscv|if_PC_reg[25]_i_1_n_4 riscv|if_PC_reg[25]_i_1_n_5 riscv|if_PC_reg[25]_i_1_n_6 riscv|if_PC_reg[25]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_9 1 32 2 NJ 16158 33040
load netBundle @riscv|if_PC_reg_10 2 riscv|if_PC_reg[29]_i_1_n_2 riscv|if_PC_reg[29]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_10 1 33 1 N 16218
load netBundle @riscv|if_PC_reg_11 3 riscv|if_PC_reg[29]_i_1_n_5 riscv|if_PC_reg[29]_i_1_n_6 riscv|if_PC_reg[29]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_11 1 33 1 33160 16048n
load netBundle @riscv|if_PC_reg_12 4 riscv|if_PC_reg[5]_i_1_n_0 riscv|if_PC_reg[5]_i_1_n_1 riscv|if_PC_reg[5]_i_1_n_2 riscv|if_PC_reg[5]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_12 1 27 1 30100 12428n
load netBundle @riscv|if_PC_reg_13 4 riscv|if_PC_reg[5]_i_1_n_4 riscv|if_PC_reg[5]_i_1_n_5 riscv|if_PC_reg[5]_i_1_n_6 riscv|if_PC_reg[5]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_13 1 27 7 NJ 12448 NJ 12448 NJ 12448 NJ 12448 NJ 12448 NJ 12448 33160
load netBundle @riscv|if_PC_reg_14 4 riscv|if_PC_reg[9]_i_1_n_0 riscv|if_PC_reg[9]_i_1_n_1 riscv|if_PC_reg[9]_i_1_n_2 riscv|if_PC_reg[9]_i_1_n_3 -autobundled
netbloc @riscv|if_PC_reg_14 1 28 1 31010 15468n
load netBundle @riscv|if_PC_reg_15 4 riscv|if_PC_reg[9]_i_1_n_4 riscv|if_PC_reg[9]_i_1_n_5 riscv|if_PC_reg[9]_i_1_n_6 riscv|if_PC_reg[9]_i_1_n_7 -autobundled
netbloc @riscv|if_PC_reg_15 1 28 6 NJ 15488 NJ 15488 NJ 15488 NJ 15488 NJ 15488 33000
load netBundle @riscv|mem_aluResult_reg 4 riscv|mem_aluResult_reg[11]_i_14_n_0 riscv|mem_aluResult_reg[11]_i_14_n_1 riscv|mem_aluResult_reg[11]_i_14_n_2 riscv|mem_aluResult_reg[11]_i_14_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg 1 18 1 15080 17048n
load netBundle @riscv|data0 4 riscv|data0[11] riscv|data0[10] riscv|data0[9] riscv|data0[8] -autobundled
netbloc @riscv|data0 1 14 5 10210 13558 11240J 14378 12340 14498 14060 16988 14800
load netBundle @riscv|mem_aluResult_reg_1 4 riscv|mem_aluResult_reg[15]_i_11_n_0 riscv|mem_aluResult_reg[15]_i_11_n_1 riscv|mem_aluResult_reg[15]_i_11_n_2 riscv|mem_aluResult_reg[15]_i_11_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_1 1 14 6 10250 17008 11120J 17068 12320J 17608 14160J 17448 NJ 17448 16160
load netBundle @riscv|data0_1 4 riscv|data0[15] riscv|data0[14] riscv|data0[13] riscv|data0[12] -autobundled
netbloc @riscv|data0_1 1 8 12 6660 16768 7360J 16908 NJ 16908 NJ 16908 NJ 16908 NJ 16908 9910J 16968 10700J 16888 12380J 17568 14080 16188 15140J 16348 16720
load netBundle @riscv|mem_aluResult_reg_2 4 riscv|mem_aluResult_reg[19]_i_13_n_0 riscv|mem_aluResult_reg[19]_i_13_n_1 riscv|mem_aluResult_reg[19]_i_13_n_2 riscv|mem_aluResult_reg[19]_i_13_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_2 1 15 1 11100 17068n
load netBundle @riscv|data0_2 4 riscv|data0[19] riscv|data0[18] riscv|data0[17] riscv|data0[16] -autobundled
netbloc @riscv|data0_2 1 14 6 10250 16948 11080 16868 12420J 17548 13420 19488 NJ 19488 17340
load netBundle @riscv|mem_aluResult_reg_3 4 riscv|mem_aluResult_reg[26]_i_13_n_0 riscv|mem_aluResult_reg[26]_i_13_n_1 riscv|mem_aluResult_reg[26]_i_13_n_2 riscv|mem_aluResult_reg[26]_i_13_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_3 1 16 1 11920 18278n
load netBundle @riscv|data0_3 4 riscv|data0[23] riscv|data0[22] riscv|data0[21] riscv|data0[20] -autobundled
netbloc @riscv|data0_3 1 0 20 4060 16608 NJ 16608 NJ 16608 NJ 16608 NJ 16608 NJ 16608 NJ 16608 NJ 16608 6540 16708 NJ 16708 NJ 16708 NJ 16708 NJ 16708 NJ 16708 9910J 16518 NJ 16518 11880 17788 13500 19658 NJ 19658 17400J
load netBundle @riscv|mem_aluResult_reg_4 4 riscv|mem_aluResult_reg[26]_i_9_n_0 riscv|mem_aluResult_reg[26]_i_9_n_1 riscv|mem_aluResult_reg[26]_i_9_n_2 riscv|mem_aluResult_reg[26]_i_9_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_4 1 17 9 13460 31488 NJ 31488 NJ 31488 NJ 31488 NJ 31488 NJ 31488 21800J 31668 23310J 31858 26690J
load netBundle @riscv|data0_4 4 riscv|data0[27] riscv|data0[26] riscv|data0[25] riscv|data0[24] -autobundled
netbloc @riscv|data0_4 1 9 9 7520 16098 NJ 16098 NJ 16098 NJ 16098 NJ 16098 NJ 16098 NJ 16098 12640 16238 13480
load netBundle @riscv|mem_aluResult_reg_5 4 riscv|mem_aluResult_reg[2]_i_12_n_0 riscv|mem_aluResult_reg[2]_i_12_n_1 riscv|mem_aluResult_reg[2]_i_12_n_2 riscv|mem_aluResult_reg[2]_i_12_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_5 1 16 10 13040 17388 13360J 17328 15520J 17228 NJ 17228 18300J 17008 NJ 17008 20540J 16968 21980J 16948 NJ 16948 25070
load netBundle @riscv|data0_5 4 riscv|data0[3] riscv|data0[2] riscv|data0[1] riscv|data0[0] -autobundled
netbloc @riscv|data0_5 1 24 5 24710 9188 25370 8728 NJ 8728 NJ 8728 30950
load netBundle @riscv|mem_aluResult_reg_6 3 riscv|mem_aluResult_reg[30]_i_22_n_1 riscv|mem_aluResult_reg[30]_i_22_n_2 riscv|mem_aluResult_reg[30]_i_22_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_6 1 26 1 N 31878
load netBundle @riscv|data0_6 4 riscv|data0[31] riscv|data0[30] riscv|data0[29] riscv|data0[28] -autobundled
netbloc @riscv|data0_6 1 26 2 28510 22478 29100
load netBundle @riscv|mem_aluResult_reg_7 4 riscv|mem_aluResult_reg[7]_i_9_n_0 riscv|mem_aluResult_reg[7]_i_9_n_1 riscv|mem_aluResult_reg[7]_i_9_n_2 riscv|mem_aluResult_reg[7]_i_9_n_3 -autobundled
netbloc @riscv|mem_aluResult_reg_7 1 17 1 14120 17028n
load netBundle @riscv|data0_7 4 riscv|data0[7] riscv|data0[6] riscv|data0[5] riscv|data0[4] -autobundled
netbloc @riscv|data0_7 1 17 8 13860 8268 NJ 8268 NJ 8268 NJ 8268 NJ 8268 NJ 8268 NJ 8268 23830
load netBundle @riscv|D 32 riscv|D[31] riscv|D[30] riscv|D[29] riscv|D[28] riscv|D[27] riscv|D[26] riscv|D[25] riscv|D[24] riscv|D[23] riscv|D[22] riscv|D[21] riscv|D[20] riscv|D[19] riscv|D[18] riscv|D[17] riscv|D[16] riscv|D[15] riscv|D[14] riscv|D[13] riscv|D[12] riscv|D[11] riscv|D[10] riscv|D[9] riscv|D[8] riscv|D[7] riscv|D[6] riscv|D[5] riscv|D[4] riscv|D[3] riscv|D[2] riscv|D[1] riscv|D[0] -autobundled
netbloc @riscv|D 1 18 17 15860 16098 16680 16398 18400 16118 19620 16258 20920 15538 21640 7428 23370 4118 25230 15638 27590 15188 29100 15308 31050 15998 31570 16508 31990 16648 32430 16278 32770 16418 NJ 16418 33320
load netBundle @riscv|ex_rs1 4 riscv|ex_rs1[3] riscv|ex_rs1[2] riscv|ex_rs1[1] riscv|ex_rs1[0] -autobundled
netbloc @riscv|ex_rs1 1 8 21 6640 13278 NJ 13278 NJ 13278 NJ 13278 8580 12618 8920 14318 10050 13538 11380 14198 12160 14578 14240J 14958 15220 15088 16980 15158 18060J 15028 19060J 15018 20040 9388 21360 8308 24350 9008 25530 18858 28410 20998 29300 20388 30630
load netBundle @riscv|i__carry_i_1__1_n_ 4 riscv|i__carry_i_1__1_n_0 riscv|i__carry_i_2__1_n_0 riscv|i__carry_i_3__1_n_0 riscv|i__carry_i_4__1_n_0 -autobundled
netbloc @riscv|i__carry_i_1__1_n_ 1 13 1 9040 10768n
load netBundle @riscv|ex_rs1_1 4 riscv|ex_rs1[7] riscv|ex_rs1[6] riscv|ex_rs1[5] riscv|ex_rs1[4] -autobundled
netbloc @riscv|ex_rs1_1 1 13 15 9140 15588 9650 14758 11300 14738 12140 12818 14480 12858 NJ 12858 17260 12298 17760J 12728 NJ 12728 20920 9368 21540 8288 23530 7548 26590 13168 27250 21748 30180J
load netBundle @riscv|i__carry__0_i_1__1_n_ 4 riscv|i__carry__0_i_1__1_n_0 riscv|i__carry__0_i_2__1_n_0 riscv|i__carry__0_i_3__1_n_0 riscv|i__carry__0_i_4__1_n_0 -autobundled
netbloc @riscv|i__carry__0_i_1__1_n_ 1 14 1 9870 14398n
load netBundle @riscv|ex_rs1_2 4 riscv|ex_rs1[11] riscv|ex_rs1[10] riscv|ex_rs1[9] riscv|ex_rs1[8] -autobundled
netbloc @riscv|ex_rs1_2 1 8 19 6700 14898 NJ 14898 NJ 14898 NJ 14898 NJ 14898 8920 14898 10150 14298 11280 14418 12100 13778 13500 14978 15320 15068 16940 15138 18040J 15008 18980J 14998 20200J 14788 22800 14878 23410 20738 NJ 20738 28690
load netBundle @riscv|i__carry__1_i_1__1_n_ 4 riscv|i__carry__1_i_1__1_n_0 riscv|i__carry__1_i_2__1_n_0 riscv|i__carry__1_i_3__1_n_0 riscv|i__carry__1_i_4__1_n_0 -autobundled
netbloc @riscv|i__carry__1_i_1__1_n_ 1 15 1 10920 14598n
load netBundle @riscv|ex_rs1_3 4 riscv|ex_rs1[15] riscv|ex_rs1[14] riscv|ex_rs1[13] riscv|ex_rs1[12] -autobundled
netbloc @riscv|ex_rs1_3 1 8 20 6680 17278 7140 17168 7920J 17208 NJ 17208 NJ 17208 NJ 17208 9810 18558 11480 16928 13020 15248 14400 17728 15780 17048 16780 11938 18560 12528 NJ 12528 20900J 12548 22700 12008 23570 11698 25770 14818 27930 21708 29900J
load netBundle @riscv|i__carry__2_i_1__1_n_ 4 riscv|i__carry__2_i_1__1_n_0 riscv|i__carry__2_i_2__1_n_0 riscv|i__carry__2_i_3__1_n_0 riscv|i__carry__2_i_4__1_n_0 -autobundled
netbloc @riscv|i__carry__2_i_1__1_n_ 1 16 1 12860 17728n
load netBundle @riscv|ex_rs1_4 4 riscv|ex_rs1[19] riscv|ex_rs1[18] riscv|ex_rs1[17] riscv|ex_rs1[16] -autobundled
netbloc @riscv|ex_rs1_4 1 8 19 6560 18698 NJ 18698 NJ 18698 NJ 18698 8660 18538 9020 15058 9950 14478 10620 15538 12320 14558 14260J 14938 15240 15048 16900 14728 18240 5788 NJ 5788 NJ 5788 22780 7868 23490 20758 NJ 20758 28710
load netBundle @riscv|i__carry__3_i_1_n_ 4 riscv|i__carry__3_i_1_n_0 riscv|i__carry__3_i_2_n_0 riscv|i__carry__3_i_3_n_0 riscv|i__carry__3_i_4_n_0 -autobundled
netbloc @riscv|i__carry__3_i_1_n_ 1 13 1 8900 17538n
load netBundle @riscv|ex_rs1_5 4 riscv|ex_rs1[23] riscv|ex_rs1[22] riscv|ex_rs1[21] riscv|ex_rs1[20] -autobundled
netbloc @riscv|ex_rs1_5 1 1 26 4440 18018 NJ 18018 NJ 18018 NJ 18018 NJ 18018 NJ 18018 NJ 18018 6380 18098 NJ 18098 7740 17308 NJ 17308 NJ 17308 9100 18538 9930 18538 11520 18218 11960 15208 14280 15788 15800 17068 NJ 17068 17880 17528 NJ 17528 NJ 17528 NJ 17528 24410 14898 26090 14898 27410
load netBundle @riscv|i__carry__4_i_1_n_ 4 riscv|i__carry__4_i_1_n_0 riscv|i__carry__4_i_2_n_0 riscv|i__carry__4_i_3_n_0 riscv|i__carry__4_i_4_n_0 -autobundled
netbloc @riscv|i__carry__4_i_1_n_ 1 16 1 12780 17968n
load netBundle @riscv|ex_rs1_6 4 riscv|ex_rs1[27] riscv|ex_rs1[26] riscv|ex_rs1[25] riscv|ex_rs1[24] -autobundled
netbloc @riscv|ex_rs1_6 1 7 21 5840 16648 6300 16318 7380 14478 NJ 14478 NJ 14478 NJ 14478 9060 14338 9630 14678 10780 15688 12620 13318 13620 13688 15480 17028 16960 5768 NJ 5768 NJ 5768 NJ 5768 22720 7888 23510 27988 26650 20938 28650 21588 29400J
load netBundle @riscv|i__carry__5_i_1_n_ 4 riscv|i__carry__5_i_1_n_0 riscv|i__carry__5_i_2_n_0 riscv|i__carry__5_i_3_n_0 riscv|i__carry__5_i_4_n_0 -autobundled
netbloc @riscv|i__carry__5_i_1_n_ 1 16 1 12240 16988n
load netBundle @riscv|ex_rs1_7 3 riscv|ex_rs1[30] riscv|ex_rs1[29] riscv|ex_rs1[28] -autobundled
netbloc @riscv|ex_rs1_7 1 7 21 5860 16688 6140 15728 NJ 15728 NJ 15728 NJ 15728 NJ 15728 9120 15768 9890J 15888 NJ 15888 13040 15228 14200 14148 15580 7728 NJ 7728 NJ 7728 NJ 7728 NJ 7728 NJ 7728 24270 19138 25350 18568 27110 22438 29100
load netBundle @riscv|i__carry__6_i_1_n_ 4 riscv|i__carry__6_i_1_n_0 riscv|i__carry__6_i_2_n_0 riscv|i__carry__6_i_3_n_0 riscv|i__carry__6_i_4_n_0 -autobundled
netbloc @riscv|i__carry__6_i_1_n_ 1 26 1 28550 22928n
load netBundle @riscv|i__carry_i_1__0_n_ 4 riscv|i__carry_i_1__0_n_0 riscv|i__carry_i_2__0_n_0 riscv|i__carry_i_3__0_n_0 riscv|i__carry_i_4__0_n_0 -autobundled
netbloc @riscv|i__carry_i_1__0_n_ 1 23 1 21440 11688n
load netBundle @riscv|i__carry_i_5_n_ 4 riscv|i__carry_i_5_n_0 riscv|i__carry_i_6_n_0 riscv|i__carry_i_7_n_0 riscv|i__carry_i_8_n_0 -autobundled
netbloc @riscv|i__carry_i_5_n_ 1 23 1 21380 10728n
load netBundle @riscv|i__carry__0_i_1__0_n_ 4 riscv|i__carry__0_i_1__0_n_0 riscv|i__carry__0_i_2__0_n_0 riscv|i__carry__0_i_3__0_n_0 riscv|i__carry__0_i_4__0_n_0 -autobundled
netbloc @riscv|i__carry__0_i_1__0_n_ 1 24 1 24290 11778n
load netBundle @riscv|i__carry__0_i_5_n_ 4 riscv|i__carry__0_i_5_n_0 riscv|i__carry__0_i_6_n_0 riscv|i__carry__0_i_7_n_0 riscv|i__carry__0_i_8_n_0 -autobundled
netbloc @riscv|i__carry__0_i_5_n_ 1 24 1 23710 11798n
load netBundle @riscv|i__carry__1_i_1__0_n_ 4 riscv|i__carry__1_i_1__0_n_0 riscv|i__carry__1_i_2__0_n_0 riscv|i__carry__1_i_3__0_n_0 riscv|i__carry__1_i_4__0_n_0 -autobundled
netbloc @riscv|i__carry__1_i_1__0_n_ 1 25 1 25150 22108n
load netBundle @riscv|i__carry__1_i_5_n_ 4 riscv|i__carry__1_i_5_n_0 riscv|i__carry__1_i_6_n_0 riscv|i__carry__1_i_7_n_0 riscv|i__carry__1_i_8_n_0 -autobundled
netbloc @riscv|i__carry__1_i_5_n_ 1 25 1 25250 21768n
load netBundle @riscv|i__carry__2_i_1_n_ 4 riscv|i__carry__2_i_1_n_0 riscv|i__carry__2_i_2_n_0 riscv|i__carry__2_i_3_n_0 riscv|i__carry__2_i_4_n_0 -autobundled
netbloc @riscv|i__carry__2_i_1_n_ 1 26 1 27070 28778n
load netBundle @riscv|i__carry__2_i_5__0_n_ 4 riscv|i__carry__2_i_5__0_n_0 riscv|i__carry__2_i_6_n_0 riscv|i__carry__2_i_7_n_0 riscv|i__carry__2_i_8_n_0 -autobundled
netbloc @riscv|i__carry__2_i_5__0_n_ 1 26 1 28550 29198n
load netBundle @riscv|i__carry_i_1_n_ 4 riscv|i__carry_i_1_n_0 riscv|i__carry_i_2_n_0 riscv|i__carry_i_3_n_0 riscv|i__carry_i_4_n_0 -autobundled
netbloc @riscv|i__carry_i_1_n_ 1 23 1 21420 11518n
load netBundle @riscv|i__carry__0_i_1_n_ 4 riscv|i__carry__0_i_1_n_0 riscv|i__carry__0_i_2_n_0 riscv|i__carry__0_i_3_n_0 riscv|i__carry__0_i_4_n_0 -autobundled
netbloc @riscv|i__carry__0_i_1_n_ 1 24 1 23230 12088n
load netBundle @riscv|i__carry__1_i_1_n_ 4 riscv|i__carry__1_i_1_n_0 riscv|i__carry__1_i_2_n_0 riscv|i__carry__1_i_3_n_0 riscv|i__carry__1_i_4_n_0 -autobundled
netbloc @riscv|i__carry__1_i_1_n_ 1 25 1 25230 21598n
load netBundle @riscv|i__carry__2_i_2__0_n_ 4 riscv|i__carry__2_i_2__0_n_0 riscv|i__carry__2_i_3__0_n_0 riscv|i__carry__2_i_4__0_n_0 riscv|i__carry__2_i_5_n_0 -autobundled
netbloc @riscv|i__carry__2_i_2__0_n_ 1 26 1 28670 29508n
load netBundle @riscv|ex_immediate 4 riscv|ex_immediate[3] riscv|ex_immediate[2] riscv|ex_immediate[1] riscv|ex_immediate[0] -autobundled
netbloc @riscv|ex_immediate 1 12 17 8660 11248 NJ 11248 NJ 11248 NJ 11248 NJ 11248 NJ 11248 15800 11658 NJ 11658 18300 13868 19580 13188 20080 11178 21420 7548 23450 8748 26130 15288 28270 21568 29760J 20928 30810
load netBundle @riscv|ex_branchAddress_carry_i 4 riscv|ex_branchAddress_carry_i_1_n_0 riscv|ex_branchAddress_carry_i_2_n_0 riscv|ex_branchAddress_carry_i_3_n_0 riscv|ex_branchAddress_carry_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry_i 1 21 1 19040 14598n
load netBundle @riscv|ex_immediate_1 4 riscv|ex_immediate[7] riscv|ex_immediate[6] riscv|ex_immediate[5] riscv|ex_immediate[4] -autobundled
netbloc @riscv|ex_immediate_1 1 13 14 9160 21498 NJ 21498 11280 20108 NJ 20108 NJ 20108 NJ 20108 NJ 20108 NJ 20108 19280 15368 20100 14058 22420 14218 24710 14878 25170 20548 28290
load netBundle @riscv|ex_branchAddress_carry___7 4 riscv|ex_branchAddress_carry__0_i_1_n_0 riscv|ex_branchAddress_carry__0_i_2_n_0 riscv|ex_branchAddress_carry__0_i_3_n_0 riscv|ex_branchAddress_carry__0_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___7 1 22 1 20240 14398n
load netBundle @riscv|ex_immediate_2 4 riscv|ex_immediate[11] riscv|ex_immediate[10] riscv|ex_immediate[9] riscv|ex_immediate[8] -autobundled
netbloc @riscv|ex_immediate_2 1 14 12 10210 15338 NJ 15338 12520 17368 14100J 17148 15460J 16988 NJ 16988 NJ 16988 NJ 16988 20500 17098 22020 16988 NJ 16988 25210
load netBundle @riscv|ex_branchAddress_carry___8 4 riscv|ex_branchAddress_carry__1_i_1_n_0 riscv|ex_branchAddress_carry__1_i_2_n_0 riscv|ex_branchAddress_carry__1_i_3_n_0 riscv|ex_branchAddress_carry__1_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___8 1 23 1 21420 14848n
load netBundle @riscv|ex_branchAddress_carry___9 4 riscv|ex_branchAddress_carry__2_i_1_n_0 riscv|ex_branchAddress_carry__2_i_2_n_0 riscv|ex_branchAddress_carry__2_i_3_n_0 riscv|ex_branchAddress_carry__2_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___9 1 24 1 23210 15628n
load netBundle @riscv|ex_branchAddress_carry___10 4 riscv|ex_branchAddress_carry__3_i_1_n_0 riscv|ex_branchAddress_carry__3_i_2_n_0 riscv|ex_branchAddress_carry__3_i_3_n_0 riscv|ex_branchAddress_carry__3_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___10 1 25 1 25770 16128n
load netBundle @riscv|ex_branchAddress_carry___11 4 riscv|ex_branchAddress_carry__4_i_1_n_0 riscv|ex_branchAddress_carry__4_i_2_n_0 riscv|ex_branchAddress_carry__4_i_3_n_0 riscv|ex_branchAddress_carry__4_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___11 1 26 1 27270 14938n
load netBundle @riscv|ex_branchAddress_carry___12 4 riscv|ex_branchAddress_carry__5_i_1_n_0 riscv|ex_branchAddress_carry__5_i_2_n_0 riscv|ex_branchAddress_carry__5_i_3_n_0 riscv|ex_branchAddress_carry__5_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___12 1 27 1 30160 3328n
load netBundle @riscv|ex_branchAddress_carry___13 4 riscv|ex_branchAddress_carry__6_i_1_n_0 riscv|ex_branchAddress_carry__6_i_2_n_0 riscv|ex_branchAddress_carry__6_i_3_n_0 riscv|ex_branchAddress_carry__6_i_4_n_0 -autobundled
netbloc @riscv|ex_branchAddress_carry___13 1 28 1 30510 16598n
load netBundle @riscv|wb_instruction 5 riscv|wb_instruction[11] riscv|wb_instruction[10] riscv|wb_instruction[9] riscv|wb_instruction[8] riscv|wb_instruction[7] -autobundled
netbloc @riscv|wb_instruction 1 14 12 10230 26398 NJ 26398 NJ 26398 NJ 26398 NJ 26398 NJ 26398 18640 28028 19500 31828 20900 31828 22720 32118 24730 31978 25190
load netBundle @riscv|wb_RegWriteData 2 riscv|wb_RegWriteData[1] riscv|wb_RegWriteData[0] -autobundled
netbloc @riscv|wb_RegWriteData 1 22 4 21020 25568 NJ 25568 NJ 25568 25450
load netBundle @riscv|wb_RegWriteData_1 2 riscv|wb_RegWriteData[3] riscv|wb_RegWriteData[2] -autobundled
netbloc @riscv|wb_RegWriteData_1 1 22 4 21000 26088 NJ 26088 NJ 26088 25410
load netBundle @riscv|wb_RegWriteData_2 2 riscv|wb_RegWriteData[5] riscv|wb_RegWriteData[4] -autobundled
netbloc @riscv|wb_RegWriteData_2 1 22 4 21020 26108 NJ 26108 NJ 26108 25110
load netBundle @riscv|wb_RegWriteData_3 2 riscv|wb_RegWriteData[13] riscv|wb_RegWriteData[12] -autobundled
netbloc @riscv|wb_RegWriteData_3 1 21 3 19620 28448 NJ 28448 21800
load netBundle @riscv|wb_RegWriteData_4 2 riscv|wb_RegWriteData[15] riscv|wb_RegWriteData[14] -autobundled
netbloc @riscv|wb_RegWriteData_4 1 21 3 19640 28468 NJ 28468 21760
load netBundle @riscv|wb_RegWriteData_5 2 riscv|wb_RegWriteData[17] riscv|wb_RegWriteData[16] -autobundled
netbloc @riscv|wb_RegWriteData_5 1 21 3 19620 28768 20820J 28488 22140
load netBundle @riscv|wb_RegWriteData_6 2 riscv|wb_RegWriteData[19] riscv|wb_RegWriteData[18] -autobundled
netbloc @riscv|wb_RegWriteData_6 1 21 3 19540 32128 20000J 32678 21440
load netBundle @riscv|wb_RegWriteData_7 2 riscv|wb_RegWriteData[21] riscv|wb_RegWriteData[20] -autobundled
netbloc @riscv|wb_RegWriteData_7 1 21 3 19580 32858 NJ 32858 21380
load netBundle @riscv|wb_RegWriteData_8 2 riscv|wb_RegWriteData[23] riscv|wb_RegWriteData[22] -autobundled
netbloc @riscv|wb_RegWriteData_8 1 21 3 19620 32878 19940J 32978 21360
load netBundle @riscv|wb_RegWriteData_9 2 riscv|wb_RegWriteData[25] riscv|wb_RegWriteData[24] -autobundled
netbloc @riscv|wb_RegWriteData_9 1 14 8 9610 29838 NJ 29838 NJ 29838 NJ 29838 NJ 29838 NJ 29838 NJ 29838 19040J
load netBundle @riscv|wb_RegWriteData_10 2 riscv|wb_RegWriteData[27] riscv|wb_RegWriteData[26] -autobundled
netbloc @riscv|wb_RegWriteData_10 1 14 8 10190 29858 NJ 29858 NJ 29858 NJ 29858 NJ 29858 NJ 29858 NJ 29858 19000J
load netBundle @riscv|wb_RegWriteData_11 2 riscv|wb_RegWriteData[29] riscv|wb_RegWriteData[28] -autobundled
netbloc @riscv|wb_RegWriteData_11 1 14 8 10210 29878 NJ 29878 NJ 29878 NJ 29878 NJ 29878 NJ 29878 NJ 29878 18980J
load netBundle @riscv|wb_RegWriteData_12 2 riscv|wb_RegWriteData[31] riscv|wb_RegWriteData[30] -autobundled
netbloc @riscv|wb_RegWriteData_12 1 20 2 18660 29778 19020
load netBundle @riscv|wb_RegWriteData_13 2 riscv|wb_RegWriteData[7] riscv|wb_RegWriteData[6] -autobundled
netbloc @riscv|wb_RegWriteData_13 1 20 2 17840 22238 19400J
load netBundle @riscv|wb_RegWriteData_14 2 riscv|wb_RegWriteData[9] riscv|wb_RegWriteData[8] -autobundled
netbloc @riscv|wb_RegWriteData_14 1 20 2 17800 22198 NJ
load netBundle @riscv|wb_RegWriteData_15 2 riscv|wb_RegWriteData[11] riscv|wb_RegWriteData[10] -autobundled
netbloc @riscv|wb_RegWriteData_15 1 20 2 18460 22218 NJ
load netBundle @riscv|if_PC 4 riscv|if_PC[13]_i_2_n_0 riscv|if_PC[13]_i_3_n_0 riscv|if_PC[13]_i_4_n_0 riscv|if_PC[13]_i_5_n_0 -autobundled
netbloc @riscv|if_PC 1 28 1 30510 15628n
load netBundle @riscv|if_PC_1 4 riscv|if_PC[17]_i_2_n_0 riscv|if_PC[17]_i_3_n_0 riscv|if_PC[17]_i_4_n_0 riscv|if_PC[17]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_1 1 29 1 31610 15208n
load netBundle @riscv|if_PC_2 4 riscv|if_PC[1]_i_2_n_0 riscv|if_PC[1]_i_3_n_0 riscv|if_PC[1]_i_4_n_0 riscv|if_PC[1]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_2 1 25 1 26430 1278n
load netBundle @riscv|if_PC_3 4 riscv|if_PC[21]_i_2_n_0 riscv|if_PC[21]_i_3_n_0 riscv|if_PC[21]_i_4_n_0 riscv|if_PC[21]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_3 1 30 1 31910 16098n
load netBundle @riscv|if_PC_4 4 riscv|if_PC[25]_i_2_n_0 riscv|if_PC[25]_i_3_n_0 riscv|if_PC[25]_i_4_n_0 riscv|if_PC[25]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_4 1 31 1 32290 16178n
load netBundle @riscv|if_PC_5 3 riscv|if_PC[29]_i_2_n_0 riscv|if_PC[29]_i_3_n_0 riscv|if_PC[29]_i_4_n_0 -autobundled
netbloc @riscv|if_PC_5 1 32 1 32790 16258n
load netBundle @riscv|if_PC_6 4 riscv|if_PC[5]_i_2_n_0 riscv|if_PC[5]_i_3_n_0 riscv|if_PC[5]_i_4_n_0 riscv|if_PC[5]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_6 1 26 1 27570 3478n
load netBundle @riscv|if_PC_7 4 riscv|if_PC[9]_i_2_n_0 riscv|if_PC[9]_i_3_n_0 riscv|if_PC[9]_i_4_n_0 riscv|if_PC[9]_i_5_n_0 -autobundled
netbloc @riscv|if_PC_7 1 27 1 29120 14778n
load netBundle @riscv|mem_aluResult 4 riscv|mem_aluResult[11]_i_16_n_0 riscv|mem_aluResult[11]_i_17_n_0 riscv|mem_aluResult[11]_i_18_n_0 riscv|mem_aluResult[11]_i_19_n_0 -autobundled
netbloc @riscv|mem_aluResult 1 17 1 13360 16868n
load netBundle @riscv|mem_aluResult_1 4 riscv|mem_aluResult[15]_i_12_n_0 riscv|mem_aluResult[15]_i_13_n_0 riscv|mem_aluResult[15]_i_14_n_0 riscv|mem_aluResult[15]_i_15_n_0 -autobundled
netbloc @riscv|mem_aluResult_1 1 18 1 14860 17168n
load netBundle @riscv|mem_aluResult_2 4 riscv|mem_aluResult[19]_i_14_n_0 riscv|mem_aluResult[19]_i_15_n_0 riscv|mem_aluResult[19]_i_16_n_0 riscv|mem_aluResult[19]_i_17_n_0 -autobundled
netbloc @riscv|mem_aluResult_2 1 14 1 10010 17108n
load netBundle @riscv|mem_aluResult_3 4 riscv|mem_aluResult[26]_i_18_n_0 riscv|mem_aluResult[26]_i_19_n_0 riscv|mem_aluResult[26]_i_20_n_0 riscv|mem_aluResult[26]_i_21_n_0 -autobundled
netbloc @riscv|mem_aluResult_3 1 15 1 11100 18318n
load netBundle @riscv|mem_aluResult_4 4 riscv|mem_aluResult[26]_i_14_n_0 riscv|mem_aluResult[26]_i_15_n_0 riscv|mem_aluResult[26]_i_16_n_0 riscv|mem_aluResult[26]_i_17_n_0 -autobundled
netbloc @riscv|mem_aluResult_4 1 16 1 11940 17168n
load netBundle @riscv|mem_aluResult_5 4 riscv|mem_aluResult[2]_i_17_n_0 riscv|mem_aluResult[2]_i_18_n_0 riscv|mem_aluResult[2]_i_19_n_0 riscv|mem_aluResult[2]_i_20_n_0 -autobundled
netbloc @riscv|mem_aluResult_5 1 24 1 23330 4038n
load netBundle @riscv|mem_aluResult_6 4 riscv|mem_aluResult[30]_i_37_n_0 riscv|mem_aluResult[30]_i_38_n_0 riscv|mem_aluResult[30]_i_39_n_0 riscv|mem_aluResult[30]_i_40_n_0 -autobundled
netbloc @riscv|mem_aluResult_6 1 25 1 25270 28568n
load netBundle @riscv|mem_aluResult_7 4 riscv|mem_aluResult[7]_i_11_n_0 riscv|mem_aluResult[7]_i_12_n_0 riscv|mem_aluResult[7]_i_13_n_0 riscv|mem_aluResult[7]_i_14_n_0 -autobundled
netbloc @riscv|mem_aluResult_7 1 16 1 12840 17488n
load netBundle @PC 32 PC[31] PC[30] PC[29] PC[28] PC[27] PC[26] PC[25] PC[24] PC[23] PC[22] PC[21] PC[20] PC[19] PC[18] PC[17] PC[16] PC[15] PC[14] PC[13] PC[12] PC[11] PC[10] PC[9] PC[8] PC[7] PC[6] PC[5] PC[4] PC[3] PC[2] PC[1] PC[0] -autobundled
netbloc @PC 1 15 1 33630 40n
load netBundle @dReadData_reg 4 dReadData_reg[0]_i_1_n_0 dReadData_reg[0]_i_1_n_1 dReadData_reg[0]_i_1_n_2 dReadData_reg[0]_i_1_n_3 -autobundled
netbloc @dReadData_reg 1 5 1 1190 500n
load netBundle @dReadData_reg_1 4 dReadData_reg[0]_i_1_n_4 dReadData_reg[0]_i_1_n_5 dReadData_reg[0]_i_1_n_6 dReadData_reg[0]_i_1_n_7 -autobundled
netbloc @dReadData_reg_1 1 2 4 390 1120 610 860 NJ 860 1150
load netBundle @dReadData_reg_2 4 dReadData_reg[12]_i_1_n_0 dReadData_reg[12]_i_1_n_1 dReadData_reg[12]_i_1_n_2 dReadData_reg[12]_i_1_n_3 -autobundled
netbloc @dReadData_reg_2 1 8 1 2300 1090
load netBundle @dReadData_reg_3 4 dReadData_reg[12]_i_1_n_4 dReadData_reg[12]_i_1_n_5 dReadData_reg[12]_i_1_n_6 dReadData_reg[12]_i_1_n_7 -autobundled
netbloc @dReadData_reg_3 1 6 3 1590 1010 1910J 990 2180
load netBundle @dReadData_reg_4 4 dReadData_reg[16]_i_1_n_0 dReadData_reg[16]_i_1_n_1 dReadData_reg[16]_i_1_n_2 dReadData_reg[16]_i_1_n_3 -autobundled
netbloc @dReadData_reg_4 1 9 1 2650 1110
load netBundle @dReadData_reg_5 4 dReadData_reg[16]_i_1_n_4 dReadData_reg[16]_i_1_n_5 dReadData_reg[16]_i_1_n_6 dReadData_reg[16]_i_1_n_7 -autobundled
netbloc @dReadData_reg_5 1 7 3 1930 1030 2280J 1010 2550
load netBundle @dReadData_reg_6 4 dReadData_reg[20]_i_1_n_0 dReadData_reg[20]_i_1_n_1 dReadData_reg[20]_i_1_n_2 dReadData_reg[20]_i_1_n_3 -autobundled
netbloc @dReadData_reg_6 1 10 1 2920 890n
load netBundle @dReadData_reg_7 4 dReadData_reg[20]_i_1_n_4 dReadData_reg[20]_i_1_n_5 dReadData_reg[20]_i_1_n_6 dReadData_reg[20]_i_1_n_7 -autobundled
netbloc @dReadData_reg_7 1 8 3 2300 1030 NJ 1030 2900
load netBundle @dReadData_reg_8 4 dReadData_reg[24]_i_1_n_0 dReadData_reg[24]_i_1_n_1 dReadData_reg[24]_i_1_n_2 dReadData_reg[24]_i_1_n_3 -autobundled
netbloc @dReadData_reg_8 1 11 1 3160 910
load netBundle @dReadData_reg_9 4 dReadData_reg[24]_i_1_n_4 dReadData_reg[24]_i_1_n_5 dReadData_reg[24]_i_1_n_6 dReadData_reg[24]_i_1_n_7 -autobundled
netbloc @dReadData_reg_9 1 9 3 2650 1010 NJ 1010 3160
load netBundle @dReadData_reg_10 3 dReadData_reg[28]_i_1_n_1 dReadData_reg[28]_i_1_n_2 dReadData_reg[28]_i_1_n_3 -autobundled
netbloc @dReadData_reg_10 1 12 1 N 930
load netBundle @dReadData_reg_11 4 dReadData_reg[28]_i_1_n_4 dReadData_reg[28]_i_1_n_5 dReadData_reg[28]_i_1_n_6 dReadData_reg[28]_i_1_n_7 -autobundled
netbloc @dReadData_reg_11 1 12 1 3500 870n
load netBundle @dReadData_reg_12 4 dReadData_reg[4]_i_1_n_0 dReadData_reg[4]_i_1_n_1 dReadData_reg[4]_i_1_n_2 dReadData_reg[4]_i_1_n_3 -autobundled
netbloc @dReadData_reg_12 1 6 1 1510 520n
load netBundle @dReadData_reg_13 4 dReadData_reg[4]_i_1_n_4 dReadData_reg[4]_i_1_n_5 dReadData_reg[4]_i_1_n_6 dReadData_reg[4]_i_1_n_7 -autobundled
netbloc @dReadData_reg_13 1 4 3 870 620 NJ 620 1490
load netBundle @dReadData_reg_14 4 dReadData_reg[8]_i_1_n_0 dReadData_reg[8]_i_1_n_1 dReadData_reg[8]_i_1_n_2 dReadData_reg[8]_i_1_n_3 -autobundled
netbloc @dReadData_reg_14 1 7 1 1930 1070
load netBundle @dReadData_reg_15 4 dReadData_reg[8]_i_1_n_4 dReadData_reg[8]_i_1_n_5 dReadData_reg[8]_i_1_n_6 dReadData_reg[8]_i_1_n_7 -autobundled
netbloc @dReadData_reg_15 1 5 3 1230 1370 NJ 1370 1830
load netBundle @PC_OBUF 32 PC_OBUF[31] PC_OBUF[30] PC_OBUF[29] PC_OBUF[28] PC_OBUF[27] PC_OBUF[26] PC_OBUF[25] PC_OBUF[24] PC_OBUF[23] PC_OBUF[22] PC_OBUF[21] PC_OBUF[20] PC_OBUF[19] PC_OBUF[18] PC_OBUF[17] PC_OBUF[16] PC_OBUF[15] PC_OBUF[14] PC_OBUF[13] PC_OBUF[12] PC_OBUF[11] PC_OBUF[10] PC_OBUF[9] PC_OBUF[8] PC_OBUF[7] PC_OBUF[6] PC_OBUF[5] PC_OBUF[4] PC_OBUF[3] PC_OBUF[2] PC_OBUF[1] PC_OBUF[0] -autobundled
netbloc @PC_OBUF 1 14 1 33430 40n
load netBundle @instruction_reg__0,dReadData 4 instruction_reg__0[3] instruction_reg__0[2] instruction_reg__0[1] dReadData[0]_i_2_n_0 -autobundled
netbloc @instruction_reg__0,dReadData 1 4 10 870 640 NJ 640 1530J 630 NJ 630 NJ 630 2630J 650 NJ 650 NJ 650 NJ 650 3760
load netBundle @instruction_reg,p_2_in 4 p_2_in[0] instruction_reg[14] instruction_reg[13] instruction_reg[12] -autobundled
netbloc @instruction_reg,p_2_in 1 7 7 1850 270 NJ 270 NJ 270 NJ 270 NJ 270 NJ 270 3840
load netBundle @p_2_in 4 p_2_in[4] p_2_in[3] p_2_in[2] p_2_in[1] -autobundled
netbloc @p_2_in 1 8 6 2200 450 2550J 290 NJ 290 NJ 290 NJ 290 3820
load netBundle @p_3_in 4 p_3_in[3] p_3_in[2] p_3_in[1] p_3_in[0] -autobundled
netbloc @p_3_in 1 9 5 2570 470 NJ 470 NJ 470 NJ 470 3780
load netBundle @dReadData_reg_n_0_,p_3_in 4 dReadData_reg_n_0_[27] dReadData_reg_n_0_[26] dReadData_reg_n_0_[25] p_3_in[4] -autobundled
netbloc @dReadData_reg_n_0_,p_3_in 1 10 4 2900 450 NJ 450 NJ 450 3800
load netBundle @dReadData_reg_n_0_,data 4 data20 dReadData_reg_n_0_[30] dReadData_reg_n_0_[29] dReadData_reg_n_0_[28] -autobundled
netbloc @dReadData_reg_n_0_,data 1 11 3 3180 1090 NJ 1090 3720
load netBundle @instruction_reg__0 4 dReadData_reg_n_0_[7] instruction_reg__0[6] instruction_reg__0[5] instruction_reg__0[4] -autobundled
netbloc @instruction_reg__0 1 5 9 1170 250 NJ 250 NJ 250 NJ 250 NJ 250 NJ 250 NJ 250 NJ 250 3860
load netBundle @dReadData_reg_n_0_ 4 dReadData_reg_n_0_[11] dReadData_reg_n_0_[10] dReadData_reg_n_0_[9] dReadData_reg_n_0_[8] -autobundled
netbloc @dReadData_reg_n_0_ 1 6 8 1490 810 NJ 810 2220J 830 NJ 830 NJ 830 NJ 830 3420J 720 3740
levelinfo -pg 1 0 40 190 450 710 990 1310 1670 2010 2380 2730 2990 3250 3580 4030 33470 33650
levelinfo -hier riscv * 4200 4520 4800 5060 5290 5550 5730 6000 6800 7600 8060 8440 8770 9310 10380 11660 13140 14620 15960 17570 18810 19770 21170 22970 24850 26830 28840 30310 31190 31750 32130 32620 32850 33220 *
pagesize -pg 1 -db -bbox -sgen -70 0 33760 33240
pagesize -hier riscv -db -bbox -sgen 4030 578 33350 33208
show
fullfit
#
# initialize ictrl to current module riscv_pipeline_top work:riscv_pipeline_top:NOFILE
ictrl init topinfo |
