`default_nettype none

module ControlTransmiter 
	#(parameter CLKS_PER_BIT = 13'd1736) 
	(input logic clk, rst, rdy_in, 
		input logic [7:0] data_in,
		output logic active_o, 
		output logic bit_o,
		output logic done_o); 
	
    //dfdf
    logic [12:0] clk_counter; 
    logic counter_en, counter_clear; 
    counter SAMPLE_CLK_COUNTER(clk, rst, counter_en, counter_clear, clk_counter);  

    logic [12:0] bit_counter; 
    logic bit_en, bit_clear; 
    counter BIT_COUNTER(clk, rst, bit_en, bit_clear, bit_counter);  

    logic [7:0] data_buf; 
    logic active_out, bit_out, done; 

    logic reg_en, reg_clear; 
    register #(8) STORE_DATA(clk, reg_en, rst, reg_clear, data_in, data_buf);

    enum logic [2:0] {IDLE, START_B, DATA, END_B, CLEANUP} state, nextState;

		always_ff @(posedge clk or posedge  rst) begin 
		 	if(rst) begin
		 		state <= IDLE;
		 	end else begin
		 		state <= nextState;
		 	end
		 end 

		 always_comb begin
 			counter_clear = 0; 
 			counter_en = 0; 	
 			bit_en = 0; 
 			bit_clear = 0; 
 			active_out = 0;
		 	case (state)
		 		IDLE: begin
		 			bit_out = 1; 
		 			done = 0;
		 			counter_en = 0; 	
		 			bit_en = 0; 
		 			bit_clear = 1; 

		 			if (rdy_in) begin
		 				active_out = 1; 
		 				reg_en = 1;     
		 				nextState = START_B; 
		 			end 
		 	        else 
		 	        	nextState = IDLE; 
		 		end 
		 		START_B: begin 
		 			bit_out = 0; 
		 			counter_en = 1; 
		 			if (clk_counter < 14'd434)
		 			begin
		 				nextState = START_B; //stays in this state   
		 			end 
		 			else 
		 			begin
		 			//Clear the clk 
		 				counter_en = 0; 
		 				counter_clear = 1;
		 				nextState = DATA;  
		 			end 
		 		end 
		 		DATA: begin 
		 		    bit_out = data_buf[bit_counter];
		 			counter_en = 1;
		 			counter_clear = 0; 
		 			bit_clear = 0; 
		 			bit_en = 0;  
					if (clk_counter == 14'd868)
		 			begin			
		 				bit_en = 1; 
		 				counter_clear = 1; 
						if (bit_counter < 7) 
							nextState = DATA;  
						else
							nextState = END_B;    		 			 
		 			end 
		 			else 
		 				nextState = DATA; 
		 		end 
		 		END_B: begin
		 			bit_out = 1;
		 			counter_en = 1; 
		 			if (clk_counter < 14'd868)
		 			begin
 		 				nextState = END_B;   
		 			end  
		 			else 
		 			begin
		 				counter_en = 0; 
		 				counter_clear = 1;  
		 				done = 1; 
		 				nextState = CLEANUP; 
		 				active_out = 0; 
		 			end 
		 		end 
		 		CLEANUP: begin 
		 			bit_out = 1; 
		 			done = 1; 
		 			nextState = IDLE; 
		 		end 
		 	endcase
		 end 

		 assign bit_o = bit_out; 
		 assign done_o = done; 
		 assign active_o = active_out; 

endmodule: ControlTransmiter // transmiter


module register
   #(parameter                      WIDTH=0,
     parameter logic [WIDTH-1:0]    RESET_VAL='b0)
    (input  logic               clk, en, rst, clear,
     input  logic [WIDTH-1:0]   D,
     output logic [WIDTH-1:0]   Q);

     always_ff @(posedge clk, posedge  rst) begin
         if (rst)
             Q <= RESET_VAL;
         else if (clear)
             Q <= RESET_VAL;
         else if (en)
             Q <= D;
     end

endmodule:register



module counter(
   input  logic clock,
   input  logic reset,
   input  logic clock_en, clear,
   output logic[12:0] count);

   always_ff @(posedge clock or negedge reset) begin : proc_count
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

endmodule: counter

/*
module testTrx(); 
	logic clk, rst; 
	logic rdy_in; 
    logic [7:0] data_in;

    logic bit_o; 
    logic done_o;
    logic active_o; 


    ControlTransmiter a1(.*); 

    task sendIt(); 

    	#4 rdy_in = 0; 
    	@(posedge clk)
    	#4 rdy_in = 1; 
    	#4 data_in = 8'd10; 
    	@(posedge clk)
    	rdy_in = 0; 

    endtask: sendIt


    initial begin 
    	clk = 0; 
    	rst = 1;
    	rst <= #1 0;     
    	#4 forever #1 clk = ~clk; 
    end 

    initial begin 
    	sendIt(); 
    	#100000 $finish;
    end 
s
endmodule // testTrx

*/ 
