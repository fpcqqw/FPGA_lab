`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 21:45:10
// Design Name: 
// Module Name: top
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

module top(
    input clk,
    input rst,
    input en,
    input [3:0] in0,    input [3:0] in1,
    input [3:0] in2,
    output reg signed [18:0] out,
    output reg done
    );
    
    reg signed [4:0] a = 5;
    reg signed [4:0] b = 8;
    reg signed [4:0] c = -4;
    reg signed [4:0] d = 3;
    reg signed [4:0] e = 6;
    reg signed [4:0] f = -2;
    reg signed [4:0] g = 13;
    
    reg [1:0] step = 0;
    
    always @(posedge clk)
    begin
        if (!rst) begin
            out <= 0;
            done <= 0;
            step <= 0;
        end
        else begin
            if (en) begin
                if (done) begin
                    done <= 0;
                end
                else begin
                    if (step == 0) begin
                        out <= { {15{g[4]}}, g[3:0]};
                        step <= 1;
                    end else if (step == 1) begin
                        out <= out + { {15{a[4]}}, a[3:0]} * in0 * in0 +  { {15{b[4]}}, b[3:0]} * in0;
                        step <= 2;
                    end else if (step == 2) begin
                        out <= out + { {15{c[4]}}, c[3:0]} * in1 * in1 + { {15{d[4]}}, d[3:0]} * in1;
                        step <= 3;
                    end else begin
                        out <= out + { {15{e[4]}}, e[3:0]} * in2 * in2 + { {15{f[4]}}, f[3:0]} * in2;
                        done <= 1;
                        step <= 0;
                    end
                    /*out <=
                     { {15{a[4]}}, a[3:0]} * in0 * in0 +  { {15{b[4]}}, b[3:0]} * in0 +
                    { {15{c[4]}}, c[3:0]} * in1 * in1 + { {15{d[4]}}, d[3:0]} * in1 +
                    { {15{e[4]}}, e[3:0]} * in2 * in2 + { {15{f[4]}}, f[3:0]} * in2 +
                    { {15{g[4]}}, g[3:0]}; 
                    done <= 1; */
                end
            end
        end
    end
    
endmodule
