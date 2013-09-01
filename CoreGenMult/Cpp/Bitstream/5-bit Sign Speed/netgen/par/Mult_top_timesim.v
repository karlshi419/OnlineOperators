////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: Mult_top_timesim.v
// /___/   /\     Timestamp: Sun Aug 25 17:30:58 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf Mult_top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Mult_top.ncd Mult_top_timesim.v 
// Device	: 6vlx240tff1156-1 (PRODUCTION 1.17 2012-04-23)
// Input file	: Mult_top.ncd
// Output file	: G:\FPGA\Multiplier\CoreGen_Stage5\netgen\par\Mult_top_timesim.v
// # of Modules	: 1
// Design Name	: Mult_top
// Xilinx        : F:\Xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Mult_top (
  clk, nReset, A, B, Sum
);
  input clk;
  input nReset;
  input [4 : 0] A;
  input [4 : 0] B;
  output [9 : 0] Sum;
  wire STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG;
  wire clk_BUFGP;
  wire nReset_inv;
  wire B_0_IBUF_5652;
  wire B_1_IBUF_5654;
  wire B_2_IBUF_5656;
  wire B_3_IBUF_5658;
  wire \B_reg<4>_0 ;
  wire B_4_IBUF_5660;
  wire nReset_IBUF_5661;
  wire A_0_IBUF_5662;
  wire A_1_IBUF_5664;
  wire A_2_IBUF_5666;
  wire A_3_IBUF_5668;
  wire A_4_IBUF_5670;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><0>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><1>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><2>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><3>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><4>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><5>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><0>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><1>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><2>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><3>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><4>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><5>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_5692 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_0 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_5703 ;
  wire \clk_BUFGP/IBUFG_5704 ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/EOS ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/DINSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/PREQ ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/TCKSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/CFGCLK ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig1_2719 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[5].ppsub.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig1_2763 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<0>_2801 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<1>_2796 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<2>_2791 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<3>_2779 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<4>_2821 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<5>_2816 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<6>_2811 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<0>_2850 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<1>_2844 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<2>_2838 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<3>_2826 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<4>_2874 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<5>_2869 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<6>_2864 ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7> ;
  wire \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<7>_2854 ;
  wire \NlwBufferSignal_Sum_reg_6/CLK ;
  wire \NlwBufferSignal_Sum_reg_5/CLK ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<0> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<1> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<2> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<3> ;
  wire \NlwBufferSignal_Sum_reg_4/CLK ;
  wire \NlwBufferSignal_Sum_reg_3/CLK ;
  wire \NlwBufferSignal_Sum_reg_9/CLK ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<0> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<1> ;
  wire \NlwBufferSignal_Sum_reg_8/CLK ;
  wire \NlwBufferSignal_Sum_reg_7/CLK ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<0> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<1> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<2> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<3> ;
  wire \NlwBufferSignal_Sum_reg_2/CLK ;
  wire \NlwBufferSignal_Sum_reg_1/CLK ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<0> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<1> ;
  wire \NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<2> ;
  wire \NlwBufferSignal_Sum_0_OBUF/I ;
  wire \NlwBufferSignal_Sum_1_OBUF/I ;
  wire \NlwBufferSignal_Sum_2_OBUF/I ;
  wire \NlwBufferSignal_Sum_3_OBUF/I ;
  wire \NlwBufferSignal_Sum_4_OBUF/I ;
  wire \NlwBufferSignal_Sum_5_OBUF/I ;
  wire \NlwBufferSignal_Sum_6_OBUF/I ;
  wire \NlwBufferSignal_Sum_7_OBUF/I ;
  wire \NlwBufferSignal_Sum_8_OBUF/I ;
  wire \NlwBufferSignal_Sum_9_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_B_reg_0/CLK ;
  wire \NlwBufferSignal_B_reg_0/IN ;
  wire \NlwBufferSignal_B_reg_3/CLK ;
  wire \NlwBufferSignal_B_reg_3/IN ;
  wire \NlwBufferSignal_A_reg_4/CLK ;
  wire \NlwBufferSignal_A_reg_4/IN ;
  wire \NlwBufferSignal_Sum_reg_0/CLK ;
  wire \NlwBufferSignal_B_reg_4/CLK ;
  wire \NlwBufferSignal_B_reg_4/IN ;
  wire \NlwBufferSignal_A_reg_0/CLK ;
  wire \NlwBufferSignal_A_reg_0/IN ;
  wire \NlwBufferSignal_A_reg_2/CLK ;
  wire \NlwBufferSignal_A_reg_2/IN ;
  wire \NlwBufferSignal_B_reg_1/CLK ;
  wire \NlwBufferSignal_B_reg_1/IN ;
  wire \NlwBufferSignal_B_reg_2/CLK ;
  wire \NlwBufferSignal_B_reg_2/IN ;
  wire \NlwBufferSignal_A_reg_3/CLK ;
  wire \NlwBufferSignal_A_reg_3/IN ;
  wire \NlwBufferSignal_A_reg_1/CLK ;
  wire \NlwBufferSignal_A_reg_1/IN ;
  wire GND;
  wire VCC;
  wire \NLW_ProtoComp5.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_DI[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_DI[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_O[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_S[3]_UNCONNECTED ;
  wire \NLW_ProtoComp7.CYINITGND_O_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_DI[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_DI[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_O[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_S[3]_UNCONNECTED ;
  wire \NLW_ProtoComp9.CYINITGND_O_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_DI[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_DI[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_O[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_S[3]_UNCONNECTED ;
  wire \NLW_ProtoComp11.CYINITGND_O_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_DI[3]_UNCONNECTED ;
  wire [4 : 0] A_reg;
  wire [4 : 0] B_reg;
  wire [9 : 0] Sum_reg;
  wire [3 : 3] \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2> ;
  wire [3 : 3] \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1> ;
  wire [6 : 0] \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> ;
  wire [6 : 0] \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> ;
  wire [9 : 0] temp_Sum;
  initial $sdf_annotate("netgen/par/mult_top_timesim.sdf");
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>_DMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [3]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><3>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [2]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><2>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>_BMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [1]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><1>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2><3>_AMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [0]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hA50F55FFA50F55FF ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.lut_sig11  (
    .ADR1(1'b1),
    .ADR2(A_reg[2]),
    .ADR0(B_reg[3]),
    .ADR4(\B_reg<4>_0 ),
    .ADR3(A_reg[3]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'hAA00AA00 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.ma1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(B_reg[3]),
    .ADR4(1'b1),
    .ADR3(A_reg[3]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.ma_sig )
  );
  X_ONE #(
    .LOC ( "SLICE_X4Y34" ))
  \ProtoComp5.CYINITVCC  (
    .O(\NLW_ProtoComp5.CYINITVCC_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y34" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2> [3], 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.muxcy0_CO[0]_UNCONNECTED }),
    .DI({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.ma_sig }),
    .O({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [3], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [2], 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [1], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [0]}),
    .S({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[3].ppsub.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.lut_sig })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hC03F3F3FC03F3F3F ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.lut_sig11  (
    .ADR0(1'b1),
    .ADR3(A_reg[1]),
    .ADR1(B_reg[3]),
    .ADR4(\B_reg<4>_0 ),
    .ADR2(A_reg[2]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'hC0C0C0C0 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.ma1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(B_reg[3]),
    .ADR3(1'b1),
    .ADR2(A_reg[2]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[2].ppsub.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'hA05F5F5FA05F5F5F ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.lut_sig11  (
    .ADR1(1'b1),
    .ADR2(A_reg[0]),
    .ADR4(B_reg[3]),
    .ADR0(\B_reg<4>_0 ),
    .ADR3(A_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'hFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.ma1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(B_reg[3]),
    .ADR2(1'b1),
    .ADR3(A_reg[1]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[1].ppsub.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 64'h00FFFFFF00FFFFFF ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.lut_sig1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[0]),
    .ADR4(B_reg[3]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y34" ),
    .INIT ( 32'hFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.ma1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[0]),
    .ADR4(B_reg[3]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[0].ppsub.stageLSB.ma_sig )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [6]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_BMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [5]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><5>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_AMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [4]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><4>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X4Y35" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0  (
    .CI(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<2> [3]),
    .CYINIT(1'b0),
    .CO({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_CO[0]_UNCONNECTED }),
    .DI({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_DI[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_DI[2]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[5].ppsub.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.ma_sig }),
    .O({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_O[3]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [6], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [5], 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2> [4]}),
    .S({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.xorcy0_S[3]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig1_2719 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.lut_sig })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFF0000FFFFFFFFFF ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\B_reg<4>_0 ),
    .ADR3(B_reg[3]),
    .ADR5(A_reg[4]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hFF0F0FFFFF0F0FFF ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\B_reg<4>_0 ),
    .ADR3(B_reg[3]),
    .ADR2(A_reg[4]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[6].ppsub.stageMSB.lut_sig1_2719 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'hF000F000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[5].ppsub.stageN.ma1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(B_reg[3]),
    .ADR2(A_reg[4]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[5].ppsub.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 64'hA05F5F5FA05F5F5F ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.lut_sig11  (
    .ADR1(1'b1),
    .ADR0(A_reg[3]),
    .ADR3(B_reg[3]),
    .ADR2(\B_reg<4>_0 ),
    .ADR4(A_reg[4]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y35" ),
    .INIT ( 32'hFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.ma1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(B_reg[3]),
    .ADR2(1'b1),
    .ADR4(A_reg[4]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[2].carrychain[4].ppsub.stageN.ma_sig )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>_DMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [3]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><3>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [2]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><2>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>_BMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [1]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><1>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1><3>_AMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [0]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 64'h5FA0A0A05FA0A0A0 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Mxor_NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.lut_sig_xo<0>1  (
    .ADR1(1'b1),
    .ADR0(A_reg[2]),
    .ADR2(B_reg[2]),
    .ADR3(A_reg[3]),
    .ADR4(B_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 32'hA0A0A0A0 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0  (
    .ADR1(1'b1),
    .ADR0(A_reg[2]),
    .ADR2(B_reg[2]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma_sig )
  );
  X_ZERO #(
    .LOC ( "SLICE_X7Y34" ))
  \ProtoComp7.CYINITGND  (
    .O(\NLW_ProtoComp7.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X7Y34" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1> [3], 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_CO[0]_UNCONNECTED }),
    .DI({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma_sig }),
    .O({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [3], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [2], 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [1], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [0]}),
    .S({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.lut_sig })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 64'h5AAAF0005AAAF000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Mxor_NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.lut_sig_xo<0>1  (
    .ADR1(1'b1),
    .ADR3(A_reg[1]),
    .ADR2(B_reg[2]),
    .ADR4(A_reg[2]),
    .ADR0(B_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 32'hF000F000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0  (
    .ADR0(1'b1),
    .ADR3(A_reg[1]),
    .ADR2(B_reg[2]),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 64'h5AF0AA005AF0AA00 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Mxor_NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.lut_sig_xo<0>1  (
    .ADR1(1'b1),
    .ADR4(A_reg[0]),
    .ADR2(B_reg[2]),
    .ADR3(A_reg[1]),
    .ADR0(B_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 32'hF0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0  (
    .ADR0(1'b1),
    .ADR4(A_reg[0]),
    .ADR2(B_reg[2]),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 64'hFF000000FF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.lut_sig1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[0]),
    .ADR4(B_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y34" ),
    .INIT ( 32'hFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[0]),
    .ADR4(B_reg[1]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma_sig )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [6]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_BMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [5]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><5>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_AMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [4]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><4>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X7Y35" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0  (
    .CI(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_cout<1> [3]),
    .CYINIT(1'b0),
    .CO({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_CO[0]_UNCONNECTED }),
    .DI({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_DI[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_DI[2]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma_sig }),
    .O({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_O[3]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [6], \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [5], 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1> [4]}),
    .S({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageMSB.xorcy0_S[3]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig1_2763 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.lut_sig })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 64'h00FFFF0000000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(A_reg[4]),
    .ADR3(B_reg[1]),
    .ADR4(B_reg[2]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 64'h0FF000000FF00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(A_reg[4]),
    .ADR3(B_reg[1]),
    .ADR2(B_reg[2]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.lut_sig1_2763 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 32'hF0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(A_reg[4]),
    .ADR3(1'b1),
    .ADR2(B_reg[2]),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma_sig )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 64'h3FC0C0C03FC0C0C0 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Mxor_NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.lut_sig_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(A_reg[3]),
    .ADR2(B_reg[2]),
    .ADR4(A_reg[4]),
    .ADR3(B_reg[1]),
    .ADR5(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.lut_sig )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y35" ),
    .INIT ( 32'hC0C0C0C0 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0  (
    .ADR0(1'b1),
    .ADR1(A_reg[3]),
    .ADR2(B_reg[2]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma_sig )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_6/CLK ),
    .I(temp_Sum[6]),
    .O(Sum_reg[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5>_0 ),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><3>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<3>_2779 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X3Y35" ))
  \ProtoComp9.CYINITGND  (
    .O(\NLW_ProtoComp9.CYINITGND_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_5/CLK ),
    .I(temp_Sum[5]),
    .O(Sum_reg[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X3Y35" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_5692 , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<3> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<2> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<1> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<0> }),
    .O({temp_Sum[6], temp_Sum[5], temp_Sum[4], temp_Sum[3]}),
    .S({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<3>_2779 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<2>_2791 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<1>_2796 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<0>_2801 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4>_0 ),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><2>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<2>_2791 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_4/CLK ),
    .I(temp_Sum[4]),
    .O(Sum_reg[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3>_0 ),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><1>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<1>_2796 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_3/CLK ),
    .I(temp_Sum[3]),
    .O(Sum_reg[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2>_0 ),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><0>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<0>_2801 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  Sum_reg_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_9/CLK ),
    .I(temp_Sum[9]),
    .O(Sum_reg[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X3Y36" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>  (
    .CI(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>_5692 ),
    .CYINIT(1'b0),
    .CO({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_CO[0]_UNCONNECTED }),
    .DI({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_DI[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_DI[2]_UNCONNECTED , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<1> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<0> }),
    .O({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_O[3]_UNCONNECTED , temp_Sum[9], temp_Sum[8], temp_Sum[7]}),
    .S({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>_S[3]_UNCONNECTED , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<6>_2811 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<5>_2816 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<4>_2821 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_0 ),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><6>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<6>_2811 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  Sum_reg_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_8/CLK ),
    .I(temp_Sum[8]),
    .O(Sum_reg[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_0 ),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><5>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<5>_2816 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 1'b0 ))
  Sum_reg_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_7/CLK ),
    .I(temp_Sum[7]),
    .O(Sum_reg[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6>_0 ),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<2><4>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_lut<4>_2821 )
  );
  X_BUF   \Sum_reg<2>/Sum_reg<2>_DMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3>_0 )
  );
  X_BUF   \Sum_reg<2>/Sum_reg<2>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h00FFFFFFFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(A_reg[4]),
    .ADR3(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><3>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<3>_2826 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X5Y35" ))
  \ProtoComp11.CYINITGND  (
    .O(\NLW_ProtoComp11.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X5Y35" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_5703 , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<3> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<2> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<1> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<0> }),
    .O({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3> , \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2> , temp_Sum[2], 
temp_Sum[1]}),
    .S({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<3>_2826 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<2>_2838 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<1>_2844 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<0>_2850 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h00FFFFFFFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[3]),
    .ADR4(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><2>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<2>_2838 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_2/CLK ),
    .I(temp_Sum[2]),
    .O(Sum_reg[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h00FFFFFFFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(A_reg[2]),
    .ADR4(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><1>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<1>_2844 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 1'b0 ))
  Sum_reg_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_1/CLK ),
    .I(temp_Sum[1]),
    .O(Sum_reg[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y35" ),
    .INIT ( 64'h0F0FFFFFF0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(A_reg[1]),
    .ADR4(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><0>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<0>_2850 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_DMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_CMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_BMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5>_0 )
  );
  X_BUF   \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>/MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_AMUX_Delay  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4> ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0F0FF0F0FFFF0000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(A_reg[4]),
    .ADR5(B_reg[0]),
    .ADR4(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<7>_2854 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X5Y36" ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>  (
    .CI(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>_5703 ),
    .CYINIT(1'b0),
    .CO({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[3]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[2]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[1]_UNCONNECTED , 
\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>_DI[3]_UNCONNECTED , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<2> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<1> , 
\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<0> }),
    .O({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7> , \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6> , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5> , \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4> }),
    .S({\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<7>_2854 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<6>_2864 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<5>_2869 , 
\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<4>_2874 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0F0FFFFFF0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(A_reg[4]),
    .ADR4(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<6>_2864 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h0F0FFFFFF0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(A_reg[4]),
    .ADR4(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><5>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<5>_2869 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y36" ),
    .INIT ( 64'h00FFFFFFFF000000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(A_reg[4]),
    .ADR3(B_reg[0]),
    .ADR5(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><4>_0 ),
    .O(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_lut<4>_2874 )
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y18" ))
  \A<0>  (
    .PAD(A[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y18" ))
  A_0_IBUF (
    .O(A_0_IBUF_5662),
    .I(A[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y19" ))
  \A<1>  (
    .PAD(A[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y19" ))
  A_1_IBUF (
    .O(A_1_IBUF_5664),
    .I(A[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y17" ))
  clk_101 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y17" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_5704 ),
    .I(clk)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y20" ))
  \A<2>  (
    .PAD(A[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y20" ))
  A_2_IBUF (
    .O(A_2_IBUF_5666),
    .I(A[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y21" ))
  \A<3>  (
    .PAD(A[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y21" ))
  A_3_IBUF (
    .O(A_3_IBUF_5668),
    .I(A[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y24" ))
  \B<0>  (
    .PAD(B[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y24" ))
  B_0_IBUF (
    .O(B_0_IBUF_5652),
    .I(B[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y22" ))
  \A<4>  (
    .PAD(A[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y22" ))
  A_4_IBUF (
    .O(A_4_IBUF_5670),
    .I(A[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y25" ))
  \B<1>  (
    .PAD(B[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y25" ))
  B_1_IBUF (
    .O(B_1_IBUF_5654),
    .I(B[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y26" ))
  \B<2>  (
    .PAD(B[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y26" ))
  B_2_IBUF (
    .O(B_2_IBUF_5656),
    .I(B[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y27" ))
  \B<3>  (
    .PAD(B[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y27" ))
  B_3_IBUF (
    .O(B_3_IBUF_5658),
    .I(B[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y28" ))
  \B<4>  (
    .PAD(B[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y28" ))
  B_4_IBUF (
    .O(B_4_IBUF_5660),
    .I(B[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y30" ))
  \Sum<0>  (
    .PAD(Sum[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y30" ))
  Sum_0_OBUF (
    .I(\NlwBufferSignal_Sum_0_OBUF/I ),
    .O(Sum[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y31" ))
  \Sum<1>  (
    .PAD(Sum[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y31" ))
  Sum_1_OBUF (
    .I(\NlwBufferSignal_Sum_1_OBUF/I ),
    .O(Sum[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y32" ))
  \Sum<2>  (
    .PAD(Sum[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y32" ))
  Sum_2_OBUF (
    .I(\NlwBufferSignal_Sum_2_OBUF/I ),
    .O(Sum[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y33" ))
  \Sum<3>  (
    .PAD(Sum[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y33" ))
  Sum_3_OBUF (
    .I(\NlwBufferSignal_Sum_3_OBUF/I ),
    .O(Sum[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y34" ))
  \Sum<4>  (
    .PAD(Sum[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y34" ))
  Sum_4_OBUF (
    .I(\NlwBufferSignal_Sum_4_OBUF/I ),
    .O(Sum[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y35" ))
  \Sum<5>  (
    .PAD(Sum[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y35" ))
  Sum_5_OBUF (
    .I(\NlwBufferSignal_Sum_5_OBUF/I ),
    .O(Sum[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y36" ))
  \Sum<6>  (
    .PAD(Sum[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y36" ))
  Sum_6_OBUF (
    .I(\NlwBufferSignal_Sum_6_OBUF/I ),
    .O(Sum[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y37" ))
  \Sum<7>  (
    .PAD(Sum[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y37" ))
  Sum_7_OBUF (
    .I(\NlwBufferSignal_Sum_7_OBUF/I ),
    .O(Sum[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y29" ))
  nReset_152 (
    .PAD(nReset)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y29" ))
  nReset_IBUF (
    .O(nReset_IBUF_5661),
    .I(nReset)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y38" ))
  \Sum<8>  (
    .PAD(Sum[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y38" ))
  Sum_8_OBUF (
    .I(\NlwBufferSignal_Sum_8_OBUF/I ),
    .O(Sum[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y39" ))
  \Sum<9>  (
    .PAD(Sum[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y39" ))
  Sum_9_OBUF (
    .I(\NlwBufferSignal_Sum_9_OBUF/I ),
    .O(Sum[9])
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y24" ),
    .INIT ( 1'b0 ))
  B_reg_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B_reg_0/CLK ),
    .I(\NlwBufferSignal_B_reg_0/IN ),
    .O(B_reg[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y28" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  nReset_inv1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(nReset_IBUF_5661),
    .O(nReset_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y32" ),
    .INIT ( 1'b0 ))
  B_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B_reg_3/CLK ),
    .I(\NlwBufferSignal_B_reg_3/IN ),
    .O(B_reg[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y32" ),
    .INIT ( 1'b0 ))
  A_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A_reg_4/CLK ),
    .I(\NlwBufferSignal_A_reg_4/IN ),
    .O(A_reg[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_BUF   \Sum_reg<0>/Sum_reg<0>_AMUX_Delay  (
    .I(B_reg[4]),
    .O(\B_reg<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 1'b0 ))
  Sum_reg_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sum_reg_0/CLK ),
    .I(temp_Sum[0]),
    .O(Sum_reg[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/NxM_mult.stage_1_add.sum<0><0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(A_reg[0]),
    .ADR4(B_reg[0]),
    .O(temp_Sum[0])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y33" ),
    .INIT ( 1'b0 ))
  B_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B_reg_4/CLK ),
    .I(\NlwBufferSignal_B_reg_4/IN ),
    .O(B_reg[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y33" ),
    .INIT ( 1'b0 ))
  A_reg_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A_reg_0/CLK ),
    .I(\NlwBufferSignal_A_reg_0/IN ),
    .O(A_reg[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y33" ),
    .INIT ( 1'b0 ))
  A_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A_reg_2/CLK ),
    .I(\NlwBufferSignal_A_reg_2/IN ),
    .O(A_reg[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X7Y33" ),
    .INIT ( 1'b0 ))
  B_reg_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B_reg_1/CLK ),
    .I(\NlwBufferSignal_B_reg_1/IN ),
    .O(B_reg[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 1'b0 ))
  B_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B_reg_2/CLK ),
    .I(\NlwBufferSignal_B_reg_2/IN ),
    .O(B_reg[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  A_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A_reg_3/CLK ),
    .I(\NlwBufferSignal_A_reg_3/IN ),
    .O(A_reg[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  A_reg_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A_reg_1/CLK ),
    .I(\NlwBufferSignal_A_reg_1/IN ),
    .O(A_reg[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_BUF   \NlwBufferBlock_Sum_reg_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<0>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<2>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<1>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<3>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<2>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<4>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<3>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<5>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_9/CLK )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<0>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<6>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<1>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/n0106[7:0]<7>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0108[10:0]_Madd_xor<6>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<0>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><0>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<1>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><1>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<2>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><2>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<3>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><3>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<0>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><4>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<1>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><5>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<2>  (
    .I(\MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/pp_out<1><6>_0 ),
    .O(\NlwBufferSignal_MultiplierIP/Mult/U0/i_mult/gLUT.gNO_LUT6.iLUT/Madd_n0106[7:0]_xor<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Sum_0_OBUF/I  (
    .I(Sum_reg[0]),
    .O(\NlwBufferSignal_Sum_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_1_OBUF/I  (
    .I(Sum_reg[1]),
    .O(\NlwBufferSignal_Sum_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_2_OBUF/I  (
    .I(Sum_reg[2]),
    .O(\NlwBufferSignal_Sum_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_3_OBUF/I  (
    .I(Sum_reg[3]),
    .O(\NlwBufferSignal_Sum_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_4_OBUF/I  (
    .I(Sum_reg[4]),
    .O(\NlwBufferSignal_Sum_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_5_OBUF/I  (
    .I(Sum_reg[5]),
    .O(\NlwBufferSignal_Sum_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_6_OBUF/I  (
    .I(Sum_reg[6]),
    .O(\NlwBufferSignal_Sum_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_7_OBUF/I  (
    .I(Sum_reg[7]),
    .O(\NlwBufferSignal_Sum_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_8_OBUF/I  (
    .I(Sum_reg[8]),
    .O(\NlwBufferSignal_Sum_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Sum_9_OBUF/I  (
    .I(Sum_reg[9]),
    .O(\NlwBufferSignal_Sum_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_5704 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_B_reg_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_B_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_0/IN  (
    .I(B_0_IBUF_5652),
    .O(\NlwBufferSignal_B_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_B_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_B_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_3/IN  (
    .I(B_3_IBUF_5658),
    .O(\NlwBufferSignal_B_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_A_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_A_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_A_reg_4/IN  (
    .I(A_4_IBUF_5670),
    .O(\NlwBufferSignal_A_reg_4/IN )
  );
  X_BUF   \NlwBufferBlock_Sum_reg_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sum_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_B_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_4/IN  (
    .I(B_4_IBUF_5660),
    .O(\NlwBufferSignal_B_reg_4/IN )
  );
  X_BUF   \NlwBufferBlock_A_reg_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_A_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_A_reg_0/IN  (
    .I(A_0_IBUF_5662),
    .O(\NlwBufferSignal_A_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_A_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_A_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_A_reg_2/IN  (
    .I(A_2_IBUF_5666),
    .O(\NlwBufferSignal_A_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_B_reg_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_B_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_1/IN  (
    .I(B_1_IBUF_5654),
    .O(\NlwBufferSignal_B_reg_1/IN )
  );
  X_BUF   \NlwBufferBlock_B_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_B_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_B_reg_2/IN  (
    .I(B_2_IBUF_5656),
    .O(\NlwBufferSignal_B_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_A_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_A_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_A_reg_3/IN  (
    .I(A_3_IBUF_5668),
    .O(\NlwBufferSignal_A_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_A_reg_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_A_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_A_reg_1/IN  (
    .I(A_1_IBUF_5664),
    .O(\NlwBufferSignal_A_reg_1/IN )
  );
  X_ZERO   NlwBlock_Mult_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_Mult_top_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

