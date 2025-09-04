`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 15:29:58
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg clk;
    reg [3:0] sw;
    wire [3:0] led;
    
    BasicLEDController test(.sysclk(clk), .sw(sw), .led(led));
    
    initial begin
        clk = 0;
        forever begin 
            #10 clk = ~clk;
        end
     end
     
     initial begin 
     sw = 1;
     #30
     sw = 0;
     #30
     sw= 2;
     end
    
    
    
endmodule
