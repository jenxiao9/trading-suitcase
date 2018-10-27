`default_nettype none

//Clks_per_bit = Frequency of i_Clock/ frequency of uart 
// 200MHZ / 115200  
//Baudrate of 115200,
//Our clockrate/
//TODO: Add in a checksum  
module receiver
	#(parameter CLKS_PER_BIT = 13'd1736) 
	(input logic clk, rst_n, 
	input logic bit_in,  
	output logic rdy,	
	output logic [7:0] data_out);


    enum logic [2:0] {IDLE, START_B, DATA, END_B, CLEANUP} state, nextState;

    //parameter START_BIT = 3'b1; 
    //parameter END_BIT = 3'b11; 

    logic [12:0] clk_counter; 
    logic [7:0] bit_counter;  
    logic [7:0] data_out_buf; 
    
    logic [3:0] rdy_buf; 
  
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
	 	if (bit_in) //Start bit detected 
		    nextState = START_B;
        else 
            nextState = IDLE;  
	    end  
	    START_B:  //Sample the startbit
	    begin
			if (clk_counter == ((CLKS_PER_BIT-1) >> 1))
	        begin 
			     if (bit_in == 1'b0) 
					nextState = DATA;  
	             else 
	                nextState = IDLE; 
			end 
	        else 
	            nextState = START_B;                                        
	    end 
 	    DATA: 
        begin
        	if (clk_counter < CLKS_PER_BIT - 1)
               nextState = DATA;  
            else 
            begin
               if (bit_counter < 7) 
                    nextState = DATA;  
               else 
                    nextState = END_B;  
            end 
    	end 
        END_B: 
        begin
           if (clk_counter <= CLKS_PER_BIT - 1) 
               nextState = END_B;  
           else 
               nextState = CLEANUP;  
        end 
        CLEANUP: 
        begin
        	nextState <= IDLE; 
        end  
        
       endcase 
    end

    always_comb begin
        rdy_buf = 0; 
        clk_counter = 0; 
        bit_counter = 0;
        case(state) 
            IDLE:
	    begin
 		clk_counter = 0; 
	        bit_counter = 0;             
                rdy_buf = 0;         
	    end  
	    START_B:  
	    begin
		if (clk_counter == ((CLKS_PER_BIT-1) >> 1))
                    begin 
                    //Reset the sampling counter 
	            if (bit_in == 1'b0)  
			clk_counter = 0;
                    end                    
                else 
		     clk_counter = clk_counter + 1;                       
	    end 
 	    DATA: 
            begin
            	if (clk_counter <= CLKS_PER_BIT - 1)
                   clk_counter = clk_counter + 1; 
                else 
                begin
                   clk_counter = 0; clock
		   data_out_buf[bit_counter] <= bit_in;  
                   if (bit_counter < 7) 
                        bit_counter = bit_counter + 1; 
                   else 
                        bit_counter = 0; 
                end 
            end 
            END_B: 
            begin
               if (clk_counter <= CLKS_PER_BIT - 1) 
                   clk_counter <= clk_counter + 1;                    
               else 
	       begin 
                   clk_counter = 0;
                   rdy_buf = 1; 
	       end          
            end 
            CLEANUP: rdy_buf = 0; 
        endcase          
    end

    assign data_out = data_out_buf; 
    assign rdy = rdy_buf; 


endmodule: receiver


module testbench(); 
   logic [7:0] data_out;
   logic clock; 
   logic bit_in; 
   logic rst_n; 
   logic rdy; 

     initial begin 
	clock = 1'b1; 
	forever #5 
	  clock = ~clock; 
     end  

	task UART_WRITE_BYTE;
	    input [7:0] data;
	    logic[3:0]     ii;
	    begin   
	      // Send Start Bit
	      bit_in <= 1'b0;
	      #(clock);
	      #1000;
	      
	      // Send Data Byte
	      for (ii=0; ii<10'd8; ii=ii+1)
		begin
		  bit_in <= data[ii];
		  #(clock);
		end
	      
	      // Send Stop Bit
	      bit_in <= 1'b1;
	      #(clock);
	     end
	  endtask // UART_WRITE_BYTE

   receiver R(clock, rst_n, bit_in, rdy, data_out);
  


endmodule: testbench
     

  
