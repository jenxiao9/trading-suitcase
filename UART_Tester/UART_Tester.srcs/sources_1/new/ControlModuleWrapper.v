`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 11:38:36 PM
// Design Name: 
// Module Name: ControlModuleWrapper
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


module ControlModuleWrapper(
    input clock, reset, RX, CTS, GPIO_SW_S, GPIO_SW_E,
    output TX,
    output RTS,
    output done,
    output LED
    );
    wire clock,reset, RX, TX, CTS, GPIO_SW_S, GPIO_SW_N,RTS,done;
    wire [7:0] LED;
    ControlModule(clock, reset, RX, CTS, GPIO_SW_S, GPIO_SW_E,TX,RTS,done, LED);
endmodule
