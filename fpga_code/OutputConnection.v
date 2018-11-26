`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 10:14:31 PM
// Design Name: 
// Module Name: OutputConnection
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


module OutputConnection(
    input result,
    output GPIO_LED_1_LS
    );
    wire [31:0] result;
    wire GPIO_LED_1_LS;
    assign GPIO_LED_1_LS = result[0];
endmodule
