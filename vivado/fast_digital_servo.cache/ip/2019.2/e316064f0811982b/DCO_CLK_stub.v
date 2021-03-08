// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Mar  8 13:46:24 2021
// Host        : whooper running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DCO_CLK_stub.v
// Design      : DCO_CLK
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_out1, clk_out2, clk_out3, reset, locked, 
  clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
