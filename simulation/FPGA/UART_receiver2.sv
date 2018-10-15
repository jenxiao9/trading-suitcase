`default_nettype none

module receiver 
	#(parameter CLKS_PER_BIT = 13'd1736) 
	(input logic clk, rst_n, 
		input logic bit_in,
		output logic rdy, 
		output logic [7:0] data_o); 

    logic [12:0] clk_counter; 
    logic counter_en, counter_clear; 
    counter SAMPLE_CLK_COUNTER(clk, rst_n, counter_en, counter_clear, clk_counter);  

    logic [12:0] bit_counter; 
    logic bit_en, bit_clear; 
    counter BIT_COUNTER(clk, rst_n, bit_en, bit_clear, bit_counter);  

    logic [7:0] data_buf; 
    logic active_out, bit_out, done; 

    enum logic [2:0] {IDLE, START_B, DATA, END_B, CLEANUP} state, nextState;

		always_ff @(posedge clk or negedge rst_n) begin 
		 	if(~rst_n) begin
		 		state <= IDLE;
		 	end else begin
		 		state <= nextState;
		 	end
		 end 

		 always_comb begin
		    done = 0;
 			counter_clear = 1; 
 			counter_en = 0; 	
 			bit_en = 0; 
 			bit_clear = 1; 
		 	case (state)
		 		IDLE: begin
		 			done = 0;
		 			counter_clear = 1; 
		 			counter_en = 0; 	
		 			bit_en = 0; 
		 			bit_clear = 1; 

		 			if (bit_in == 0)    
		 				nextState = START_B; 
		 	        else 
		 	        	nextState = IDLE; 
		 		end 
		 		START_B: begin 
		 			if (clk_counter < (CLKS_PER_BIT - 1) >> 2)
		 			begin
		 				if (bit_in == 0) begin  
		 					counter_clear = 1; 
		 				 	nextState <= DATA; 
		 				end 
		 				else     
		 					nextState = IDLE;  
		 			end 
		 			else 
		 			begin
		 			//Clear the clk 
		 				counter_en = 1; 
		 				counter_clear = 0;

		 				nextState = DATA;  
		 			end 
		 		end 
		 		DATA: begin 

		 			if (clk_counter < CLKS_PER_BIT -1 ) 
		 			begin
		 				counter_en = 1; //counter begins counting up.  

		 				nextState = DATA; 
		 			end 
		 			else 
		 			begin
		 				counter_en = 0;
		 				counter_clear = 1; 
		 			    data_buf[bit_counter] = bit_in;  
						if (bit_counter < 7) 
						begin
							bit_clear = 0;
							bit_en = 1; //enable counting

							nextState = DATA;  
						end
						else 
						begin
							bit_clear = 1;
							nextState = END_B;   
						end  		 			 
		 			end 
		 		end 
		 		END_B: begin

		 			if (clk_counter < CLKS_PER_BIT - 1)
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

		 assign data_o = data_buf; 
		 assign rdy = done;  

endmodule: receiver

module counter(
   input  logic clock,
   input  logic reset_n,
   input  logic clock_en, clear,
   output logic[12:0] count);

   always_ff @(posedge clock or negedge reset_n) begin : proc_count
      if(~reset_n) begin
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