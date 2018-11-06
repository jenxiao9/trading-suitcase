`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2018 11:38:57 PM
// Design Name: 
// Module Name: 2to1Mux
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


module Mux2to1Wrapper #(parameter WIDTH=8)(
    input d1, d2, sel,
    output Q
    );
    wire [WIDTH-1:0] d1,d2,Q;
    wire sel;
    Mux2to1 (d1,d2,sel,Q);
endmodule
