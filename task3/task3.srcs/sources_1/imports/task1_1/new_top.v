//Final parameters: a =   5, b =   8, c =  -4, d =   3, e =   6, f =  -2, g =  13
//Final function: F(x,y,z) =   5x^2 +   8x +  -4y^2 +   3y +  6z^2 +  -2z +  13


module new_top ( clk, rst, en, in0, in1, in2, done, out );
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  output reg [18:0] out;
  input clk, rst, en;
  output reg done;
  reg signed [18:0] result;
  reg [2:0] step;

    always @(posedge clk) begin
        if (!rst) begin
           out <= 0;
           done <= 0;
           result <= 0;
           step <= 0;
        end else begin
            case (step)
                0: begin
                    result <= 13;
                    step <= step + 1;
                    out <= result;
                end
                1: begin
                    result <= result + 5 * in0 * in0 + 8 * in0;
                    step <= step + 1;
                    out <= result;
                 end
                2: begin
                    result <= result - 4 * in1 * in1 + 3 * in1;
                    step <= step + 1;
                    out <= result;
                end
                3: begin
                    result <= result + 6 * in2 * in2 - 2 * in2;
                    step <= step + 1;
                    out <= result;
                end
                4: begin
                    done <= 1;
                    step <= 0;
                    out <= result;
                end
            endcase
         end
        end
endmodule