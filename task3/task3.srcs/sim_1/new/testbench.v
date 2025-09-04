`timescale 1ns / 1ps

module tb_task3();

    // Inputs
    reg [2:0] opcode;
    reg [7:0] in0;
    reg [7:0] in1;
    reg [7:0] in2;
    reg clk;
    reg rst;
    reg en;

    // Outputs
    wire done;
    wire [23:0] out;

    // Instantiate the Unit Under Test (UUT)
    task3 uut (
        .opcode(opcode),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .clk(clk),
        .rst(rst),
        .done(done),
        .out(out)
    );

    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        rst = 1;
        en = 1;
        opcode = 3'b000;
        in0 = 8'd10;
        in1 = 8'd5;
        in2 = 8'd3;

        // Apply reset
        #10;
        rst = 0;
        #10;
        rst = 1;

        // Wait for one clock cycle
        @(posedge clk);

        // Test opcode 000 (Add)
        opcode = 3'b000; in0 = 8'd10; in1 = 8'd5; in2 = 8'd3;
        @(posedge clk);
        #1; // small delay to see outputs
        $display("Add: out=%d done=%b", out, done);
        
        #10;
        rst = 0;
        #10;
        rst = 1;

        // Test opcode 001 (Sub)
        opcode = 3'b001; in0 = 8'd10; in1 = 8'd3; in2 = 8'd0;
        @(posedge clk);
        #1;
        $display("Sub: out=%d done=%b", out, done);
        
        #10;
        rst = 0;
        #10;
        rst = 1;

        // Test opcode 010 (Mult)
        opcode = 3'b010; in0 = 8'd4; in1 = 8'd5; in2 = 8'd0;
        @(posedge clk);
        #1;
        $display("Mult: out=%d done=%b", out, done);
        
        #10;
        rst = 0;
        #10;
        rst = 1;

        // Test opcode 111 (neuer_top)
        // Hier ein Beispiel; geht nur, wenn new_top auch simuliert wird
        opcode = 3'b111;
        in0 = 8'd2;
        in1 = 8'd3;
        in2 = 8'd4;
        @(posedge clk);
        #1;
        $display("new_top: out=%d done=%b", out, done);

        // Stop simulation
        #20;
        $stop;
    end

endmodule
