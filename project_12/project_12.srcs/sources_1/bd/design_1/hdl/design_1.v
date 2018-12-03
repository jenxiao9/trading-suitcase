//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Dec  2 21:51:46 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=6,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_mig7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (GPIO_SW_E,
    GPIO_SW_N,
    GPIO_SW_S,
    RX,
    SW,
    SYSCLK_N,
    SYSCLK_P);
  input GPIO_SW_E;
  input GPIO_SW_N;
  input GPIO_SW_S;
  input RX;
  input [7:0]SW;
  input SYSCLK_N;
  input SYSCLK_P;

  wire [0:0]BLSControllerWrapper_0_BS_START;
  wire [0:0]BLSControllerWrapper_0_SERVE_REG;
  wire BlkSchlsEqEuroNoDiv_0_ap_done;
  wire BlkSchlsEqEuroNoDiv_0_ap_idle;
  wire BlkSchlsEqEuroNoDiv_0_ap_ready;
  wire [31:0]BlkSchlsEqEuroNoDiv_0_ap_return;
  wire [7:0]ControlModuleWrapper_0_UART_DATA;
  wire ControlModuleWrapper_0_done;
  wire DataManagerWrapper_0_OutOfData;
  wire DataManagerWrapper_0_regEn;
  wire GPIO_SW_S_1;
  wire [31:0]Mux2to1Wrapper_0_Q;
  wire PacketRegisterWrapper_0_hasUnusedData;
  wire [31:0]PacketRegisterWrapper_0_otype;
  wire [31:0]PacketRegisterWrapper_0_rate;
  wire [31:0]PacketRegisterWrapper_0_sptprice;
  wire [31:0]PacketRegisterWrapper_0_strike;
  wire [31:0]PacketRegisterWrapper_0_time_r;
  wire [31:0]PacketRegisterWrapper_0_volatility;
  wire RX_1;
  wire [7:0]SW_1;
  wire [31:0]UARTTOMEMWrapper_0_dataToA;
  wire clk_in1_n_1;
  wire clk_in1_p_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_1;

  assign GPIO_SW_S_1 = GPIO_SW_S;
  assign RX_1 = RX;
  assign SW_1 = SW[7:0];
  assign clk_in1_n_1 = SYSCLK_N;
  assign clk_in1_p_1 = SYSCLK_P;
  assign reset_rtl_1 = GPIO_SW_E;
  design_1_BLSControllerWrapper_0_0 BLSControllerWrapper_0
       (.BS_DONE(BlkSchlsEqEuroNoDiv_0_ap_done),
        .BS_IDLE(BlkSchlsEqEuroNoDiv_0_ap_idle),
        .BS_READY(BlkSchlsEqEuroNoDiv_0_ap_ready),
        .BS_START(BLSControllerWrapper_0_BS_START),
        .OutOfData(DataManagerWrapper_0_OutOfData),
        .REG_READY(1'b0),
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
        .volatility(PacketRegisterWrapper_0_volatility));
  design_1_ControlModuleWrapper_0_0 ControlModuleWrapper_0
       (.RX(RX_1),
        .UART_DATA(ControlModuleWrapper_0_UART_DATA),
        .clock(clk_wiz_0_clk_out1),
        .done(ControlModuleWrapper_0_done),
        .reset(reset_rtl_1));
  design_1_DataManagerWrapper_0_0 DataManagerWrapper_0
       (.F_DONE(1'b0),
        .F_IDLE(1'b0),
        .F_READY(1'b0),
        .OutOfData(DataManagerWrapper_0_OutOfData),
        .SERVE_REG(BLSControllerWrapper_0_SERVE_REG),
        .SW(SW_1),
        .clock(clk_wiz_0_clk_out1),
        .regEn(DataManagerWrapper_0_regEn),
        .reset(reset_rtl_1));
  design_1_PacketRegisterWrapper_0_0 PacketRegisterWrapper_0
       (.BS_READY(BlkSchlsEqEuroNoDiv_0_ap_ready),
        .clock(clk_wiz_0_clk_out1),
        .en(DataManagerWrapper_0_regEn),
        .hasUnusedData(PacketRegisterWrapper_0_hasUnusedData),
        .inD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .inD2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .otype(PacketRegisterWrapper_0_otype),
        .rate(PacketRegisterWrapper_0_rate),
        .reset(reset_rtl_1),
        .sptprice(PacketRegisterWrapper_0_sptprice),
        .strike(PacketRegisterWrapper_0_strike),
        .time_r(PacketRegisterWrapper_0_time_r),
        .volatility(PacketRegisterWrapper_0_volatility));
  design_1_UARTTOMEMWrapper_0_0 UARTTOMEMWrapper_0
       (.UART_DATA(ControlModuleWrapper_0_UART_DATA),
        .UART_DONE(ControlModuleWrapper_0_done),
        .clock(clk_wiz_0_clk_out1),
        .dataToA(UARTTOMEMWrapper_0_dataToA),
        .reset(reset_rtl_1));
  design_1_Mux2to1Wrapper_0_3 addrA_Sel_0
       (.Q(Mux2to1Wrapper_0_Q),
        .d0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .d1(UARTTOMEMWrapper_0_dataToA),
        .d2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .d3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sel({1'b0,1'b0}));
  design_1_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(1'b0),
        .clkb(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ena(1'b0),
        .enb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
        .wea({1'b0,1'b0,1'b0,1'b0}),
        .web({1'b0,1'b0,1'b0,1'b0}));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(Mux2to1Wrapper_0_Q),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clk_wiz_0_clk_out1),
        .clkb(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ena(1'b0),
        .enb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
        .wea({1'b0,1'b0,1'b0,1'b0}),
        .web({1'b0,1'b0,1'b0,1'b0}));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_in1_n_1),
        .clk_in1_p(clk_in1_p_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  design_1_xlslice_0_0 xlslice_0
       (.Din(BlkSchlsEqEuroNoDiv_0_ap_return));
endmodule
