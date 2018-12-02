//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Dec  2 00:20:15 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CTS,
    GPIO_SW_E,
    GPIO_SW_N,
    GPIO_SW_S,
    LED,
    RTS,
    RX,
    SYSCLK_N,
    SYSCLK_P,
    TX);
  input CTS;
  input GPIO_SW_E;
  input GPIO_SW_N;
  input GPIO_SW_S;
  output [7:0]LED;
  output RTS;
  input RX;
  input SYSCLK_N;
  input SYSCLK_P;
  output TX;

  wire CTS_1_1;
  wire [7:0]ControlModuleWrapper_0_LED;
  wire ControlModuleWrapper_0_RTS;
  wire ControlModuleWrapper_0_TX;
  wire GPIO_SW_E_1_1;
  wire GPIO_SW_S_1;
  wire RX_1;
  wire clk_in1_n_1;
  wire clk_in1_p_1;
  wire clk_wiz_0_clk_out1;
  wire reset_1;

  assign CTS_1_1 = CTS;
  assign GPIO_SW_E_1_1 = GPIO_SW_N;
  assign GPIO_SW_S_1 = GPIO_SW_S;
  assign LED[7:0] = ControlModuleWrapper_0_LED;
  assign RTS = ControlModuleWrapper_0_RTS;
  assign RX_1 = RX;
  assign TX = ControlModuleWrapper_0_TX;
  assign clk_in1_n_1 = SYSCLK_N;
  assign clk_in1_p_1 = SYSCLK_P;
  assign reset_1 = GPIO_SW_E;
  design_1_ControlModuleWrapper_0_1 ControlModuleWrapper_0
       (.CTS(CTS_1_1),
        .GPIO_SW_E(GPIO_SW_E_1_1),
        .GPIO_SW_S(GPIO_SW_S_1),
        .LED(ControlModuleWrapper_0_LED),
        .RTS(ControlModuleWrapper_0_RTS),
        .RX(RX_1),
        .TX(ControlModuleWrapper_0_TX),
        .clock(clk_wiz_0_clk_out1),
        .reset(reset_1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_in1_n_1),
        .clk_in1_p(clk_in1_p_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
endmodule
