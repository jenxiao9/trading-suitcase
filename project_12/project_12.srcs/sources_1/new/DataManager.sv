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
    input logic clock, reset, DONE_WRITING,
    input logic [BSMODS-1:0] SERVE_REG,
    input logic [31:0] dataA,
    output logic OutOfData,
    output logic [BSMODS-1:0] regEn,
    output logic [DATASIZE-1:0] FullPackOut,
    output logic [31:0] addrA,
    output logic [1:0] addrSelect
    );
    enum logic [1:0] {NODATA, HASDATA, WAITDATA} currentState,nextState;
    logic [29:0] addrACount;
    logic[$clog2(BSMODS)-1:0] i;
    logic [3:0] ReadNum;
    logic [DATASIZE-1:0] fullPackReg;
    logic shiftFullPack;
    logic clearReadNum, incReadNum, clearAddrACount, incAddrACount;
    assign FullPackOut={dataA, fullPackReg[DATASIZE-1:32]};
    assign addrA = {addrACount, 2'd0};
    VarCount #(WIDTH(4) , DEFAULT_VAL(0), INC_AMT(1)) readCounter  (clock ,reset, incReadNum, clearReadNum, ReadNum);
    VarCount #(WIDTH(30), DEFAULT_VAL(0), INC_AMT(1)) addrACounter (clock, reset, incAddrACount, clearAddrACount, addrACount);
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState<=NODATA;
            fullPackReg <= {DATASIZE {1'b0}};
        end
        else begin
            currentState<=nextState;
            if (shiftFullPack)
                fullPackReg <= FullPackOut;
        end
    end
    always_comb begin
        OutOfData      =1'b1;
        regEn          =1'b0;
        incReadNum     =1'b0;
        incAddrACount  =1'b0;
        clearReadNum   =1'b0;
        clearAddrACount=1'b0;
        shiftFullPack  =1'b0;
        addrSelect     =2'd0;
        unique case(currentState)
            NODATA: begin
                OutOfData=1'b1;
                nextState=NODATA;
                if (DONE_WRITING)
                    nextState=HASDATA;
                addrSelect=2'd1;
            end
            
            HASDATA: begin
                OutOfData=1'b0;
                nextState=HASDATA;
                if (SERVE_REG!={BSMODS{1'b0}}) begin
                    nextState=WAITDATA;
                    shiftFullPack =1'b1;
                    incReadNum   =1'b1;
                    incAddrACount=1'b1;
                end
            end
            
            WAITDATA: begin
                nextState=WAITDATA;
                OutOfData=1'b0;
                incAddrACount=1'b1;
                incReadNum=1'b1;
                if (ReadNum>=4'd7) begin
                    clearReadNum=1'b1;
                    if(addrACount<30'd8) begin
                        nextState=HASDATA;
                    end
                    else begin
                        nextState=NODATA;
                        clearAddrACount=1'b1;
                    end
                    for (i=0; i<BSMODS; i++) begin: runloop
                        if (SERVE_REG[i]) begin
                            regEn[i]=1'b1;
                            break;
                        end
                    end
                end
            end
        endcase
    end
    
endmodule: DataManager
