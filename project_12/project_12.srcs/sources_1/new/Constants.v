`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 10:09:40 AM
// Design Name: 
// Module Name: Constants
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


module Constants(
    output sptprice,
    output strike,
    output rate,
    output volatility,
    output time_r,
    output otype,
    output timet
    );
    
    wire [31:0] sptprice;
    wire [31:0] strike;
    wire [31:0] rate;
    wire [31:0] volatility;
    wire [31:0] time_r;
    wire [31:0] otype;
    wire [31:0] timet;
    assign sptprice    = 32'h3F800000;  
    assign strike      = 32'h3F8CCCCD;    
    assign rate        = 32'h40000000;      
    assign volatility  = 32'h40400000;
    assign time_r      = 32'h40000000;    
    assign otype       = 32'h3F800000;     
    assign timet       = 32'h3E4CCCCD;
endmodule
