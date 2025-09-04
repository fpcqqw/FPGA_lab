// 2 board switches & 4 board leds
// simple state machine and counter to control leds
// Each state can use another state machine internally
// system clock = 125 MHz

module top ( clk, switch, led);
  input [1:0] switch;
  output [4:0] led;
  input clk;

    //The LEDs on the sides are turned on and the 2 center LEDs are turned off.
    // Input: 00, Output; 1001

    //All LEDs should blink, they will all light up for 0.5 seconds and turn off for 0.5 seconds.
    // Input: 01, Output: 1111 -> +0.5sec -> 0000 -> +0.5sec -> 1111 -> ...

    //LEDs should blink with different patterns (at least 4 patterns, you are free to choose the patterns), you can consider the patterns changing every 0.25 or 0.5 seconds.
    // Input: 10, Output: 0001 -> +0.25sec -> 0010 -> +0.25sec -> 0100 -> +0.25sec -> 1000 -> ...

    //All LEDs should glow and fade, you can think of it like taking slow breaths. (Hint: you should research Pulse Width Modulation)
    // Input: 11, Output

endmodule