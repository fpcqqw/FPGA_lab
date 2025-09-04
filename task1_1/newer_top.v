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

    always @(posedge rst) begin
        if (!rst) begin
            out <= 0;
            done <= 0;
        end else if (rst && en) begin
            result = 5 * in0 * in0
                   + 8 * in0
                   - 4 * in1 * in1
                   + 3 * in1
                   + 6 * in2 * in2
                   - 2 * in2
                   + 13;

            out <= result;
            done <= 1;
            #20 
            done <= 0;
        end else begin
            done <= 0;
        end
    end

endmodule