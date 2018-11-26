`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2018 12:26:19 AM
// Design Name: 
// Module Name: BLSControllerWrapper
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

module BLSControllerWrapper(
    input   clock, reset, startSystem,OutOfData,
    input   BS_READY,
    input   BS_DONE,
    input   BS_IDLE,
    input   hasUnusedData,
    output  BS_START,
    output  SERVE_REG,
    output  LED
    );
    wire clock, reset, startSystem,OutOfData;
    wire [BSMODS-1:0] BS_READY;     
    wire [BSMODS-1:0] BS_DONE;      
    wire [BSMODS-1:0] BS_IDLE;      
    wire [BSMODS-1:0] hasUnusedData;
    wire [BSMODS-1:0] BS_START; 
    wire [BSMODS-1:0] SERVE_REG;
    wire [7:0]        LED;      
    BLSController (clock, reset, startSystem, OutOfData, BS_READY, BS_DONE, BS_IDLE, hasUnusedData, BS_START, SERVE_REG, LED);
endmodule: BLSControllerWrapper
