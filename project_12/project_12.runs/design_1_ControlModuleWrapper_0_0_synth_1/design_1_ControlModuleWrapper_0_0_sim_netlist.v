// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Dec  2 21:53:15 2018
// Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ControlModuleWrapper_0_0_sim_netlist.v
// Design      : design_1_ControlModuleWrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlModule
   (done,
    UART_DATA,
    clock,
    reset,
    RX);
  output done;
  output [7:0]UART_DATA;
  input clock;
  input reset;
  input RX;

  wire BIT_COUNTER_n_2;
  wire BIT_COUNTER_n_3;
  wire BIT_COUNTER_n_4;
  wire \FSM_sequential_nextState_reg[0]_i_3_n_0 ;
  wire RX;
  wire SAMPLE_CLK_COUNTER_n_0;
  wire SAMPLE_CLK_COUNTER_n_1;
  wire SAMPLE_CLK_COUNTER_n_2;
  wire SAMPLE_CLK_COUNTER_n_4;
  wire SAMPLE_CLK_COUNTER_n_6;
  wire [7:0]UART_DATA;
  wire clear_sreg;
  wire clock;
  wire [2:1]count_reg;
  wire done;
  wire [2:0]nextState;
  wire nextState__0;
  wire reset;
  wire \sreg[0]_i_1_n_0 ;
  wire \sreg[1]_i_1_n_0 ;
  wire \sreg[2]_i_1_n_0 ;
  wire \sreg[3]_i_1_n_0 ;
  wire \sreg[4]_i_1_n_0 ;
  wire \sreg[5]_i_1_n_0 ;
  wire \sreg[6]_i_1_n_0 ;
  wire \sreg[7]_i_1_n_0 ;
  wire \sreg[7]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counters BIT_COUNTER
       (.\FSM_sequential_state_reg[2] (SAMPLE_CLK_COUNTER_n_6),
        .RX(RX),
        .clock(clock),
        .nextState__0(nextState__0),
        .out(state),
        .reset(reset),
        .\sreg_reg[0] (count_reg),
        .\sreg_reg[0]_0 (BIT_COUNTER_n_2),
        .\sreg_reg[0]_1 (BIT_COUNTER_n_3),
        .\sreg_reg[1] (BIT_COUNTER_n_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextState_reg[0] 
       (.CLR(1'b0),
        .D(SAMPLE_CLK_COUNTER_n_2),
        .G(SAMPLE_CLK_COUNTER_n_4),
        .GE(1'b1),
        .Q(nextState[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_nextState_reg[0]_i_3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\FSM_sequential_nextState_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextState_reg[1] 
       (.CLR(1'b0),
        .D(SAMPLE_CLK_COUNTER_n_1),
        .G(SAMPLE_CLK_COUNTER_n_4),
        .GE(1'b1),
        .Q(nextState[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextState_reg[2] 
       (.CLR(1'b0),
        .D(SAMPLE_CLK_COUNTER_n_0),
        .G(SAMPLE_CLK_COUNTER_n_4),
        .GE(1'b1),
        .Q(nextState[2]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(nextState[0]),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(nextState[1]),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(nextState[2]),
        .Q(state[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counters_0 SAMPLE_CLK_COUNTER
       (.D({SAMPLE_CLK_COUNTER_n_0,SAMPLE_CLK_COUNTER_n_1,SAMPLE_CLK_COUNTER_n_2}),
        .E(SAMPLE_CLK_COUNTER_n_4),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_nextState_reg[0]_i_3_n_0 ),
        .\FSM_sequential_state_reg[2]_0 (\sreg[7]_i_2_n_0 ),
        .RX(RX),
        .clock(clock),
        .\count_reg[13]_0 (SAMPLE_CLK_COUNTER_n_6),
        .\count_reg[4]_0 (BIT_COUNTER_n_3),
        .done(done),
        .nextState__0(nextState__0),
        .out(state),
        .reset(reset));
  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    \sreg[0]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_2),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[0]),
        .I5(clear_sreg),
        .O(\sreg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0008)) 
    \sreg[1]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_4),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[1]),
        .I5(clear_sreg),
        .O(\sreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \sreg[2]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_2),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[2]),
        .I5(clear_sreg),
        .O(\sreg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \sreg[3]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_4),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[3]),
        .I5(clear_sreg),
        .O(\sreg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \sreg[4]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_2),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(UART_DATA[4]),
        .I5(clear_sreg),
        .O(\sreg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \sreg[5]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_4),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(UART_DATA[5]),
        .I5(clear_sreg),
        .O(\sreg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    \sreg[6]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_2),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[6]),
        .I5(clear_sreg),
        .O(\sreg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    \sreg[7]_i_1 
       (.I0(\sreg[7]_i_2_n_0 ),
        .I1(BIT_COUNTER_n_4),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(UART_DATA[7]),
        .I5(clear_sreg),
        .O(\sreg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \sreg[7]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\sreg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \sreg[7]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(clear_sreg));
  FDCE \sreg_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[0]_i_1_n_0 ),
        .Q(UART_DATA[0]));
  FDCE \sreg_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[1]_i_1_n_0 ),
        .Q(UART_DATA[1]));
  FDCE \sreg_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[2]_i_1_n_0 ),
        .Q(UART_DATA[2]));
  FDCE \sreg_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[3]_i_1_n_0 ),
        .Q(UART_DATA[3]));
  FDCE \sreg_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[4]_i_1_n_0 ),
        .Q(UART_DATA[4]));
  FDCE \sreg_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[5]_i_1_n_0 ),
        .Q(UART_DATA[5]));
  FDCE \sreg_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[6]_i_1_n_0 ),
        .Q(UART_DATA[6]));
  FDCE \sreg_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .CLR(reset),
        .D(\sreg[7]_i_1_n_0 ),
        .Q(UART_DATA[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlModuleWrapper
   (done,
    UART_DATA,
    clock,
    reset,
    RX);
  output done;
  output [7:0]UART_DATA;
  input clock;
  input reset;
  input RX;

  wire RX;
  wire [7:0]UART_DATA;
  wire clock;
  wire done;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlModule nolabel_line30
       (.RX(RX),
        .UART_DATA(UART_DATA),
        .clock(clock),
        .done(done),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counters
   (\sreg_reg[0] ,
    \sreg_reg[0]_0 ,
    \sreg_reg[0]_1 ,
    \sreg_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    clock,
    reset,
    out,
    nextState__0,
    RX);
  output [1:0]\sreg_reg[0] ;
  output \sreg_reg[0]_0 ;
  output \sreg_reg[0]_1 ;
  output \sreg_reg[1] ;
  input \FSM_sequential_state_reg[2] ;
  input clock;
  input reset;
  input [2:0]out;
  input nextState__0;
  input RX;

  wire \FSM_sequential_state_reg[2] ;
  wire RX;
  wire clock;
  wire \count[0]_i_3__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire \count[0]_i_5__0_n_0 ;
  wire \count[0]_i_6__0_n_0 ;
  wire \count[0]_i_7__0_n_0 ;
  wire \count[12]_i_2__0_n_0 ;
  wire \count[12]_i_3__0_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire \count[4]_i_3__0_n_0 ;
  wire \count[4]_i_4__0_n_0 ;
  wire \count[4]_i_5__0_n_0 ;
  wire \count[8]_i_2__0_n_0 ;
  wire \count[8]_i_3__0_n_0 ;
  wire \count[8]_i_4__0_n_0 ;
  wire \count[8]_i_5__0_n_0 ;
  wire [13:0]count_reg;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_1 ;
  wire \count_reg[0]_i_2__0_n_2 ;
  wire \count_reg[0]_i_2__0_n_3 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire nextState__0;
  wire [2:0]out;
  wire reset;
  wire \sreg[7]_i_6_n_0 ;
  wire \sreg[7]_i_7_n_0 ;
  wire [1:0]\sreg_reg[0] ;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg[0]_1 ;
  wire \sreg_reg[1] ;
  wire [3:1]\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD8)) 
    \count[0]_i_3__0 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\count[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[0]_i_4__0 
       (.I0(count_reg[3]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[0]_i_5__0 
       (.I0(\sreg_reg[0] [1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[0]_i_6__0 
       (.I0(\sreg_reg[0] [0]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5140)) 
    \count[0]_i_7__0 
       (.I0(count_reg[0]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[12]_i_2__0 
       (.I0(count_reg[13]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[12]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[12]_i_3__0 
       (.I0(count_reg[12]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[12]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[4]_i_2__0 
       (.I0(count_reg[7]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[4]_i_3__0 
       (.I0(count_reg[6]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[4]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[4]_i_4__0 
       (.I0(count_reg[5]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[4]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[4]_i_5__0 
       (.I0(count_reg[4]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[8]_i_2__0 
       (.I0(count_reg[11]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[8]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[8]_i_3__0 
       (.I0(count_reg[10]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[8]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[8]_i_4__0 
       (.I0(count_reg[9]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[8]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hA280)) 
    \count[8]_i_5__0 
       (.I0(count_reg[8]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\count[8]_i_5__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(count_reg[0]));
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\count_reg[0]_i_2__0_n_1 ,\count_reg[0]_i_2__0_n_2 ,\count_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_3__0_n_0 }),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({\count[0]_i_4__0_n_0 ,\count[0]_i_5__0_n_0 ,\count[0]_i_6__0_n_0 ,\count[0]_i_7__0_n_0 }));
  FDCE \count_reg[10] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]));
  FDCE \count_reg[11] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]));
  FDCE \count_reg[12] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]));
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED [3:1],\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__0_O_UNCONNECTED [3:2],\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,\count[12]_i_2__0_n_0 ,\count[12]_i_3__0_n_0 }));
  FDCE \count_reg[13] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]));
  FDCE \count_reg[1] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(\sreg_reg[0] [0]));
  FDCE \count_reg[2] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(\sreg_reg[0] [1]));
  FDCE \count_reg[3] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]));
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S({\count[4]_i_2__0_n_0 ,\count[4]_i_3__0_n_0 ,\count[4]_i_4__0_n_0 ,\count[4]_i_5__0_n_0 }));
  FDCE \count_reg[5] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]));
  FDCE \count_reg[6] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]));
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S({\count[8]_i_2__0_n_0 ,\count[8]_i_3__0_n_0 ,\count[8]_i_4__0_n_0 ,\count[8]_i_5__0_n_0 }));
  FDCE \count_reg[9] 
       (.C(clock),
        .CE(\FSM_sequential_state_reg[2] ),
        .CLR(reset),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \sreg[6]_i_2 
       (.I0(nextState__0),
        .I1(\sreg_reg[0]_1 ),
        .I2(RX),
        .I3(count_reg[0]),
        .O(\sreg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \sreg[7]_i_3 
       (.I0(nextState__0),
        .I1(\sreg_reg[0]_1 ),
        .I2(RX),
        .I3(count_reg[0]),
        .O(\sreg_reg[1] ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \sreg[7]_i_5 
       (.I0(\sreg[7]_i_6_n_0 ),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[13]),
        .I4(\sreg[7]_i_7_n_0 ),
        .O(\sreg_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sreg[7]_i_6 
       (.I0(count_reg[8]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[5]),
        .O(\sreg[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sreg[7]_i_7 
       (.I0(count_reg[12]),
        .I1(count_reg[11]),
        .I2(count_reg[10]),
        .I3(count_reg[9]),
        .O(\sreg[7]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "counters" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counters_0
   (D,
    done,
    E,
    nextState__0,
    \count_reg[13]_0 ,
    clock,
    reset,
    RX,
    out,
    \FSM_sequential_state_reg[2] ,
    \count_reg[4]_0 ,
    \FSM_sequential_state_reg[2]_0 );
  output [2:0]D;
  output done;
  output [0:0]E;
  output nextState__0;
  output \count_reg[13]_0 ;
  input clock;
  input reset;
  input RX;
  input [2:0]out;
  input \FSM_sequential_state_reg[2] ;
  input \count_reg[4]_0 ;
  input \FSM_sequential_state_reg[2]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_nextState_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_nextState_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_nextState_reg[0]_i_5_n_0 ;
  wire \FSM_sequential_nextState_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_nextState_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_nextState_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_nextState_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_nextState_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_nextState_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_nextState_reg[2]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire RX;
  wire [13:0]clk_counter;
  wire clock;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[13]_0 ;
  wire \count_reg[4]_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire counter_clear;
  wire done;
  wire done_INST_0_i_1_n_0;
  wire done_INST_0_i_2_n_0;
  wire done_INST_0_i_3_n_0;
  wire nextState__0;
  wire [2:0]out;
  wire reset;
  wire [3:1]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAFAAAABAAAAAAAB)) 
    \FSM_sequential_nextState_reg[0]_i_1 
       (.I0(\FSM_sequential_nextState_reg[0]_i_2_n_0 ),
        .I1(RX),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\FSM_sequential_nextState_reg[2]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \FSM_sequential_nextState_reg[0]_i_2 
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(\FSM_sequential_nextState_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_nextState_reg[0]_i_4_n_0 ),
        .I3(\count_reg[4]_0 ),
        .I4(\FSM_sequential_state_reg[2]_0 ),
        .I5(\FSM_sequential_nextState_reg[0]_i_5_n_0 ),
        .O(\FSM_sequential_nextState_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \FSM_sequential_nextState_reg[0]_i_4 
       (.I0(clk_counter[6]),
        .I1(clk_counter[4]),
        .I2(clk_counter[2]),
        .I3(clk_counter[1]),
        .I4(clk_counter[7]),
        .I5(clk_counter[9]),
        .O(\FSM_sequential_nextState_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_sequential_nextState_reg[0]_i_5 
       (.I0(clk_counter[5]),
        .I1(clk_counter[8]),
        .I2(clk_counter[0]),
        .I3(clk_counter[3]),
        .I4(done_INST_0_i_2_n_0),
        .O(\FSM_sequential_nextState_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAF30)) 
    \FSM_sequential_nextState_reg[1]_i_1 
       (.I0(\FSM_sequential_nextState_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_nextState_reg[1]_i_2_n_0 ),
        .I2(out[0]),
        .I3(out[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_sequential_nextState_reg[1]_i_2 
       (.I0(clk_counter[7]),
        .I1(clk_counter[9]),
        .I2(RX),
        .I3(\FSM_sequential_nextState_reg[1]_i_3_n_0 ),
        .I4(done_INST_0_i_2_n_0),
        .I5(\FSM_sequential_nextState_reg[1]_i_4_n_0 ),
        .O(\FSM_sequential_nextState_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_nextState_reg[1]_i_3 
       (.I0(clk_counter[1]),
        .I1(clk_counter[2]),
        .I2(clk_counter[4]),
        .I3(clk_counter[6]),
        .O(\FSM_sequential_nextState_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_nextState_reg[1]_i_4 
       (.I0(clk_counter[3]),
        .I1(clk_counter[0]),
        .I2(clk_counter[8]),
        .I3(clk_counter[5]),
        .O(\FSM_sequential_nextState_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_nextState_reg[2]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_sequential_nextState_reg[2]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1F1B)) 
    \FSM_sequential_nextState_reg[2]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(nextState__0),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF0057005F)) 
    \FSM_sequential_nextState_reg[2]_i_3 
       (.I0(clk_counter[9]),
        .I1(clk_counter[5]),
        .I2(clk_counter[7]),
        .I3(done_INST_0_i_2_n_0),
        .I4(clk_counter[6]),
        .I5(\FSM_sequential_nextState_reg[2]_i_5_n_0 ),
        .O(\FSM_sequential_nextState_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_sequential_nextState_reg[2]_i_4 
       (.I0(\FSM_sequential_nextState_reg[2]_i_6_n_0 ),
        .I1(clk_counter[7]),
        .I2(clk_counter[6]),
        .I3(clk_counter[3]),
        .I4(clk_counter[2]),
        .I5(\FSM_sequential_nextState_reg[2]_i_7_n_0 ),
        .O(nextState__0));
  LUT6 #(
    .INIT(64'h1111111111111113)) 
    \FSM_sequential_nextState_reg[2]_i_5 
       (.I0(clk_counter[8]),
        .I1(done_INST_0_i_2_n_0),
        .I2(clk_counter[7]),
        .I3(clk_counter[3]),
        .I4(clk_counter[2]),
        .I5(clk_counter[4]),
        .O(\FSM_sequential_nextState_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_nextState_reg[2]_i_6 
       (.I0(clk_counter[12]),
        .I1(clk_counter[13]),
        .I2(clk_counter[10]),
        .I3(clk_counter[11]),
        .I4(clk_counter[9]),
        .O(\FSM_sequential_nextState_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \FSM_sequential_nextState_reg[2]_i_7 
       (.I0(clk_counter[1]),
        .I1(clk_counter[0]),
        .I2(clk_counter[4]),
        .I3(clk_counter[5]),
        .I4(clk_counter[8]),
        .O(\FSM_sequential_nextState_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAABFAAFEAABE)) 
    \count[0]_i_1 
       (.I0(counter_clear),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\FSM_sequential_nextState_reg[2]_i_3_n_0 ),
        .I5(RX),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \count[0]_i_10 
       (.I0(clk_counter[3]),
        .I1(clk_counter[4]),
        .I2(clk_counter[2]),
        .I3(clk_counter[1]),
        .I4(clk_counter[9]),
        .I5(clk_counter[6]),
        .O(\count[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h313F)) 
    \count[0]_i_1__0 
       (.I0(nextState__0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\count_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h303022220000CCFF)) 
    \count[0]_i_3 
       (.I0(\count[0]_i_9_n_0 ),
        .I1(out[2]),
        .I2(done_INST_0_i_1_n_0),
        .I3(RX),
        .I4(out[0]),
        .I5(out[1]),
        .O(counter_clear));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(counter_clear),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_5 
       (.I0(clk_counter[3]),
        .I1(counter_clear),
        .O(\count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_6 
       (.I0(clk_counter[2]),
        .I1(counter_clear),
        .O(\count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_7 
       (.I0(clk_counter[1]),
        .I1(counter_clear),
        .O(\count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_8 
       (.I0(clk_counter[0]),
        .I1(counter_clear),
        .O(\count[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \count[0]_i_9 
       (.I0(done_INST_0_i_2_n_0),
        .I1(clk_counter[7]),
        .I2(clk_counter[8]),
        .I3(clk_counter[5]),
        .I4(clk_counter[0]),
        .I5(\count[0]_i_10_n_0 ),
        .O(\count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_2 
       (.I0(clk_counter[13]),
        .I1(counter_clear),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_3 
       (.I0(clk_counter[12]),
        .I1(counter_clear),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_2 
       (.I0(clk_counter[7]),
        .I1(counter_clear),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_3 
       (.I0(clk_counter[6]),
        .I1(counter_clear),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_4 
       (.I0(clk_counter[5]),
        .I1(counter_clear),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_5 
       (.I0(clk_counter[4]),
        .I1(counter_clear),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_2 
       (.I0(clk_counter[11]),
        .I1(counter_clear),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_3 
       (.I0(clk_counter[10]),
        .I1(counter_clear),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_4 
       (.I0(clk_counter[9]),
        .I1(counter_clear),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_5 
       (.I0(clk_counter[8]),
        .I1(counter_clear),
        .O(\count[8]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(clk_counter[0]));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_4_n_0 }),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 }));
  FDCE \count_reg[10] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(clk_counter[10]));
  FDCE \count_reg[11] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(clk_counter[11]));
  FDCE \count_reg[12] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(clk_counter[12]));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3:1],\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1_O_UNCONNECTED [3:2],\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 }));
  FDCE \count_reg[13] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(clk_counter[13]));
  FDCE \count_reg[1] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(clk_counter[1]));
  FDCE \count_reg[2] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(clk_counter[2]));
  FDCE \count_reg[3] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(clk_counter[3]));
  FDCE \count_reg[4] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(clk_counter[4]));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE \count_reg[5] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(clk_counter[5]));
  FDCE \count_reg[6] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(clk_counter[6]));
  FDCE \count_reg[7] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(clk_counter[7]));
  FDCE \count_reg[8] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(clk_counter[8]));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE \count_reg[9] 
       (.C(clock),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(clk_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    done_INST_0
       (.I0(out[1]),
        .I1(done_INST_0_i_1_n_0),
        .I2(out[2]),
        .I3(out[0]),
        .O(done));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    done_INST_0_i_1
       (.I0(done_INST_0_i_2_n_0),
        .I1(clk_counter[8]),
        .I2(clk_counter[7]),
        .I3(done_INST_0_i_3_n_0),
        .I4(clk_counter[9]),
        .I5(clk_counter[6]),
        .O(done_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_INST_0_i_2
       (.I0(clk_counter[11]),
        .I1(clk_counter[10]),
        .I2(clk_counter[13]),
        .I3(clk_counter[12]),
        .O(done_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    done_INST_0_i_3
       (.I0(clk_counter[2]),
        .I1(clk_counter[3]),
        .I2(clk_counter[4]),
        .I3(clk_counter[5]),
        .I4(clk_counter[8]),
        .O(done_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ControlModuleWrapper_0_0,ControlModuleWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ControlModuleWrapper,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    reset,
    RX,
    done,
    UART_DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input RX;
  output done;
  output [7:0]UART_DATA;

  wire RX;
  wire [7:0]UART_DATA;
  wire clock;
  wire done;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlModuleWrapper inst
       (.RX(RX),
        .UART_DATA(UART_DATA),
        .clock(clock),
        .done(done),
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
