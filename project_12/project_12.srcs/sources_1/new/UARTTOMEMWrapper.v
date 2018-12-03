`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 01:53:42 AM
// Design Name: 
// Module Name: UARTTOMEMWrapper
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


module UARTTOMEMWrapper(
    input  clock, reset, UART_DONE,
    input  UART_DATA,
    output DONE_WRITING,
    output dataToA,
    output addrA,
    output enA,
    output weA
    );
    wire clock, reset, UART_DONE, enA,DONE_WRITING;
    wire [7:0] UART_DATA;
    wire [31:0] dataToA, addrA;
    wire [3:0] weA;
    UARTTOMEM(clock, reset, UART_DONE,UART_DATA,DONE_WRITING,dataToA,addrA,enA,weA);
endmodule
