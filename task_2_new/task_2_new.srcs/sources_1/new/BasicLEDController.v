`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////
// Calculation of maximum counter value & the number of bits are commented

module BasicLEDController(
    input sysclk,
    input [1:0] sw,
    output reg [3:0] led
    );
    
    reg [25:0] counter;  // Counter required bits: 26 (value < 67 108 864)
    reg [1:0] blink_status = 1;
    reg [2:0] status = 0;
    
    reg [1:0] pwm_direction = 1;
    reg [17:0] periodLength = 250_000; //1ms = 125_000 
    reg [17:0] dutyStep = 500; //500
    reg [17:0] dutyCounter = 0; // Counter required bits: 18 (value < 262 _144)
    reg [17:0] dutyValue = 0;

    reg [26:0] half_second = 5*12_500_000-1;
    
    always @(posedge sysclk) begin
    
        case (sw)
        
            2'b00: begin
            // The LEDs on the sides are turned on and the 2 center LEDs are turned off.
            // Input: 00, Output: 1001
                led <= 4'b1001;
            end
            
            2'b01: begin
            // Task: All LEDs should blink, they will all light up for 0.5 seconds and turn off for 0.5 seconds.
            // Counter calculation: 
                // Frequency: 125 Mhz, clock cycle 8ns
                // How many clock cycles fit in 0.1 sec?
                // 0,1 sec / 8 ns = 0,1/(8*10^-9) = 12_500_000
                // For 0.5 sec: 5 * 12_500_000 = 62_500_000
             
                if (counter < half_second) begin
                    counter <= counter + 1;
                end
                else begin 
                    blink_status <= !blink_status;
                    counter <= 0;
                end
                
                case (blink_status)
                    0: led <= 4'b1111;
                    1: led <= 4'b0000;
                endcase
                
            end
            
            2'b10: begin
            // LEDs should blink with different patterns (at least 4 patterns, you are free to choose the patterns), 
            // you can consider the patterns changing every 0.25 or 0.5 seconds.
            // Frequency: 125 Mhz, clock cycle 8ns
                // How many clock cycles fit in 0.1 sec?
                // 0,1 sec / 8 ns = 0,1/(8*10^-9) = 12_500_000
                // For 0.5 sec: 5 * 12_500_000 = 62_500_000

                if (counter < half_second) begin // 125_000_000 for 0.5 sec
                    counter <= counter + 1;
                end
                else begin 
                    if (status != 4) begin
                        status <= status +1; 
                    end
                    else begin
                        status <= 0;
                    end
                    counter <= 0;
                end
                
                case (status)
                    0: led <= 4'b0000;
                    1: led <= 4'b0001;
                    2: led <= 4'b0010;
                    3: led <= 4'b0100;
                    4: led <= 4'b1000;
                endcase
            end
            
            2'b11: begin
            // All LEDs should glow and fade, you can think of it like taking slow breaths. 
            // (Hint: you should research Pulse Width Modulation)
            // Frequency: 125 Mhz, clock cycle 8ns
                // How long should the duty cycle and the step be?
                // periodLenght: 250_000 = 500ms per inhale/exhale of breathing
                // dutyStep: 500 to get a slow and steady increase/decrease
                
                led <= (dutyCounter<dutyValue) ? 4'b1111:4'b0000;
                
                if (dutyCounter<periodLength-1) begin
                    dutyCounter<=dutyCounter+1;
                end
                else begin
                    dutyCounter <=0;
                    
                    case (pwm_direction)
                        1: dutyValue <= dutyValue+dutyStep;
                        0: dutyValue <= dutyValue-dutyStep;
                    endcase
                    
                    if (dutyValue == periodLength-dutyStep) begin
                        pwm_direction <= 0; 
                        end
                    else if (dutyValue == dutyStep) begin
                        pwm_direction <= 1;
                        end
                end
            end
            
        endcase
        
    end
    
endmodule
