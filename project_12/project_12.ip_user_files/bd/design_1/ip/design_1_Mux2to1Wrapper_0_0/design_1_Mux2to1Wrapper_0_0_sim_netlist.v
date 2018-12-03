// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Mon Nov  5 10:34:19 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_Mux2to1Wrapper_0_0/design_1_Mux2to1Wrapper_0_0_sim_netlist.v
// Design      : design_1_Mux2to1Wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Mux2to1Wrapper_0_0,Mux2to1Wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Mux2to1Wrapper,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_Mux2to1Wrapper_0_0
   (d1,
    d2,
    sel,
    Q);
  input [7:0]d1;
  input [7:0]d2;
  input sel;
  output [7:0]Q;

  wire [7:0]Q;
  wire [7:0]d1;
  wire [7:0]d2;
  wire sel;

  design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper inst
       (.Q(Q),
        .d1(d1),
        .d2(d2),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "Mux2to1" *) 
module design_1_Mux2to1Wrapper_0_0_Mux2to1
   (Q,
    d1,
    d2,
    sel);
  output [7:0]Q;
  input [7:0]d1;
  input [7:0]d2;
  input sel;

  wire [7:0]Q;
  wire [7:0]d1;
  wire [7:0]d2;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_INST_0 
       (.I0(d1[0]),
        .I1(d2[0]),
        .I2(sel),
        .O(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_INST_0 
       (.I0(d1[1]),
        .I1(d2[1]),
        .I2(sel),
        .O(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_INST_0 
       (.I0(d1[2]),
        .I1(d2[2]),
        .I2(sel),
        .O(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_INST_0 
       (.I0(d1[3]),
        .I1(d2[3]),
        .I2(sel),
        .O(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_INST_0 
       (.I0(d1[4]),
        .I1(d2[4]),
        .I2(sel),
        .O(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_INST_0 
       (.I0(d1[5]),
        .I1(d2[5]),
        .I2(sel),
        .O(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_INST_0 
       (.I0(d1[6]),
        .I1(d2[6]),
        .I2(sel),
        .O(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_INST_0 
       (.I0(d1[7]),
        .I1(d2[7]),
        .I2(sel),
        .O(Q[7]));
endmodule

(* ORIG_REF_NAME = "Mux2to1Wrapper" *) 
module design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper
   (Q,
    d1,
    d2,
    sel);
  output [7:0]Q;
  input [7:0]d1;
  input [7:0]d2;
  input sel;

  wire [7:0]Q;
  wire [7:0]d1;
  wire [7:0]d2;
  wire sel;

  design_1_Mux2to1Wrapper_0_0_Mux2to1 nolabel_line29
       (.Q(Q),
        .d1(d1),
        .d2(d2),
        .sel(sel));
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
