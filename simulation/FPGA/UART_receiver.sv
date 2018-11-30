`default_nettype none

//baudrate 9600 
//CLK_SPEED / BAUDRATE
//100MHZ / 9600 

module receiver 
	#(parameter CLKS_PER_BIT = 14'd10416) 
	(input logic clk, rst_n, 
		input logic bit_in,
		output logic rdy, 
		output logic [7:0] data_o); 

    logic [13:0] clk_counter; 
    logic counter_en, counter_clear; 
    counter SAMPLE_CLK_COUNTER(clk, rst_n, counter_en, counter_clear, clk_counter);  

    logic [13:0] bit_counter; 
    logic bit_en, bit_clear; 
    counter BIT_COUNTER(clk, rst_n, bit_en, bit_clear, bit_counter);  

    logic [7:0] data_buf; 
    logic done; 

    //start bit is 0, look for drop from 1 to 0 
    enum logic [2:0] {IDLE, START_B, DATA, END_B, CLEANUP} state, nextState;

		always_ff @(posedge clk or negedge rst_n) begin 
		 	if(~rst_n) begin
		 		state <= IDLE;
		 	end else begin
		 		state <= nextState;
		 	end
		 end 

		 always_comb begin
 			counter_clear = 1; //clock sampler counter 
 			counter_en = 0; 	
 			bit_en = 0;  //index counter 
 			bit_clear = 1; 
		 	case (state)
		 		IDLE: begin
		 			done = 0;
		 			counter_clear = 0; 
		 			counter_en = 0; 	
		 			bit_en = 0; 
		 			bit_clear = 1; 

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
		 			if (clk_counter == 14'd5208)
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
					if (clk_counter == 14'd5208) begin
		 				bit_en=1;
		 				data_buf[bit_counter] = bit_in;
		 			end
		 			else if (bit_counter > 7) 
		 				nextState = END_B; 
		 			else if (clk_counter == 14'd5208) 
		 			begin
		 				//counter_en = 0;
		 				counter_clear = 1;
		 			    //data_buf[bit_counter] = bit_in;  
						if (bit_counter <= 7) 
							nextState = DATA;  		 
		 			end 
		 			else 
		 				nextState = DATA; 
		 		end 
		 		END_B: begin
		 			counter_en = 1; 
		 			counter_clear = 0; 

		 			if (clk_counter < 14'd10416)
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
   output logic[13:0] count);

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


module testrReceiver(); 


	/*
	#(parameter CLKS_PER_BIT = 13'd1736) 
	(input logic clk, rst_n, 
		input logic bit_in,
		output logic rdy, 
		output logic [7:0] data_o); 

	*/ 

  logic clk, rst_n; 
  logic bit_in, rdy; 
  logic [7:0] data_o;
  logic slow_clk; 

  logic data; 

  receiver a1(.*); 

  task sendIt(); 

    repeat(10) begin 
    	bit_in = 0; 
    	@(posedge clk); 
    	//bit_in <= 1; 
    	#(8600); 
   	end 

   	//begin 
    @(posedge clk)
   	bit_in <= 1; 
 	//#(8600); 
 	


   	//payload 
   	/*
    data = 0; 
    #8600 bit_in<=data; 
    data = 1; 
    #8600 bit_in<=data; 
    data = 0; 
    #8600 bit_in<=data; 
    data = 1; 
    #8600 bit_in<=data; 
    data = 0; 
    #8600 bit_in<=data; 
    data = 1; 
    #8600 bit_in<=data; 
    data = 1; 
    #8600 bit_in<=data; 
    data = 1; 
    #8600 bit_in<=data; 
    */ 

		@(posedge clk)
		#(8600) bit_in <= 1;
		@(posedge clk)
		#(8600) bit_in <= 1;
		@(posedge clk)
		#(8600) bit_in <= 0;
		@(posedge clk)
		#(8600) bit_in <= 0;
		@(posedge clk)
    	#(8600) bit_in <= 1;
		@(posedge clk)
        #(8600) bit_in <= 1;
		@(posedge clk)
		#(8600) bit_in <= 0;
		@(posedge clk)
   		#(8600) bit_in <= 0;
		@(posedge clk)
		#(8600); 


    //end 

    @(posedge clk)
    bit_in <= 0; 
    @(posedge  clk)
    bit_in <= 1; 	

  endtask: sendIt 

  	


  initial begin 
    clk = 0; 
    rst_n = 0;
    rst_n <= #1 1;     
    #4 forever #1 clk = ~clk; 
  end 

  initial begin
    sendIt();  
    #4 $finish; 
  end 

endmodule // testrReceiver


//SAMPLE UNTIL YOU SEE A NEGATIVE CLOCK EDGE AND THEN RESYNCHRONIZE THE COUNTER. 