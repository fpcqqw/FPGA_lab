//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Jun  4 15:56:16 2025
//Host        : Jenny running 64-bit major release  (build 9200)
//Command     : generate_target MainDesign.bd
//Design      : MainDesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MainDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MainDesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "MainDesign.hwdef" *) 
module MainDesign
   (led_0,
    sw,
    sysclk);
  output [3:0]led_0;
  input [1:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN MainDesign_sysclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire [3:0]led_0;
  wire [1:0]sw;
  wire sysclk;

  MainDesign_BasicLEDController_0_0 BasicLEDController_0
       (.led(led_0),
        .sw({1'b0,1'b0,sw}),
        .sysclk(sysclk));
endmodule
