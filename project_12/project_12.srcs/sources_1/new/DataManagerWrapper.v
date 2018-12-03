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
    input  clock, reset, DONE_WRITING,
    input   SERVE_REG,
    input   dataA,
    output  OutOfData,
    output  regEn,
    output  FullPackOut,
    output  addrA,
    output  addrSelect
    );

    wire  clock, reset, DONE_WRITING;
    wire  [BSMODS-1:0] SERVE_REG;
    wire  [31:0] dataA;
    wire  OutOfData;
    wire  [BSMODS-1:0] regEn;
    wire  [DATASIZE-1:0] FullPackOut;
    wire  [31:0] addrA;
    wire  [1:0] addrSelect;
    DataManager (clock, reset, SERVE_REG, dataA, OutOfData, regEn, FullPackOut,addrA,addrSelect);
endmodule
