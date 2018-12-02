//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Dec  2 00:20:15 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire CTS;
  wire GPIO_SW_E;
  wire GPIO_SW_N;
  wire GPIO_SW_S;
  wire [7:0]LED;
  wire RTS;
  wire RX;
  wire SYSCLK_N;
  wire SYSCLK_P;
  wire TX;

  design_1 design_1_i
       (.CTS(CTS),
        .GPIO_SW_E(GPIO_SW_E),
        .GPIO_SW_N(GPIO_SW_N),
        .GPIO_SW_S(GPIO_SW_S),
        .LED(LED),
        .RTS(RTS),
        .RX(RX),
        .SYSCLK_N(SYSCLK_N),
        .SYSCLK_P(SYSCLK_P),
        .TX(TX));
endmodule
