`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2018 11:45:58 PM
// Design Name: 
// Module Name: ComonentsLib
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
parameter DATASIZE = 224;

module PacketRegister #(parameter WIDTH=DATASIZE) (
    input logic clock, reset, en,BS_READY,
    input logic [DATASIZE-1:0] inD,
    output logic hasUnusedData,
    output logic [32:0] sptprice,
    strike    ,
    rate      ,
    volatility,
    time_r    ,
    otype     ,
    timet     );
    logic prevBS_READY;
    always_ff @(posedge clock, posedge reset) begin
        if(reset) begin
            sptprice      <= 32'd0;
            strike        <= 32'd0;
            rate          <= 32'd0;
            volatility    <= 32'd0;
            time_r        <= 32'd0;
            otype         <= 32'd0;
            timet         <= 32'd0;
            hasUnusedData <=  1'b0;
            prevBS_READY  <=  1'b0;
        end
        else if (en) begin
            sptprice      <= inD[223:192];
            strike        <= inD[191:160];
            rate          <= inD[159:128];
            volatility    <= inD[127:96];
            time_r        <= inD[95:64];
            otype         <= inD[63:32];
            timet         <= inD[31:0];
            hasUnusedData <= 1'b1;
        end
        else if (~prevBS_READY && BS_READY) begin
            hasUnusedData <= 1'b0;
        end
        prevBS_READY<=BS_READY;
    end
endmodule: PacketRegister

module Counter #(parameter WIDTH=8) (
    input logic clock, reset, clear, inc, dec,
    output logic [WIDTH-1:0] count);
    
    always_ff @(posedge clock, posedge reset) begin
        if (reset||clear) begin
            count<={WIDTH{1'b0}};
        end
        else if (inc) begin
            count<=count+1'b1;
        end
        else if (dec) begin
            if (count>0)
                count<=count-1;
        end
    end
 endmodule: Counter
 
 module Mux2to1 #(parameter WIDTH=8) (
    input logic [WIDTH-1:0] d1,d2,
    input logic sel,
    output logic [WIDTH-1:0] Q);
    always_comb begin
        if (sel==1'b1)
            Q=d1;
        else
            Q=d2;
    end
endmodule: Mux2to1
