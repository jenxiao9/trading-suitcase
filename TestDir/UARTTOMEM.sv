`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 01:14:53 AM
// Design Name: 
// Module Name: UARTTOMEM
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


module UARTTOMEM(
    input logic clock, reset, UART_DONE, DONE_TRANSMITTING,
    input logic [7:0] UART_DATA,
    output logic DONE_WRITING,
    output logic [191:0] dataToA,
    output logic [10:0] addrA,
    output logic weA
    );
    logic [5:0] writePos;
    logic clearWritePos, incWritePos, clearAddrACount, incAddrACount;
    VarCount #(.WIDTH(6), .INC_AMT(1)) posCounter (clock ,reset, incWritePos, clearWritePos, writePos);
    VarCount #(.WIDTH(11), .INC_AMT(1)) addrCounter (clock, reset, incAddrACount, clearAddrACount, addrA);
    enum logic [1:0] {INIT,WRITING, DONE} currentState, nextState;
    logic [191:0] fullPackReg;
    logic shiftFullPack;
    assign dataToA={UART_DATA,fullPackReg[191:8]};
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState <= INIT;
            fullPackReg  <= 192'd0;
        end
        else begin
            currentState <= nextState;
            if (shiftFullPack)
                fullPackReg<=dataToA;
        end
    end
    always_comb begin
        incWritePos=1'b0;
        incAddrACount=1'b0;
        clearWritePos=1'b0;
        clearAddrACount=1'b0;
        weA=1'd0;
        DONE_WRITING=1'b0;
        shiftFullPack=1'b0;
        unique case(currentState)
            INIT: begin
                clearWritePos=1'b1;
                clearAddrACount=1'b1;
                nextState=WRITING;
            end
            WRITING: begin
                nextState=WRITING;
                if (UART_DONE) begin
                    incWritePos=1'b1;
                    shiftFullPack=1'b1;
                    if (writePos==6'd23) begin
                        clearWritePos=1'b1;
                        incAddrACount=1'b1;
                        weA=1'b1;
                    end
                end
                if (addrA>=11'd1000) begin
                    nextState=DONE;
                    clearAddrACount=1'b1;
                    clearWritePos=1'b1;
                    DONE_WRITING=1'b1;
                end
            end
            
            DONE: begin
                nextState=DONE;
                if (DONE_TRANSMITTING)
                    nextState=INIT;
            end
        endcase
    end
endmodule
module VarCount #(parameter WIDTH=10, parameter DEFAULT_VAL=0, parameter INC_AMT=1)(
   input  logic clock,
   input  logic reset,
   input  logic clock_en, clear,
   output logic [WIDTH-1:0] count);

   always_ff @(posedge clock or posedge reset) begin : proc_count
      if(reset) begin
         count <= DEFAULT_VAL;
      end 
      else begin
         if(clear) begin
            count <= {WIDTH{1'b0}};
         end
         else if(clock_en) begin
            count <= count + INC_AMT;
         end
      end
   end

endmodule: VarCount
