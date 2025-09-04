`timescale 1ns / 1ps

module tree2(
  input wire clk,
  input wire reset,
  input wire start_traversal,
  input wire [3:0] tree_depth,  //Parametrically update the depth the tree based on the software code
  input real datapoint_10, // fixed acidity
  input real datapoint_9, // volatile acidity
  input real datapoint_8, // citric acid
  input real datapoint_7, // residual sugar
  input real datapoint_6, // chlorides
  input real datapoint_5, // free sulfur dioxide
  input real datapoint_4, // total sulfur dioxide
  input real datapoint_3, // density
  input real datapoint_2, // pH
  input real datapoint_1, // sulphates
  input real datapoint_0, // alcohol
  output reg done,
  output reg label
);


real alcohol_threshold = 1.146;
real ph_threshold = 1.059;
real suphates_threshold = -0.079;
real citric_acid_threshold = -0.827;
real free_sulfur_dioxide_threshold = -0.225;
real total_sulfur_dioxide_threshold = -0.242;
real density_threshold = -2.533;

reg [3:0] current_depth = 0;  //Parametrically adjust the sizing parameters of the tree

// Overview of datapoint structure:
  // [10]: fixed acidity
  // [9]: volatile acidity
  // [8]: citric acid
  // [7]: residual sugar
  // [6]: chlorides
  // [5]: free sulfur dioxide
  // [4]: total sulfur dioxide
  // [3]: density
  // [2]: pH
  // [1]: sulphates
  // [0]: alcohol

reg [2:0] tree_direction;

always @(posedge clk or negedge reset) begin
  if (!reset) begin
    current_depth <= 0;
    done <= 0;
    
  end else begin
    if (start_traversal) begin
      if (current_depth <= tree_depth) begin
        case (current_depth)
          0: tree_direction = (datapoint_0 <= alcohol_threshold) ? 1 : 0; 
          1: case (tree_direction)
              1 : tree_direction = (datapoint_2 <= ph_threshold) ? 2'b11 : 2'b10; 
              0 : tree_direction = (datapoint_5 <= free_sulfur_dioxide_threshold) ? 2'b01 : 2'b00; 
            endcase
          2: case (tree_direction)
              2'b11 : tree_direction = (datapoint_1 <= suphates_threshold) ? 3'b111 : 3'b110;
              2'b10 : tree_direction = (datapoint_8 <= citric_acid_threshold) ? 3'b101 : 3'b100;
              2'b01 : tree_direction = (datapoint_4 <= total_sulfur_dioxide_threshold) ? 3'b011 : 3'b010;
              2'b00 : tree_direction = (datapoint_3 <= density_threshold) ? 3'b001 : 3'b000;
            endcase
          3: case (tree_direction)
              3'b111 : label <= 0;
              3'b110 : label <= 0;
              3'b101 : label <= 0;
              3'b100 : label <= 0;
              3'b011 : label <= 1;
              3'b010 : label <= 0;
              3'b001 : label <= 1;
              3'b000 : label <= 0;
            endcase
        endcase

        current_depth <= current_depth + 1;
        //stack[current_depth] <= current_depth; 
       
      end else begin
       //signal the end of classification, setting the 'done' flag
        done <= 1;
      end
  end 
end 
end


endmodule

