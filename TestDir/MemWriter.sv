`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2018 03:47:24 AM
// Design Name: 
// Module Name: MemWriter
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
parameter RETSIZE=96;

module MemWriter(
    input logic clock, reset, roundReset,
    input logic [BSMODS-1:0] BS_DONE,
    input logic [31:0] Clocks,
    input logic [BSMODS-1:0][63:0] ap_return,
    output logic [DATASIZE-1:0] dataToB,
    output logic [10:0] addrB,
    output logic weB
    );
    //enum logic [1:0] {NODATA, HASDATA, WAITDATA, STALL} currentState,nextState;
    logic[4:0] i;
    //logic [3:0] ReadNum;
    logic [63:0] selectedRet;
    logic clearAddrBCount, incAddrBCount;
    assign dataToB={Clocks, selectedRet};
    VarCounts #(.WIDTH(11), .DEFAULT_VAL(0), .INC_AMT(1)) addrBCounter (clock, reset, incAddrBCount, clearAddrBCount, addrB);
    always_comb begin
        selectedRet=64'd0;
        weB=1'b0;
        clearAddrBCount=1'b0;
        incAddrBCount=1'b0;
        for(i=0; i<BSMODS; i++) begin: CheckLoop
            if (BS_DONE[i]) begin
                selectedRet=ap_return[i];
                incAddrBCount=1'b1;
                weB=1'b1;
                break;
            end
        end
        if (roundReset)
            clearAddrBCount=1'b1;
    end
endmodule: MemWriter
module VarCounts #(parameter WIDTH=10, parameter DEFAULT_VAL=0, parameter INC_AMT=1)(
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

endmodule: VarCounts
