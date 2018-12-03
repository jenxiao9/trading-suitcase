// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Mon Nov  5 10:34:21 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_PacketRegisterWrapper_0_0/design_1_PacketRegisterWrapper_0_0_sim_netlist.v
// Design      : design_1_PacketRegisterWrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PacketRegisterWrapper_0_0,PacketRegisterWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PacketRegisterWrapper,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_PacketRegisterWrapper_0_0
   (clock,
    reset,
    en,
    BS_READY,
    inD,
    hasUnusedData,
    sptprice,
    strike,
    rate,
    volatility,
    time_r,
    otype,
    timet);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input en;
  input BS_READY;
  input [223:0]inD;
  output hasUnusedData;
  output [31:0]sptprice;
  output [31:0]strike;
  output [31:0]rate;
  output [31:0]volatility;
  output [31:0]time_r;
  output [31:0]otype;
  output [31:0]timet;

  wire BS_READY;
  wire clock;
  wire en;
  wire hasUnusedData;
  wire [223:0]inD;
  wire [31:0]otype;
  wire [31:0]rate;
  wire reset;
  wire [31:0]sptprice;
  wire [31:0]strike;
  wire [31:0]time_r;
  wire [31:0]timet;
  wire [31:0]volatility;

  design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper inst
       (.BS_READY(BS_READY),
        .clock(clock),
        .en(en),
        .hasUnusedData(hasUnusedData),
        .inD(inD),
        .otype(otype),
        .rate(rate),
        .reset(reset),
        .sptprice(sptprice),
        .strike(strike),
        .time_r(time_r),
        .timet(timet),
        .volatility(volatility));
endmodule

(* ORIG_REF_NAME = "PacketRegister" *) 
module design_1_PacketRegisterWrapper_0_0_PacketRegister
   (sptprice,
    strike,
    rate,
    volatility,
    time_r,
    otype,
    timet,
    hasUnusedData,
    BS_READY,
    clock,
    en,
    inD,
    reset);
  output [31:0]sptprice;
  output [31:0]strike;
  output [31:0]rate;
  output [31:0]volatility;
  output [31:0]time_r;
  output [31:0]otype;
  output [31:0]timet;
  output hasUnusedData;
  input BS_READY;
  input clock;
  input en;
  input [223:0]inD;
  input reset;

  wire BS_READY;
  wire clock;
  wire en;
  wire hasUnusedData;
  wire hasUnusedData_i_1_n_0;
  wire [223:0]inD;
  wire [31:0]otype;
  wire prevBS_READY;
  wire [31:0]rate;
  wire reset;
  wire [31:0]sptprice;
  wire [31:0]strike;
  wire [31:0]time_r;
  wire [31:0]timet;
  wire [31:0]volatility;

  LUT4 #(
    .INIT(16'hEFAA)) 
    hasUnusedData_i_1
       (.I0(en),
        .I1(prevBS_READY),
        .I2(BS_READY),
        .I3(hasUnusedData),
        .O(hasUnusedData_i_1_n_0));
  FDCE hasUnusedData_reg
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(hasUnusedData_i_1_n_0),
        .Q(hasUnusedData));
  FDCE \otype_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[32]),
        .Q(otype[0]));
  FDCE \otype_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[42]),
        .Q(otype[10]));
  FDCE \otype_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[43]),
        .Q(otype[11]));
  FDCE \otype_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[44]),
        .Q(otype[12]));
  FDCE \otype_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[45]),
        .Q(otype[13]));
  FDCE \otype_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[46]),
        .Q(otype[14]));
  FDCE \otype_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[47]),
        .Q(otype[15]));
  FDCE \otype_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[48]),
        .Q(otype[16]));
  FDCE \otype_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[49]),
        .Q(otype[17]));
  FDCE \otype_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[50]),
        .Q(otype[18]));
  FDCE \otype_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[51]),
        .Q(otype[19]));
  FDCE \otype_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[33]),
        .Q(otype[1]));
  FDCE \otype_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[52]),
        .Q(otype[20]));
  FDCE \otype_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[53]),
        .Q(otype[21]));
  FDCE \otype_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[54]),
        .Q(otype[22]));
  FDCE \otype_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[55]),
        .Q(otype[23]));
  FDCE \otype_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[56]),
        .Q(otype[24]));
  FDCE \otype_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[57]),
        .Q(otype[25]));
  FDCE \otype_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[58]),
        .Q(otype[26]));
  FDCE \otype_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[59]),
        .Q(otype[27]));
  FDCE \otype_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[60]),
        .Q(otype[28]));
  FDCE \otype_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[61]),
        .Q(otype[29]));
  FDCE \otype_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[34]),
        .Q(otype[2]));
  FDCE \otype_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[62]),
        .Q(otype[30]));
  FDCE \otype_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[63]),
        .Q(otype[31]));
  FDCE \otype_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[35]),
        .Q(otype[3]));
  FDCE \otype_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[36]),
        .Q(otype[4]));
  FDCE \otype_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[37]),
        .Q(otype[5]));
  FDCE \otype_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[38]),
        .Q(otype[6]));
  FDCE \otype_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[39]),
        .Q(otype[7]));
  FDCE \otype_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[40]),
        .Q(otype[8]));
  FDCE \otype_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[41]),
        .Q(otype[9]));
  FDRE prevBS_READY_reg
       (.C(clock),
        .CE(1'b1),
        .D(BS_READY),
        .Q(prevBS_READY),
        .R(1'b0));
  FDCE \rate_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[128]),
        .Q(rate[0]));
  FDCE \rate_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[138]),
        .Q(rate[10]));
  FDCE \rate_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[139]),
        .Q(rate[11]));
  FDCE \rate_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[140]),
        .Q(rate[12]));
  FDCE \rate_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[141]),
        .Q(rate[13]));
  FDCE \rate_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[142]),
        .Q(rate[14]));
  FDCE \rate_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[143]),
        .Q(rate[15]));
  FDCE \rate_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[144]),
        .Q(rate[16]));
  FDCE \rate_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[145]),
        .Q(rate[17]));
  FDCE \rate_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[146]),
        .Q(rate[18]));
  FDCE \rate_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[147]),
        .Q(rate[19]));
  FDCE \rate_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[129]),
        .Q(rate[1]));
  FDCE \rate_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[148]),
        .Q(rate[20]));
  FDCE \rate_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[149]),
        .Q(rate[21]));
  FDCE \rate_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[150]),
        .Q(rate[22]));
  FDCE \rate_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[151]),
        .Q(rate[23]));
  FDCE \rate_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[152]),
        .Q(rate[24]));
  FDCE \rate_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[153]),
        .Q(rate[25]));
  FDCE \rate_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[154]),
        .Q(rate[26]));
  FDCE \rate_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[155]),
        .Q(rate[27]));
  FDCE \rate_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[156]),
        .Q(rate[28]));
  FDCE \rate_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[157]),
        .Q(rate[29]));
  FDCE \rate_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[130]),
        .Q(rate[2]));
  FDCE \rate_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[158]),
        .Q(rate[30]));
  FDCE \rate_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[159]),
        .Q(rate[31]));
  FDCE \rate_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[131]),
        .Q(rate[3]));
  FDCE \rate_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[132]),
        .Q(rate[4]));
  FDCE \rate_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[133]),
        .Q(rate[5]));
  FDCE \rate_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[134]),
        .Q(rate[6]));
  FDCE \rate_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[135]),
        .Q(rate[7]));
  FDCE \rate_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[136]),
        .Q(rate[8]));
  FDCE \rate_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[137]),
        .Q(rate[9]));
  FDCE \sptprice_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[192]),
        .Q(sptprice[0]));
  FDCE \sptprice_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[202]),
        .Q(sptprice[10]));
  FDCE \sptprice_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[203]),
        .Q(sptprice[11]));
  FDCE \sptprice_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[204]),
        .Q(sptprice[12]));
  FDCE \sptprice_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[205]),
        .Q(sptprice[13]));
  FDCE \sptprice_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[206]),
        .Q(sptprice[14]));
  FDCE \sptprice_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[207]),
        .Q(sptprice[15]));
  FDCE \sptprice_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[208]),
        .Q(sptprice[16]));
  FDCE \sptprice_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[209]),
        .Q(sptprice[17]));
  FDCE \sptprice_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[210]),
        .Q(sptprice[18]));
  FDCE \sptprice_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[211]),
        .Q(sptprice[19]));
  FDCE \sptprice_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[193]),
        .Q(sptprice[1]));
  FDCE \sptprice_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[212]),
        .Q(sptprice[20]));
  FDCE \sptprice_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[213]),
        .Q(sptprice[21]));
  FDCE \sptprice_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[214]),
        .Q(sptprice[22]));
  FDCE \sptprice_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[215]),
        .Q(sptprice[23]));
  FDCE \sptprice_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[216]),
        .Q(sptprice[24]));
  FDCE \sptprice_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[217]),
        .Q(sptprice[25]));
  FDCE \sptprice_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[218]),
        .Q(sptprice[26]));
  FDCE \sptprice_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[219]),
        .Q(sptprice[27]));
  FDCE \sptprice_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[220]),
        .Q(sptprice[28]));
  FDCE \sptprice_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[221]),
        .Q(sptprice[29]));
  FDCE \sptprice_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[194]),
        .Q(sptprice[2]));
  FDCE \sptprice_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[222]),
        .Q(sptprice[30]));
  FDCE \sptprice_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[223]),
        .Q(sptprice[31]));
  FDCE \sptprice_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[195]),
        .Q(sptprice[3]));
  FDCE \sptprice_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[196]),
        .Q(sptprice[4]));
  FDCE \sptprice_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[197]),
        .Q(sptprice[5]));
  FDCE \sptprice_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[198]),
        .Q(sptprice[6]));
  FDCE \sptprice_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[199]),
        .Q(sptprice[7]));
  FDCE \sptprice_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[200]),
        .Q(sptprice[8]));
  FDCE \sptprice_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[201]),
        .Q(sptprice[9]));
  FDCE \strike_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[160]),
        .Q(strike[0]));
  FDCE \strike_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[170]),
        .Q(strike[10]));
  FDCE \strike_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[171]),
        .Q(strike[11]));
  FDCE \strike_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[172]),
        .Q(strike[12]));
  FDCE \strike_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[173]),
        .Q(strike[13]));
  FDCE \strike_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[174]),
        .Q(strike[14]));
  FDCE \strike_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[175]),
        .Q(strike[15]));
  FDCE \strike_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[176]),
        .Q(strike[16]));
  FDCE \strike_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[177]),
        .Q(strike[17]));
  FDCE \strike_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[178]),
        .Q(strike[18]));
  FDCE \strike_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[179]),
        .Q(strike[19]));
  FDCE \strike_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[161]),
        .Q(strike[1]));
  FDCE \strike_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[180]),
        .Q(strike[20]));
  FDCE \strike_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[181]),
        .Q(strike[21]));
  FDCE \strike_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[182]),
        .Q(strike[22]));
  FDCE \strike_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[183]),
        .Q(strike[23]));
  FDCE \strike_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[184]),
        .Q(strike[24]));
  FDCE \strike_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[185]),
        .Q(strike[25]));
  FDCE \strike_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[186]),
        .Q(strike[26]));
  FDCE \strike_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[187]),
        .Q(strike[27]));
  FDCE \strike_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[188]),
        .Q(strike[28]));
  FDCE \strike_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[189]),
        .Q(strike[29]));
  FDCE \strike_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[162]),
        .Q(strike[2]));
  FDCE \strike_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[190]),
        .Q(strike[30]));
  FDCE \strike_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[191]),
        .Q(strike[31]));
  FDCE \strike_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[163]),
        .Q(strike[3]));
  FDCE \strike_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[164]),
        .Q(strike[4]));
  FDCE \strike_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[165]),
        .Q(strike[5]));
  FDCE \strike_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[166]),
        .Q(strike[6]));
  FDCE \strike_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[167]),
        .Q(strike[7]));
  FDCE \strike_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[168]),
        .Q(strike[8]));
  FDCE \strike_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[169]),
        .Q(strike[9]));
  FDCE \time_r_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[64]),
        .Q(time_r[0]));
  FDCE \time_r_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[74]),
        .Q(time_r[10]));
  FDCE \time_r_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[75]),
        .Q(time_r[11]));
  FDCE \time_r_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[76]),
        .Q(time_r[12]));
  FDCE \time_r_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[77]),
        .Q(time_r[13]));
  FDCE \time_r_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[78]),
        .Q(time_r[14]));
  FDCE \time_r_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[79]),
        .Q(time_r[15]));
  FDCE \time_r_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[80]),
        .Q(time_r[16]));
  FDCE \time_r_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[81]),
        .Q(time_r[17]));
  FDCE \time_r_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[82]),
        .Q(time_r[18]));
  FDCE \time_r_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[83]),
        .Q(time_r[19]));
  FDCE \time_r_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[65]),
        .Q(time_r[1]));
  FDCE \time_r_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[84]),
        .Q(time_r[20]));
  FDCE \time_r_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[85]),
        .Q(time_r[21]));
  FDCE \time_r_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[86]),
        .Q(time_r[22]));
  FDCE \time_r_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[87]),
        .Q(time_r[23]));
  FDCE \time_r_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[88]),
        .Q(time_r[24]));
  FDCE \time_r_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[89]),
        .Q(time_r[25]));
  FDCE \time_r_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[90]),
        .Q(time_r[26]));
  FDCE \time_r_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[91]),
        .Q(time_r[27]));
  FDCE \time_r_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[92]),
        .Q(time_r[28]));
  FDCE \time_r_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[93]),
        .Q(time_r[29]));
  FDCE \time_r_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[66]),
        .Q(time_r[2]));
  FDCE \time_r_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[94]),
        .Q(time_r[30]));
  FDCE \time_r_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[95]),
        .Q(time_r[31]));
  FDCE \time_r_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[67]),
        .Q(time_r[3]));
  FDCE \time_r_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[68]),
        .Q(time_r[4]));
  FDCE \time_r_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[69]),
        .Q(time_r[5]));
  FDCE \time_r_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[70]),
        .Q(time_r[6]));
  FDCE \time_r_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[71]),
        .Q(time_r[7]));
  FDCE \time_r_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[72]),
        .Q(time_r[8]));
  FDCE \time_r_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[73]),
        .Q(time_r[9]));
  FDCE \timet_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[0]),
        .Q(timet[0]));
  FDCE \timet_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[10]),
        .Q(timet[10]));
  FDCE \timet_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[11]),
        .Q(timet[11]));
  FDCE \timet_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[12]),
        .Q(timet[12]));
  FDCE \timet_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[13]),
        .Q(timet[13]));
  FDCE \timet_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[14]),
        .Q(timet[14]));
  FDCE \timet_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[15]),
        .Q(timet[15]));
  FDCE \timet_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[16]),
        .Q(timet[16]));
  FDCE \timet_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[17]),
        .Q(timet[17]));
  FDCE \timet_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[18]),
        .Q(timet[18]));
  FDCE \timet_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[19]),
        .Q(timet[19]));
  FDCE \timet_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[1]),
        .Q(timet[1]));
  FDCE \timet_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[20]),
        .Q(timet[20]));
  FDCE \timet_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[21]),
        .Q(timet[21]));
  FDCE \timet_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[22]),
        .Q(timet[22]));
  FDCE \timet_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[23]),
        .Q(timet[23]));
  FDCE \timet_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[24]),
        .Q(timet[24]));
  FDCE \timet_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[25]),
        .Q(timet[25]));
  FDCE \timet_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[26]),
        .Q(timet[26]));
  FDCE \timet_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[27]),
        .Q(timet[27]));
  FDCE \timet_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[28]),
        .Q(timet[28]));
  FDCE \timet_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[29]),
        .Q(timet[29]));
  FDCE \timet_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[2]),
        .Q(timet[2]));
  FDCE \timet_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[30]),
        .Q(timet[30]));
  FDCE \timet_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[31]),
        .Q(timet[31]));
  FDCE \timet_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[3]),
        .Q(timet[3]));
  FDCE \timet_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[4]),
        .Q(timet[4]));
  FDCE \timet_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[5]),
        .Q(timet[5]));
  FDCE \timet_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[6]),
        .Q(timet[6]));
  FDCE \timet_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[7]),
        .Q(timet[7]));
  FDCE \timet_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[8]),
        .Q(timet[8]));
  FDCE \timet_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[9]),
        .Q(timet[9]));
  FDCE \volatility_reg[0] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[96]),
        .Q(volatility[0]));
  FDCE \volatility_reg[10] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[106]),
        .Q(volatility[10]));
  FDCE \volatility_reg[11] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[107]),
        .Q(volatility[11]));
  FDCE \volatility_reg[12] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[108]),
        .Q(volatility[12]));
  FDCE \volatility_reg[13] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[109]),
        .Q(volatility[13]));
  FDCE \volatility_reg[14] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[110]),
        .Q(volatility[14]));
  FDCE \volatility_reg[15] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[111]),
        .Q(volatility[15]));
  FDCE \volatility_reg[16] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[112]),
        .Q(volatility[16]));
  FDCE \volatility_reg[17] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[113]),
        .Q(volatility[17]));
  FDCE \volatility_reg[18] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[114]),
        .Q(volatility[18]));
  FDCE \volatility_reg[19] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[115]),
        .Q(volatility[19]));
  FDCE \volatility_reg[1] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[97]),
        .Q(volatility[1]));
  FDCE \volatility_reg[20] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[116]),
        .Q(volatility[20]));
  FDCE \volatility_reg[21] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[117]),
        .Q(volatility[21]));
  FDCE \volatility_reg[22] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[118]),
        .Q(volatility[22]));
  FDCE \volatility_reg[23] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[119]),
        .Q(volatility[23]));
  FDCE \volatility_reg[24] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[120]),
        .Q(volatility[24]));
  FDCE \volatility_reg[25] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[121]),
        .Q(volatility[25]));
  FDCE \volatility_reg[26] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[122]),
        .Q(volatility[26]));
  FDCE \volatility_reg[27] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[123]),
        .Q(volatility[27]));
  FDCE \volatility_reg[28] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[124]),
        .Q(volatility[28]));
  FDCE \volatility_reg[29] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[125]),
        .Q(volatility[29]));
  FDCE \volatility_reg[2] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[98]),
        .Q(volatility[2]));
  FDCE \volatility_reg[30] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[126]),
        .Q(volatility[30]));
  FDCE \volatility_reg[31] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[127]),
        .Q(volatility[31]));
  FDCE \volatility_reg[3] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[99]),
        .Q(volatility[3]));
  FDCE \volatility_reg[4] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[100]),
        .Q(volatility[4]));
  FDCE \volatility_reg[5] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[101]),
        .Q(volatility[5]));
  FDCE \volatility_reg[6] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[102]),
        .Q(volatility[6]));
  FDCE \volatility_reg[7] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[103]),
        .Q(volatility[7]));
  FDCE \volatility_reg[8] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[104]),
        .Q(volatility[8]));
  FDCE \volatility_reg[9] 
       (.C(clock),
        .CE(en),
        .CLR(reset),
        .D(inD[105]),
        .Q(volatility[9]));
endmodule

(* ORIG_REF_NAME = "PacketRegisterWrapper" *) 
module design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper
   (sptprice,
    strike,
    rate,
    volatility,
    time_r,
    otype,
    timet,
    hasUnusedData,
    BS_READY,
    clock,
    en,
    inD,
    reset);
  output [31:0]sptprice;
  output [31:0]strike;
  output [31:0]rate;
  output [31:0]volatility;
  output [31:0]time_r;
  output [31:0]otype;
  output [31:0]timet;
  output hasUnusedData;
  input BS_READY;
  input clock;
  input en;
  input [223:0]inD;
  input reset;

  wire BS_READY;
  wire clock;
  wire en;
  wire hasUnusedData;
  wire [223:0]inD;
  wire [31:0]otype;
  wire [31:0]rate;
  wire reset;
  wire [31:0]sptprice;
  wire [31:0]strike;
  wire [31:0]time_r;
  wire [31:0]timet;
  wire [31:0]volatility;

  design_1_PacketRegisterWrapper_0_0_PacketRegister PR
       (.BS_READY(BS_READY),
        .clock(clock),
        .en(en),
        .hasUnusedData(hasUnusedData),
        .inD(inD),
        .otype(otype),
        .rate(rate),
        .reset(reset),
        .sptprice(sptprice),
        .strike(strike),
        .time_r(time_r),
        .timet(timet),
        .volatility(volatility));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
