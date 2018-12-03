//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sat Oct 27 22:52:24 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (GPIO_SW_N,
    GPIO_SW_S,
    LED,
    SYSCLK_N,
    SYSCLK_P);
  input [0:0]GPIO_SW_N;
  input GPIO_SW_S;
  output [7:0]LED;
  input SYSCLK_N;
  input SYSCLK_P;

  wire GPIO_SW_S_1;
  wire [0:0]In1_1;
  wire SYSCLK_N_1;
  wire SYSCLK_P_1;
  wire WaitForInput_0_ap_done;
  wire [7:0]WaitForInput_0_ap_return;
  wire clk_wiz_0_clk_out1;
  wire [7:0]xlconcat_0_dout;
  wire [7:0]xlconcat_1_dout;
  wire [6:0]xlconstant_0_dout;
  wire [6:0]xlslice_0_Dout;

  assign GPIO_SW_S_1 = GPIO_SW_S;
  assign In1_1 = GPIO_SW_N[0];
  assign LED[7:0] = xlconcat_1_dout;
  assign SYSCLK_N_1 = SYSCLK_N;
  assign SYSCLK_P_1 = SYSCLK_P;
  design_2_WaitForInput_0_1 WaitForInput_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_done(WaitForInput_0_ap_done),
        .ap_return(WaitForInput_0_ap_return),
        .ap_rst(1'b0),
        .ap_start(GPIO_SW_S_1),
        .in_r(xlconcat_0_dout));
  design_2_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(SYSCLK_N_1),
        .clk_in1_p(SYSCLK_P_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(1'b0));
  design_2_xlconcat_0_1 xlconcat_0
       (.In0(xlconstant_0_dout),
        .In1(In1_1),
        .dout(xlconcat_0_dout));
  design_2_xlconcat_1_0 xlconcat_1
       (.In0(xlslice_0_Dout),
        .In1(WaitForInput_0_ap_done),
        .dout(xlconcat_1_dout));
  design_2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_2_xlslice_0_0 xlslice_0
       (.Din(WaitForInput_0_ap_return),
        .Dout(xlslice_0_Dout));
endmodule
