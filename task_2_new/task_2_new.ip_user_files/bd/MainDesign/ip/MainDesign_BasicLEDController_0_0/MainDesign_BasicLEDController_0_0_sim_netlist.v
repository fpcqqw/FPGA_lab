// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 26 14:23:38 2025
// Host        : Jenny running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task_2_new/task_2_new.gen/sources_1/bd/MainDesign/ip/MainDesign_BasicLEDController_0_0/MainDesign_BasicLEDController_0_0_sim_netlist.v
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
  input [1:0]sw;
  output [3:0]led;

  wire [3:0]led;
  wire [1:0]sw;
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
  input [1:0]sw;
  input sysclk;

  wire \blink_status[0]_i_1_n_0 ;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [25:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \dutyCounter[0]_i_1_n_0 ;
  wire \dutyCounter[0]_i_3_n_0 ;
  wire \dutyCounter[0]_i_4_n_0 ;
  wire \dutyCounter[0]_i_5_n_0 ;
  wire \dutyCounter[0]_i_6_n_0 ;
  wire \dutyCounter[0]_i_7_n_0 ;
  wire \dutyCounter[12]_i_2_n_0 ;
  wire \dutyCounter[12]_i_3_n_0 ;
  wire \dutyCounter[12]_i_4_n_0 ;
  wire \dutyCounter[12]_i_5_n_0 ;
  wire \dutyCounter[16]_i_2_n_0 ;
  wire \dutyCounter[16]_i_3_n_0 ;
  wire \dutyCounter[4]_i_2_n_0 ;
  wire \dutyCounter[4]_i_3_n_0 ;
  wire \dutyCounter[4]_i_4_n_0 ;
  wire \dutyCounter[4]_i_5_n_0 ;
  wire \dutyCounter[8]_i_2_n_0 ;
  wire \dutyCounter[8]_i_3_n_0 ;
  wire \dutyCounter[8]_i_4_n_0 ;
  wire \dutyCounter[8]_i_5_n_0 ;
  wire [17:0]dutyCounter_reg;
  wire \dutyCounter_reg[0]_i_2_n_0 ;
  wire \dutyCounter_reg[0]_i_2_n_1 ;
  wire \dutyCounter_reg[0]_i_2_n_2 ;
  wire \dutyCounter_reg[0]_i_2_n_3 ;
  wire \dutyCounter_reg[0]_i_2_n_4 ;
  wire \dutyCounter_reg[0]_i_2_n_5 ;
  wire \dutyCounter_reg[0]_i_2_n_6 ;
  wire \dutyCounter_reg[0]_i_2_n_7 ;
  wire \dutyCounter_reg[12]_i_1_n_0 ;
  wire \dutyCounter_reg[12]_i_1_n_1 ;
  wire \dutyCounter_reg[12]_i_1_n_2 ;
  wire \dutyCounter_reg[12]_i_1_n_3 ;
  wire \dutyCounter_reg[12]_i_1_n_4 ;
  wire \dutyCounter_reg[12]_i_1_n_5 ;
  wire \dutyCounter_reg[12]_i_1_n_6 ;
  wire \dutyCounter_reg[12]_i_1_n_7 ;
  wire \dutyCounter_reg[16]_i_1_n_3 ;
  wire \dutyCounter_reg[16]_i_1_n_6 ;
  wire \dutyCounter_reg[16]_i_1_n_7 ;
  wire \dutyCounter_reg[4]_i_1_n_0 ;
  wire \dutyCounter_reg[4]_i_1_n_1 ;
  wire \dutyCounter_reg[4]_i_1_n_2 ;
  wire \dutyCounter_reg[4]_i_1_n_3 ;
  wire \dutyCounter_reg[4]_i_1_n_4 ;
  wire \dutyCounter_reg[4]_i_1_n_5 ;
  wire \dutyCounter_reg[4]_i_1_n_6 ;
  wire \dutyCounter_reg[4]_i_1_n_7 ;
  wire \dutyCounter_reg[8]_i_1_n_0 ;
  wire \dutyCounter_reg[8]_i_1_n_1 ;
  wire \dutyCounter_reg[8]_i_1_n_2 ;
  wire \dutyCounter_reg[8]_i_1_n_3 ;
  wire \dutyCounter_reg[8]_i_1_n_4 ;
  wire \dutyCounter_reg[8]_i_1_n_5 ;
  wire \dutyCounter_reg[8]_i_1_n_6 ;
  wire \dutyCounter_reg[8]_i_1_n_7 ;
  wire \dutyValue[10]_i_2_n_0 ;
  wire \dutyValue[10]_i_3_n_0 ;
  wire \dutyValue[10]_i_4_n_0 ;
  wire \dutyValue[10]_i_5_n_0 ;
  wire \dutyValue[14]_i_2_n_0 ;
  wire \dutyValue[14]_i_3_n_0 ;
  wire \dutyValue[14]_i_4_n_0 ;
  wire \dutyValue[14]_i_5_n_0 ;
  wire \dutyValue[2]_i_10_n_0 ;
  wire \dutyValue[2]_i_1_n_0 ;
  wire \dutyValue[2]_i_3_n_0 ;
  wire \dutyValue[2]_i_4_n_0 ;
  wire \dutyValue[2]_i_5_n_0 ;
  wire \dutyValue[2]_i_6_n_0 ;
  wire \dutyValue[2]_i_7_n_0 ;
  wire \dutyValue[2]_i_8_n_0 ;
  wire \dutyValue[2]_i_9_n_0 ;
  wire \dutyValue[6]_i_2_n_0 ;
  wire \dutyValue[6]_i_3_n_0 ;
  wire \dutyValue[6]_i_4_n_0 ;
  wire \dutyValue[6]_i_5_n_0 ;
  wire [17:2]dutyValue_reg;
  wire \dutyValue_reg[10]_i_1_n_0 ;
  wire \dutyValue_reg[10]_i_1_n_1 ;
  wire \dutyValue_reg[10]_i_1_n_2 ;
  wire \dutyValue_reg[10]_i_1_n_3 ;
  wire \dutyValue_reg[10]_i_1_n_4 ;
  wire \dutyValue_reg[10]_i_1_n_5 ;
  wire \dutyValue_reg[10]_i_1_n_6 ;
  wire \dutyValue_reg[10]_i_1_n_7 ;
  wire \dutyValue_reg[14]_i_1_n_1 ;
  wire \dutyValue_reg[14]_i_1_n_2 ;
  wire \dutyValue_reg[14]_i_1_n_3 ;
  wire \dutyValue_reg[14]_i_1_n_4 ;
  wire \dutyValue_reg[14]_i_1_n_5 ;
  wire \dutyValue_reg[14]_i_1_n_6 ;
  wire \dutyValue_reg[14]_i_1_n_7 ;
  wire \dutyValue_reg[2]_i_2_n_0 ;
  wire \dutyValue_reg[2]_i_2_n_1 ;
  wire \dutyValue_reg[2]_i_2_n_2 ;
  wire \dutyValue_reg[2]_i_2_n_3 ;
  wire \dutyValue_reg[2]_i_2_n_4 ;
  wire \dutyValue_reg[2]_i_2_n_5 ;
  wire \dutyValue_reg[2]_i_2_n_6 ;
  wire \dutyValue_reg[2]_i_2_n_7 ;
  wire \dutyValue_reg[6]_i_1_n_0 ;
  wire \dutyValue_reg[6]_i_1_n_1 ;
  wire \dutyValue_reg[6]_i_1_n_2 ;
  wire \dutyValue_reg[6]_i_1_n_3 ;
  wire \dutyValue_reg[6]_i_1_n_4 ;
  wire \dutyValue_reg[6]_i_1_n_5 ;
  wire \dutyValue_reg[6]_i_1_n_6 ;
  wire \dutyValue_reg[6]_i_1_n_7 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire in0;
  wire [3:0]led;
  wire \led0_inferred__0/i__carry__0_n_1 ;
  wire \led0_inferred__0/i__carry__0_n_2 ;
  wire \led0_inferred__0/i__carry__0_n_3 ;
  wire \led0_inferred__0/i__carry_n_0 ;
  wire \led0_inferred__0/i__carry_n_1 ;
  wire \led0_inferred__0/i__carry_n_2 ;
  wire \led0_inferred__0/i__carry_n_3 ;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire \led[3]_i_3_n_0 ;
  wire p_0_in;
  wire p_0_out;
  wire pwm_direction;
  wire \pwm_direction[0]_i_1_n_0 ;
  wire \pwm_direction[0]_i_3_n_0 ;
  wire \pwm_direction[0]_i_4_n_0 ;
  wire \pwm_direction[0]_i_5_n_0 ;
  wire \pwm_direction[0]_i_6_n_0 ;
  wire \pwm_direction[0]_i_7_n_0 ;
  wire \pwm_direction[0]_i_8_n_0 ;
  wire \pwm_direction[0]_i_9_n_0 ;
  wire [3:0]sel0;
  wire \status[0]_i_1_n_0 ;
  wire \status[1]_i_1_n_0 ;
  wire \status[2]_i_10_n_0 ;
  wire \status[2]_i_11_n_0 ;
  wire \status[2]_i_12_n_0 ;
  wire \status[2]_i_1_n_0 ;
  wire \status[2]_i_2_n_0 ;
  wire \status[2]_i_3_n_0 ;
  wire \status[2]_i_4_n_0 ;
  wire \status[2]_i_5_n_0 ;
  wire \status[2]_i_6_n_0 ;
  wire \status[2]_i_7_n_0 ;
  wire \status[2]_i_8_n_0 ;
  wire \status[2]_i_9_n_0 ;
  wire [1:0]sw;
  wire sysclk;
  wire [3:1]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_dutyCounter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_dutyCounter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_dutyValue_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_led0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_led0_inferred__0/i__carry__0_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hF708)) 
    \blink_status[0]_i_1 
       (.I0(\status[2]_i_2_n_0 ),
        .I1(sw[0]),
        .I2(sw[1]),
        .I3(sel0[3]),
        .O(\blink_status[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \blink_status_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\blink_status[0]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1 
       (.I0(sw[0]),
        .I1(sw[1]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[25]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[24]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(\status[2]_i_2_n_0 ),
        .O(\counter[8]_i_5_n_0 ));
  FDRE \counter_reg[0] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_3_n_0 }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  FDRE \counter_reg[10] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE \counter_reg[11] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE \counter_reg[12] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE \counter_reg[13] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE \counter_reg[14] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE \counter_reg[15] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE \counter_reg[16] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE \counter_reg[17] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(1'b0));
  FDRE \counter_reg[18] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(1'b0));
  FDRE \counter_reg[19] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE \counter_reg[20] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDRE \counter_reg[21] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(1'b0));
  FDRE \counter_reg[22] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(1'b0));
  FDRE \counter_reg[23] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(1'b0));
  FDRE \counter_reg[24] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 }));
  FDRE \counter_reg[25] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE \counter_reg[5] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE \counter_reg[6] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE \counter_reg[7] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE \counter_reg[8] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE \counter_reg[9] 
       (.C(sysclk),
        .CE(\counter[0]_i_1_n_0 ),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \dutyCounter[0]_i_1 
       (.I0(sw[0]),
        .I1(sw[1]),
        .O(\dutyCounter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[0]_i_3 
       (.I0(dutyCounter_reg[0]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[0]_i_4 
       (.I0(dutyCounter_reg[3]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[0]_i_5 
       (.I0(dutyCounter_reg[2]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[0]_i_6 
       (.I0(dutyCounter_reg[1]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dutyCounter[0]_i_7 
       (.I0(dutyCounter_reg[0]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[12]_i_2 
       (.I0(dutyCounter_reg[15]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[12]_i_3 
       (.I0(dutyCounter_reg[14]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[12]_i_4 
       (.I0(dutyCounter_reg[13]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[12]_i_5 
       (.I0(dutyCounter_reg[12]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[16]_i_2 
       (.I0(dutyCounter_reg[17]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[16]_i_3 
       (.I0(dutyCounter_reg[16]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[4]_i_2 
       (.I0(dutyCounter_reg[7]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[4]_i_3 
       (.I0(dutyCounter_reg[6]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[4]_i_4 
       (.I0(dutyCounter_reg[5]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[4]_i_5 
       (.I0(dutyCounter_reg[4]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[8]_i_2 
       (.I0(dutyCounter_reg[11]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[8]_i_3 
       (.I0(dutyCounter_reg[10]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[8]_i_4 
       (.I0(dutyCounter_reg[9]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCounter[8]_i_5 
       (.I0(dutyCounter_reg[8]),
        .I1(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyCounter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[0] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[0]_i_2_n_7 ),
        .Q(dutyCounter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\dutyCounter_reg[0]_i_2_n_0 ,\dutyCounter_reg[0]_i_2_n_1 ,\dutyCounter_reg[0]_i_2_n_2 ,\dutyCounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dutyCounter[0]_i_3_n_0 }),
        .O({\dutyCounter_reg[0]_i_2_n_4 ,\dutyCounter_reg[0]_i_2_n_5 ,\dutyCounter_reg[0]_i_2_n_6 ,\dutyCounter_reg[0]_i_2_n_7 }),
        .S({\dutyCounter[0]_i_4_n_0 ,\dutyCounter[0]_i_5_n_0 ,\dutyCounter[0]_i_6_n_0 ,\dutyCounter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[10] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[8]_i_1_n_5 ),
        .Q(dutyCounter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[11] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[8]_i_1_n_4 ),
        .Q(dutyCounter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[12] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[12]_i_1_n_7 ),
        .Q(dutyCounter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyCounter_reg[12]_i_1 
       (.CI(\dutyCounter_reg[8]_i_1_n_0 ),
        .CO({\dutyCounter_reg[12]_i_1_n_0 ,\dutyCounter_reg[12]_i_1_n_1 ,\dutyCounter_reg[12]_i_1_n_2 ,\dutyCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dutyCounter_reg[12]_i_1_n_4 ,\dutyCounter_reg[12]_i_1_n_5 ,\dutyCounter_reg[12]_i_1_n_6 ,\dutyCounter_reg[12]_i_1_n_7 }),
        .S({\dutyCounter[12]_i_2_n_0 ,\dutyCounter[12]_i_3_n_0 ,\dutyCounter[12]_i_4_n_0 ,\dutyCounter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[13] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[12]_i_1_n_6 ),
        .Q(dutyCounter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[14] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[12]_i_1_n_5 ),
        .Q(dutyCounter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[15] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[12]_i_1_n_4 ),
        .Q(dutyCounter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[16] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[16]_i_1_n_7 ),
        .Q(dutyCounter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyCounter_reg[16]_i_1 
       (.CI(\dutyCounter_reg[12]_i_1_n_0 ),
        .CO({\NLW_dutyCounter_reg[16]_i_1_CO_UNCONNECTED [3:1],\dutyCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dutyCounter_reg[16]_i_1_O_UNCONNECTED [3:2],\dutyCounter_reg[16]_i_1_n_6 ,\dutyCounter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\dutyCounter[16]_i_2_n_0 ,\dutyCounter[16]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[17] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[16]_i_1_n_6 ),
        .Q(dutyCounter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[1] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[0]_i_2_n_6 ),
        .Q(dutyCounter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[2] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[0]_i_2_n_5 ),
        .Q(dutyCounter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[3] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[0]_i_2_n_4 ),
        .Q(dutyCounter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[4] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[4]_i_1_n_7 ),
        .Q(dutyCounter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyCounter_reg[4]_i_1 
       (.CI(\dutyCounter_reg[0]_i_2_n_0 ),
        .CO({\dutyCounter_reg[4]_i_1_n_0 ,\dutyCounter_reg[4]_i_1_n_1 ,\dutyCounter_reg[4]_i_1_n_2 ,\dutyCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dutyCounter_reg[4]_i_1_n_4 ,\dutyCounter_reg[4]_i_1_n_5 ,\dutyCounter_reg[4]_i_1_n_6 ,\dutyCounter_reg[4]_i_1_n_7 }),
        .S({\dutyCounter[4]_i_2_n_0 ,\dutyCounter[4]_i_3_n_0 ,\dutyCounter[4]_i_4_n_0 ,\dutyCounter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[5] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[4]_i_1_n_6 ),
        .Q(dutyCounter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[6] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[4]_i_1_n_5 ),
        .Q(dutyCounter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[7] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[4]_i_1_n_4 ),
        .Q(dutyCounter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[8] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[8]_i_1_n_7 ),
        .Q(dutyCounter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyCounter_reg[8]_i_1 
       (.CI(\dutyCounter_reg[4]_i_1_n_0 ),
        .CO({\dutyCounter_reg[8]_i_1_n_0 ,\dutyCounter_reg[8]_i_1_n_1 ,\dutyCounter_reg[8]_i_1_n_2 ,\dutyCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dutyCounter_reg[8]_i_1_n_4 ,\dutyCounter_reg[8]_i_1_n_5 ,\dutyCounter_reg[8]_i_1_n_6 ,\dutyCounter_reg[8]_i_1_n_7 }),
        .S({\dutyCounter[8]_i_2_n_0 ,\dutyCounter[8]_i_3_n_0 ,\dutyCounter[8]_i_4_n_0 ,\dutyCounter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyCounter_reg[9] 
       (.C(sysclk),
        .CE(\dutyCounter[0]_i_1_n_0 ),
        .D(\dutyCounter_reg[8]_i_1_n_6 ),
        .Q(dutyCounter_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[10]_i_2 
       (.I0(in0),
        .I1(dutyValue_reg[13]),
        .O(\dutyValue[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[10]_i_3 
       (.I0(in0),
        .I1(dutyValue_reg[12]),
        .O(\dutyValue[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[10]_i_4 
       (.I0(in0),
        .I1(dutyValue_reg[11]),
        .O(\dutyValue[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[10]_i_5 
       (.I0(in0),
        .I1(dutyValue_reg[10]),
        .O(\dutyValue[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[14]_i_2 
       (.I0(dutyValue_reg[17]),
        .I1(in0),
        .O(\dutyValue[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[14]_i_3 
       (.I0(in0),
        .I1(dutyValue_reg[16]),
        .O(\dutyValue[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[14]_i_4 
       (.I0(in0),
        .I1(dutyValue_reg[15]),
        .O(\dutyValue[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[14]_i_5 
       (.I0(in0),
        .I1(dutyValue_reg[14]),
        .O(\dutyValue[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \dutyValue[2]_i_1 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(\dutyValue[2]_i_3_n_0 ),
        .O(\dutyValue[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \dutyValue[2]_i_10 
       (.I0(dutyCounter_reg[0]),
        .I1(dutyCounter_reg[1]),
        .I2(dutyCounter_reg[2]),
        .I3(dutyCounter_reg[4]),
        .I4(dutyCounter_reg[3]),
        .O(\dutyValue[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8080808000800000)) 
    \dutyValue[2]_i_3 
       (.I0(dutyCounter_reg[15]),
        .I1(dutyCounter_reg[16]),
        .I2(dutyCounter_reg[17]),
        .I3(\dutyValue[2]_i_8_n_0 ),
        .I4(dutyCounter_reg[13]),
        .I5(dutyCounter_reg[14]),
        .O(\dutyValue[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dutyValue[2]_i_4 
       (.I0(in0),
        .I1(dutyValue_reg[5]),
        .O(\dutyValue[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dutyValue[2]_i_5 
       (.I0(in0),
        .I1(dutyValue_reg[4]),
        .O(\dutyValue[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[2]_i_6 
       (.I0(in0),
        .I1(dutyValue_reg[3]),
        .O(\dutyValue[2]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dutyValue[2]_i_7 
       (.I0(dutyValue_reg[2]),
        .O(\dutyValue[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2222222A22222222)) 
    \dutyValue[2]_i_8 
       (.I0(\dutyValue[2]_i_9_n_0 ),
        .I1(dutyCounter_reg[8]),
        .I2(dutyCounter_reg[5]),
        .I3(dutyCounter_reg[6]),
        .I4(dutyCounter_reg[7]),
        .I5(\dutyValue[2]_i_10_n_0 ),
        .O(\dutyValue[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \dutyValue[2]_i_9 
       (.I0(dutyCounter_reg[10]),
        .I1(dutyCounter_reg[9]),
        .I2(dutyCounter_reg[12]),
        .I3(dutyCounter_reg[11]),
        .O(\dutyValue[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dutyValue[6]_i_2 
       (.I0(in0),
        .I1(dutyValue_reg[9]),
        .O(\dutyValue[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dutyValue[6]_i_3 
       (.I0(in0),
        .I1(dutyValue_reg[8]),
        .O(\dutyValue[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dutyValue[6]_i_4 
       (.I0(in0),
        .I1(dutyValue_reg[7]),
        .O(\dutyValue[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dutyValue[6]_i_5 
       (.I0(in0),
        .I1(dutyValue_reg[6]),
        .O(\dutyValue[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[10] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[10]_i_1_n_7 ),
        .Q(dutyValue_reg[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyValue_reg[10]_i_1 
       (.CI(\dutyValue_reg[6]_i_1_n_0 ),
        .CO({\dutyValue_reg[10]_i_1_n_0 ,\dutyValue_reg[10]_i_1_n_1 ,\dutyValue_reg[10]_i_1_n_2 ,\dutyValue_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(dutyValue_reg[13:10]),
        .O({\dutyValue_reg[10]_i_1_n_4 ,\dutyValue_reg[10]_i_1_n_5 ,\dutyValue_reg[10]_i_1_n_6 ,\dutyValue_reg[10]_i_1_n_7 }),
        .S({\dutyValue[10]_i_2_n_0 ,\dutyValue[10]_i_3_n_0 ,\dutyValue[10]_i_4_n_0 ,\dutyValue[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[11] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[10]_i_1_n_6 ),
        .Q(dutyValue_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[12] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[10]_i_1_n_5 ),
        .Q(dutyValue_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[13] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[10]_i_1_n_4 ),
        .Q(dutyValue_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[14] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[14]_i_1_n_7 ),
        .Q(dutyValue_reg[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyValue_reg[14]_i_1 
       (.CI(\dutyValue_reg[10]_i_1_n_0 ),
        .CO({\NLW_dutyValue_reg[14]_i_1_CO_UNCONNECTED [3],\dutyValue_reg[14]_i_1_n_1 ,\dutyValue_reg[14]_i_1_n_2 ,\dutyValue_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dutyValue_reg[16:14]}),
        .O({\dutyValue_reg[14]_i_1_n_4 ,\dutyValue_reg[14]_i_1_n_5 ,\dutyValue_reg[14]_i_1_n_6 ,\dutyValue_reg[14]_i_1_n_7 }),
        .S({\dutyValue[14]_i_2_n_0 ,\dutyValue[14]_i_3_n_0 ,\dutyValue[14]_i_4_n_0 ,\dutyValue[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[15] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[14]_i_1_n_6 ),
        .Q(dutyValue_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[16] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[14]_i_1_n_5 ),
        .Q(dutyValue_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[17] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[14]_i_1_n_4 ),
        .Q(dutyValue_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[2] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[2]_i_2_n_7 ),
        .Q(dutyValue_reg[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyValue_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\dutyValue_reg[2]_i_2_n_0 ,\dutyValue_reg[2]_i_2_n_1 ,\dutyValue_reg[2]_i_2_n_2 ,\dutyValue_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({in0,in0,dutyValue_reg[3],1'b1}),
        .O({\dutyValue_reg[2]_i_2_n_4 ,\dutyValue_reg[2]_i_2_n_5 ,\dutyValue_reg[2]_i_2_n_6 ,\dutyValue_reg[2]_i_2_n_7 }),
        .S({\dutyValue[2]_i_4_n_0 ,\dutyValue[2]_i_5_n_0 ,\dutyValue[2]_i_6_n_0 ,\dutyValue[2]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[3] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[2]_i_2_n_6 ),
        .Q(dutyValue_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[4] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[2]_i_2_n_5 ),
        .Q(dutyValue_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[5] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[2]_i_2_n_4 ),
        .Q(dutyValue_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[6] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[6]_i_1_n_7 ),
        .Q(dutyValue_reg[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \dutyValue_reg[6]_i_1 
       (.CI(\dutyValue_reg[2]_i_2_n_0 ),
        .CO({\dutyValue_reg[6]_i_1_n_0 ,\dutyValue_reg[6]_i_1_n_1 ,\dutyValue_reg[6]_i_1_n_2 ,\dutyValue_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({dutyValue_reg[9],in0,in0,in0}),
        .O({\dutyValue_reg[6]_i_1_n_4 ,\dutyValue_reg[6]_i_1_n_5 ,\dutyValue_reg[6]_i_1_n_6 ,\dutyValue_reg[6]_i_1_n_7 }),
        .S({\dutyValue[6]_i_2_n_0 ,\dutyValue[6]_i_3_n_0 ,\dutyValue[6]_i_4_n_0 ,\dutyValue[6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[7] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[6]_i_1_n_6 ),
        .Q(dutyValue_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[8] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[6]_i_1_n_5 ),
        .Q(dutyValue_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dutyValue_reg[9] 
       (.C(sysclk),
        .CE(\dutyValue[2]_i_1_n_0 ),
        .D(\dutyValue_reg[6]_i_1_n_4 ),
        .Q(dutyValue_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(dutyValue_reg[8]),
        .I1(dutyCounter_reg[8]),
        .I2(dutyCounter_reg[9]),
        .I3(dutyValue_reg[9]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(dutyValue_reg[16]),
        .I1(dutyCounter_reg[16]),
        .I2(dutyCounter_reg[17]),
        .I3(dutyValue_reg[17]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(dutyValue_reg[6]),
        .I1(dutyCounter_reg[6]),
        .I2(dutyCounter_reg[7]),
        .I3(dutyValue_reg[7]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(dutyValue_reg[14]),
        .I1(dutyCounter_reg[14]),
        .I2(dutyCounter_reg[15]),
        .I3(dutyValue_reg[15]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(dutyValue_reg[4]),
        .I1(dutyCounter_reg[4]),
        .I2(dutyCounter_reg[5]),
        .I3(dutyValue_reg[5]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(dutyValue_reg[12]),
        .I1(dutyCounter_reg[12]),
        .I2(dutyCounter_reg[13]),
        .I3(dutyValue_reg[13]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(dutyValue_reg[2]),
        .I1(dutyCounter_reg[2]),
        .I2(dutyCounter_reg[3]),
        .I3(dutyValue_reg[3]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(dutyValue_reg[10]),
        .I1(dutyCounter_reg[10]),
        .I2(dutyCounter_reg[11]),
        .I3(dutyValue_reg[11]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(dutyCounter_reg[9]),
        .I1(dutyValue_reg[9]),
        .I2(dutyCounter_reg[8]),
        .I3(dutyValue_reg[8]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(dutyCounter_reg[17]),
        .I1(dutyValue_reg[17]),
        .I2(dutyCounter_reg[16]),
        .I3(dutyValue_reg[16]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(dutyCounter_reg[7]),
        .I1(dutyValue_reg[7]),
        .I2(dutyCounter_reg[6]),
        .I3(dutyValue_reg[6]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(dutyCounter_reg[15]),
        .I1(dutyValue_reg[15]),
        .I2(dutyCounter_reg[14]),
        .I3(dutyValue_reg[14]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(dutyCounter_reg[5]),
        .I1(dutyValue_reg[5]),
        .I2(dutyCounter_reg[4]),
        .I3(dutyValue_reg[4]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(dutyCounter_reg[13]),
        .I1(dutyValue_reg[13]),
        .I2(dutyCounter_reg[12]),
        .I3(dutyValue_reg[12]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(dutyCounter_reg[3]),
        .I1(dutyValue_reg[3]),
        .I2(dutyCounter_reg[2]),
        .I3(dutyValue_reg[2]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(dutyCounter_reg[11]),
        .I1(dutyValue_reg[11]),
        .I2(dutyCounter_reg[10]),
        .I3(dutyValue_reg[10]),
        .O(i__carry_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \led0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\led0_inferred__0/i__carry_n_0 ,\led0_inferred__0/i__carry_n_1 ,\led0_inferred__0/i__carry_n_2 ,\led0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_led0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \led0_inferred__0/i__carry__0 
       (.CI(\led0_inferred__0/i__carry_n_0 ),
        .CO({p_0_in,\led0_inferred__0/i__carry__0_n_1 ,\led0_inferred__0/i__carry__0_n_2 ,\led0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_led0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  LUT6 #(
    .INIT(64'hF2020000F202F0F0)) 
    \led[0]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sw[0]),
        .I3(p_0_in),
        .I4(sw[1]),
        .I5(sel0[3]),
        .O(\led[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2020000F202F0F0)) 
    \led[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sw[0]),
        .I3(p_0_in),
        .I4(sw[1]),
        .I5(sel0[3]),
        .O(\led[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8080000F808F0F0)) 
    \led[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sw[0]),
        .I3(p_0_in),
        .I4(sw[1]),
        .I5(sel0[3]),
        .O(\led[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \led[3]_i_1 
       (.I0(sw[0]),
        .I1(sw[1]),
        .O(\led[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABABAFA)) 
    \led[3]_i_2 
       (.I0(sw[0]),
        .I1(sel0[2]),
        .I2(sw[1]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(p_0_out));
  LUT5 #(
    .INIT(32'hE200E2CC)) 
    \led[3]_i_3 
       (.I0(sel0[2]),
        .I1(sw[0]),
        .I2(p_0_in),
        .I3(sw[1]),
        .I4(sel0[3]),
        .O(\led[3]_i_3_n_0 ));
  FDSE \led_reg[0] 
       (.C(sysclk),
        .CE(p_0_out),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .S(\led[3]_i_1_n_0 ));
  FDRE \led_reg[1] 
       (.C(sysclk),
        .CE(p_0_out),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(\led[3]_i_1_n_0 ));
  FDRE \led_reg[2] 
       (.C(sysclk),
        .CE(p_0_out),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(\led[3]_i_1_n_0 ));
  FDSE \led_reg[3] 
       (.C(sysclk),
        .CE(p_0_out),
        .D(\led[3]_i_3_n_0 ),
        .Q(led[3]),
        .S(\led[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \pwm_direction[0]_i_1 
       (.I0(pwm_direction),
        .I1(\pwm_direction[0]_i_3_n_0 ),
        .I2(\dutyValue[2]_i_3_n_0 ),
        .I3(in0),
        .O(\pwm_direction[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \pwm_direction[0]_i_2 
       (.I0(\pwm_direction[0]_i_4_n_0 ),
        .I1(dutyValue_reg[3]),
        .I2(dutyValue_reg[2]),
        .I3(dutyValue_reg[5]),
        .I4(dutyValue_reg[4]),
        .I5(\pwm_direction[0]_i_5_n_0 ),
        .O(pwm_direction));
  LUT5 #(
    .INIT(32'h80020000)) 
    \pwm_direction[0]_i_3 
       (.I0(\pwm_direction[0]_i_6_n_0 ),
        .I1(dutyValue_reg[15]),
        .I2(dutyValue_reg[16]),
        .I3(dutyValue_reg[17]),
        .I4(\pwm_direction[0]_i_7_n_0 ),
        .O(\pwm_direction[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \pwm_direction[0]_i_4 
       (.I0(dutyValue_reg[7]),
        .I1(dutyValue_reg[6]),
        .I2(dutyValue_reg[9]),
        .I3(dutyValue_reg[8]),
        .O(\pwm_direction[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \pwm_direction[0]_i_5 
       (.I0(dutyValue_reg[10]),
        .I1(dutyValue_reg[11]),
        .I2(dutyValue_reg[14]),
        .I3(dutyValue_reg[12]),
        .I4(\pwm_direction[0]_i_8_n_0 ),
        .O(\pwm_direction[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000080)) 
    \pwm_direction[0]_i_6 
       (.I0(\pwm_direction[0]_i_9_n_0 ),
        .I1(dutyValue_reg[6]),
        .I2(dutyValue_reg[7]),
        .I3(dutyValue_reg[9]),
        .I4(dutyValue_reg[10]),
        .I5(dutyValue_reg[11]),
        .O(\pwm_direction[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \pwm_direction[0]_i_7 
       (.I0(dutyValue_reg[13]),
        .I1(dutyValue_reg[14]),
        .I2(\dutyCounter[0]_i_1_n_0 ),
        .I3(dutyValue_reg[2]),
        .I4(dutyValue_reg[5]),
        .I5(dutyValue_reg[8]),
        .O(\pwm_direction[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \pwm_direction[0]_i_8 
       (.I0(dutyValue_reg[15]),
        .I1(dutyValue_reg[13]),
        .I2(dutyValue_reg[17]),
        .I3(dutyValue_reg[16]),
        .O(\pwm_direction[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1800000000000018)) 
    \pwm_direction[0]_i_9 
       (.I0(dutyValue_reg[6]),
        .I1(dutyValue_reg[4]),
        .I2(dutyValue_reg[3]),
        .I3(dutyValue_reg[15]),
        .I4(dutyValue_reg[12]),
        .I5(dutyValue_reg[11]),
        .O(\pwm_direction[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \pwm_direction_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\pwm_direction[0]_i_1_n_0 ),
        .Q(in0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFFFFF0B000000)) 
    \status[0]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\status[2]_i_2_n_0 ),
        .I5(sel0[0]),
        .O(\status[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \status[1]_i_1 
       (.I0(sel0[0]),
        .I1(sw[0]),
        .I2(sw[1]),
        .I3(\status[2]_i_2_n_0 ),
        .I4(sel0[1]),
        .O(\status[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFFFF08000000)) 
    \status[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\status[2]_i_2_n_0 ),
        .I5(sel0[2]),
        .O(\status[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \status[2]_i_10 
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(\status[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \status[2]_i_11 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .O(\status[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \status[2]_i_12 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[4]),
        .I4(counter_reg[3]),
        .O(\status[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00022222)) 
    \status[2]_i_2 
       (.I0(\status[2]_i_3_n_0 ),
        .I1(\status[2]_i_4_n_0 ),
        .I2(\status[2]_i_5_n_0 ),
        .I3(\status[2]_i_6_n_0 ),
        .I4(\status[2]_i_7_n_0 ),
        .I5(counter_reg[22]),
        .O(\status[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \status[2]_i_3 
       (.I0(counter_reg[25]),
        .I1(counter_reg[24]),
        .I2(counter_reg[23]),
        .O(\status[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \status[2]_i_4 
       (.I0(counter_reg[21]),
        .I1(counter_reg[20]),
        .I2(counter_reg[19]),
        .O(\status[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \status[2]_i_5 
       (.I0(counter_reg[16]),
        .I1(counter_reg[15]),
        .I2(counter_reg[13]),
        .I3(counter_reg[14]),
        .O(\status[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A888A888A888A8)) 
    \status[2]_i_6 
       (.I0(\status[2]_i_8_n_0 ),
        .I1(\status[2]_i_9_n_0 ),
        .I2(\status[2]_i_10_n_0 ),
        .I3(counter_reg[7]),
        .I4(\status[2]_i_11_n_0 ),
        .I5(\status[2]_i_12_n_0 ),
        .O(\status[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \status[2]_i_7 
       (.I0(counter_reg[17]),
        .I1(counter_reg[18]),
        .O(\status[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \status[2]_i_8 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .O(\status[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \status[2]_i_9 
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(\status[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\status[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\status[2]_i_1_n_0 ),
        .Q(sel0[2]),
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
