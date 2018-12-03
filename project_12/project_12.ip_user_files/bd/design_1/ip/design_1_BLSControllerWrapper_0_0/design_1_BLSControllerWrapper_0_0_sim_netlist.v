// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Nov  7 02:17:19 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_BLSControllerWrapper_0_0/design_1_BLSControllerWrapper_0_0_sim_netlist.v
// Design      : design_1_BLSControllerWrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_BLSControllerWrapper_0_0,BLSControllerWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "BLSControllerWrapper,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_BLSControllerWrapper_0_0
   (clock,
    reset,
    startSystem,
    OutOfData,
    BS_READY,
    BS_DONE,
    BS_IDLE,
    hasUnusedData,
    BS_START,
    SERVE_REG,
    LED);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input startSystem;
  input OutOfData;
  input [0:0]BS_READY;
  input [0:0]BS_DONE;
  input [0:0]BS_IDLE;
  input [0:0]hasUnusedData;
  output [0:0]BS_START;
  output [0:0]SERVE_REG;
  output [7:0]LED;

  wire [0:0]BS_DONE;
  wire [0:0]BS_IDLE;
  wire [0:0]BS_READY;
  wire [0:0]BS_START;
  wire [7:0]LED;
  wire OutOfData;
  wire [0:0]SERVE_REG;
  wire clock;
  wire [0:0]hasUnusedData;
  wire reset;
  wire startSystem;

  design_1_BLSControllerWrapper_0_0_BLSControllerWrapper inst
       (.BS_DONE(BS_DONE),
        .BS_IDLE(BS_IDLE),
        .BS_READY(BS_READY),
        .BS_START(BS_START),
        .LED(LED),
        .OutOfData(OutOfData),
        .SERVE_REG(SERVE_REG),
        .clock(clock),
        .hasUnusedData(hasUnusedData),
        .reset(reset),
        .startSystem(startSystem));
endmodule

(* ORIG_REF_NAME = "BLSController" *) 
module design_1_BLSControllerWrapper_0_0_BLSController
   (LED,
    BS_START,
    SERVE_REG,
    hasUnusedData,
    BS_IDLE,
    OutOfData,
    clock,
    reset,
    BS_READY,
    BS_DONE,
    startSystem);
  output [7:0]LED;
  output [0:0]BS_START;
  output [0:0]SERVE_REG;
  input [0:0]hasUnusedData;
  input [0:0]BS_IDLE;
  input OutOfData;
  input clock;
  input reset;
  input [0:0]BS_READY;
  input [0:0]BS_DONE;
  input startSystem;

  wire [0:0]BS_DONE;
  wire [0:0]BS_IDLE;
  wire [0:0]BS_READY;
  wire [0:0]BS_START;
  wire [7:0]LED;
  wire OutOfData;
  wire RunningCount;
  wire RunningCount0;
  wire [0:0]SERVE_REG;
  wire SecRunningCount;
  wire SecRunningCount0;
  wire clock;
  wire [1:0]currentState;
  wire \currentState[0]_i_2_n_0 ;
  wire \currentState[1]_i_1_n_0 ;
  wire [0:0]hasUnusedData;
  wire [0:0]nextState;
  wire reset;
  wire startSystem;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BS_START[0]_INST_0 
       (.I0(currentState[0]),
        .I1(hasUnusedData),
        .O(BS_START));
  design_1_BLSControllerWrapper_0_0_Counter Clock_Count
       (.BS_IDLE(BS_IDLE),
        .LED(LED),
        .OutOfData(OutOfData),
        .Q(currentState[0]),
        .RunningCount(RunningCount),
        .clock(clock),
        .hasUnusedData(hasUnusedData),
        .reset(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCFAAFF00)) 
    \RunningCount[0]_i_1 
       (.I0(hasUnusedData),
        .I1(SecRunningCount),
        .I2(BS_DONE),
        .I3(RunningCount),
        .I4(currentState[0]),
        .O(RunningCount0));
  FDCE \RunningCount_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(RunningCount0),
        .Q(RunningCount));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \SERVE_REG[0]_INST_0 
       (.I0(currentState[0]),
        .I1(OutOfData),
        .I2(hasUnusedData),
        .O(SERVE_REG));
  LUT6 #(
    .INIT(64'h00FF8080FFFF0000)) 
    \SecRunningCount[0]_i_1 
       (.I0(RunningCount),
        .I1(hasUnusedData),
        .I2(BS_READY),
        .I3(BS_DONE),
        .I4(SecRunningCount),
        .I5(currentState[0]),
        .O(SecRunningCount0));
  FDCE \SecRunningCount_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(SecRunningCount0),
        .Q(SecRunningCount));
  LUT4 #(
    .INIT(16'hAA08)) 
    \currentState[0]_i_1 
       (.I0(\currentState[0]_i_2_n_0 ),
        .I1(startSystem),
        .I2(currentState[1]),
        .I3(currentState[0]),
        .O(nextState));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \currentState[0]_i_2 
       (.I0(OutOfData),
        .I1(BS_IDLE),
        .I2(hasUnusedData),
        .I3(RunningCount),
        .I4(currentState[0]),
        .O(\currentState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \currentState[1]_i_1 
       (.I0(currentState[1]),
        .I1(currentState[0]),
        .I2(RunningCount),
        .I3(hasUnusedData),
        .I4(BS_IDLE),
        .I5(OutOfData),
        .O(\currentState[1]_i_1_n_0 ));
  FDCE \currentState_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(nextState),
        .Q(currentState[0]));
  FDCE \currentState_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\currentState[1]_i_1_n_0 ),
        .Q(currentState[1]));
endmodule

(* ORIG_REF_NAME = "BLSControllerWrapper" *) 
module design_1_BLSControllerWrapper_0_0_BLSControllerWrapper
   (LED,
    BS_START,
    SERVE_REG,
    hasUnusedData,
    BS_IDLE,
    OutOfData,
    clock,
    reset,
    BS_READY,
    BS_DONE,
    startSystem);
  output [7:0]LED;
  output [0:0]BS_START;
  output [0:0]SERVE_REG;
  input [0:0]hasUnusedData;
  input [0:0]BS_IDLE;
  input OutOfData;
  input clock;
  input reset;
  input [0:0]BS_READY;
  input [0:0]BS_DONE;
  input startSystem;

  wire [0:0]BS_DONE;
  wire [0:0]BS_IDLE;
  wire [0:0]BS_READY;
  wire [0:0]BS_START;
  wire [7:0]LED;
  wire OutOfData;
  wire [0:0]SERVE_REG;
  wire clock;
  wire [0:0]hasUnusedData;
  wire reset;
  wire startSystem;

  design_1_BLSControllerWrapper_0_0_BLSController nolabel_line40
       (.BS_DONE(BS_DONE),
        .BS_IDLE(BS_IDLE),
        .BS_READY(BS_READY),
        .BS_START(BS_START),
        .LED(LED),
        .OutOfData(OutOfData),
        .SERVE_REG(SERVE_REG),
        .clock(clock),
        .hasUnusedData(hasUnusedData),
        .reset(reset),
        .startSystem(startSystem));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module design_1_BLSControllerWrapper_0_0_Counter
   (LED,
    RunningCount,
    hasUnusedData,
    BS_IDLE,
    OutOfData,
    Q,
    clock,
    reset);
  output [7:0]LED;
  input RunningCount;
  input [0:0]hasUnusedData;
  input [0:0]BS_IDLE;
  input OutOfData;
  input [0:0]Q;
  input clock;
  input reset;

  wire [0:0]BS_IDLE;
  wire [7:0]LED;
  wire OutOfData;
  wire [0:0]Q;
  wire RunningCount;
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
  wire count00_carry_i_5_n_0;
  wire count00_carry_n_0;
  wire count00_carry_n_1;
  wire count00_carry_n_2;
  wire count00_carry_n_3;
  wire count00_carry_n_4;
  wire count00_carry_n_5;
  wire count00_carry_n_6;
  wire count00_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire [0:0]hasUnusedData;
  wire reset;
  wire [3:2]NLW_count00_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_count00_carry__0_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry
       (.CI(1'b0),
        .CO({count00_carry_n_0,count00_carry_n_1,count00_carry_n_2,count00_carry_n_3}),
        .CYINIT(LED[0]),
        .DI({LED[3:1],count00_carry_i_1_n_0}),
        .O({count00_carry_n_4,count00_carry_n_5,count00_carry_n_6,count00_carry_n_7}),
        .S({count00_carry_i_2_n_0,count00_carry_i_3_n_0,count00_carry_i_4_n_0,count00_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 count00_carry__0
       (.CI(count00_carry_n_0),
        .CO({NLW_count00_carry__0_CO_UNCONNECTED[3:2],count00_carry__0_n_2,count00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,LED[5:4]}),
        .O({NLW_count00_carry__0_O_UNCONNECTED[3],count00_carry__0_n_5,count00_carry__0_n_6,count00_carry__0_n_7}),
        .S({1'b0,count00_carry__0_i_1_n_0,count00_carry__0_i_2_n_0,count00_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_1
       (.I0(LED[6]),
        .I1(LED[7]),
        .O(count00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_2
       (.I0(LED[5]),
        .I1(LED[6]),
        .O(count00_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry__0_i_3
       (.I0(LED[4]),
        .I1(LED[5]),
        .O(count00_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count00_carry_i_1
       (.I0(LED[1]),
        .O(count00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_2
       (.I0(LED[3]),
        .I1(LED[4]),
        .O(count00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_3
       (.I0(LED[2]),
        .I1(LED[3]),
        .O(count00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count00_carry_i_4
       (.I0(LED[1]),
        .I1(LED[2]),
        .O(count00_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA9AAAAAA55555555)) 
    count00_carry_i_5
       (.I0(LED[1]),
        .I1(RunningCount),
        .I2(hasUnusedData),
        .I3(BS_IDLE),
        .I4(OutOfData),
        .I5(Q),
        .O(count00_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(LED[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    \count[7]_i_1 
       (.I0(Q),
        .I1(OutOfData),
        .I2(BS_IDLE),
        .I3(hasUnusedData),
        .I4(RunningCount),
        .O(\count[7]_i_1_n_0 ));
  FDCE \count_reg[0] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\count[0]_i_1_n_0 ),
        .Q(LED[0]));
  FDCE \count_reg[1] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry_n_7),
        .Q(LED[1]));
  FDCE \count_reg[2] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry_n_6),
        .Q(LED[2]));
  FDCE \count_reg[3] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry_n_5),
        .Q(LED[3]));
  FDCE \count_reg[4] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry_n_4),
        .Q(LED[4]));
  FDCE \count_reg[5] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry__0_n_7),
        .Q(LED[5]));
  FDCE \count_reg[6] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry__0_n_6),
        .Q(LED[6]));
  FDCE \count_reg[7] 
       (.C(clock),
        .CE(\count[7]_i_1_n_0 ),
        .CLR(reset),
        .D(count00_carry__0_n_5),
        .Q(LED[7]));
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
