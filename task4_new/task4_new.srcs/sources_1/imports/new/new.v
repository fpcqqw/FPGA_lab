`timescale 1ns / 1ps


module new_top(
    input sysclk,
    input [1:0] btn,       // btn[0] = reset, btn[1] = set
    input [1:0] sw,        // sw[1] = trigger, sw[0] = bit value
    input rst,
    output wire [3:0] led,  // bit count or match count
    output reg led4_b, led4_g, led4_r,
    output reg led5_b, led5_g, led5_r
    // output  [7:0] debug_secret,
    // output  [7:0] debug_guess
    );

    parameter START  = 3'b000,
          SET_SECRET = 3'b001,
          GUESS_BIT = 3'b010,
          CHECK_BIT  = 3'b011,
          CHECK_SOFT_RESET = 3'b100,
          UNLOCKED   = 3'b101;

    // ---------------- STATE: START ---------------- 
    reg [2:0] state;
    reg [1:0] sw1_sync;
    reg sw1_sync_0, sw1_sync_1;    
    
    // ---------------- STATE: SET_SECRET ----------------
    reg [7:0] secretSequence;
    reg [3:0] led_counter;
    wire [3:0] index;
    assign index = 7 - led_counter;
    assign led = led_counter;

    // ---------------- STATE: GUESS_BIT -----------------------
    reg [7:0] guessSequence;
    // assign debug_secret = secretSequence;
    // assign debug_guess  = guessSequence;

    // ---------------- STATE: CHECK_BIT -----------------------
    reg [26:0] counter;
    reg [26:0] one_second;//10*12_500_000-1;
    reg red_blink;

    // ---------------- STATE: CHECK_SOFT_RESET -----------------------
    integer i;
    integer match_len;
    reg [7:0] temp_guess;
    // ---------------- STATE: UNLOCKED ----------------

    initial begin
        sw1_sync_0 = 0;
        sw1_sync_1 = 0;
        led_counter = 0;
        state = START;
    end

       
    always @(posedge sysclk) begin
        if (!rst) begin
            state = START;
        end

        sw1_sync_0 <= sw[1];
        sw1_sync_1 <= sw1_sync_0;

        case (state)

        START: begin
            secretSequence <= 0;
            led_counter <= 0;
            guessSequence <= 0;
            counter <= 0;
            one_second <= 2;//10*12_500_000-1;
            red_blink <= 0;
            led4_r <= 0;
            led5_r <= 0;
            led4_g <= 0;
            led5_g <= 0;
            led4_b <= 0;
            led5_b <= 0;
            if (btn == 2'b11) state <= SET_SECRET;
        end

        SET_SECRET: begin
            led4_b <= 1;
            led5_b <= 1;
            if (sw1_sync_1 & ~sw1_sync_0) begin
                secretSequence[index] <= sw[0];
                if (led_counter == 7) begin
                    led_counter <= 0;
                    state <= GUESS_BIT;
                end
                else begin
                    led_counter <= led_counter + 1;
                end                
            end
            
        end

        GUESS_BIT: begin
            led4_b <= 0;
            led5_b <= 0;
            if (sw1_sync_1 & ~sw1_sync_0) begin
                guessSequence[index] <= sw[0];
                state <= CHECK_BIT;
            end
        end

        CHECK_BIT: begin
            if (guessSequence[index] == secretSequence[index]) begin
                if (led_counter == 7) 
                    state <= UNLOCKED;
                else
                    state <= GUESS_BIT;
                    led_counter <= led_counter + 1;
            end
            else begin
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
                    state <= CHECK_SOFT_RESET;
                end 
            end
                
        end

        CHECK_SOFT_RESET: begin
            case (led_counter)
                0: begin
                    led_counter <= 0;
                    guessSequence <= 0;
                end
                1: begin
                    if (secretSequence[7] == guessSequence[6]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                2: begin
                    if (secretSequence[7:6] == guessSequence[6:5]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5] <= 0;
                    end else if (secretSequence[7] == guessSequence[5]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:5] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                3: begin
                    if (secretSequence[7:5] == guessSequence[6:4]) begin
                        led_counter <= 3;
                        guessSequence[7:5] <= secretSequence[7:5];
                        guessSequence[4] <= 0;
                    end else if (secretSequence[7:6] == guessSequence[5:4]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5:4] <= 0;
                    end else if (secretSequence[7] == guessSequence[4]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:4] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                4: begin
                    if (secretSequence[7:4] == guessSequence[6:3]) begin
                        led_counter <= 4;
                        guessSequence[7:4] <= secretSequence[7:4];
                        guessSequence[3] <= 0;
                    end else if (secretSequence[7:5] == guessSequence[5:3]) begin
                        led_counter <= 3;
                        guessSequence[7:5] <= secretSequence[7:5];
                        guessSequence[4:3] <= 0;
                    end else if (secretSequence[7:6] == guessSequence[4:3]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5:3] <= 0;
                    end else if (secretSequence[7] == guessSequence[3]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:3] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                5: begin
                    if (secretSequence[7:3] == guessSequence[6:2]) begin
                        led_counter <= 5;
                        guessSequence[7:3] <= secretSequence[7:3];
                        guessSequence[2] <= 0;
                    end else if (secretSequence[7:4] == guessSequence[5:2]) begin
                        led_counter <= 4;
                        guessSequence[7:4] <= secretSequence[7:4];
                        guessSequence[3:2] <= 0;
                    end else if (secretSequence[7:5] == guessSequence[4:2]) begin
                        led_counter <= 3;
                        guessSequence[7:5] <= secretSequence[7:5];
                        guessSequence[4:2] <= 0;
                    end else if (secretSequence[7:6] == guessSequence[3:2]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5:2] <= 0;
                    end else if (secretSequence[7] == guessSequence[2]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:2] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                6: begin
                    if (secretSequence[7:2] == guessSequence[6:1]) begin
                        led_counter <= 6;
                        guessSequence[7:2] <= secretSequence[7:2];
                        guessSequence[1] <= 0;
                    end else if (secretSequence[7:3] == guessSequence[5:1]) begin
                        led_counter <= 5;
                        guessSequence[7:3] <= secretSequence[7:3];
                        guessSequence[2:1] <= 0;
                    end else if (secretSequence[7:4] == guessSequence[4:1]) begin
                        led_counter <= 4;
                        guessSequence[7:4] <= secretSequence[7:4];
                        guessSequence[3:1] <= 0;
                    end else if (secretSequence[7:5] == guessSequence[3:1]) begin
                        led_counter <= 3;
                        guessSequence[7:5] <= secretSequence[7:5];
                        guessSequence[4:1] <= 0;
                    end else if (secretSequence[7:6] == guessSequence[2:1]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5:1] <= 0;
                    end else if (secretSequence[7] == guessSequence[1]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:1] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
                7: begin
                    if (secretSequence[7:1] == guessSequence[6:0]) begin
                        led_counter <= 7;
                        guessSequence[7:1] <= secretSequence[7:1];
                        guessSequence[0] <= 0;
                    end else if (secretSequence[7:2] == guessSequence[5:0]) begin
                        led_counter <= 6;
                        guessSequence[7:2] <= secretSequence[7:2];
                        guessSequence[1:0] <= 0;
                    end else if (secretSequence[7:3] == guessSequence[4:0]) begin
                        led_counter <= 5;
                        guessSequence[7:3] <= secretSequence[7:3];
                        guessSequence[2:0] <= 0;
                    end else if (secretSequence[7:4] == guessSequence[3:0]) begin
                        led_counter <= 4;
                        guessSequence[7:4] <= secretSequence[7:4];
                        guessSequence[3:0] <= 0;
                    end else if (secretSequence[7:5] == guessSequence[2:0]) begin
                        led_counter <= 3;
                        guessSequence[7:5] <= secretSequence[7:5];
                        guessSequence[4:0] <= 0;
                    end else if (secretSequence[7:6] == guessSequence[1:0]) begin
                        led_counter <= 2;
                        guessSequence[7:6] <= secretSequence[7:6];
                        guessSequence[5:0] <= 0;
                    end else if (secretSequence[7] == guessSequence[0]) begin
                        led_counter <= 1;
                        guessSequence[7] <= secretSequence[7];
                        guessSequence[6:0] <= 0;
                    end else begin
                        led_counter <= 0;
                        guessSequence <= 0;
                    end
                end
            endcase


            state <= GUESS_BIT;
        end

        UNLOCKED: begin
            led4_r <= 0;
            led5_r <= 0;
            led4_g <= 1;
            led5_g <= 1;
            led4_b <= 0;
            led5_b <= 0;

        end

        endcase
    end
    
    
endmodule
