`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2018 11:22:58 PM
// Design Name: 
// Module Name: DataManagerWrapper
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


module DataManagerWrapper(
    input  clock, reset, SERVE_REG,
    output OutOfData,
    output regEn
    );
    wire clock, reset, SERVE_REG, OutOfData, regEn;
    DataManager (clock, reset, SERVE_REG, OutOfData, regEn);
endmodule
