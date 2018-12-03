`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 11:28:44 PM
// Design Name: 
// Module Name: ControlModule
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


module ControlModule(
    input logic clock, reset, RX,
    output logic done,
    output logic [7:0] UART_DATA
    );
    logic [7:0] o_data;
    logic bit_in;
    
    logic [13:0] clk_counter; 
    logic counter_en, counter_clear; 
    counters SAMPLE_CLK_COUNTER(clock, reset, counter_en, counter_clear, clk_counter);  

    logic [13:0] bit_counter; 
    logic bit_en, bit_clear; 
    counters BIT_COUNTER(clock, reset, bit_en, bit_clear, bit_counter);  

    logic [7:0] data_buf;
    logic [7:0] sreg;
    logic clear_sreg;
    assign bit_in=RX;
    assign UART_DATA=sreg;
    //start bit is 0, look for drop from 1 to 0 
    enum logic [2:0] {IDLE, START_B, DATA, END_B, CLEANUP} state, nextState;

        always_ff @(posedge clock or posedge reset) begin 
             if(reset) begin
                 state <= IDLE;
                 sreg  <= 8'd0;
             end else begin
                 state <= nextState;
                 if (clear_sreg==1'b1)
                    sreg<= 8'd0;
                 else
                    sreg  <= sreg | data_buf;
             end
         end 

         always_comb begin
             counter_clear = 1; //clock sampler counter 
             counter_en = 0;     
             bit_en = 0;  //index counter 
             bit_clear = 1;
             data_buf=8'd0;
             clear_sreg=1'b0;
             done=0;
             case (state)
                 IDLE: begin
                     done = 0;
                     counter_clear = 0; 
                     counter_en = 0;     
                     bit_en = 0; 
                     bit_clear = 1; 
                     clear_sreg=1'b1;

                     if (bit_in == 0) begin
                         nextState = START_B;
                         counter_clear=1;
                     end 
                     else begin 
                         nextState = IDLE; 
                         counter_en = 1; 
                     end 
                 end 
                 START_B: begin 
                     counter_en = 1; //begin sampling
                     counter_clear = 0; 
                     //past half  
                     if (clk_counter == 14'd434)
                     begin
                         //encounters start bit
                         if (bit_in == 0) begin  
                             //counter_clear = 1; 
                              nextState = DATA; 
                         end 
                         else     
                             nextState = START_B;  
                     end 
                     else 
                     begin
                     //Clear the clk 
                         counter_en = 1; 
                         counter_clear = 0;

                         nextState = START_B;  
                     end 
                 end 
                 DATA: begin 
                     counter_en = 1; 
                     counter_clear = 0; 
                     bit_clear = 0; 
                     bit_en = 0;
                     //nextState=DATA;
                    if (clk_counter == 14'd434) begin
                         bit_en=1;
                         data_buf[bit_counter] = bit_in;
                     end
                     else if (clk_counter == 14'd868) 
                     begin
                         //counter_en = 0;
                         counter_clear = 1;
                         //data_buf[bit_counter] = bit_in;  
                        if (bit_counter <= 7) 
                            nextState = DATA;
                        else
                            nextState=END_B;           
                     end 
                     else 
                         nextState = DATA; 
                 end 
                 END_B: begin
                     counter_en = 1; 
                     counter_clear = 0; 

                     if (clk_counter < 14'd868)
                     begin
                         counter_en = 1;

                         nextState = END_B;   
                     end  
                     else 
                     begin
                         counter_en = 0; 
                         counter_clear = 1;  
                         done = 1; 
                         nextState = CLEANUP; 
                     end 
                 end 
                 CLEANUP: begin 
                     done = 0; 
                     nextState = IDLE; 
                 end 
             endcase
         end 

    
endmodule
module counters(
   input  logic clock,
   input  logic reset,
   input  logic clock_en, clear,
   output logic[13:0] count);

   always_ff @(posedge clock or posedge reset) begin : proc_count
      if(reset) begin
         count <= 0;
      end 
      else begin
         if(clear) begin
            count <= 0;
         end
         else if(clock_en) begin
            count <= count + 1;
         end
      end
   end

endmodule: counters