`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2018 01:06:44 AM
// Design Name: 
// Module Name: TB2
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


module TB2();
    logic clock, reset;
    logic GPIO_SW_E,GPIO_SW_N,GPIO_SW_S,LED,SYSCLK_N,SYSCLK_P;
    design_1_wrapper
       (GPIO_SW_E,
        GPIO_SW_N,
        GPIO_SW_S,
        LED,
        SYSCLK_N,
        SYSCLK_P);
    initial begin 
    clock=0;
    reset=0;
    forever #1 clock=~clock;
    end
    
    initial begin
        #2 reset=1;
        #1 reset=0;
    end
endmodule
