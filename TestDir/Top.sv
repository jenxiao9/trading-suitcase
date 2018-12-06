`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2018 05:34:11 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
  input logic GPIO_SW_E,
  output logic [7:0]LED,
  input  logic RX,
  input logic [7:0]SW,
  input logic SYSCLK_N,
  input logic SYSCLK_P,
  output logic TX
    );
    logic [BSMODS-1:0]BS_DONE;
    logic [BSMODS-1:0]BS_IDLE;
    logic [BSMODS-1:0]BS_READY;
    logic [BSMODS-1:0]BS_START;
    logic [31:0]Din;
    logic [191:0]FullPackOut;
    logic [BSMODS-1:0]REG_READY;
    logic clock;
    logic [BSMODS-1:0]hasUnusedData;
    logic [BSMODS-1:0]regEn;
    logic reset;
    logic [BSMODS-1:0][31:0]ap_return;
    assign Din[7:4]=ap_return[0][31:28];
    assign Din[3:0]=ap_return[1][31:28];
    BSContainer(
      clock, reset,
      regEn, BS_START,
      FullPackOut,
      hasUnusedData, REG_READY,BS_DONE, BS_READY, BS_IDLE,
      ap_return 
    );
    design_1
       (BS_DONE,
        BS_IDLE,
        BS_READY,
        BS_START,
        Din,
        FullPackOut,
        GPIO_SW_E,
        LED,
        REG_READY,
        RX,
        SW,
        SYSCLK_N,
        SYSCLK_P,
        TX,
        clock,
        hasUnusedData,
        regEn,
        reset);
      
    
endmodule
