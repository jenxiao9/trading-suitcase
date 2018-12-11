`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2018 10:47:04 PM
// Design Name: 
// Module Name: BLSController
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
//The number of blackschoels modules that will be in the desig
//comment

//SERVE_REG is a signal which goes out to the data controller to fetch the next values for that register.
//parameter BSMODS=1;
parameter BSMODS=20;
parameter DATASIZE=192;
module BLSController(
    input logic clock, reset, startSystem,OutOfData,
    input logic  [BSMODS-1:0] BS_READY,
    input logic  [BSMODS-1:0] BS_DONE,
    input logic  [BSMODS-1:0] BS_IDLE,
    input logic  [BSMODS-1:0] hasUnusedData,
    input logic  [BSMODS-1:0] REG_READY,
    output logic [BSMODS-1:0] BS_START,
    output logic [BSMODS-1:0] SERVE_REG,
    output logic [31:0] Clocks,
    output logic ROUND_DONE
    );
    logic[4:0] i;
    logic clear, ClockCntEn;
    logic clearActive, ActiveCntInc, ActiveCntDec;
    logic [3:0] ActiveCount;
    logic [BSMODS-1:0] RunningCount;
    logic [BSMODS-1:0] ActivateLine;
    logic [BSMODS-1:0] DeactivateLine;
    logic [BSMODS-1:0] SecRunningCount;
    logic [BSMODS-1:0] SecActivateLine;
    logic [BSMODS-1:0] SecDeactivateLine;
    enum logic [1:0] {IDLE, RUN, DONE} currentState, nextState;
    logic [BSMODS-1:0] prevReady;
    Counter #(32) Clock_Count (clock, reset, clear, ClockCntEn,1'b0, Clocks);
    Counter #(4) Active_Runs (clock, reset, clearActive, ActiveCntInc, ActiveCntDec, ActiveCount);
    always_ff @(posedge clock, posedge reset) begin
        if (reset) begin
            currentState<=IDLE;
            //BS_START_OUT<={BSMODS{1'b0}};
            RunningCount<={BSMODS{1'b0}};
            SecRunningCount<={BSMODS{1'b0}};
            prevReady<={BSMODS{1'b0}};
        end
        else begin
            currentState<=nextState;
            RunningCount<=(RunningCount|ActivateLine)^DeactivateLine;
            SecRunningCount<=(SecRunningCount|SecActivateLine)^SecDeactivateLine;
            prevReady<=BS_READY;
        end
    end
    always_comb begin
        nextState=IDLE;
        clear            =0;
        ClockCntEn       =0;
        clearActive      =0;
        ActiveCntInc     =0;
        ActiveCntDec     =0;
        SERVE_REG        ={BSMODS{1'b0}};
        BS_START         ={BSMODS{1'b0}};
        ActivateLine     ={BSMODS{1'b0}};
        DeactivateLine   ={BSMODS{1'b0}};
        SecActivateLine  ={BSMODS{1'b0}};
        SecDeactivateLine={BSMODS{1'b0}};
        ROUND_DONE = 1'b0;
        unique case (currentState)
            IDLE: begin
                nextState=IDLE;
                if (startSystem) begin
                    nextState=RUN;
                    clear=1;
                end
            end
            
            RUN: begin
            //DEFAULT ASSIGNMENTS
                nextState=RUN;
                ClockCntEn=1;
            //END DEFAULT ASSIGNMENTS
                for (i=0; i<BSMODS; i=i+1) begin: runloop
                    if (hasUnusedData[i]) begin
                        if (REG_READY[i]) begin
                            ActivateLine[i]=1'b1;
                            if (BS_READY&&RunningCount[i])
                                SecActivateLine[i]=1'b1;
                            BS_START[i]=1'b1;
                        end
                    end
                    else if (~OutOfData) begin
                        SERVE_REG[i]=1'b1;
                    end
                    if (BS_DONE[i]) begin
                        if (SecRunningCount[i])
                            SecDeactivateLine[i]=1'b1;
                        else if (RunningCount[i])
                            DeactivateLine[i]=1'b1;
                    end
                    //DEBUGGGING
                   /* if (prevReady=={BSMODS{1'b0}} && BS_READY != {BSMODS{1'b0}})
                        nextState=DONE;*/
                end
                //Technically this next line should only need BS_IDLE==... and OutOfData. The others are just safety checks.
                if (BS_IDLE == {BSMODS{1'b1}}&&OutOfData&&hasUnusedData=={BSMODS{1'b0}}&&RunningCount=={BSMODS{1'b0}}) begin
                    nextState=DONE;
                    ROUND_DONE=1'b1;
                    ClockCntEn=0;
                end
            end
            
            DONE: begin
                //BS_START={BSMODS{1'b1}};
                nextState=IDLE;
            end
        endcase
    end
endmodule
