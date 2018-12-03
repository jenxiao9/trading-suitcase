//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Dec  2 21:51:46 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire GPIO_SW_E;
  wire GPIO_SW_N;
  wire GPIO_SW_S;
  wire RX;
  wire [7:0]SW;
  wire SYSCLK_N;
  wire SYSCLK_P;

  design_1 design_1_i
       (.GPIO_SW_E(GPIO_SW_E),
        .GPIO_SW_N(GPIO_SW_N),
        .GPIO_SW_S(GPIO_SW_S),
        .RX(RX),
        .SW(SW),
        .SYSCLK_N(SYSCLK_N),
        .SYSCLK_P(SYSCLK_P));
endmodule
