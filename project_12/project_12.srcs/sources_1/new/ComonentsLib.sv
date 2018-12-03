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
    input logic [DATASIZE-1:0] FullPacket,
    output logic hasUnusedData, REG_READY,
    output logic [31:0] opt_id,sptprice,
    strike    ,
    rate      ,
    volatility,
    time_r    ,
    otype);
    logic prevBS_READY;
    logic clearcd,inccd,deccd;
    logic [7:0] cdCount;
    logic cdPast;
    logic obit;
    logic [30:0] opt_id_u;
    Counter cd (clock, reset, clearcd,inccd,deccd,cdCount);
    enum logic {READY,COOLDOWN}  currentState, nextState;
    assign otype = {31'd0, obit};
    assign opt_id = {opt_id_u, 1'b0};
    always_ff @(posedge clock, posedge reset) begin
        if(reset) begin
            sptprice      <= 32'd0;
            strike        <= 32'd0;
            rate          <= 32'd0;
            volatility    <= 32'd0;
            time_r        <= 32'd0;
            otype         <= 32'd0;
            opt_id        <= 32'd0;
            //May remove timet later
            hasUnusedData <=  1'b0;
            prevBS_READY  <=  1'b0;
            currentState  <=  READY;
            REG_READY     <=  1'b0;
            obit          <=  1'b0;
        end
        else if (en) begin
            {opt_id_u,obit,sptprice,strike,rate,volatility,time_r}<=FullPacket;
            hasUnusedData<=1'b1;
        end
        else if (~prevBS_READY && BS_READY) begin
            hasUnusedData <= 1'b0;
        end
        if (cdPast && hasUnusedData)
            REG_READY<=1'b1;
        else
            REG_READY<=1'b0;
        currentState<=nextState;
        prevBS_READY<=BS_READY;
    end
    always_comb begin
        cdPast=1'b0;
        inccd=1'b0;
        clearcd=1'b0;
        deccd=1'b0;
        case(currentState)
            READY: begin
                nextState=READY;
                clearcd=1'b1;
                cdPast=1'b1;
                if (~prevBS_READY && BS_READY) begin
                    clearcd=1'b0;
                    nextState=COOLDOWN;
                    inccd=1'b1;
                end
            end
            
            COOLDOWN: begin
                nextState=COOLDOWN;
                inccd=1'b1;
                if (cdCount>=8'd50) begin
                    nextState=READY;
                    clearcd=1'b1;
                end
            end
        endcase
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
    input logic [WIDTH-1:0] d0,d1,d2,d3,
    input logic [1:0] sel,
    output logic [WIDTH-1:0] Q);
    always_comb begin
        case(sel)
            2'd0: begin
                Q=d0;
            end
            2'd1: begin
                Q=d1;
            end
            2'd2: begin
                Q=d2;
            end
            2'd3: begin
                Q=d3;
            end           
        endcase
    end
endmodule: Mux2to1
