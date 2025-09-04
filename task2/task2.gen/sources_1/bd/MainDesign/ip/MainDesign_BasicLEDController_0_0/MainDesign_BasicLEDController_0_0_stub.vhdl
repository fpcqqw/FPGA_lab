-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Jun  4 15:57:37 2025
-- Host        : Jenny running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task2/task2.gen/sources_1/bd/MainDesign/ip/MainDesign_BasicLEDController_0_0/MainDesign_BasicLEDController_0_0_stub.vhdl
-- Design      : MainDesign_BasicLEDController_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainDesign_BasicLEDController_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MainDesign_BasicLEDController_0_0 : entity is "MainDesign_BasicLEDController_0_0,BasicLEDController,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of MainDesign_BasicLEDController_0_0 : entity is "MainDesign_BasicLEDController_0_0,BasicLEDController,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BasicLEDController,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MainDesign_BasicLEDController_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MainDesign_BasicLEDController_0_0 : entity is "module_ref";
end MainDesign_BasicLEDController_0_0;

architecture stub of MainDesign_BasicLEDController_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,sw[3:0],led[3:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "BasicLEDController,Vivado 2024.2";
begin
end;
