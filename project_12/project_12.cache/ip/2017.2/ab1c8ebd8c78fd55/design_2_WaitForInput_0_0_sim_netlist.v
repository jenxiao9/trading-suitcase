// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Oct 27 22:06:35 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_WaitForInput_0_0_sim_netlist.v
// Design      : design_2_WaitForInput_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_state1 = "2'b01" *) (* ap_ST_fsm_state2 = "2'b10" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaitForInput
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    in_r,
    ap_return);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]in_r;
  output [7:0]ap_return;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_rst;
  wire ap_start;
  wire [7:0]in_assign_fu_18;
  wire [7:0]in_r;

  assign ap_ready = ap_done;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .I3(ap_ready_INST_0_i_1_n_0),
        .I4(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F707)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(\ap_CS_fsm[1]_i_2_n_0 ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(in_assign_fu_18[2]),
        .I1(in_assign_fu_18[1]),
        .I2(in_assign_fu_18[0]),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ap_ready_INST_0
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(in_assign_fu_18[0]),
        .I2(in_assign_fu_18[1]),
        .I3(in_assign_fu_18[2]),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ap_ready_INST_0_i_1
       (.I0(in_assign_fu_18[3]),
        .I1(in_assign_fu_18[4]),
        .I2(in_assign_fu_18[5]),
        .I3(in_assign_fu_18[6]),
        .I4(ap_CS_fsm_state2),
        .I5(in_assign_fu_18[7]),
        .O(ap_ready_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \in_assign_fu_18[7]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm1));
  FDRE \in_assign_fu_18_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[0]),
        .Q(in_assign_fu_18[0]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[1]),
        .Q(in_assign_fu_18[1]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[2]),
        .Q(in_assign_fu_18[2]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[3]),
        .Q(in_assign_fu_18[3]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[4]),
        .Q(in_assign_fu_18[4]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[5]),
        .Q(in_assign_fu_18[5]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[6]),
        .Q(in_assign_fu_18[6]),
        .R(1'b0));
  FDRE \in_assign_fu_18_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(in_r[7]),
        .Q(in_assign_fu_18[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_WaitForInput_0_0,WaitForInput,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "WaitForInput,Vivado 2017.2" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    in_r);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) output [7:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 in_r DATA" *) input [7:0]in_r;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire [7:0]ap_return;
  wire ap_rst;
  wire ap_start;
  wire [7:0]in_r;

  (* ap_ST_fsm_state1 = "2'b01" *) 
  (* ap_ST_fsm_state2 = "2'b10" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_WaitForInput inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .in_r(in_r));
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
