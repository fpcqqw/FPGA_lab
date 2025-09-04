`timescale 1ns / 1ps

module tb_RFC_Top;

    // Parameter
    parameter TREE_DEPTH = 4;

    // Clock & Reset
    reg clk;
    reg reset;
    reg start_traversal;

    // Input Features
    reg real datapoint_10;
    reg real datapoint_9;
    reg real datapoint_8;
    reg real datapoint_7;
    reg real datapoint_6;
    reg real datapoint_5;
    reg real datapoint_4;
    reg real datapoint_3;
    reg real datapoint_2;
    reg real datapoint_1;
    reg real datapoint_0;

    // Output
    wire done;
    wire final_label;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 100MHz Clock (10ns Period)

    // Instantiate RFC_Top
    RFC_Top #(
        .TREE_DEPTH(TREE_DEPTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .start_traversal(start_traversal),
        .datapoint_10(datapoint_10),
        .datapoint_9(datapoint_9),
        .datapoint_8(datapoint_8),
        .datapoint_7(datapoint_7),
        .datapoint_6(datapoint_6),
        .datapoint_5(datapoint_5),
        .datapoint_4(datapoint_4),
        .datapoint_3(datapoint_3),
        .datapoint_2(datapoint_2),
        .datapoint_1(datapoint_1),
        .datapoint_0(datapoint_0),
        .done(done),
        .final_label(final_label)
    );

    // Test stimulus
    initial begin
        // Initial values
        reset = 0;
        start_traversal = 0;
        datapoint_10 = 7.4;
        datapoint_9  = 0.7;
        datapoint_8  = 0.0;
        datapoint_7  = 1.9;
        datapoint_6  = 0.076;
        datapoint_5  = 11;
        datapoint_4  = 34;
        datapoint_3  = 0.9978;
        datapoint_2  = 3.51;
        datapoint_1  = 0.56;
        datapoint_0  = 9.4;

        // Apply reset
        #10;
        reset = 1;

        // Start traversal
        #10;
        start_traversal = 1;
        #10;
        start_traversal = 0;

        // Wait for done
        wait(done == 1);

        // Display result
        $display("Final label from Random Forest: %d", final_label);

        #20;
        $finish;
    end

endmodule
