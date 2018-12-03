// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Oct 27 00:58:09 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_BlkSchlsEqEuroNoDiv_0_1_stub.v
// Design      : design_1_BlkSchlsEqEuroNoDiv_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BlkSchlsEqEuroNoDiv,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sptprice, strike, rate, volatility, time_r, otype, 
  timet, ap_clk, ap_rst, ap_return, ap_done, ap_start, ap_ready, ap_idle)
/* synthesis syn_black_box black_box_pad_pin="sptprice[31:0],strike[31:0],rate[31:0],volatility[31:0],time_r[31:0],otype[31:0],timet[31:0],ap_clk,ap_rst,ap_return[31:0],ap_done,ap_start,ap_ready,ap_idle" */;
  input [31:0]sptprice;
  input [31:0]strike;
  input [31:0]rate;
  input [31:0]volatility;
  input [31:0]time_r;
  input [31:0]otype;
  input [31:0]timet;
  input ap_clk;
  input ap_rst;
  output [31:0]ap_return;
  output ap_done;
  input ap_start;
  output ap_ready;
  output ap_idle;
endmodule
