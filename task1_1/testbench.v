`timescale 1ns / 1ps

//Final parameters: a =   5, b =   8, c =  -4, d =   3, e =   6, f =  -2, g =  13
//Final function: F(x,y,z) =   5x^2 +   8x +  -4y^2 +   3y +  6z^2 +  -2z +  13


module testbench();
    reg  clk, rst, en;
    
    reg[3:0] in0, in1, in2; // 4-bit unsigned
    reg signed [4:0] a, b, c, d, e, f, g;  // 5-bit signed
    reg signed [18:0] not_yet_result;
    
    wire signed [18:0] out;
    wire done;
   
    new_top blackbox(.clk(clk), .rst(rst), .en(en), .in0(in0), .in1(in1), .in2(in2), .done(done), .out(out));
        
    initial begin
        clk = 0;
        forever begin 
            #10 clk = ~clk;
        end
     end
     
    initial begin 
    rst = 0;
    #10 
    in0 = 0;
    in1 = 0;
    in2 = 0;
    #10
    rst = 1;
    en = 1;

    @(posedge done);
    g = out;
    $display("g = %d", g);
    #20 rst = 0;
    #10 rst = 1;
    in0 = 2;
    
    @(posedge done);
    not_yet_result = out - g;
    $display("4a+2b = %d", not_yet_result);
    #20 rst = 0;
    #10 rst = 1;
    in0 = 1;
    
    @(posedge done);
    $display("a + b = %d", out - g);
    a = (not_yet_result - 2 * (out - g)) / 2; // a = ( (4a+2b) - 2*(a+b) ) / 2
    $display("a = %d", a);
    not_yet_result = out;
    b = not_yet_result - g - a;
    $display("b = %d", b);
    #20 rst = 0;
    #10 rst = 1;
    in0 = 0;
    in1 = 2;
    
    @(posedge done);
    not_yet_result = out - g;
    $display("4c+2d = %d", not_yet_result);
    #20 rst = 0;
    #10 rst = 1;
    in1 = 1;
    
    @(posedge done);
    $display("c + d = %d", out - g);
    c = (not_yet_result - 2 * (out - g)) / 2; // c = ( (4c+2d) - 2*(c+d) ) / 2
    $display("c = %d", c);
    not_yet_result = out;
    d = not_yet_result - g - c;
    $display("d = %d", d);
    #20 rst = 0;
    #10 rst = 1;
    in1 = 0;
    in2 = 2;
    
    @(posedge done);
    not_yet_result = out - g;
    $display("4e+2f = %d", not_yet_result);
    #20 rst = 0;
    #10 rst = 1;
    in2 = 1;
    
    @(posedge done);
    $display("e + f = %d", out - g);
    e = (not_yet_result - 2 * (out - g)) / 2; // e = ( (4e+2f) - 2*(e+f) ) / 2
    $display("e = %d", e);
    not_yet_result = out;
    f = not_yet_result - g - e;
    $display("f = %d", f);

    $display("Final parameters: a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, g = %d", a, b, c, d, e, f, g);
    $display("Final function: F(x,y,z) = %dx^2 + %dx + %dy^2 + %dy +%dz^2 + %dz + %d", a, b, c, d, e, f, g);

    $finish;
    end     

endmodule
