`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2018 11:02:08 PM
// Design Name: 
// Module Name: DataManager
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


module DataManager(
    input logic clock, reset, SERVE_REG,
    output logic OutOfData,
    output logic regEn
    );
    enum logic [1:0] {NODATA, HASDATA, WAITDATA} currentState,nextState;
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState<=HASDATA;
        end
        else begin
           currentState<=nextState; 
        end
    end
    always_comb begin
        OutOfData=1'b1;
        regEn=1'b0;
        unique case(currentState)
            NODATA: begin
                OutOfData=1'b1;
                nextState=NODATA;
            end
            
            HASDATA: begin
                OutOfData=1'b0;
                nextState=HASDATA;
                if (SERVE_REG) begin
                    regEn=1'b1;
                    nextState=NODATA;        
                end
            end
            
            WAITDATA: begin
                nextState=HASDATA;
            end
        endcase
    end
    
endmodule: DataManager
