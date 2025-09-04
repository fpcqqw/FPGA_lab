// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Jun  4 15:57:37 2025
// Host        : Jenny running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task2/task2.gen/sources_1/bd/MainDesign/ip/MainDesign_BasicLEDController_0_0/MainDesign_BasicLEDController_0_0_sim_netlist.v
// Design      : MainDesign_BasicLEDController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MainDesign_BasicLEDController_0_0,BasicLEDController,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BasicLEDController,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module MainDesign_BasicLEDController_0_0
   (sysclk,
    sw,
    led);
  input sysclk;
  input [3:0]sw;
  output [3:0]led;

  wire [3:0]led;
  wire [3:0]sw;
  wire sysclk;

  MainDesign_BasicLEDController_0_0_BasicLEDController inst
       (.led(led),
        .sw(sw),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "BasicLEDController" *) 
module MainDesign_BasicLEDController_0_0_BasicLEDController
   (led,
    sw,
    sysclk);
  output [3:0]led;
  input [3:0]sw;
  input sysclk;

  wire [3:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire \led[3]_i_2_n_0 ;
  wire [3:0]sw;
  wire sysclk;

  LUT1 #(
    .INIT(2'h1)) 
    \led[0]_i_1 
       (.I0(sw[0]),
        .O(\led[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \led[3]_i_1 
       (.I0(sw[3]),
        .I1(sw[2]),
        .O(\led[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led[3]_i_2 
       (.I0(sw[1]),
        .O(\led[3]_i_2_n_0 ));
  FDRE \led_reg[0] 
       (.C(sysclk),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_reg[1] 
       (.C(sysclk),
        .CE(\led[3]_i_1_n_0 ),
        .D(sw[0]),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_reg[2] 
       (.C(sysclk),
        .CE(\led[3]_i_1_n_0 ),
        .D(sw[1]),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_reg[3] 
       (.C(sysclk),
        .CE(\led[3]_i_1_n_0 ),
        .D(\led[3]_i_2_n_0 ),
        .Q(led[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
