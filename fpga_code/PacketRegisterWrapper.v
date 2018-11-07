`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2018 10:53:44 PM
// Design Name: 
// Module Name: PacketRegisterWrapper
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


module PacketRegisterWrapper #(parameter WIDTH=DATASIZE)(
    input clock, reset, en,BS_READY,
    input inD,
    output hasUnusedData,
    output sptprice,
    strike    ,
    rate      ,
    volatility,
    time_r    ,
    otype     ,
    timet     );
    wire clock, reset, en, BS_READY;
    wire [WIDTH-1:0] inD;
    wire hasUnusedData;
    wire [31:0] sptprice, strike, rate, volatility, time_r, otype, timet;
    PacketRegister PR (clock, reset, en, BS_READY, inD, hasUnusedData, sptprice, strike, rate, volatility, time_r, otype, timet); 
endmodule
