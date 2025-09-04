`timescale 1ns / 1ps

module RFC_Top #(
    parameter TREE_DEPTH = 4
)(
    input  wire clk,
    input  wire reset,
    input  wire start_traversal,

    // Features (gleiche Inputs an alle Trees)
    input real datapoint_10, 
    input real datapoint_9, 
    input real datapoint_8, 
    input real datapoint_7, 
    input real datapoint_6, 
    input real datapoint_5, 
    input real datapoint_4, 
    input real datapoint_3, 
    input real datapoint_2, 
    input real datapoint_1, 
    input real datapoint_0, 

    output reg done,
    output reg final_label   // Mehrheitsergebnis
);

    // interne Signale von Trees
    wire done_t1, done_t2;
    wire label_t1, label_t2;

    // Tree 1 Instanz
    tree1 tree1 (
        .clk(clk),
        .reset(reset),
        .start_traversal(start_traversal),
        .tree_depth(TREE_DEPTH),
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
        .done(done_t1),
        .label(label_t1)
    );

    // Tree 2 Instanz
    tree2 tree2 (
        .clk(clk),
        .reset(reset),
        .start_traversal(start_traversal),
        .tree_depth(TREE_DEPTH),
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
        .done(done_t2),
        .label(label_t2)
    );

    // Zähler für Mehrheitsentscheid
    reg [1:0] votes_1; // Anzahl Stimmen für Klasse 1
    reg [1:0] votes_0; // Anzahl Stimmen für Klasse 0

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            done <= 0;
            final_label <= 0;
            votes_0 <= 0;
            votes_1 <= 0;
        end else begin
            if (done_t1 && done_t2) begin
                // Stimmen sammeln
                votes_1 <= label_t1 + label_t2;
                votes_0 <= 2 - (label_t1 + label_t2);

                // Mehrheit bilden
                if (votes_1 >= votes_0)
                    final_label <= 1;
                else
                    final_label <= 0;

                done <= 1; // fertig
            end else begin
                done <= 0;
            end
        end
    end

endmodule
