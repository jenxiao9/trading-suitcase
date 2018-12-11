`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 12:03:45 AM
// Design Name: 
// Module Name: MEMTOUART
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
/*module Top();
  logic clock ,reset, ROUND_DONE, UART_DONE;
  logic [191:0] dataFromMEM;
  logic UART_START;
  logic [7:0] dataToUART;
  logic [10:0] addrtoMEM;
  logic bit_o;

MEMTOUART MR(
    clock, reset, ROUND_DONE,
    UART_DONE,
    dataFromMEM,
    UART_START,
    dataToUART,
    addrtoMEM,
    );
ControlTransmiter 
	( clock, reset, UART_START, 
		dataToUART,, 
		bit_o,
		UART_DONE); 
logic [100][191:0] fakeMem;
logic delay_reg;
//assign dataFromMEM=delay_reg;
always_ff @(posedge clock, posedge reset) begin
  if (reset)
    delay_reg<=192'd0;
  else
    delay_reg<=fakeMem[addrtoMEM];
end
initial begin
  clock=0;
  forever #5 clock=~clock;
end
initial begin
  reset=0;
    fakeMem[0]=192'h4f0cc60a_4297cccd_428c0000_3cdb37ca_3fbbedfa_3a607038;
    dataFromMEM=192'h4e2e334e4297cccd428c00003cdb37ca3f771de73a607038;
    //21323123_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakeMem[2]=192'h4f4007034297cccd428f00003cdb37ca3f55119d3a607038;
    //44444444_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakeMem[3]=192'h4efb25164297cccd428f00003cdb37ca3f55119d3a607038;
    //55555555_3F800000_3F8CCCCD_40000000_40400000_40000000;
    fakeMem[4]=192'h4f721b044297cccd429000003cdb37ca3f5b98c83a607038;
    //66666666_3F800000_3F8CCCCD_40000000_40400000_40000000;
  #1 reset =1;
  #1 reset = 0;
  @(posedge clock);
  #5 ROUND_DONE=1;
  @(posedge clock);
  ROUND_DONE=0;
  #100000000 $finish;

end

endmodule: Top*/

module MEMTOUART(
    input logic clock, reset, ROUND_DONE,
    input logic UART_DONE,
    input logic [191:0] dataFromMEM,
    output logic UART_START,
    output logic [7:0] dataToUART,
    output logic [10:0] addrtoMEM,
    output logic memSel,
    output logic DONE_TRANSMITTING
    );
    logic [5:0] writePos;
    logic clearWritePos, incWritePos, clearAddrACount, incAddrACount;
    VarCount #(.WIDTH(6), .INC_AMT(1)) posCounter (clock ,reset, incWritePos, clearWritePos, writePos);
    VarCount #(.WIDTH(11), .INC_AMT(1)) addrCounter (clock, reset, incAddrACount, clearAddrACount, addrtoMEM);
    enum logic [2:0] {INIT,WRITING, HOLD, HOLD1,HOLD2} currentState, nextState;
    logic [191:0] fullPackReg;
    logic shiftFullPack; 
    logic readReg;
    assign dataToUART=fullPackReg[7:0];
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState <= INIT;
            fullPackReg  <= 192'd0;
        end
        else begin
            currentState <= nextState;
            if (shiftFullPack)
                fullPackReg<={8'd0, fullPackReg[191:8]};
            else if (readReg)
                fullPackReg<=dataFromMEM;
        end
    end
    always_comb begin
        incWritePos=1'b0;
        incAddrACount=1'b0;
        clearWritePos=1'b0;
        clearAddrACount=1'b0;
        shiftFullPack=1'b0;
        memSel=1'b0;
        readReg=1'b0;
        UART_START=1'b0;
        DONE_TRANSMITTING=0;
        unique case(currentState)
            INIT: begin
                clearWritePos=1'b1;
                clearAddrACount=1'b1;
                nextState=INIT;
                if (ROUND_DONE) begin
                    nextState=HOLD;
                    memSel=1'b1;
                end
            end
            HOLD: begin
                memSel=1'b1;
                nextState=HOLD1;
            end
            HOLD1: begin
                memSel=1'b1;
                nextState=HOLD2;
                readReg=1'b1;
            end
            HOLD2: begin
                memSel=1'b1;
                UART_START=1'b1;
                nextState=WRITING;
                shiftFullPack=1'b1;
                incAddrACount=1'b1;
            end
            WRITING: begin
                nextState=WRITING;
                memSel=1'b1;
                if (UART_DONE) begin
                    incWritePos=1'b1;
                    shiftFullPack=1'b1;
                    UART_START=1'b1;
                    if (writePos==6'd23) begin
                        clearWritePos=1'b1;
                        nextState=HOLD;
                        if (addrtoMEM>=11'd1000) begin
                            nextState=INIT;
                            DONE_TRANSMITTING=1;
                            clearAddrACount=1'b1;
                            clearWritePos=1'b1;
                        end
                    end
                end
                
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

