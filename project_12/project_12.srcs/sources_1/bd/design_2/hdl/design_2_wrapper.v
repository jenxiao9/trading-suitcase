//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sat Oct 27 22:52:24 2018
//Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (GPIO_SW_N,
    GPIO_SW_S,
    LED,
    SYSCLK_N,
    SYSCLK_P);
  input [0:0]GPIO_SW_N;
  input GPIO_SW_S;
  output [7:0]LED;
  input SYSCLK_N;
  input SYSCLK_P;

  wire [0:0]GPIO_SW_N;
  wire GPIO_SW_S;
  wire [7:0]LED;
  wire SYSCLK_N;
  wire SYSCLK_P;

  design_2 design_2_i
       (.GPIO_SW_N(GPIO_SW_N),
        .GPIO_SW_S(GPIO_SW_S),
        .LED(LED),
        .SYSCLK_N(SYSCLK_N),
        .SYSCLK_P(SYSCLK_P));
endmodule
