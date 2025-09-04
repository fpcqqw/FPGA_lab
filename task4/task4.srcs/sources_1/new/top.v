`timescale 1ns / 1ps


module top(
    input sysclk,
    input [1:0] btn,       // btn[0] = reset, btn[1] = set
    input [1:0] sw,        // sw[1] = trigger, sw[0] = bit value

    output reg [3:0] led,  // bit count or match count
    output reg led4_b, led4_g, led4_r,
    output reg led5_b, led5_g, led5_r
    );
    
    reg [7:0] secretSequence;
    reg locked = 0;
    reg [7:0] guessSequence;
    reg led_counter = 1;
    
    reg [26:0] counter = 0;
    reg [26:0] one_second = 10*12_500_000-1;
    reg red_blink = 0;
    reg soft_reset = 0;

    always @(posedge sysclk) begin
        if (btn == 2'b11) begin
            // Handling locking status
            if (!locked) begin
                led4_b <= 1;
                led5_b <= 1;
            end
            else begin
                led4_b <= 0;
                led5_b <= 0;
            end
            
            if (secretSequence === guessSequence) begin
                led4_b <= 0;
                led5_b <= 0;
                led4_r <= 0;
                led5_r <= 0;
                led4_g <= 1;
                led5_g <= 1;
            end
            else if (secretSequence[led_counter] !== guessSequence[led_counter] && !soft_reset) begin
                // red blinking
                led4_r <= red_blink;
                led5_r <= red_blink;
                // counter for red blinking
                if (counter < one_second) begin
                    counter <= counter + 1;
                    if (counter % 31_250_000) 
                        red_blink <= !red_blink;
                    end
                else begin
                    counter <= 0;
                    soft_reset <= 1;
                end 
            end
        end
    end
    
    always @(posedge soft_reset) begin
        // Hier code einfügen
    end
    
    always @(posedge sw[1]) begin
    if (!locked) begin
        if (led_counter <= 8) begin
            secretSequence[led_counter] = sw[0];
            led_counter <= led_counter + 1;
        end
        else begin
            led_counter <= 1;
            locked <= 1;
        end
    end
        
    else begin
        led <= led_counter;
        guessSequence[led_counter] = sw[0];
        led_counter <= led_counter + 1;
    end
    end


endmodule
