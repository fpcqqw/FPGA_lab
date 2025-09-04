//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Jun 26 14:22:28 2025
//Host        : Jenny running 64-bit major release  (build 9200)
//Command     : generate_target MainDesign.bd
//Design      : MainDesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MainDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MainDesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "MainDesign.hwdef" *) 
module MainDesign
   (led,
    sw,
    sysclk);
  output [3:0]led;
  input [1:0]sw;
  input sysclk;

  wire [3:0]led;
  wire [1:0]sw;
  wire sysclk;

  MainDesign_BasicLEDController_0_0 BasicLEDController_0
       (.led(led),
        .sw(sw),
        .sysclk(sysclk));
endmodule
