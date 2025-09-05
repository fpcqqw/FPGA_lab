`timescale 1ns / 1ps


module new_top(
    input sysclk,
    input [1:0] btn,       // btn[0] = reset, btn[1] = set
    input [1:0] sw,        // sw[1] = trigger, sw[0] = bit value

    output wire [3:0] led,  // bit count or match count
    output reg led4_b, led4_g, led4_r,
    output reg led5_b, led5_g, led5_r
    );
    
    reg [7:0] secretSequence = 0;
    reg locked = 0;
    reg [7:0] guessSequence = 0;
    reg [3:0] led_counter = 0;
    
    reg [26:0] counter = 0;
    reg [26:0] one_second = 2;//10*12_500_000-1;
    reg red_blink = 0;
    reg soft_reset = 0;
    reg [7:0] resetSequence = 0;

    assign led = led_counter;

    // Handling of entering data
    always @(posedge sw[1] && counter==0 &&  !soft_reset) begin
        // not locked -> Entering secret sequence
        if (!locked) begin
            secretSequence[led_counter] = sw[0];
            if (led_counter == 7) begin
                led_counter <= 0;
                locked <= 1;
            end
            else begin
                led_counter <= led_counter + 1;
            end
        end    
        // locked -> Entering guess sequence
        else begin
            guessSequence[led_counter] = sw[0];
            led_counter <= led_counter + 1;
        end
    end


    always @(posedge sysclk) begin
        if (btn == 2'b11) begin
            // Handling not locked status (no secret sequence entered)
            if (!locked) begin
                led4_r <= 0;
                led5_r <= 0;
                led4_g <= 0;
                led5_g <= 0;
                led4_b <= 1;
                led5_b <= 1;
            end
            // Handling locked status (guessing stage)
            else begin
                led4_b <= 0;
                led5_b <= 0;
                // correct code
                if (secretSequence === guessSequence) begin
                    led4_r <= 0;
                    led5_r <= 0;
                    led4_g <= 1;
                    led5_g <= 1;
                    led4_b <= 0;
                    led5_b <= 0;
                end
                else if (secretSequence[led_counter] !== guessSequence[led_counter] && !soft_reset) begin
                    // red blinking
                    led4_r <= red_blink;
                    led5_r <= red_blink;
                    // 1 second counter for red blinking
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
                else if (soft_reset) begin
                    led4_r <= 0;
                    led5_r <= 0;
                    case (led_counter)
                    0: begin
                        guessSequence <= 0;
                        soft_reset <= 0;
                        led_counter <= 0;
                    end
                    1: begin
                        if (guessSequence[1] == secretSequence[0]) begin
                            guessSequence[0] <= guessSequence[1];
                            led_counter <= 1;
                        end
                        else begin
                           guessSequence <= 0;
                           led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end
                    2: begin
                        if (guessSequence[2] == secretSequence[1] && guessSequence[1] == secretSequence[0]) begin
                            guessSequence[1] <= secretSequence[1];
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 2;
                        end
                        else if (guessSequence[2] == secretSequence[1]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 1;
                        end
                        else begin
                            guessSequence <= 0;
                            led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end
                    3: begin
                        if (guessSequence[3] == secretSequence[2] &&
                            guessSequence[2] == secretSequence[1] &&
                            guessSequence[1] == secretSequence[0]) begin
                            guessSequence[2] <= secretSequence[2];
                            guessSequence[1] <= secretSequence[1];
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 3;
                        end
                        else if (guessSequence[3] == secretSequence[2] &&
                                guessSequence[2] == secretSequence[1]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 2;
                        end
                        else if (guessSequence[3] == secretSequence[2]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 1;
                        end
                        else begin
                            guessSequence <= 0;
                            led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end

                    4: begin
                        if (guessSequence[4] == secretSequence[3] &&
                            guessSequence[3] == secretSequence[2] &&
                            guessSequence[2] == secretSequence[1] &&
                            guessSequence[1] == secretSequence[0]) begin
                            guessSequence[3] <= secretSequence[3];
                            guessSequence[2] <= secretSequence[2];
                            guessSequence[1] <= secretSequence[1];
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 4;
                        end
                        else if (guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2] &&
                                guessSequence[2] == secretSequence[1]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 3;
                        end
                        else if (guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 2;
                        end
                        else if (guessSequence[4] == secretSequence[3]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 1;
                        end
                        else begin
                            guessSequence <= 0;
                            led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end

                    5: begin
                        if (guessSequence[5] == secretSequence[4] &&
                            guessSequence[4] == secretSequence[3] &&
                            guessSequence[3] == secretSequence[2] &&
                            guessSequence[2] == secretSequence[1] &&
                            guessSequence[1] == secretSequence[0]) begin
                            guessSequence[4] <= secretSequence[4];
                            guessSequence[3] <= secretSequence[3];
                            guessSequence[2] <= secretSequence[2];
                            guessSequence[1] <= secretSequence[1];
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 5;
                        end
                        else if (guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2] &&
                                guessSequence[2] == secretSequence[1]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 4;
                        end
                        else if (guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 3;
                        end
                        else if (guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 2;
                        end
                        else if (guessSequence[5] == secretSequence[4]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 1;
                        end
                        else begin
                            guessSequence <= 0;
                            led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end

                    6: begin
                        if (guessSequence[6] == secretSequence[5] &&
                            guessSequence[5] == secretSequence[4] &&
                            guessSequence[4] == secretSequence[3] &&
                            guessSequence[3] == secretSequence[2] &&
                            guessSequence[2] == secretSequence[1] &&
                            guessSequence[1] == secretSequence[0]) begin
                            guessSequence[5] <= secretSequence[5];
                            guessSequence[4] <= secretSequence[4];
                            guessSequence[3] <= secretSequence[3];
                            guessSequence[2] <= secretSequence[2];
                            guessSequence[1] <= secretSequence[1];
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 6;
                        end
                        else if (guessSequence[6] == secretSequence[5] &&
                                guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2] &&
                                guessSequence[2] == secretSequence[1]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 5;
                        end
                        else if (guessSequence[6] == secretSequence[5] &&
                                guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3] &&
                                guessSequence[3] == secretSequence[2]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 4;
                        end
                        else if (guessSequence[6] == secretSequence[5] &&
                                guessSequence[5] == secretSequence[4] &&
                                guessSequence[4] == secretSequence[3]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 3;
                        end
                        else if (guessSequence[6] == secretSequence[5] &&
                                guessSequence[5] == secretSequence[4]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 2;
                        end
                        else if (guessSequence[6] == secretSequence[5]) begin
                            guessSequence[0] <= secretSequence[0];
                            led_counter <= 1;
                        end
                        else begin
                            guessSequence <= 0;
                            led_counter <= 0;
                        end
                        soft_reset <= 0;
                    end

                    endcase
                end
            end
        end
    end
    
    
endmodule
