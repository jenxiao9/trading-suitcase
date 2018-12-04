`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 10:40:31 AM
// Design Name: 
// Module Name: DataWriter
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


module DataWriter(
    input logic clock, reset,
    input logic [127:0] newData,
    input logic [31:0] volatility, otype, timet,
    input logic fdone,
    output logic startF,
    output logic enA, enB,
    output logic [3:0] wea,web,
    output logic [31:0] addrA, addrB,
    output logic [31:0] dataA, dataB
    );
    logic clearRuns, incRuns, decRuns, clearDelay, incDelay, decDelay;
    logic [7:0] Runs,Delay;
    assign inc = {24'd0,Runs};
    
    Counter #(8) OptionsRun (clock, reset, clearRuns, incRuns, decRuns, Runs);
    Counter #(8) DelayCount (clock, reset, clearDelay, incDelay, decDelay, Delay);
    
    enum logic [2:0] {NODATA, HASDATA, WAITDATA, WRITE1, WRITE2, WRITE3} currentState,nextState;
    
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState<=NODATA;
        end
        else begin
           currentState<=nextState; 
        end
    end
    always_comb begin
        unique case (currentState)
            NODATA: begin
                
            end
            
            HASDATA: begin
            
            end
            
            WAITDATA: begin
            
            end
        endcase
    end
    
endmodule
