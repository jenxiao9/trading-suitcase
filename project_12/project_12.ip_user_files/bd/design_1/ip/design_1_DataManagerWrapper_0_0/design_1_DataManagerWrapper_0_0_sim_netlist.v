// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Nov  7 10:17:14 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_DataManagerWrapper_0_0/design_1_DataManagerWrapper_0_0_sim_netlist.v
// Design      : design_1_DataManagerWrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DataManagerWrapper_0_0,DataManagerWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "DataManagerWrapper,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_DataManagerWrapper_0_0
   (clock,
    reset,
    SERVE_REG,
    F_READY,
    F_IDLE,
    F_DONE,
    SW,
    OutOfData,
    regEn,
    F_START,
    inc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input SERVE_REG;
  input F_READY;
  input F_IDLE;
  input F_DONE;
  input [7:0]SW;
  output OutOfData;
  output regEn;
  output F_START;
  output [31:0]inc;

  wire \<const0> ;
  wire F_START;
  wire OutOfData;
  wire SERVE_REG;
  wire [7:0]SW;
  wire clock;
  wire [7:0]\^inc ;
  wire regEn;
  wire reset;

  assign inc[31] = \<const0> ;
  assign inc[30] = \<const0> ;
  assign inc[29] = \<const0> ;
  assign inc[28] = \<const0> ;
  assign inc[27] = \<const0> ;
  assign inc[26] = \<const0> ;
  assign inc[25] = \<const0> ;
  assign inc[24] = \<const0> ;
  assign inc[23] = \<const0> ;
  assign inc[22] = \<const0> ;
  assign inc[21] = \<const0> ;
  assign inc[20] = \<const0> ;
  assign inc[19] = \<const0> ;
  assign inc[18] = \<const0> ;
  assign inc[17] = \<const0> ;
  assign inc[16] = \<const0> ;
  assign inc[15] = \<const0> ;
  assign inc[14] = \<const0> ;
  assign inc[13] = \<const0> ;
  assign inc[12] = \<const0> ;
  assign inc[11] = \<const0> ;
  assign inc[10] = \<const0> ;
  assign inc[9] = \<const0> ;
  assign inc[8] = \<const0> ;
  assign inc[7:0] = \^inc [7:0];
  GND GND
       (.G(\<const0> ));
  design_1_DataManagerWrapper_0_0_DataManagerWrapper inst
       (.E(regEn),
        .F_START(F_START),
        .OutOfData(OutOfData),
        .SERVE_REG(SERVE_REG),
        .SW(SW),
        .clock(clock),
        .inc(\^inc ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module design_1_DataManagerWrapper_0_0_Counter
   (E,
    F_START,
    S,
    DI,
    D,
    SERVE_REG,
    Q,
    CO,
    SW,
    nextState1__5,
    clock,
    reset);
  output [0:0]E;
  output F_START;
  output [3:0]S;
  output [3:0]DI;
  output [1:0]D;
  input SERVE_REG;
  input [1:0]Q;
  input [0:0]CO;
  input [7:0]SW;
  input nextState1__5;
  input clock;
  input reset;

  wire [0:0]CO;
  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire F_START;
  wire [1:0]Q;
  wire [3:0]S;
  wire SERVE_REG;
  wire [7:0]SW;
  wire clock;
  wire count00_carry__0_i_1__0_n_0;
  wire count00_carry__0_i_2__0_n_0;
  wire count00_carry__0_i_3__0_n_0;
  wire count00_carry__0_n_2;
  wire count00_carry__0_n_3;
  wire count00_carry__0_n_5;
  wire count00_carry__0_n_6;
  wire count00_carry__0_n_7;
  wire count00_carry_i_1__0_n_0;
  wire count00_carry_i_2__0_n_0;
  wire count00_carry_i_3__0_n_0;
  wire count00_carry_i_4__0_n_0;
  wire count00_carry_i_5_n_0;
  wire count00_carry_n_0;
  wire count00_carry_n_1;
  wire count00_carry_n_2;
  wire count00_carry_n_3;
  wire count00_carry_n_4;
  wire count00_carry_n_5;
  wire count00_carry_n_6;
  wire count00_carry_n_7;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire [7:0]count_reg__0;
  wire nextState1__5;
  wire reset;
  wire [3:2]NLW_count00_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_count00_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    F_START_INST_0
       (.I0(Q[1]),
        .I1(CO),
        .O(F_START));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry
       (.CI(1'b0),
        .CO({count00_carry_n_0,count00_carry_n_1,count00_carry_n_2,count00_carry_n_3}),
        .CYINIT(count_reg__0[0]),
        .DI({count_reg__0[3:1],count00_carry_i_1__0_n_0}),
        .O({count00_carry_n_4,count00_carry_n_5,count00_carry_n_6,count00_carry_n_7}),
        .S({count00_carry_i_2__0_n_0,count00_carry_i_3__0_n_0,count00_carry_i_4__0_n_0,count00_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry__0
       (.CI(count00_carry_n_0),
        .CO({NLW_count00_carry__0_CO_UNCONNECTED[3:2],count00_carry__0_n_2,count00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,count_reg__0[5:4]}),
        .O({NLW_count00_carry__0_O_UNCONNECTED[3],count00_carry__0_n_5,count00_carry__0_n_6,count00_carry__0_n_7}),
        .S({1'b0,count00_carry__0_i_1__0_n_0,count00_carry__0_i_2__0_n_0,count00_carry__0_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_1__0
       (.I0(count_reg__0[6]),
        .I1(count_reg__0[7]),
        .O(count00_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_2__0
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[6]),
        .O(count00_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_3__0
       (.I0(count_reg__0[4]),
        .I1(count_reg__0[5]),
        .O(count00_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count00_carry_i_1__0
       (.I0(count_reg__0[1]),
        .O(count00_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_2__0
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[4]),
        .O(count00_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_3__0
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[3]),
        .O(count00_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_4__0
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[2]),
        .O(count00_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h9595AA95)) 
    count00_carry_i_5
       (.I0(count_reg__0[1]),
        .I1(SERVE_REG),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(CO),
        .O(count00_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \count[0]_i_1__0 
       (.I0(count_reg__0[0]),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[1]_i_1 
       (.I0(count00_carry_n_7),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[2]_i_1 
       (.I0(count00_carry_n_6),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[3]_i_1 
       (.I0(count00_carry_n_5),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[4]_i_1 
       (.I0(count00_carry_n_4),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[5]_i_1 
       (.I0(count00_carry__0_n_7),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[6]_i_1 
       (.I0(count00_carry__0_n_6),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \count[7]_i_1 
       (.I0(SERVE_REG),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \count[7]_i_2 
       (.I0(count00_carry__0_n_5),
        .I1(CO),
        .I2(Q[1]),
        .O(\count[7]_i_2_n_0 ));
  FDCE \count_reg[0] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg__0[0]));
  FDCE \count_reg[1] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg__0[1]));
  FDCE \count_reg[2] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg__0[2]));
  FDCE \count_reg[3] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg__0[3]));
  FDCE \count_reg[4] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg__0[4]));
  FDCE \count_reg[5] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[5]_i_1_n_0 ),
        .Q(count_reg__0[5]));
  FDCE \count_reg[6] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[6]_i_1_n_0 ),
        .Q(count_reg__0[6]));
  FDCE \count_reg[7] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[7]_i_2_n_0 ),
        .Q(count_reg__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \currentState[0]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .I2(nextState1__5),
        .I3(SERVE_REG),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4444F444)) 
    \currentState[1]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(SERVE_REG),
        .I4(nextState1__5),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    incRuns0_carry_i_1
       (.I0(count_reg__0[6]),
        .I1(SW[6]),
        .I2(SW[7]),
        .I3(count_reg__0[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    incRuns0_carry_i_2
       (.I0(count_reg__0[4]),
        .I1(SW[4]),
        .I2(SW[5]),
        .I3(count_reg__0[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    incRuns0_carry_i_3
       (.I0(count_reg__0[2]),
        .I1(SW[2]),
        .I2(SW[3]),
        .I3(count_reg__0[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    incRuns0_carry_i_4
       (.I0(count_reg__0[0]),
        .I1(SW[0]),
        .I2(SW[1]),
        .I3(count_reg__0[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    incRuns0_carry_i_5
       (.I0(count_reg__0[6]),
        .I1(SW[6]),
        .I2(count_reg__0[7]),
        .I3(SW[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    incRuns0_carry_i_6
       (.I0(count_reg__0[4]),
        .I1(SW[4]),
        .I2(count_reg__0[5]),
        .I3(SW[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    incRuns0_carry_i_7
       (.I0(count_reg__0[2]),
        .I1(SW[2]),
        .I2(count_reg__0[3]),
        .I3(SW[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    incRuns0_carry_i_8
       (.I0(count_reg__0[0]),
        .I1(SW[0]),
        .I2(count_reg__0[1]),
        .I3(SW[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    regEn_INST_0
       (.I0(Q[1]),
        .I1(CO),
        .O(E));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module design_1_DataManagerWrapper_0_0_Counter_0
   (inc,
    OutOfData,
    nextState1__5,
    CO,
    Q,
    E,
    clock,
    reset);
  output [7:0]inc;
  output OutOfData;
  output nextState1__5;
  input [0:0]CO;
  input [1:0]Q;
  input [0:0]E;
  input clock;
  input reset;

  wire [0:0]CO;
  wire [0:0]E;
  wire OutOfData;
  wire OutOfData_INST_0_i_2_n_0;
  wire [1:0]Q;
  wire clock;
  wire count00_carry__0_i_1_n_0;
  wire count00_carry__0_i_2_n_0;
  wire count00_carry__0_i_3_n_0;
  wire count00_carry__0_n_2;
  wire count00_carry__0_n_3;
  wire count00_carry__0_n_5;
  wire count00_carry__0_n_6;
  wire count00_carry__0_n_7;
  wire count00_carry_i_1_n_0;
  wire count00_carry_i_2_n_0;
  wire count00_carry_i_3_n_0;
  wire count00_carry_i_4_n_0;
  wire count00_carry_i_5__0_n_0;
  wire count00_carry_n_0;
  wire count00_carry_n_1;
  wire count00_carry_n_2;
  wire count00_carry_n_3;
  wire count00_carry_n_4;
  wire count00_carry_n_5;
  wire count00_carry_n_6;
  wire count00_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire [7:0]inc;
  wire nextState1__5;
  wire reset;
  wire [3:2]NLW_count00_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_count00_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h0D)) 
    OutOfData_INST_0
       (.I0(Q[0]),
        .I1(nextState1__5),
        .I2(Q[1]),
        .O(OutOfData));
  LUT4 #(
    .INIT(16'hFFFD)) 
    OutOfData_INST_0_i_1
       (.I0(OutOfData_INST_0_i_2_n_0),
        .I1(inc[6]),
        .I2(inc[5]),
        .I3(inc[7]),
        .O(nextState1__5));
  LUT4 #(
    .INIT(16'h0015)) 
    OutOfData_INST_0_i_2
       (.I0(inc[3]),
        .I1(inc[2]),
        .I2(inc[1]),
        .I3(inc[4]),
        .O(OutOfData_INST_0_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry
       (.CI(1'b0),
        .CO({count00_carry_n_0,count00_carry_n_1,count00_carry_n_2,count00_carry_n_3}),
        .CYINIT(inc[0]),
        .DI({inc[3:1],count00_carry_i_1_n_0}),
        .O({count00_carry_n_4,count00_carry_n_5,count00_carry_n_6,count00_carry_n_7}),
        .S({count00_carry_i_2_n_0,count00_carry_i_3_n_0,count00_carry_i_4_n_0,count00_carry_i_5__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry__0
       (.CI(count00_carry_n_0),
        .CO({NLW_count00_carry__0_CO_UNCONNECTED[3:2],count00_carry__0_n_2,count00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,inc[5:4]}),
        .O({NLW_count00_carry__0_O_UNCONNECTED[3],count00_carry__0_n_5,count00_carry__0_n_6,count00_carry__0_n_7}),
        .S({1'b0,count00_carry__0_i_1_n_0,count00_carry__0_i_2_n_0,count00_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_1
       (.I0(inc[6]),
        .I1(inc[7]),
        .O(count00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_2
       (.I0(inc[5]),
        .I1(inc[6]),
        .O(count00_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_3
       (.I0(inc[4]),
        .I1(inc[5]),
        .O(count00_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count00_carry_i_1
       (.I0(inc[1]),
        .O(count00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_2
       (.I0(inc[3]),
        .I1(inc[4]),
        .O(count00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_3
       (.I0(inc[2]),
        .I1(inc[3]),
        .O(count00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_4
       (.I0(inc[1]),
        .I1(inc[2]),
        .O(count00_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    count00_carry_i_5__0
       (.I0(inc[1]),
        .I1(CO),
        .I2(Q[1]),
        .O(count00_carry_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(inc[0]),
        .O(\count[0]_i_1_n_0 ));
  FDCE \count_reg[0] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(\count[0]_i_1_n_0 ),
        .Q(inc[0]));
  FDCE \count_reg[1] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry_n_7),
        .Q(inc[1]));
  FDCE \count_reg[2] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry_n_6),
        .Q(inc[2]));
  FDCE \count_reg[3] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry_n_5),
        .Q(inc[3]));
  FDCE \count_reg[4] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry_n_4),
        .Q(inc[4]));
  FDCE \count_reg[5] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry__0_n_7),
        .Q(inc[5]));
  FDCE \count_reg[6] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry__0_n_6),
        .Q(inc[6]));
  FDCE \count_reg[7] 
       (.C(clock),
        .CE(E),
        .CLR(reset),
        .D(count00_carry__0_n_5),
        .Q(inc[7]));
endmodule

(* ORIG_REF_NAME = "DataManager" *) 
module design_1_DataManagerWrapper_0_0_DataManager
   (inc,
    E,
    F_START,
    OutOfData,
    SERVE_REG,
    clock,
    reset,
    SW);
  output [7:0]inc;
  output [0:0]E;
  output F_START;
  output OutOfData;
  input SERVE_REG;
  input clock;
  input reset;
  input [7:0]SW;

  wire DelayCount_n_10;
  wire DelayCount_n_11;
  wire DelayCount_n_2;
  wire DelayCount_n_3;
  wire DelayCount_n_4;
  wire DelayCount_n_5;
  wire DelayCount_n_6;
  wire DelayCount_n_7;
  wire DelayCount_n_8;
  wire DelayCount_n_9;
  wire [0:0]E;
  wire F_START;
  wire OutOfData;
  wire SERVE_REG;
  wire [7:0]SW;
  wire clock;
  wire [1:0]currentState;
  wire [7:0]inc;
  wire incRuns0_carry_n_1;
  wire incRuns0_carry_n_2;
  wire incRuns0_carry_n_3;
  wire nextState1__5;
  wire p_0_in;
  wire reset;
  wire [3:0]NLW_incRuns0_carry_O_UNCONNECTED;

  design_1_DataManagerWrapper_0_0_Counter DelayCount
       (.CO(p_0_in),
        .D({DelayCount_n_10,DelayCount_n_11}),
        .DI({DelayCount_n_6,DelayCount_n_7,DelayCount_n_8,DelayCount_n_9}),
        .E(E),
        .F_START(F_START),
        .Q(currentState),
        .S({DelayCount_n_2,DelayCount_n_3,DelayCount_n_4,DelayCount_n_5}),
        .SERVE_REG(SERVE_REG),
        .SW(SW),
        .clock(clock),
        .nextState1__5(nextState1__5),
        .reset(reset));
  design_1_DataManagerWrapper_0_0_Counter_0 OptionsRun
       (.CO(p_0_in),
        .E(E),
        .OutOfData(OutOfData),
        .Q(currentState),
        .clock(clock),
        .inc(inc),
        .nextState1__5(nextState1__5),
        .reset(reset));
  FDPE \currentState_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(DelayCount_n_11),
        .PRE(reset),
        .Q(currentState[0]));
  FDCE \currentState_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(DelayCount_n_10),
        .Q(currentState[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 incRuns0_carry
       (.CI(1'b0),
        .CO({p_0_in,incRuns0_carry_n_1,incRuns0_carry_n_2,incRuns0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DelayCount_n_6,DelayCount_n_7,DelayCount_n_8,DelayCount_n_9}),
        .O(NLW_incRuns0_carry_O_UNCONNECTED[3:0]),
        .S({DelayCount_n_2,DelayCount_n_3,DelayCount_n_4,DelayCount_n_5}));
endmodule

(* ORIG_REF_NAME = "DataManagerWrapper" *) 
module design_1_DataManagerWrapper_0_0_DataManagerWrapper
   (inc,
    E,
    F_START,
    OutOfData,
    SERVE_REG,
    clock,
    reset,
    SW);
  output [7:0]inc;
  output [0:0]E;
  output F_START;
  output OutOfData;
  input SERVE_REG;
  input clock;
  input reset;
  input [7:0]SW;

  wire [0:0]E;
  wire F_START;
  wire OutOfData;
  wire SERVE_REG;
  wire [7:0]SW;
  wire clock;
  wire [7:0]inc;
  wire reset;

  design_1_DataManagerWrapper_0_0_DataManager nolabel_line33
       (.E(E),
        .F_START(F_START),
        .OutOfData(OutOfData),
        .SERVE_REG(SERVE_REG),
        .SW(SW),
        .clock(clock),
        .inc(inc),
        .reset(reset));
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
