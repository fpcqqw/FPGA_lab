-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Jun  4 15:57:37 2025
-- Host        : Jenny running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task2/task2.gen/sources_1/bd/MainDesign/ip/MainDesign_BasicLEDController_0_0/MainDesign_BasicLEDController_0_0_sim_netlist.vhdl
-- Design      : MainDesign_BasicLEDController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_BasicLEDController_0_0_BasicLEDController is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MainDesign_BasicLEDController_0_0_BasicLEDController : entity is "BasicLEDController";
end MainDesign_BasicLEDController_0_0_BasicLEDController;

architecture STRUCTURE of MainDesign_BasicLEDController_0_0_BasicLEDController is
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_2_n_0\ : STD_LOGIC;
begin
\led[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(0),
      O => \led[0]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(3),
      I1 => sw(2),
      O => \led[3]_i_1_n_0\
    );
\led[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(1),
      O => \led[3]_i_2_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \led[3]_i_1_n_0\,
      D => \led[0]_i_1_n_0\,
      Q => led(0),
      R => '0'
    );
\led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \led[3]_i_1_n_0\,
      D => sw(0),
      Q => led(1),
      R => '0'
    );
\led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \led[3]_i_1_n_0\,
      D => sw(1),
      Q => led(2),
      R => '0'
    );
\led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \led[3]_i_1_n_0\,
      D => \led[3]_i_2_n_0\,
      Q => led(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MainDesign_BasicLEDController_0_0 is
  port (
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MainDesign_BasicLEDController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MainDesign_BasicLEDController_0_0 : entity is "MainDesign_BasicLEDController_0_0,BasicLEDController,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MainDesign_BasicLEDController_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MainDesign_BasicLEDController_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MainDesign_BasicLEDController_0_0 : entity is "BasicLEDController,Vivado 2024.2";
end MainDesign_BasicLEDController_0_0;

architecture STRUCTURE of MainDesign_BasicLEDController_0_0 is
begin
inst: entity work.MainDesign_BasicLEDController_0_0_BasicLEDController
     port map (
      led(3 downto 0) => led(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
