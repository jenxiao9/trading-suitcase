`default_nettype none

//Clks_per_bit = Frequency of i_Clock/ frequency of uart
//TODO: Add in a checksum  
module receiver
	#(parameter CLKS_PER_BIT = 127) 
	(input logic clk, rst_n, 
	input logic bit_in 
	output logic rdy,	
	output logic [7:0] data_out);


    enum logic [2:0] {IDLE, START_B, DATA, END_B} state, nextState;

    //parameter START_BIT = 3'b1; 
    //parameter END_BIT = 3'b11; 

    logic [12:0] clk_counter; 
    logic [7:0] bit_counter; 
    
    logic [7:0] data_out_buf; 
  
    always_ff@(posedge clk, negedge rst_n) begin 
	if (~rst_n) 
	     state <= IDLE; 
        else 
	     state <= nextState;   
    end 
 
		 
    always_comb begin
        case(state) 
            IDLE:
	    begin
	 	if (data_in == 1'b0) //Start bit detected 
		    state <= START_B; 
         	else 
                    state <= IDLE; 
	    end  
	    START_B:  
	    begin
		if (clk_counter == ((CLKS_PER_BIT-1) >> 1))
                begin 
		     if (data_in == 1'b0) 
                     begin  
			clk_counter <= 0; 
			state <= DATA; 
                     end 
                     else 
                        state <= IDLE; 
		end 
                else 
                begin
                    clk_counter <= clk_counter + 1; 
                    state <= START_B;  
                end                      
	    end 
 	    DATA: 
            begin
            	if (clk_counter <= CLKS_PER_BIT - 1)
                begin
                   clk_counter <= clk_counter + 1; 
                   state <= DATA;  
                end   
                else 
                begin
                   clk_counter <= 0; 
		   data_out_buf[bit_counter] <= bit_in;  
                   if (bit_counter < 7) 
                   begin
                        bit_counter <= bit_counter + 1; 
                        state <= DATA;  
                   end 
                   else 
                   begin
                        bit_counter <= 0; 
                        state <= END_B;  
                   end 
                end 
            end 
            END_B: 
            begin
               if (clk_counter <= CLKS_PER_BIT - 1) 
               begin
                   clk_counter <= clk_counter + 1; 
                   state <= END_B;  
               end 
               else 
               begin:
                   clk_counter <= 0; 
                   state <= CLEANUP;  
               end 
            end 
            CLEANUP: 
            begin
            	state <= IDLE; 
            end  
    end

endmodule: receiver 

     

  
