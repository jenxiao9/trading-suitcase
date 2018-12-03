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
    input logic clock, reset, UART_DONE,
    input logic [7:0] UART_DATA,
    output logic DONE_WRITING,
    output logic [31:0] dataToA,
    output logic [31:0] addrA,
    output logic enA,
    output logic [3:0] weA
    );
    logic [29:0] addrACount;
    logic [1:0] writePos;
    logic clearWritePos, incWritePos, clearAddrACount, incAddrACount;
    VarCount #(WIDTH(2)) posCounter (clock ,reset, incWritePos, clearWritePos, writePos);
    VarCount #(WIDTH(30)) addrCounter (clock, reset, incAddrACount, clearAddrACount, addrACount);
    enum logic [1:0] {WRITING, DONE} currentState, nextState;
    assign enA=1'b1;
    assign addrA={addrACount, 2'd0};
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState <= WRITING;
        end
        else begin
            currentState <= nextState;
        end
    end
    always_comb begin
        incWritePos=1'b0;
        incAddrACount=1'b0;
        clearWritePos=1'b0;
        clearAddrACount=1'b0;
        dataToA= 32'd0;
        weA=4'd0;
        DONE_WRITING=1'b0;
        unique case(currentState)
            WRITING: begin
                nextState=WRITING;
                if (UART_DONE) begin
                    incWritePos=1'b1;
                    case(writePos)
                        2'd0: begin
                            dataToA[7:0] =UART_DATA;
                            weA=4'h1;
                        end
                        2'd1: begin
                            dataToA[15:8]=UART_DATA;
                            weA=4'h2;
                        end
                        2'd2: begin
                            dataToA[23:16]=UART_DATA;
                            weA=4'h4;
                        end
                        2'd3: begin
                            dataToA[31:24]=UART_DATA;
                            weA=4'h8;
                            clearWritePos=1'b1;
                            incAddrACount=1'b1;
                        end
                    endcase
                end
                if ({addrACount,2'd0}>=32'h00000010) begin
                    nextState=DONE;
                    clearAddrACount=1'b1;
                    clearWritePos=1'b1;
                end
            end
            
            DONE: begin
                nextState=DONE;
                DONE_WRITING=1'b1;
            end
        endcase
    end
endmodule
module VarCount #(parameter WIDTH=10, parameter DEFAULT_VAL=1, parameter INC_AMT=1)(
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