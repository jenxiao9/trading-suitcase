//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Wed Nov  7 10:44:06 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=5,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_mig7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (GPIO_SW_E,
    GPIO_SW_N,
    GPIO_SW_S,
    LED,
    SW,
    SYSCLK_N,
    SYSCLK_P);
  input GPIO_SW_E;
  input GPIO_SW_N;
  input GPIO_SW_S;
  output [7:0]LED;
  input [7:0]SW;
  input SYSCLK_N;
  input SYSCLK_P;

  wire [0:0]BLSControllerWrapper_0_BS_START;
  wire [7:0]BLSControllerWrapper_0_LED;
  wire [0:0]BLSControllerWrapper_0_SERVE_REG;
  wire BlkSchlsEqEuroNoDiv_0_ap_done;
  wire BlkSchlsEqEuroNoDiv_0_ap_idle;
  wire BlkSchlsEqEuroNoDiv_0_ap_ready;
  wire [31:0]BlkSchlsEqEuroNoDiv_0_ap_return;
  wire [31:0]Constants_0_otype;
  wire [31:0]Constants_0_rate;
  wire [31:0]Constants_0_sptprice;
  wire [31:0]Constants_0_strike;
  wire [31:0]Constants_0_time_r;
  wire [31:0]Constants_0_timet;
  wire [31:0]Constants_0_volatility;
  wire DataManagerWrapper_0_F_START;
  wire DataManagerWrapper_0_OutOfData;
  wire [31:0]DataManagerWrapper_0_inc;
  wire DataManagerWrapper_0_regEn;
  wire GPIO_SW_N_1;
  wire GPIO_SW_S_1;
  wire [7:0]Mux2to1Wrapper_0_Q;
  wire PacketRegisterWrapper_0_hasUnusedData;
  wire [31:0]PacketRegisterWrapper_0_otype;
  wire [31:0]PacketRegisterWrapper_0_rate;
  wire [31:0]PacketRegisterWrapper_0_sptprice;
  wire [31:0]PacketRegisterWrapper_0_strike;
  wire [31:0]PacketRegisterWrapper_0_time_r;
  wire [31:0]PacketRegisterWrapper_0_timet;
  wire [31:0]PacketRegisterWrapper_0_volatility;
  wire [7:0]SW_1;
  wire clk_in1_n_1;
  wire clk_in1_p_1;
  wire clk_wiz_0_clk_out1;
  wire datafake_0_ap_done;
  wire datafake_0_ap_idle;
  wire datafake_0_ap_ready;
  wire [127:0]datafake_0_ap_return;
  wire reset_rtl_1;
  wire [223:0]xlconcat_0_dout;
  wire [7:0]xlslice_0_Dout;
  wire [31:0]xlslice_1_Dout;
  wire [31:0]xlslice_3_Dout;
  wire [31:0]xlslice_5_Dout;
  wire [31:0]xlslice_6_Dout;

  assign GPIO_SW_N_1 = GPIO_SW_N;
  assign GPIO_SW_S_1 = GPIO_SW_S;
  assign LED[7:0] = Mux2to1Wrapper_0_Q;
  assign SW_1 = SW[7:0];
  assign clk_in1_n_1 = SYSCLK_N;
  assign clk_in1_p_1 = SYSCLK_P;
  assign reset_rtl_1 = GPIO_SW_E;
  design_1_BLSControllerWrapper_0_0 BLSControllerWrapper_0
       (.BS_DONE(BlkSchlsEqEuroNoDiv_0_ap_done),
        .BS_IDLE(BlkSchlsEqEuroNoDiv_0_ap_idle),
        .BS_READY(BlkSchlsEqEuroNoDiv_0_ap_ready),
        .BS_START(BLSControllerWrapper_0_BS_START),
        .LED(BLSControllerWrapper_0_LED),
        .OutOfData(DataManagerWrapper_0_OutOfData),
        .SERVE_REG(BLSControllerWrapper_0_SERVE_REG),
        .clock(clk_wiz_0_clk_out1),
        .hasUnusedData(PacketRegisterWrapper_0_hasUnusedData),
        .reset(reset_rtl_1),
        .startSystem(GPIO_SW_S_1));
  design_1_BlkSchlsEqEuroNoDiv_0_0 BlkSchlsEqEuroNoDiv_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_done(BlkSchlsEqEuroNoDiv_0_ap_done),
        .ap_idle(BlkSchlsEqEuroNoDiv_0_ap_idle),
        .ap_ready(BlkSchlsEqEuroNoDiv_0_ap_ready),
        .ap_return(BlkSchlsEqEuroNoDiv_0_ap_return),
        .ap_rst(reset_rtl_1),
        .ap_start(BLSControllerWrapper_0_BS_START),
        .otype(PacketRegisterWrapper_0_otype),
        .rate(PacketRegisterWrapper_0_rate),
        .sptprice(PacketRegisterWrapper_0_sptprice),
        .strike(PacketRegisterWrapper_0_strike),
        .time_r(PacketRegisterWrapper_0_time_r),
        .timet(PacketRegisterWrapper_0_timet),
        .volatility(PacketRegisterWrapper_0_volatility));
  design_1_Constants_0_0 Constants_0
       (.otype(Constants_0_otype),
        .rate(Constants_0_rate),
        .sptprice(Constants_0_sptprice),
        .strike(Constants_0_strike),
        .time_r(Constants_0_time_r),
        .timet(Constants_0_timet),
        .volatility(Constants_0_volatility));
  design_1_DataManagerWrapper_0_0 DataManagerWrapper_0
       (.F_DONE(datafake_0_ap_done),
        .F_IDLE(datafake_0_ap_idle),
        .F_READY(datafake_0_ap_ready),
        .F_START(DataManagerWrapper_0_F_START),
        .OutOfData(DataManagerWrapper_0_OutOfData),
        .SERVE_REG(BLSControllerWrapper_0_SERVE_REG),
        .SW(SW_1),
        .clock(clk_wiz_0_clk_out1),
        .inc(DataManagerWrapper_0_inc),
        .regEn(DataManagerWrapper_0_regEn),
        .reset(reset_rtl_1));
  design_1_Mux2to1Wrapper_0_0 Mux2to1Wrapper_0
       (.Q(Mux2to1Wrapper_0_Q),
        .d1(xlslice_0_Dout),
        .d2(BLSControllerWrapper_0_LED),
        .sel(GPIO_SW_N_1));
  design_1_PacketRegisterWrapper_0_0 PacketRegisterWrapper_0
       (.BS_READY(BlkSchlsEqEuroNoDiv_0_ap_ready),
        .clock(clk_wiz_0_clk_out1),
        .en(DataManagerWrapper_0_regEn),
        .hasUnusedData(PacketRegisterWrapper_0_hasUnusedData),
        .inD(xlconcat_0_dout),
        .otype(PacketRegisterWrapper_0_otype),
        .rate(PacketRegisterWrapper_0_rate),
        .reset(reset_rtl_1),
        .sptprice(PacketRegisterWrapper_0_sptprice),
        .strike(PacketRegisterWrapper_0_strike),
        .time_r(PacketRegisterWrapper_0_time_r),
        .timet(PacketRegisterWrapper_0_timet),
        .volatility(PacketRegisterWrapper_0_volatility));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_in1_n_1),
        .clk_in1_p(clk_in1_p_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  design_1_datafake_0_1 datafake_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_done(datafake_0_ap_done),
        .ap_idle(datafake_0_ap_idle),
        .ap_ready(datafake_0_ap_ready),
        .ap_return(datafake_0_ap_return),
        .ap_rst(reset_rtl_1),
        .ap_start(DataManagerWrapper_0_F_START),
        .inc(DataManagerWrapper_0_inc),
        .rate(Constants_0_rate),
        .sptprice(Constants_0_sptprice),
        .strike(Constants_0_strike),
        .time_r(Constants_0_time_r));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(Constants_0_timet),
        .In1(Constants_0_otype),
        .In2(xlslice_6_Dout),
        .In3(Constants_0_volatility),
        .In4(xlslice_5_Dout),
        .In5(xlslice_3_Dout),
        .In6(xlslice_1_Dout),
        .dout(xlconcat_0_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(BlkSchlsEqEuroNoDiv_0_ap_return),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(datafake_0_ap_return),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_1_2 xlslice_3
       (.Din(datafake_0_ap_return),
        .Dout(xlslice_3_Dout));
  design_1_xlslice_1_4 xlslice_5
       (.Din(datafake_0_ap_return),
        .Dout(xlslice_5_Dout));
  design_1_xlslice_1_5 xlslice_6
       (.Din(datafake_0_ap_return),
        .Dout(xlslice_6_Dout));
endmodule
