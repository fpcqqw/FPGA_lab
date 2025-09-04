//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Jun 26 15:25:48 2025
//Host        : Jenny running 64-bit major release  (build 9200)
//Command     : generate_target MainDesign_wrapper.bd
//Design      : MainDesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MainDesign_wrapper
   (led,
    sw,
    sysclk);
  output [3:0]led;
  input [1:0]sw;
  input sysclk;

  wire [3:0]led;
  wire [1:0]sw;
  wire sysclk;

  MainDesign MainDesign_i
       (.led(led),
        .sw(sw),
        .sysclk(sysclk));
endmodule
