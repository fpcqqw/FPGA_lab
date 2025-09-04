`timescale 1ns / 1ps

module testbench();
    reg clk;
    reg [1:0] sw;
    wire [3:0] led;
    
    BasicLEDController test(.sysclk(clk), .sw(sw), .led(led));
    
    // 125 MHz: Period 8ns -> Clock toggle 4ns 
    initial begin
        clk = 0;
        forever begin 
            #4 clk = ~clk;
        end
     end
     
     initial begin 
     $dumpfile("simulation.vcd");
     $dumpvars(0,testbench);
     sw = 2'b10;
     #50
     sw = 2'b11;
     #5_000_000
     sw = 2'b00;
     $finish;
//     #30
//     $display("Switch 00 expected value: 1001, led: %b", led);
//     sw = 1;
//     #5_000_000
//     $display("Switch 01 expected value: 1111, led: %b", led);
//     sw = 1;
//     #5_000_000
//     $display("Switch 01 expected value: 0000, led: %b", led);
//     sw = 1;
//     #5_000_000
//     $display("Switch 01 expected value: 1111, led: %b", led);
//     sw = 1;
//     #5_000_000
//     $display("Switch 01 expected value: 0000, led: %b", led);
//     sw= 2;
//     #5_000_000
//     $display("Switch 10 expected value: 0000, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0001, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0010, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0100, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 1000, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0000, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0001, led: %b", led);
//     #5_000_000
//     $display("Switch 10 expected value: 0010, led: %b", led);
//     sw = 3;
//     #125_000
//     $display("Switch 11 expected value: 0000, led: %b", led);
//     sw = 3;
//     #125_000
//     $display("Switch 11 expected value: 1111, led: %b", led);
//     sw = 0;
//     #125_000
     
//     $display("Switch 00 expected value: 1001, led: %b", led);
//     sw= 2;
     end
endmodule
