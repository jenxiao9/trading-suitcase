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
    input clock, reset, RX,
    output done,
    output UART_DATA
    );
    wire clock,reset, RX,done;
    wire [7:0] UART_DATA;
    ControlModule(clock, reset, RX, done, UART_DATA);
endmodule
