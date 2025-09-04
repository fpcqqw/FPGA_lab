`timescale 1ns / 1ps

module task3(
    input [2:0] opcode,           // Pins [51:49]
    output reg done,              // Pins [48]
    output reg [23:0] out,        // Pins [47:24]
    input [7:0] in2,              // Pins [23:16]
    input [7:0] in1,              // Pins [15:8]
    input [7:0] in0,              // Pins [7:0]
    input clk,
    input rst
    );
   
    wire [3:0] in0_4bit;
    wire [3:0] in1_4bit;
    wire [3:0] in2_4bit;
    
    assign in0_4bit = in0[3:0];
    assign in1_4bit = in1[3:0];
    assign in2_4bit = in2[3:0];

    reg f_en;
    wire f_done;
    wire [18:0] f_out;
    
    new_top f_function (
        .clk(clk),
        .rst(rst),
        .en(f_en),
        .in0(in0_4bit),
        .in1(in1_4bit),
        .in2(in2_4bit),
        .done(f_done),
        .out(f_out)
    );

    always @(posedge clk) begin
        if (!rst) begin
            out <= 0;
            done <= 0;
            f_en <= 0;
        end
        else begin
            if (!done) begin
                case (opcode)
                    3'b000: begin // 0: Add
                            out <= in0 + in1;
                            done <= 1;
                            end             
                    3'b001: begin // 1: Sub
                            out <= in0 - in1;              
                            done <= 1;
                            end
                    3'b010: begin // 2: Mult
                            out <= in0 * in1;
                            done <= 1;
                            end
                    3'b011: begin // 3: Shift Right
                            out <= in0 >> 1;
                            done <= 1;
                            end           
                    3'b100: begin // 4: Square
                            out <= in0 * in0;
                            done <= 1;
                            end
                    3'b101: begin // 5: Cube
                            out <= in0 * in0 * in0;
                            done <= 1;
                            end      
                    3'b110: begin // 6: Triple Add
                            out <= in0 + in1 + in2;   
                            done <= 1;
                            end     
                    3'b111: begin
                            f_en <= 1;
                            if (!f_done) begin
                                f_en <= 1;
                                done <= 0;
                            end else begin
                                out <= {5'b0, f_out};
                                done <= 1;
                                f_en <= 0;
                            end
                            end
                endcase
           end
        end
     end


endmodule