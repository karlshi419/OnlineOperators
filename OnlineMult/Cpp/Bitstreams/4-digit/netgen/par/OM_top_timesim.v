////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: OM_top_timesim.v
// /___/   /\     Timestamp: Tue Aug 27 11:57:37 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf OM_top.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim OM_top.ncd OM_top_timesim.v 
// Device	: 6vlx240tff1156-1 (PRODUCTION 1.17 2012-04-23)
// Input file	: OM_top.ncd
// Output file	: G:\FPGA\OnlineOperator\OnlineMult\OnlineMult_4Stages\netgen\par\OM_top_timesim.v
// # of Modules	: 1
// Design Name	: OM_top
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

module OM_top (
  clk, nReset, x, y, xY, yX, z
);
  input clk;
  input nReset;
  input [7 : 0] x;
  input [7 : 2] y;
  input [13 : 0] xY;
  input [11 : 0] yX;
  output [13 : 0] z;
  wire clk_BUFGP;
  wire y_5_IBUF_5971;
  wire \][IN_virtPIBox_52_94 ;
  wire \yX<7>_IBUF_5973 ;
  wire y_6_IBUF_5975;
  wire \yX<8>_IBUF_5976 ;
  wire y_7_IBUF_5978;
  wire yX_9_IBUF_5979;
  wire lut225_24_5980;
  wire lut223_22_5981;
  wire lut222_21_5982;
  wire lut216_15_5983;
  wire lut224_23_5984;
  wire lut221_20_5985;
  wire lut220_19_5986;
  wire xY_3_IBUF_5987;
  wire yX_1_IBUF_5988;
  wire \xY<10>_IBUF_5993 ;
  wire yX_5_IBUF_5994;
  wire xY_13_IBUF_5995;
  wire xY_11_IBUF_5999;
  wire lut232_31_6000;
  wire xY_0_IBUF_6001;
  wire xY_1_IBUF_6002;
  wire yX_2_IBUF_6005;
  wire xY_12_IBUF_6006;
  wire lut257_50_6007;
  wire xY_6_IBUF_6008;
  wire yX_4_IBUF_6009;
  wire lut281_69_6012;
  wire lut265_58_6013;
  wire lut266_59_6014;
  wire lut280_68_6015;
  wire lut264_57_6016;
  wire lut285_73_6017;
  wire lut284_72_6018;
  wire lut283_71_6019;
  wire lut263_56_6020;
  wire lut289_77_0;
  wire x_0_IBUF_6023;
  wire x_1_IBUF_6024;
  wire lut260_53_6025;
  wire lut240_39_6026;
  wire lut259_52_6027;
  wire yX_0_IBUF_6028;
  wire xY_2_IBUF_6029;
  wire x_2_IBUF_6030;
  wire x_3_IBUF_6031;
  wire lut282_70_6032;
  wire yX_3_IBUF_6033;
  wire xY_5_IBUF_6034;
  wire x_4_IBUF_6035;
  wire lut267_60_6036;
  wire yX_10_IBUF_6037;
  wire nReset_IBUF_6038;
  wire x_5_IBUF_6039;
  wire lut290_78_6040;
  wire yX_11_IBUF_6041;
  wire x_6_IBUF_6042;
  wire y_2_IBUF_6043;
  wire x_7_IBUF_6045;
  wire y_3_IBUF_6046;
  wire lut268_61_6048;
  wire y_4_IBUF_6049;
  wire lut305_88_6052;
  wire lut306_89_6053;
  wire lut286_74_6054;
  wire lut296_81_0;
  wire lut269_62_6056;
  wire lut288_76_6057;
  wire lut241_40_6059;
  wire lut218_17_6060;
  wire lut219_18_6061;
  wire lut233_32_6062;
  wire lut242_41_6063;
  wire lut253_46_6064;
  wire lut254_47_6065;
  wire lut239_38_6066;
  wire lut226_25_6067;
  wire xY_4_IBUF_6068;
  wire lut234_33_6070;
  wire lut237_36_0;
  wire lut304_87_0;
  wire lut235_34_6076;
  wire xY_8_IBUF_6077;
  wire yX_6_IBUF_6078;
  wire lut227_26_6079;
  wire lut287_75_6080;
  wire STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG;
  wire \clk_BUFGP/IBUFG_6082 ;
  wire lut261_54_6083;
  wire lut215_14_6084;
  wire N1_0;
  wire xY_7_IBUF_6086;
  wire lut236_35_6087;
  wire lut238_37_0;
  wire lut255_48_6089;
  wire lut228_27_6090;
  wire \xY<9>_IBUF_6091 ;
  wire lut217_16_6092;
  wire lut303_86_6093;
  wire lut231_30_6094;
  wire lut230_29_6095;
  wire lut256_49_6096;
  wire lut258_51_6097;
  wire lut262_55_6098;
  wire lut297_82_6099;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/EOS ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/DINSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/PREQ ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/TCKSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/CFGCLK ;
  wire lut238_37_5463;
  wire N1;
  wire lut224_23_pack_8;
  wire lut240_39_pack_6;
  wire lut307_90_5553;
  wire lut312_92_5535;
  wire lut304_87_5579;
  wire lut296_81_5571;
  wire lut289_77_5599;
  wire lut237_36_5661;
  wire lut231_30_pack_2;
  wire lut254_47_pack_5;
  wire lut243_42_5874;
  wire lut248_44_5866;
  wire lut270_63_5858;
  wire \][87_66_5890 ;
  wire lut291_79_5884;
  wire \][97_84_5905 ;
  wire \NlwBufferSignal_z_10_OBUF/I ;
  wire \NlwBufferSignal_z_11_OBUF/I ;
  wire \NlwBufferSignal_z_12_OBUF/I ;
  wire \NlwBufferSignal_z_13_OBUF/I ;
  wire \NlwBufferSignal_z_6_OBUF/I ;
  wire \NlwBufferSignal_z_7_OBUF/I ;
  wire \NlwBufferSignal_z_8_OBUF/I ;
  wire \NlwBufferSignal_z_9_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_x_reg_3/CLK ;
  wire \NlwBufferSignal_x_reg_3/IN ;
  wire \NlwBufferSignal_x_reg_1/CLK ;
  wire \NlwBufferSignal_x_reg_1/IN ;
  wire \NlwBufferSignal_x_reg_0/CLK ;
  wire \NlwBufferSignal_x_reg_0/IN ;
  wire \NlwBufferSignal_z_reg_7/CLK ;
  wire \NlwBufferSignal_y_reg_7/CLK ;
  wire \NlwBufferSignal_y_reg_7/IN ;
  wire \NlwBufferSignal_z_reg_6/CLK ;
  wire \NlwBufferSignal_y_reg_6/CLK ;
  wire \NlwBufferSignal_y_reg_6/IN ;
  wire \NlwBufferSignal_x_reg_4/CLK ;
  wire \NlwBufferSignal_x_reg_4/IN ;
  wire \NlwBufferSignal_x_reg_6/CLK ;
  wire \NlwBufferSignal_x_reg_6/IN ;
  wire \NlwBufferSignal_y_reg_3/CLK ;
  wire \NlwBufferSignal_y_reg_3/IN ;
  wire \NlwBufferSignal_y_reg_2/CLK ;
  wire \NlwBufferSignal_y_reg_2/IN ;
  wire \NlwBufferSignal_x_reg_2/CLK ;
  wire \NlwBufferSignal_x_reg_2/IN ;
  wire \NlwBufferSignal_x_reg_7/CLK ;
  wire \NlwBufferSignal_x_reg_7/IN ;
  wire \NlwBufferSignal_y_reg_5/CLK ;
  wire \NlwBufferSignal_y_reg_5/IN ;
  wire \NlwBufferSignal_x_reg_5/CLK ;
  wire \NlwBufferSignal_x_reg_5/IN ;
  wire \NlwBufferSignal_y_reg_4/CLK ;
  wire \NlwBufferSignal_y_reg_4/IN ;
  wire \NlwBufferSignal_z_reg_2/CLK ;
  wire \NlwBufferSignal_z_reg_1/CLK ;
  wire \NlwBufferSignal_z_reg_0/CLK ;
  wire \NlwBufferSignal_z_reg_4/CLK ;
  wire \NlwBufferSignal_z_reg_3/CLK ;
  wire \NlwBufferSignal_z_reg_5/CLK ;
  wire GND;
  wire VCC;
  wire [7 : 2] y_reg;
  wire [7 : 0] x_reg;
  wire [7 : 0] z_reg;
  initial $sdf_annotate("netgen/par/om_top_timesim.sdf");
  X_IPAD #(
    .LOC ( "IOB_X0Y75" ))
  \yX<7>  (
    .PAD(yX[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y75" ))
  \yX<7>_IBUF  (
    .O(\yX<7>_IBUF_5973 ),
    .I(yX[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y76" ))
  \yX<8>  (
    .PAD(yX[8])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y76" ))
  \yX<8>_IBUF  (
    .O(\yX<8>_IBUF_5976 ),
    .I(yX[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y77" ))
  \yX<9>  (
    .PAD(yX[9])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y77" ))
  yX_9_IBUF (
    .O(yX_9_IBUF_5979),
    .I(yX[9])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y64" ))
  \xY<10>  (
    .PAD(xY[10])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y64" ))
  \xY<10>_IBUF  (
    .O(\xY<10>_IBUF_5993 ),
    .I(xY[10])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y65" ))
  \xY<11>  (
    .PAD(xY[11])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y65" ))
  xY_11_IBUF (
    .O(xY_11_IBUF_5999),
    .I(xY[11])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y66" ))
  \xY<12>  (
    .PAD(xY[12])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y66" ))
  xY_12_IBUF (
    .O(xY_12_IBUF_6006),
    .I(xY[12])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y67" ))
  \xY<13>  (
    .PAD(xY[13])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y67" ))
  xY_13_IBUF (
    .O(xY_13_IBUF_5995),
    .I(xY[13])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y10" ))
  \x<0>  (
    .PAD(x[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y10" ))
  x_0_IBUF (
    .O(x_0_IBUF_6023),
    .I(x[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y11" ))
  \x<1>  (
    .PAD(x[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y11" ))
  x_1_IBUF (
    .O(x_1_IBUF_6024),
    .I(x[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y12" ))
  \x<2>  (
    .PAD(x[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y12" ))
  x_2_IBUF (
    .O(x_2_IBUF_6030),
    .I(x[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y13" ))
  \x<3>  (
    .PAD(x[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y13" ))
  x_3_IBUF (
    .O(x_3_IBUF_6031),
    .I(x[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y14" ))
  \x<4>  (
    .PAD(x[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y14" ))
  x_4_IBUF (
    .O(x_4_IBUF_6035),
    .I(x[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y78" ))
  \yX<10>  (
    .PAD(yX[10])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y78" ))
  yX_10_IBUF (
    .O(yX_10_IBUF_6037),
    .I(yX[10])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y25" ))
  nReset_42 (
    .PAD(nReset)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y25" ))
  nReset_IBUF (
    .O(nReset_IBUF_6038),
    .I(nReset)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y15" ))
  \x<5>  (
    .PAD(x[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y15" ))
  x_5_IBUF (
    .O(x_5_IBUF_6039),
    .I(x[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y79" ))
  \yX<11>  (
    .PAD(yX[11])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y79" ))
  yX_11_IBUF (
    .O(yX_11_IBUF_6041),
    .I(yX[11])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y16" ))
  \x<6>  (
    .PAD(x[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y16" ))
  x_6_IBUF (
    .O(x_6_IBUF_6042),
    .I(x[6])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y18" ))
  \y<2>  (
    .PAD(y[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y18" ))
  y_2_IBUF (
    .O(y_2_IBUF_6043),
    .I(y[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y36" ))
  \z<10>  (
    .PAD(z[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y36" ))
  z_10_OBUF (
    .I(\NlwBufferSignal_z_10_OBUF/I ),
    .O(z[10])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y17" ))
  \x<7>  (
    .PAD(x[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y17" ))
  x_7_IBUF (
    .O(x_7_IBUF_6045),
    .I(x[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y19" ))
  \y<3>  (
    .PAD(y[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y19" ))
  y_3_IBUF (
    .O(y_3_IBUF_6046),
    .I(y[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y37" ))
  \z<11>  (
    .PAD(z[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y37" ))
  z_11_OBUF (
    .I(\NlwBufferSignal_z_11_OBUF/I ),
    .O(z[11])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y20" ))
  \y<4>  (
    .PAD(y[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y20" ))
  y_4_IBUF (
    .O(y_4_IBUF_6049),
    .I(y[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y26" ))
  \z<0>  (
    .PAD(z[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y26" ))
  z_0_OBUF (
    .I(1'b0),
    .O(z[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y38" ))
  \z<12>  (
    .PAD(z[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y38" ))
  z_12_OBUF (
    .I(\NlwBufferSignal_z_12_OBUF/I ),
    .O(z[12])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y21" ))
  \y<5>  (
    .PAD(y[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y21" ))
  y_5_IBUF (
    .O(y_5_IBUF_5971),
    .I(y[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y27" ))
  \z<1>  (
    .PAD(z[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y27" ))
  z_1_OBUF (
    .I(1'b0),
    .O(z[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y39" ))
  \z<13>  (
    .PAD(z[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y39" ))
  z_13_OBUF (
    .I(\NlwBufferSignal_z_13_OBUF/I ),
    .O(z[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y28" ))
  \z<2>  (
    .PAD(z[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y28" ))
  z_2_OBUF (
    .I(1'b0),
    .O(z[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y22" ))
  \y<6>  (
    .PAD(y[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y22" ))
  y_6_IBUF (
    .O(y_6_IBUF_5975),
    .I(y[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y29" ))
  \z<3>  (
    .PAD(z[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y29" ))
  z_3_OBUF (
    .I(1'b0),
    .O(z[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y24" ))
  \y<7>  (
    .PAD(y[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y24" ))
  y_7_IBUF (
    .O(y_7_IBUF_5978),
    .I(y[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y30" ))
  \z<4>  (
    .PAD(z[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y30" ))
  z_4_OBUF (
    .I(1'b0),
    .O(z[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y31" ))
  \z<5>  (
    .PAD(z[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y31" ))
  z_5_OBUF (
    .I(1'b0),
    .O(z[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y32" ))
  \z<6>  (
    .PAD(z[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y32" ))
  z_6_OBUF (
    .I(\NlwBufferSignal_z_6_OBUF/I ),
    .O(z[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y33" ))
  \z<7>  (
    .PAD(z[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y33" ))
  z_7_OBUF (
    .I(\NlwBufferSignal_z_7_OBUF/I ),
    .O(z[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y34" ))
  \z<8>  (
    .PAD(z[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y34" ))
  z_8_OBUF (
    .I(\NlwBufferSignal_z_8_OBUF/I ),
    .O(z[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y35" ))
  \z<9>  (
    .PAD(z[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y35" ))
  z_9_OBUF (
    .I(\NlwBufferSignal_z_9_OBUF/I ),
    .O(z[9])
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y54" ))
  \xY<0>  (
    .PAD(xY[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y54" ))
  xY_0_IBUF (
    .O(xY_0_IBUF_6001),
    .I(xY[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y55" ))
  \xY<1>  (
    .PAD(xY[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y55" ))
  xY_1_IBUF (
    .O(xY_1_IBUF_6002),
    .I(xY[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y56" ))
  \xY<2>  (
    .PAD(xY[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y56" ))
  xY_2_IBUF (
    .O(xY_2_IBUF_6029),
    .I(xY[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y57" ))
  \xY<3>  (
    .PAD(xY[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y57" ))
  xY_3_IBUF (
    .O(xY_3_IBUF_5987),
    .I(xY[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y68" ))
  \yX<0>  (
    .PAD(yX[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y68" ))
  yX_0_IBUF (
    .O(yX_0_IBUF_6028),
    .I(yX[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y58" ))
  \xY<4>  (
    .PAD(xY[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y58" ))
  xY_4_IBUF (
    .O(xY_4_IBUF_6068),
    .I(xY[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y69" ))
  \yX<1>  (
    .PAD(yX[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y69" ))
  yX_1_IBUF (
    .O(yX_1_IBUF_5988),
    .I(yX[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y59" ))
  \xY<5>  (
    .PAD(xY[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y59" ))
  xY_5_IBUF (
    .O(xY_5_IBUF_6034),
    .I(xY[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y70" ))
  \yX<2>  (
    .PAD(yX[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y70" ))
  yX_2_IBUF (
    .O(yX_2_IBUF_6005),
    .I(yX[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y60" ))
  \xY<6>  (
    .PAD(xY[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y60" ))
  xY_6_IBUF (
    .O(xY_6_IBUF_6008),
    .I(xY[6])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y17" ))
  clk_191 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y17" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_6082 ),
    .I(clk)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y71" ))
  \yX<3>  (
    .PAD(yX[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y71" ))
  yX_3_IBUF (
    .O(yX_3_IBUF_6033),
    .I(yX[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y61" ))
  \xY<7>  (
    .PAD(xY[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y61" ))
  xY_7_IBUF (
    .O(xY_7_IBUF_6086),
    .I(xY[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y72" ))
  \yX<4>  (
    .PAD(yX[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y72" ))
  yX_4_IBUF (
    .O(yX_4_IBUF_6009),
    .I(yX[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y62" ))
  \xY<8>  (
    .PAD(xY[8])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y62" ))
  xY_8_IBUF (
    .O(xY_8_IBUF_6077),
    .I(xY[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y73" ))
  \yX<5>  (
    .PAD(yX[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y73" ))
  yX_5_IBUF (
    .O(yX_5_IBUF_5994),
    .I(yX[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y63" ))
  \xY<9>  (
    .PAD(xY[9])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y63" ))
  \xY<9>_IBUF  (
    .O(\xY<9>_IBUF_6091 ),
    .I(xY[9])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y74" ))
  \yX<6>  (
    .PAD(yX[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y74" ))
  yX_6_IBUF (
    .O(yX_6_IBUF_6078),
    .I(yX[6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y29" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \][IN_virtPIBox_52_94_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(nReset_IBUF_6038),
    .O(\][IN_virtPIBox_52_94 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'h03A9C06A560395C0 ))
  lut217_16 (
    .ADR0(yX_1_IBUF_5988),
    .ADR1(xY_3_IBUF_5987),
    .ADR2(x_reg[3]),
    .ADR4(x_reg[2]),
    .ADR3(y_reg[2]),
    .ADR5(y_reg[3]),
    .O(lut217_16_6092)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y50" ),
    .INIT ( 64'h000007EF07EFFFFF ))
  lut219_18 (
    .ADR0(yX_0_IBUF_6028),
    .ADR1(y_reg[3]),
    .ADR2(y_reg[2]),
    .ADR3(lut218_17_6060),
    .ADR4(lut216_15_5983),
    .ADR5(lut217_16_6092),
    .O(lut219_18_6061)
  );
  X_BUF   \lut236_35/lut236_35_DMUX_Delay  (
    .I(lut238_37_5463),
    .O(lut238_37_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y47" ),
    .INIT ( 64'hF5F5AFAFF5F5AFAF ))
  lut236_35 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(yX_1_IBUF_5988),
    .ADR2(y_reg[2]),
    .ADR4(y_reg[3]),
    .ADR5(1'b1),
    .O(lut236_35_6087)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y47" ),
    .INIT ( 32'h05055F5F ))
  lut238_37 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(yX_1_IBUF_5988),
    .ADR2(y_reg[2]),
    .ADR4(y_reg[3]),
    .O(lut238_37_5463)
  );
  X_BUF   \x_reg<3>/x_reg<3>_CMUX_Delay  (
    .I(N1),
    .O(N1_0)
  );
  X_BUF   \x_reg<3>/x_reg<3>_BMUX_Delay  (
    .I(lut224_23_pack_8),
    .O(lut224_23_5984)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 1'b0 ))
  x_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_3/CLK ),
    .I(\NlwBufferSignal_x_reg_3/IN ),
    .O(x_reg[3]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'h2424242424242424 ))
  lut222_21 (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(xY_4_IBUF_6068),
    .ADR2(x_reg[3]),
    .ADR1(x_reg[2]),
    .ADR5(1'b1),
    .O(lut222_21_5982)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 32'h00FF24DB ))
  lut229_28_SW0 (
    .ADR4(lut223_22_5981),
    .ADR3(lut224_23_5984),
    .ADR0(xY_4_IBUF_6068),
    .ADR2(x_reg[3]),
    .ADR1(x_reg[2]),
    .O(N1)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 1'b0 ))
  x_reg_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_1/CLK ),
    .I(\NlwBufferSignal_x_reg_1/IN ),
    .O(x_reg[1]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'h00F0F00000F0F000 ))
  lut223_22 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(xY_0_IBUF_6001),
    .ADR3(x_reg[1]),
    .ADR4(x_reg[0]),
    .ADR5(1'b1),
    .O(lut223_22_5981)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 32'hFA5AAA00 ))
  lut224_23 (
    .ADR1(1'b1),
    .ADR0(xY_1_IBUF_6002),
    .ADR2(xY_0_IBUF_6001),
    .ADR3(x_reg[1]),
    .ADR4(x_reg[0]),
    .O(lut224_23_pack_8)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 1'b0 ))
  x_reg_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_0/CLK ),
    .I(\NlwBufferSignal_x_reg_0/IN ),
    .O(x_reg[0]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'hDDBB2D4B2D4BDDBB ))
  lut226_25 (
    .ADR2(xY_0_IBUF_6001),
    .ADR0(xY_4_IBUF_6068),
    .ADR4(x_reg[1]),
    .ADR5(x_reg[0]),
    .ADR3(x_reg[3]),
    .ADR1(x_reg[2]),
    .O(lut226_25_6067)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'h00CC3300FF33CCFF ))
  lut287_75 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(yX_6_IBUF_6078),
    .ADR4(y_reg[5]),
    .ADR3(y_reg[4]),
    .ADR5(lut225_24_5980),
    .O(lut287_75_6080)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'hE71824DB18E7DB24 ))
  lut239_38 (
    .ADR4(lut238_37_0),
    .ADR1(lut218_17_6060),
    .ADR2(lut237_36_0),
    .ADR0(lut236_35_6087),
    .ADR3(lut215_14_6084),
    .ADR5(lut235_34_6076),
    .O(lut239_38_6066)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y49" ),
    .INIT ( 64'h3FF300003FF33FF3 ))
  lut242_41 (
    .ADR0(1'b1),
    .ADR1(lut215_14_6084),
    .ADR3(lut235_34_6076),
    .ADR2(lut234_33_6070),
    .ADR4(lut241_40_6059),
    .ADR5(lut239_38_6066),
    .O(lut242_41_6063)
  );
  X_BUF   \lut216_15/lut216_15_DMUX_Delay  (
    .I(lut240_39_pack_6),
    .O(lut240_39_6026)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h000FF000000FF000 ))
  lut216_15 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(xY_8_IBUF_6077),
    .ADR3(x_reg[5]),
    .ADR4(x_reg[4]),
    .ADR5(1'b1),
    .O(lut216_15_5983)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 32'hFFAA55FF ))
  lut240_39 (
    .ADR1(1'b1),
    .ADR0(xY_7_IBUF_6086),
    .ADR2(1'b1),
    .ADR3(x_reg[5]),
    .ADR4(x_reg[4]),
    .O(lut240_39_pack_6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'hEF8F1F7F0E080107 ))
  lut241_40 (
    .ADR0(yX_0_IBUF_6028),
    .ADR2(x_reg[2]),
    .ADR1(y_reg[3]),
    .ADR3(y_reg[2]),
    .ADR5(lut240_39_6026),
    .ADR4(lut218_17_6060),
    .O(lut241_40_6059)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y50" ),
    .INIT ( 64'h0C30A69A59650C30 ))
  lut228_27 (
    .ADR3(x_reg[5]),
    .ADR1(xY_8_IBUF_6077),
    .ADR2(x_reg[4]),
    .ADR0(yX_2_IBUF_6005),
    .ADR5(y_reg[3]),
    .ADR4(y_reg[2]),
    .O(lut228_27_6090)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 1'b0 ))
  z_reg_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_7/CLK ),
    .I(lut312_92_5535),
    .O(z_reg[7]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 64'hFFF3FFFC88A222A8 ))
  lut312_92 (
    .ADR0(lut286_74_6054),
    .ADR3(lut305_88_6052),
    .ADR2(lut290_78_6040),
    .ADR4(lut306_89_6053),
    .ADR1(lut284_72_6018),
    .ADR5(lut303_86_6093),
    .O(lut312_92_5535)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 1'b0 ))
  y_reg_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_7/CLK ),
    .I(\NlwBufferSignal_y_reg_7/IN ),
    .O(y_reg[7]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 64'h0DDF0BBFF220F440 ))
  lut290_78 (
    .ADR5(lut289_77_0),
    .ADR2(lut281_69_6012),
    .ADR1(y_reg[6]),
    .ADR4(y_reg[7]),
    .ADR0(yX_10_IBUF_6037),
    .ADR3(lut283_71_6019),
    .O(lut290_78_6040)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 64'h3C3C3C3C300C3C0C ))
  lut303_86 (
    .ADR0(1'b1),
    .ADR2(lut289_77_0),
    .ADR1(lut296_81_0),
    .ADR3(lut269_62_6056),
    .ADR4(lut288_76_6057),
    .ADR5(lut286_74_6054),
    .O(lut303_86_6093)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 1'b0 ))
  z_reg_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_6/CLK ),
    .I(lut307_90_5553),
    .O(z_reg[6]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y51" ),
    .INIT ( 64'h000000002F4F8F1F ))
  lut307_90 (
    .ADR1(lut284_72_6018),
    .ADR3(lut305_88_6052),
    .ADR4(lut306_89_6053),
    .ADR2(lut290_78_6040),
    .ADR0(lut286_74_6054),
    .ADR5(lut303_86_6093),
    .O(lut307_90_5553)
  );
  X_BUF   \y_reg<6>/y_reg<6>_BMUX_Delay  (
    .I(lut304_87_5579),
    .O(lut304_87_0)
  );
  X_BUF   \y_reg<6>/y_reg<6>_AMUX_Delay  (
    .I(lut296_81_5571),
    .O(lut296_81_0)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 1'b0 ))
  y_reg_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_6/CLK ),
    .I(\NlwBufferSignal_y_reg_6/IN ),
    .O(y_reg[6]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 64'hFF33CCFFFF33CCFF ))
  lut264_57 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(yX_11_IBUF_6041),
    .ADR3(y_reg[6]),
    .ADR4(y_reg[7]),
    .ADR5(1'b1),
    .O(lut264_57_6016)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 32'h00AA5500 ))
  lut304_87 (
    .ADR1(1'b1),
    .ADR0(yX_9_IBUF_5979),
    .ADR2(1'b1),
    .ADR3(y_reg[6]),
    .ADR4(y_reg[7]),
    .O(lut304_87_5579)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 1'b0 ))
  x_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_4/CLK ),
    .I(\NlwBufferSignal_x_reg_4/IN ),
    .O(x_reg[4]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 64'h4242424242424242 ))
  lut284_72 (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(y_reg[7]),
    .ADR1(yX_10_IBUF_6037),
    .ADR0(y_reg[6]),
    .ADR5(1'b1),
    .O(lut284_72_6018)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y52" ),
    .INIT ( 32'h00BDBDFF ))
  lut296_81 (
    .ADR3(lut283_71_6019),
    .ADR4(lut281_69_6012),
    .ADR2(y_reg[7]),
    .ADR1(yX_10_IBUF_6037),
    .ADR0(y_reg[6]),
    .O(lut296_81_5571)
  );
  X_BUF   \x_reg<6>/x_reg<6>_CMUX_Delay  (
    .I(lut289_77_5599),
    .O(lut289_77_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 64'hF3CFA69A5965F3CF ))
  lut259_52 (
    .ADR1(xY_13_IBUF_5995),
    .ADR0(yX_5_IBUF_5994),
    .ADR2(x_reg[6]),
    .ADR3(x_reg[7]),
    .ADR4(y_reg[5]),
    .ADR5(y_reg[4]),
    .O(lut259_52_6027)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 64'h5440A8805440A880 ))
  lut285_73 (
    .ADR1(lut284_72_6018),
    .ADR2(lut283_71_6019),
    .ADR4(lut280_68_6015),
    .ADR0(lut263_56_6020),
    .ADR3(lut281_69_6012),
    .ADR5(1'b1),
    .O(lut285_73_6017)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 32'h5555AAAA ))
  lut289_77 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(lut280_68_6015),
    .ADR0(lut263_56_6020),
    .ADR2(1'b1),
    .O(lut289_77_5599)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 1'b0 ))
  x_reg_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_6/CLK ),
    .I(\NlwBufferSignal_x_reg_6/IN ),
    .O(x_reg[6]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 64'h00FFE718E718FF00 ))
  lut280_68 (
    .ADR1(xY_12_IBUF_6006),
    .ADR0(x_reg[7]),
    .ADR3(lut264_57_6016),
    .ADR2(x_reg[6]),
    .ADR4(lut265_58_6013),
    .ADR5(lut266_59_6014),
    .O(lut280_68_6015)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y53" ),
    .INIT ( 64'h03C0FC3FFC3F03C0 ))
  lut281_69 (
    .ADR0(1'b1),
    .ADR1(xY_12_IBUF_6006),
    .ADR3(x_reg[6]),
    .ADR2(x_reg[7]),
    .ADR4(lut265_58_6013),
    .ADR5(lut266_59_6014),
    .O(lut281_69_6012)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y54" ),
    .INIT ( 64'h0D0BDFBFF2F42040 ))
  lut306_89 (
    .ADR5(lut281_69_6012),
    .ADR4(x_reg[4]),
    .ADR3(x_reg[7]),
    .ADR1(x_reg[6]),
    .ADR0(xY_11_IBUF_5999),
    .ADR2(lut282_70_6032),
    .O(lut306_89_6053)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y54" ),
    .INIT ( 64'h0A083B0050407300 ))
  lut266_59 (
    .ADR1(yX_3_IBUF_6033),
    .ADR0(xY_5_IBUF_6034),
    .ADR5(x_reg[5]),
    .ADR4(y_reg[5]),
    .ADR3(y_reg[4]),
    .ADR2(x_reg[4]),
    .O(lut266_59_6014)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y54" ),
    .INIT ( 64'h000000DB00DB00FF ))
  lut267_60 (
    .ADR0(xY_12_IBUF_6006),
    .ADR1(x_reg[6]),
    .ADR2(x_reg[7]),
    .ADR3(lut264_57_6016),
    .ADR4(lut265_58_6013),
    .ADR5(lut266_59_6014),
    .O(lut267_60_6036)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y47" ),
    .INIT ( 1'b0 ))
  y_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_3/CLK ),
    .I(\NlwBufferSignal_y_reg_3/IN ),
    .O(y_reg[3]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y47" ),
    .INIT ( 64'hFFAAFFAA55FF55FF ))
  lut221_20 (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(y_reg[3]),
    .ADR0(yX_2_IBUF_6005),
    .ADR5(y_reg[2]),
    .O(lut221_20_5985)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y47" ),
    .INIT ( 1'b0 ))
  y_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_2/CLK ),
    .I(\NlwBufferSignal_y_reg_2/IN ),
    .O(y_reg[2]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y47" ),
    .INIT ( 64'hFD3FEC20E4000040 ))
  lut232_31 (
    .ADR0(xY_0_IBUF_6001),
    .ADR1(xY_1_IBUF_6002),
    .ADR2(x_reg[0]),
    .ADR3(x_reg[1]),
    .ADR4(lut222_21_5982),
    .ADR5(lut221_20_5985),
    .O(lut232_31_6000)
  );
  X_BUF   \x_reg<2>/x_reg<2>_DMUX_Delay  (
    .I(lut237_36_5661),
    .O(lut237_36_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hF6C00C60F6C00C60 ))
  lut234_33 (
    .ADR0(yX_0_IBUF_6028),
    .ADR1(yX_1_IBUF_5988),
    .ADR2(y_reg[2]),
    .ADR3(y_reg[3]),
    .ADR4(lut218_17_6060),
    .ADR5(1'b1),
    .O(lut234_33_6070)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 32'hF5AFF5AF ))
  lut237_36 (
    .ADR0(yX_0_IBUF_6028),
    .ADR1(1'b1),
    .ADR2(y_reg[2]),
    .ADR3(y_reg[3]),
    .ADR4(1'b1),
    .O(lut237_36_5661)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'h00F000F00F000F00 ))
  lut218_17 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(xY_2_IBUF_6029),
    .ADR5(x_reg[3]),
    .ADR3(x_reg[2]),
    .O(lut218_17_6060)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 1'b0 ))
  x_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_2/CLK ),
    .I(\NlwBufferSignal_x_reg_2/IN ),
    .O(x_reg[2]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'h0008004002001000 ))
  lut220_19 (
    .ADR1(xY_3_IBUF_5987),
    .ADR0(yX_1_IBUF_5988),
    .ADR5(x_reg[3]),
    .ADR3(x_reg[2]),
    .ADR2(y_reg[2]),
    .ADR4(y_reg[3]),
    .O(lut220_19_5986)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y48" ),
    .INIT ( 64'hD42BBD4242BDD42B ))
  lut225_24 (
    .ADR2(lut223_22_5981),
    .ADR0(lut222_21_5982),
    .ADR4(lut216_15_5983),
    .ADR3(lut224_23_5984),
    .ADR1(lut221_20_5985),
    .ADR5(lut220_19_5986),
    .O(lut225_24_5980)
  );
  X_BUF   \lut230_29/lut230_29_CMUX_Delay  (
    .I(lut231_30_pack_2),
    .O(lut231_30_6094)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'h042000B2042000B2 ))
  lut230_29 (
    .ADR1(lut216_15_5983),
    .ADR0(lut221_20_5985),
    .ADR3(lut215_14_6084),
    .ADR2(lut226_25_6067),
    .ADR4(lut220_19_5986),
    .ADR5(1'b1),
    .O(lut230_29_6095)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 32'h13C881CC ))
  lut231_30 (
    .ADR1(lut216_15_5983),
    .ADR0(lut221_20_5985),
    .ADR3(lut215_14_6084),
    .ADR2(lut226_25_6067),
    .ADR4(lut220_19_5986),
    .O(lut231_30_pack_2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y49" ),
    .INIT ( 64'h3C99C36666C3993C ))
  lut233_32 (
    .ADR1(lut215_14_6084),
    .ADR0(lut228_27_6090),
    .ADR2(N1_0),
    .ADR5(lut231_30_6094),
    .ADR4(lut232_31_6000),
    .ADR3(lut230_29_6095),
    .O(lut233_32_6062)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y50" ),
    .INIT ( 64'hF5AF3963C69CF5AF ))
  lut235_34 (
    .ADR1(xY_3_IBUF_5987),
    .ADR0(xY_8_IBUF_6077),
    .ADR3(x_reg[5]),
    .ADR5(x_reg[3]),
    .ADR4(x_reg[2]),
    .ADR2(x_reg[4]),
    .O(lut235_34_6076)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y50" ),
    .INIT ( 64'h42BDBD42BD4242BD ))
  lut227_26 (
    .ADR1(yX_2_IBUF_6005),
    .ADR2(y_reg[3]),
    .ADR0(y_reg[2]),
    .ADR4(lut216_15_5983),
    .ADR5(lut226_25_6067),
    .ADR3(lut220_19_5986),
    .O(lut227_26_6079)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y50" ),
    .INIT ( 64'hFD2FFB4F02D004B0 ))
  lut253_46 (
    .ADR0(yX_6_IBUF_6078),
    .ADR1(y_reg[4]),
    .ADR4(y_reg[5]),
    .ADR3(lut219_18_6061),
    .ADR5(lut225_24_5980),
    .ADR2(lut227_26_6079),
    .O(lut253_46_6064)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y50" ),
    .INIT ( 64'h5965A69AA69A5965 ))
  lut261_54 (
    .ADR1(yX_11_IBUF_6041),
    .ADR3(y_reg[7]),
    .ADR2(y_reg[6]),
    .ADR0(lut241_40_6059),
    .ADR4(lut239_38_6066),
    .ADR5(lut260_53_6025),
    .O(lut261_54_6083)
  );
  X_BUF   \x_reg<7>/x_reg<7>_BMUX_Delay  (
    .I(lut254_47_pack_5),
    .O(lut254_47_6065)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 1'b0 ))
  x_reg_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_7/CLK ),
    .I(\NlwBufferSignal_x_reg_7/IN ),
    .O(x_reg[7]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'hC693396C396CC693 ))
  lut269_62 (
    .ADR1(lut241_40_6059),
    .ADR5(lut239_38_6066),
    .ADR4(lut260_53_6025),
    .ADR3(lut268_61_6048),
    .ADR2(lut267_60_6036),
    .ADR0(lut263_56_6020),
    .O(lut269_62_6056)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 1'b0 ))
  y_reg_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_5/CLK ),
    .I(\NlwBufferSignal_y_reg_5/IN ),
    .O(y_reg[5]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'h060F0F0F09000000 ))
  lut286_74 (
    .ADR3(lut233_32_6062),
    .ADR5(lut285_73_6017),
    .ADR0(lut242_41_6063),
    .ADR4(lut253_46_6064),
    .ADR1(lut254_47_6065),
    .ADR2(lut269_62_6056),
    .O(lut286_74_6054)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'h1188118811881188 ))
  lut215_14 (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(yX_6_IBUF_6078),
    .ADR3(y_reg[4]),
    .ADR0(y_reg[5]),
    .ADR5(1'b1),
    .O(lut215_14_6084)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 32'hE1781E87 ))
  lut254_47 (
    .ADR2(lut219_18_6061),
    .ADR4(lut227_26_6079),
    .ADR1(yX_6_IBUF_6078),
    .ADR3(y_reg[4]),
    .ADR0(y_reg[5]),
    .O(lut254_47_pack_5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y51" ),
    .INIT ( 64'h3C00000003004080 ))
  lut288_76 (
    .ADR0(lut287_75_6080),
    .ADR3(lut233_32_6062),
    .ADR1(lut242_41_6063),
    .ADR4(lut253_46_6064),
    .ADR2(lut261_54_6083),
    .ADR5(lut254_47_6065),
    .O(lut288_76_6057)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 1'b0 ))
  x_reg_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_reg_5/CLK ),
    .I(\NlwBufferSignal_x_reg_5/IN ),
    .O(x_reg[5]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 64'h0000084002100000 ))
  lut257_50 (
    .ADR0(xY_6_IBUF_6008),
    .ADR1(yX_4_IBUF_6009),
    .ADR4(y_reg[4]),
    .ADR3(x_reg[5]),
    .ADR5(y_reg[5]),
    .ADR2(x_reg[4]),
    .O(lut257_50_6007)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 64'h00005415A82A0000 ))
  lut256_49 (
    .ADR1(yX_5_IBUF_5994),
    .ADR0(xY_13_IBUF_5995),
    .ADR5(x_reg[6]),
    .ADR4(x_reg[7]),
    .ADR3(y_reg[4]),
    .ADR2(y_reg[5]),
    .O(lut256_49_6096)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 1'b0 ))
  y_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_reg_4/CLK ),
    .I(\NlwBufferSignal_y_reg_4/IN ),
    .O(y_reg[4]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 64'hFCA9C095A903953F ))
  lut258_51 (
    .ADR1(yX_0_IBUF_6028),
    .ADR0(xY_2_IBUF_6029),
    .ADR5(x_reg[3]),
    .ADR3(x_reg[2]),
    .ADR4(y_reg[3]),
    .ADR2(y_reg[2]),
    .O(lut258_51_6097)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y52" ),
    .INIT ( 64'hFFC3F3F0F3F0FFC3 ))
  lut260_53 (
    .ADR0(1'b1),
    .ADR5(lut240_39_6026),
    .ADR2(lut256_49_6096),
    .ADR3(lut259_52_6027),
    .ADR1(lut257_50_6007),
    .ADR4(lut258_51_6097),
    .O(lut260_53_6025)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y53" ),
    .INIT ( 64'hF2F4000020400000 ))
  lut268_61 (
    .ADR0(xY_12_IBUF_6006),
    .ADR1(x_reg[6]),
    .ADR3(x_reg[7]),
    .ADR4(lut264_57_6016),
    .ADR2(lut265_58_6013),
    .ADR5(lut266_59_6014),
    .O(lut268_61_6048)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y53" ),
    .INIT ( 64'h0AC6390A509C6350 ))
  lut265_58 (
    .ADR1(yX_4_IBUF_6009),
    .ADR0(xY_6_IBUF_6008),
    .ADR5(x_reg[5]),
    .ADR3(y_reg[4]),
    .ADR4(y_reg[5]),
    .ADR2(x_reg[4]),
    .O(lut265_58_6013)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y53" ),
    .INIT ( 64'hF5AFC69CC69C0A50 ))
  lut262_55 (
    .ADR1(yX_0_IBUF_6028),
    .ADR0(xY_7_IBUF_6086),
    .ADR3(x_reg[5]),
    .ADR2(x_reg[4]),
    .ADR4(y_reg[2]),
    .ADR5(y_reg[3]),
    .O(lut262_55_6098)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y53" ),
    .INIT ( 64'h17E8E817E81717E8 ))
  lut263_56 (
    .ADR1(xY_2_IBUF_6029),
    .ADR0(x_reg[3]),
    .ADR2(x_reg[2]),
    .ADR3(lut259_52_6027),
    .ADR4(lut257_50_6007),
    .ADR5(lut262_55_6098),
    .O(lut263_56_6020)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y54" ),
    .INIT ( 64'h1E87E17800000000 ))
  lut305_88 (
    .ADR5(lut304_87_0),
    .ADR4(lut282_70_6032),
    .ADR2(x_reg[4]),
    .ADR0(xY_11_IBUF_5999),
    .ADR1(x_reg[7]),
    .ADR3(x_reg[6]),
    .O(lut305_88_6052)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y54" ),
    .INIT ( 64'hF3A6A60CCF9A9A30 ))
  lut282_70 (
    .ADR0(yX_3_IBUF_6033),
    .ADR1(xY_5_IBUF_6034),
    .ADR5(x_reg[5]),
    .ADR3(y_reg[4]),
    .ADR4(y_reg[5]),
    .ADR2(x_reg[4]),
    .O(lut282_70_6032)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y54" ),
    .INIT ( 64'hFFFF0A500A500000 ))
  lut283_71 (
    .ADR1(1'b1),
    .ADR4(x_reg[4]),
    .ADR3(x_reg[7]),
    .ADR2(x_reg[6]),
    .ADR0(xY_11_IBUF_5999),
    .ADR5(lut282_70_6032),
    .O(lut283_71_6019)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'h1C04E3FB7C1C83E3 ))
  lut255_48 (
    .ADR1(lut215_14_6084),
    .ADR0(lut219_18_6061),
    .ADR2(lut225_24_5980),
    .ADR3(lut227_26_6079),
    .ADR4(lut233_32_6062),
    .ADR5(lut242_41_6063),
    .O(lut255_48_6089)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 1'b0 ))
  z_reg_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_2/CLK ),
    .I(lut270_63_5858),
    .O(z_reg[2]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'hDB42424209900000 ))
  lut270_63 (
    .ADR0(lut242_41_6063),
    .ADR2(lut253_46_6064),
    .ADR3(lut261_54_6083),
    .ADR1(lut254_47_6065),
    .ADR4(lut269_62_6056),
    .ADR5(lut255_48_6089),
    .O(lut270_63_5858)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 1'b0 ))
  z_reg_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_1/CLK ),
    .I(lut248_44_5866),
    .O(z_reg[1]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'hE3F983E304001C04 ))
  lut248_44 (
    .ADR5(lut233_32_6062),
    .ADR2(lut225_24_5980),
    .ADR1(lut215_14_6084),
    .ADR3(lut227_26_6079),
    .ADR0(lut219_18_6061),
    .ADR4(lut242_41_6063),
    .O(lut248_44_5866)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 1'b0 ))
  z_reg_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_0/CLK ),
    .I(lut243_42_5874),
    .O(z_reg[0]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y50" ),
    .INIT ( 64'h1C0483E37C1C0283 ))
  lut243_42 (
    .ADR4(lut233_32_6062),
    .ADR1(lut215_14_6084),
    .ADR2(lut225_24_5980),
    .ADR3(lut227_26_6079),
    .ADR0(lut219_18_6061),
    .ADR5(lut242_41_6063),
    .O(lut243_42_5874)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  z_reg_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_4/CLK ),
    .I(lut291_79_5884),
    .O(z_reg[4]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 64'h00FF000F0000000F ))
  lut291_79 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(lut269_62_6056),
    .ADR2(lut290_78_6040),
    .ADR5(lut288_76_6057),
    .ADR3(lut286_74_6054),
    .O(lut291_79_5884)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 1'b0 ))
  z_reg_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_3/CLK ),
    .I(\][87_66_5890 ),
    .O(z_reg[3]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y51" ),
    .INIT ( 64'h044402228D5D4EAE ))
  \][87_66  (
    .ADR0(lut254_47_6065),
    .ADR4(lut242_41_6063),
    .ADR2(lut269_62_6056),
    .ADR3(lut261_54_6083),
    .ADR1(lut253_46_6064),
    .ADR5(lut255_48_6089),
    .O(\][87_66_5890 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y52" ),
    .INIT ( 64'h0A05000000000000 ))
  lut297_82 (
    .ADR1(1'b1),
    .ADR2(lut285_73_6017),
    .ADR5(lut253_46_6064),
    .ADR4(lut233_32_6062),
    .ADR3(lut254_47_6065),
    .ADR0(lut242_41_6063),
    .O(lut297_82_6099)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y52" ),
    .INIT ( 1'b0 ))
  z_reg_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_z_reg_5/CLK ),
    .I(\][97_84_5905 ),
    .O(z_reg[5]),
    .RST(\][IN_virtPIBox_52_94 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y52" ),
    .INIT ( 64'h0F0F00006FFF60F0 ))
  \][97_84  (
    .ADR2(lut269_62_6056),
    .ADR5(lut288_76_6057),
    .ADR1(lut280_68_6015),
    .ADR0(lut263_56_6020),
    .ADR3(lut296_81_0),
    .ADR4(lut297_82_6099),
    .O(\][97_84_5905 )
  );
  X_BUF   \NlwBufferBlock_z_10_OBUF/I  (
    .I(z_reg[4]),
    .O(\NlwBufferSignal_z_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_11_OBUF/I  (
    .I(z_reg[5]),
    .O(\NlwBufferSignal_z_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_12_OBUF/I  (
    .I(z_reg[6]),
    .O(\NlwBufferSignal_z_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_13_OBUF/I  (
    .I(z_reg[7]),
    .O(\NlwBufferSignal_z_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_6_OBUF/I  (
    .I(z_reg[0]),
    .O(\NlwBufferSignal_z_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_7_OBUF/I  (
    .I(z_reg[1]),
    .O(\NlwBufferSignal_z_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_8_OBUF/I  (
    .I(z_reg[2]),
    .O(\NlwBufferSignal_z_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z_9_OBUF/I  (
    .I(z_reg[3]),
    .O(\NlwBufferSignal_z_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_6082 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_3/IN  (
    .I(x_3_IBUF_6031),
    .O(\NlwBufferSignal_x_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_1/IN  (
    .I(x_1_IBUF_6024),
    .O(\NlwBufferSignal_x_reg_1/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_0/IN  (
    .I(x_0_IBUF_6023),
    .O(\NlwBufferSignal_x_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_z_reg_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_7/IN  (
    .I(y_7_IBUF_5978),
    .O(\NlwBufferSignal_y_reg_7/IN )
  );
  X_BUF   \NlwBufferBlock_z_reg_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_6/IN  (
    .I(y_6_IBUF_5975),
    .O(\NlwBufferSignal_y_reg_6/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_4/IN  (
    .I(x_4_IBUF_6035),
    .O(\NlwBufferSignal_x_reg_4/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_6/IN  (
    .I(x_6_IBUF_6042),
    .O(\NlwBufferSignal_x_reg_6/IN )
  );
  X_BUF   \NlwBufferBlock_y_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_3/IN  (
    .I(y_3_IBUF_6046),
    .O(\NlwBufferSignal_y_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_y_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_2/IN  (
    .I(y_2_IBUF_6043),
    .O(\NlwBufferSignal_y_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_2/IN  (
    .I(x_2_IBUF_6030),
    .O(\NlwBufferSignal_x_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_7/IN  (
    .I(x_7_IBUF_6045),
    .O(\NlwBufferSignal_x_reg_7/IN )
  );
  X_BUF   \NlwBufferBlock_y_reg_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_5/IN  (
    .I(y_5_IBUF_5971),
    .O(\NlwBufferSignal_y_reg_5/IN )
  );
  X_BUF   \NlwBufferBlock_x_reg_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_x_reg_5/IN  (
    .I(x_5_IBUF_6039),
    .O(\NlwBufferSignal_x_reg_5/IN )
  );
  X_BUF   \NlwBufferBlock_y_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_y_reg_4/IN  (
    .I(y_4_IBUF_6049),
    .O(\NlwBufferSignal_y_reg_4/IN )
  );
  X_BUF   \NlwBufferBlock_z_reg_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_z_reg_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_z_reg_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_z_reg_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_z_reg_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_z_reg_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_z_reg_5/CLK )
  );
  X_ZERO   NlwBlock_OM_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_OM_top_VCC (
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

