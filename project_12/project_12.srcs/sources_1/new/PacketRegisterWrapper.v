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
//yes

module PacketRegisterWrapper #(parameter WIDTH=DATASIZE)(
    input clock, reset, en,BS_READY,
    input FullPacket,
    output hasUnusedData, REG_READY,
    output opt_id,sptprice,
    strike    ,
    rate      ,
    volatility,
    time_r    ,
    otype     );
    wire clock, reset, en, BS_READY,REG_READY;
    wire [DATASIZE-1:0] FullPacket;
    wire hasUnusedData;
    wire [31:0] sptprice, strike, rate, volatility, time_r, otype, opt_id;
    PacketRegister PR (clock, reset, en, BS_READY, FullPacket, hasUnusedData,REG_READY,opt_id, sptprice, strike, rate, volatility, time_r, otype); 
endmodule
