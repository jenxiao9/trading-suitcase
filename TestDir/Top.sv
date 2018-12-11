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
  input logic GPIO_SW_E,GPIO_SW_S,
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
    logic [BSMODS-1:0][63:0]ap_return;
    assign Din[7:6]=ap_return[0][31:30];
    assign Din[5:4]=ap_return[1][31:30];
    assign Din[3:2]=ap_return[2][31:30];
    assign Din[1:0]=ap_return[3][31:30];
    logic roundReset;
    logic weB;
    logic [191:0] dataToB;
    logic [10:0] addrB;
    logic [31:0] Clocks;
    MemWriter memwr (
         clock, reset, roundReset,
         BS_DONE,
         Clocks,ap_return,
         dataToB,
         addrB,
         weB
        );
    BSContainer(
      clock, reset,
      regEn, BS_START,
      FullPackOut,
      hasUnusedData, REG_READY,BS_DONE, BS_READY, BS_IDLE,
      ap_return 
    );
    
    design_1(
.BS_DONE(BS_DONE),
.BS_IDLE(BS_IDLE),
.BS_READY(BS_READY),
.BS_START(BS_START),
.Clocks(Clocks),
.DONE_TRANSMITTING(roundReset),
.Din(Din),
.FullPackOut(FullPackOut),
.GPIO_SW_E(GPIO_SW_E),
.LED(LED),
.REG_READY(REG_READY),
.RX(RX),
.SYSCLK_N(SYSCLK_N),
.SYSCLK_P(SYSCLK_P),
.TX(TX),
.addrb(addrB),
.clock(clock),
.dinb(dataToB),
.hasUnusedData(hasUnusedData),
.regEn(regEn),
.reset(reset),
.web(weB));
        
      
    
endmodule
