`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 16:03:06
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
    reg sysclk;
    reg [1:0] btn;       // btn[0] = reset, btn[1] = set
    reg [1:0] sw;        // sw[1] = trigger, sw[0] = bit value

    wire [3:0] led;  // bit count or match count
    wire led4_b, led4_g, led4_r;
    wire led5_b, led5_g, led5_r;

    // Clock generation
    initial sysclk = 0;
    always #5 sysclk = ~sysclk; // 100MHz Clock (10ns Period)

    new_top example (
        .sysclk(sysclk),
        .btn(btn),       
        .sw(sw),       
        .led(led),  
        .led4_b(led4_b), 
        .led4_g(led4_g), 
        .led4_r(led4_r),
        .led5_b(led5_b), 
        .led5_g(led5_g), 
        .led5_r(led5_r)
        );

    always @(posedge sysclk) begin
        btn = 2'b11;
        sw  = 0;
        #10;
        $display("Enering secret sequence: 01100100");
        $display("RGB LED4: %d%d%d, RGB LED5: %d%d%d", led4_r, led4_g, led4_b, led5_r, led5_g, led5_b);
        $display("LED counter: %d", led);
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #20;
        $display("RGB LED4: %d%d%d, RGB LED5: %d%d%d", led4_r, led4_g, led4_b, led5_r, led5_g, led5_b);

        $display("Start guessing sequence");
        $display("LED counter: %d", led);
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #5;
        $display("RGB LED4: %d%d%d, RGB LED5: %d%d%d", led4_r, led4_g, led4_b, led5_r, led5_g, led5_b);
        sw[0] = 1; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #20;
        $display("RGB LED4: %d%d%d, RGB LED5: %d%d%d", led4_r, led4_g, led4_b, led5_r, led5_g, led5_b);
        sw[0] = 0; sw[1] = 1; #5; sw[1] = 0; $display("LED counter: %d", led);
        #20;
        $display("RGB LED4: %d%d%d, RGB LED5: %d%d%d", led4_r, led4_g, led4_b, led5_r, led5_g, led5_b);
        $finish;
    end

endmodule

