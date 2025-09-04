`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2025 15:19:36
// Design Name: 
// Module Name: BasicLEDController
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

// 2 board switches & 4 board leds
// simple state machine and counter to control leds
// Each state can use another state machine internally
// system clock = 125 MHz

module BasicLEDController( sysclk, sw, led );
    //integer counter;  
    input [3:0] sw;
    input sysclk;
    output reg [3:0] led;
    
    always @(posedge sysclk) begin
    
        case (sw)
        
            0: begin
            // The LEDs on the sides are turned on and the 2 center LEDs are turned off.
            // Input: 00, Output: 1001
                led <= 4'b1001;
            end
            
            1: begin
            // All LEDs should blink, they will all light up for 0.5 seconds and turn off for 0.5 seconds.
            // Input: 01, Output: 1111 -> +0.5sec -> 0000 -> +0.5sec -> 1111 -> ...
             
                //for (counter = 0; counter < 6*125_000_000; counter = counter + 1) begin
                //    led <= 4'b1111; 
                //end
                //for (counter = 0; counter < 6*125_000_000; counter = counter + 1) begin
                    //led <= 4'b0000; 
                //end 
                led <= 4'b1010;
            
            end
            
            2: begin
            // LEDs should blink with different patterns (at least 4 patterns, you are free to choose the patterns), 
            // you can consider the patterns changing every 0.25 or 0.5 seconds.
            // Input: 10, Output: 0001 -> +0.25sec -> 0010 -> +0.25sec -> 0100 -> +0.25sec -> 1000 -> ...
                //for (counter = 0; counter < 6*125_000_000; counter = counter + 1) begin
                //    led[] <= 4'b1010; 
                //end
                //for (counter = 0; counter < 6*125_000_000; counter = counter + 1) begin
                //    led <= 4'b0101; 
                //end 
                led <= 4'b0101;
            end
            
            3: begin
            // All LEDs should glow and fade, you can think of it like taking slow breaths. 
            // (Hint: you should research Pulse Width Modulation)
            // Input: 11, Output: PWM
                led <= 4'b0110;
            
            end
            
        endcase
        
    end
    
endmodule
