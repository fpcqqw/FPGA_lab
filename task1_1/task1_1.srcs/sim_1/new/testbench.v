`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 02:47:38 PM
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
    reg  clk, rst, en;
    reg[3:0] in0, in1, in2;
    wire [18:0] out;
    wire done;
    
    integer res = 0;
    
    //integer k = 0;
    
    top blackbox(.clk(clk), .rst(rst), .en(en), .in0(in0), .in1(in1), .in2(in2), .done(done), .out(out));
        
    initial begin
        clk = 0;
        forever begin 
            #10 clk = ~clk;
        end
     end
     
    initial begin
    en = 1;
    rst = 0;
    #10
    rst = 1;
    #10
    in0 = 1;
    in1 = 0;
    in2 = 0;
    
    @(posedge done) 
    in0 = 1;
    in1 = 0;
    in2 = 0;
    
    #500
    //for(k = 0; k<4; k=k+1)
    //begin
        //in0[k] = 1;
        //if(k>0)
        //begin
        //    in0[k-1] = 0;
        //end
      //#10; // delay here
    //end
    $finish;
    end     

endmodule
