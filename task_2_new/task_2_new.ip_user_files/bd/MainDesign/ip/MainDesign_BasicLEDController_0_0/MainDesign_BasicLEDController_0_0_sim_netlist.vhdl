-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jun 26 14:23:38 2025
-- Host        : Jenny running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Jenny2/Documents/02Semester/FPGA_lab/task_2_new/task_2_new.gen/sources_1/bd/MainDesign/ip/MainDesign_BasicLEDController_0_0/MainDesign_BasicLEDController_0_0_sim_netlist.vhdl
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
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of MainDesign_BasicLEDController_0_0_BasicLEDController : entity is "BasicLEDController";
end MainDesign_BasicLEDController_0_0_BasicLEDController;

architecture STRUCTURE of MainDesign_BasicLEDController_0_0_BasicLEDController is
  signal \blink_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \dutyCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \dutyCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal \dutyCounter[0]_i_4_n_0\ : STD_LOGIC;
  signal \dutyCounter[0]_i_5_n_0\ : STD_LOGIC;
  signal \dutyCounter[0]_i_6_n_0\ : STD_LOGIC;
  signal \dutyCounter[0]_i_7_n_0\ : STD_LOGIC;
  signal \dutyCounter[12]_i_2_n_0\ : STD_LOGIC;
  signal \dutyCounter[12]_i_3_n_0\ : STD_LOGIC;
  signal \dutyCounter[12]_i_4_n_0\ : STD_LOGIC;
  signal \dutyCounter[12]_i_5_n_0\ : STD_LOGIC;
  signal \dutyCounter[16]_i_2_n_0\ : STD_LOGIC;
  signal \dutyCounter[16]_i_3_n_0\ : STD_LOGIC;
  signal \dutyCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \dutyCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \dutyCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \dutyCounter[4]_i_5_n_0\ : STD_LOGIC;
  signal \dutyCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \dutyCounter[8]_i_3_n_0\ : STD_LOGIC;
  signal \dutyCounter[8]_i_4_n_0\ : STD_LOGIC;
  signal \dutyCounter[8]_i_5_n_0\ : STD_LOGIC;
  signal dutyCounter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \dutyCounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \dutyCounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \dutyCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \dutyCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \dutyCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \dutyCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \dutyCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dutyCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \dutyValue[10]_i_2_n_0\ : STD_LOGIC;
  signal \dutyValue[10]_i_3_n_0\ : STD_LOGIC;
  signal \dutyValue[10]_i_4_n_0\ : STD_LOGIC;
  signal \dutyValue[10]_i_5_n_0\ : STD_LOGIC;
  signal \dutyValue[14]_i_2_n_0\ : STD_LOGIC;
  signal \dutyValue[14]_i_3_n_0\ : STD_LOGIC;
  signal \dutyValue[14]_i_4_n_0\ : STD_LOGIC;
  signal \dutyValue[14]_i_5_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_10_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_1_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_3_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_4_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_5_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_6_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_7_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_8_n_0\ : STD_LOGIC;
  signal \dutyValue[2]_i_9_n_0\ : STD_LOGIC;
  signal \dutyValue[6]_i_2_n_0\ : STD_LOGIC;
  signal \dutyValue[6]_i_3_n_0\ : STD_LOGIC;
  signal \dutyValue[6]_i_4_n_0\ : STD_LOGIC;
  signal \dutyValue[6]_i_5_n_0\ : STD_LOGIC;
  signal dutyValue_reg : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal \dutyValue_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \dutyValue_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \dutyValue_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \dutyValue_reg[2]_i_2_n_7\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \dutyValue_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in0 : STD_LOGIC;
  signal \led0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \led0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal pwm_direction : STD_LOGIC;
  signal \pwm_direction[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_4_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_5_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_6_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_7_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_8_n_0\ : STD_LOGIC;
  signal \pwm_direction[0]_i_9_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \status[0]_i_1_n_0\ : STD_LOGIC;
  signal \status[1]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_10_n_0\ : STD_LOGIC;
  signal \status[2]_i_11_n_0\ : STD_LOGIC;
  signal \status[2]_i_12_n_0\ : STD_LOGIC;
  signal \status[2]_i_1_n_0\ : STD_LOGIC;
  signal \status[2]_i_2_n_0\ : STD_LOGIC;
  signal \status[2]_i_3_n_0\ : STD_LOGIC;
  signal \status[2]_i_4_n_0\ : STD_LOGIC;
  signal \status[2]_i_5_n_0\ : STD_LOGIC;
  signal \status[2]_i_6_n_0\ : STD_LOGIC;
  signal \status[2]_i_7_n_0\ : STD_LOGIC;
  signal \status[2]_i_8_n_0\ : STD_LOGIC;
  signal \status[2]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dutyCounter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dutyCounter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dutyValue_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_led0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_led0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyCounter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyCounter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyCounter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyCounter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyCounter_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyValue_reg[10]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyValue_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyValue_reg[2]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \dutyValue_reg[6]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \led0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \led0_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \status[2]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \status[2]_i_8\ : label is "soft_lutpair0";
begin
\blink_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \status[2]_i_2_n_0\,
      I1 => sw(0),
      I2 => sw(1),
      I3 => sel0(3),
      O => \blink_status[0]_i_1_n_0\
    );
\blink_status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \blink_status[0]_i_1_n_0\,
      Q => sel0(3),
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(0),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[0]_i_7_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(19),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(18),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(17),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(23),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(22),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(21),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(20),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(25),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(24),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[24]_i_3_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => \status[2]_i_2_n_0\,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_3_n_0\,
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => \counter[0]_i_4_n_0\,
      S(2) => \counter[0]_i_5_n_0\,
      S(1) => \counter[0]_i_6_n_0\,
      S(0) => \counter[0]_i_7_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => '0'
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => '0'
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => '0'
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => '0'
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => '0'
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => '0'
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => '0'
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \counter[24]_i_2_n_0\,
      S(0) => \counter[24]_i_3_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => \counter[0]_i_1_n_0\,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
\dutyCounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      O => \dutyCounter[0]_i_1_n_0\
    );
\dutyCounter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(0),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[0]_i_3_n_0\
    );
\dutyCounter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(3),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[0]_i_4_n_0\
    );
\dutyCounter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(2),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[0]_i_5_n_0\
    );
\dutyCounter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(1),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[0]_i_6_n_0\
    );
\dutyCounter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dutyCounter_reg(0),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[0]_i_7_n_0\
    );
\dutyCounter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(15),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[12]_i_2_n_0\
    );
\dutyCounter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(14),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[12]_i_3_n_0\
    );
\dutyCounter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(13),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[12]_i_4_n_0\
    );
\dutyCounter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(12),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[12]_i_5_n_0\
    );
\dutyCounter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(17),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[16]_i_2_n_0\
    );
\dutyCounter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(16),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[16]_i_3_n_0\
    );
\dutyCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(7),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[4]_i_2_n_0\
    );
\dutyCounter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(6),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[4]_i_3_n_0\
    );
\dutyCounter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(5),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[4]_i_4_n_0\
    );
\dutyCounter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(4),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[4]_i_5_n_0\
    );
\dutyCounter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(11),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[8]_i_2_n_0\
    );
\dutyCounter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(10),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[8]_i_3_n_0\
    );
\dutyCounter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(9),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[8]_i_4_n_0\
    );
\dutyCounter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dutyCounter_reg(8),
      I1 => \dutyValue[2]_i_3_n_0\,
      O => \dutyCounter[8]_i_5_n_0\
    );
\dutyCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[0]_i_2_n_7\,
      Q => dutyCounter_reg(0),
      R => '0'
    );
\dutyCounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dutyCounter_reg[0]_i_2_n_0\,
      CO(2) => \dutyCounter_reg[0]_i_2_n_1\,
      CO(1) => \dutyCounter_reg[0]_i_2_n_2\,
      CO(0) => \dutyCounter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dutyCounter[0]_i_3_n_0\,
      O(3) => \dutyCounter_reg[0]_i_2_n_4\,
      O(2) => \dutyCounter_reg[0]_i_2_n_5\,
      O(1) => \dutyCounter_reg[0]_i_2_n_6\,
      O(0) => \dutyCounter_reg[0]_i_2_n_7\,
      S(3) => \dutyCounter[0]_i_4_n_0\,
      S(2) => \dutyCounter[0]_i_5_n_0\,
      S(1) => \dutyCounter[0]_i_6_n_0\,
      S(0) => \dutyCounter[0]_i_7_n_0\
    );
\dutyCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[8]_i_1_n_5\,
      Q => dutyCounter_reg(10),
      R => '0'
    );
\dutyCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[8]_i_1_n_4\,
      Q => dutyCounter_reg(11),
      R => '0'
    );
\dutyCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[12]_i_1_n_7\,
      Q => dutyCounter_reg(12),
      R => '0'
    );
\dutyCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCounter_reg[8]_i_1_n_0\,
      CO(3) => \dutyCounter_reg[12]_i_1_n_0\,
      CO(2) => \dutyCounter_reg[12]_i_1_n_1\,
      CO(1) => \dutyCounter_reg[12]_i_1_n_2\,
      CO(0) => \dutyCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dutyCounter_reg[12]_i_1_n_4\,
      O(2) => \dutyCounter_reg[12]_i_1_n_5\,
      O(1) => \dutyCounter_reg[12]_i_1_n_6\,
      O(0) => \dutyCounter_reg[12]_i_1_n_7\,
      S(3) => \dutyCounter[12]_i_2_n_0\,
      S(2) => \dutyCounter[12]_i_3_n_0\,
      S(1) => \dutyCounter[12]_i_4_n_0\,
      S(0) => \dutyCounter[12]_i_5_n_0\
    );
\dutyCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[12]_i_1_n_6\,
      Q => dutyCounter_reg(13),
      R => '0'
    );
\dutyCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[12]_i_1_n_5\,
      Q => dutyCounter_reg(14),
      R => '0'
    );
\dutyCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[12]_i_1_n_4\,
      Q => dutyCounter_reg(15),
      R => '0'
    );
\dutyCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[16]_i_1_n_7\,
      Q => dutyCounter_reg(16),
      R => '0'
    );
\dutyCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCounter_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_dutyCounter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \dutyCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_dutyCounter_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \dutyCounter_reg[16]_i_1_n_6\,
      O(0) => \dutyCounter_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \dutyCounter[16]_i_2_n_0\,
      S(0) => \dutyCounter[16]_i_3_n_0\
    );
\dutyCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[16]_i_1_n_6\,
      Q => dutyCounter_reg(17),
      R => '0'
    );
\dutyCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[0]_i_2_n_6\,
      Q => dutyCounter_reg(1),
      R => '0'
    );
\dutyCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[0]_i_2_n_5\,
      Q => dutyCounter_reg(2),
      R => '0'
    );
\dutyCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[0]_i_2_n_4\,
      Q => dutyCounter_reg(3),
      R => '0'
    );
\dutyCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[4]_i_1_n_7\,
      Q => dutyCounter_reg(4),
      R => '0'
    );
\dutyCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCounter_reg[0]_i_2_n_0\,
      CO(3) => \dutyCounter_reg[4]_i_1_n_0\,
      CO(2) => \dutyCounter_reg[4]_i_1_n_1\,
      CO(1) => \dutyCounter_reg[4]_i_1_n_2\,
      CO(0) => \dutyCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dutyCounter_reg[4]_i_1_n_4\,
      O(2) => \dutyCounter_reg[4]_i_1_n_5\,
      O(1) => \dutyCounter_reg[4]_i_1_n_6\,
      O(0) => \dutyCounter_reg[4]_i_1_n_7\,
      S(3) => \dutyCounter[4]_i_2_n_0\,
      S(2) => \dutyCounter[4]_i_3_n_0\,
      S(1) => \dutyCounter[4]_i_4_n_0\,
      S(0) => \dutyCounter[4]_i_5_n_0\
    );
\dutyCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[4]_i_1_n_6\,
      Q => dutyCounter_reg(5),
      R => '0'
    );
\dutyCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[4]_i_1_n_5\,
      Q => dutyCounter_reg(6),
      R => '0'
    );
\dutyCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[4]_i_1_n_4\,
      Q => dutyCounter_reg(7),
      R => '0'
    );
\dutyCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[8]_i_1_n_7\,
      Q => dutyCounter_reg(8),
      R => '0'
    );
\dutyCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCounter_reg[4]_i_1_n_0\,
      CO(3) => \dutyCounter_reg[8]_i_1_n_0\,
      CO(2) => \dutyCounter_reg[8]_i_1_n_1\,
      CO(1) => \dutyCounter_reg[8]_i_1_n_2\,
      CO(0) => \dutyCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dutyCounter_reg[8]_i_1_n_4\,
      O(2) => \dutyCounter_reg[8]_i_1_n_5\,
      O(1) => \dutyCounter_reg[8]_i_1_n_6\,
      O(0) => \dutyCounter_reg[8]_i_1_n_7\,
      S(3) => \dutyCounter[8]_i_2_n_0\,
      S(2) => \dutyCounter[8]_i_3_n_0\,
      S(1) => \dutyCounter[8]_i_4_n_0\,
      S(0) => \dutyCounter[8]_i_5_n_0\
    );
\dutyCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyCounter[0]_i_1_n_0\,
      D => \dutyCounter_reg[8]_i_1_n_6\,
      Q => dutyCounter_reg(9),
      R => '0'
    );
\dutyValue[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(13),
      O => \dutyValue[10]_i_2_n_0\
    );
\dutyValue[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(12),
      O => \dutyValue[10]_i_3_n_0\
    );
\dutyValue[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(11),
      O => \dutyValue[10]_i_4_n_0\
    );
\dutyValue[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(10),
      O => \dutyValue[10]_i_5_n_0\
    );
\dutyValue[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dutyValue_reg(17),
      I1 => in0,
      O => \dutyValue[14]_i_2_n_0\
    );
\dutyValue[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(16),
      O => \dutyValue[14]_i_3_n_0\
    );
\dutyValue[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(15),
      O => \dutyValue[14]_i_4_n_0\
    );
\dutyValue[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(14),
      O => \dutyValue[14]_i_5_n_0\
    );
\dutyValue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => \dutyValue[2]_i_3_n_0\,
      O => \dutyValue[2]_i_1_n_0\
    );
\dutyValue[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => dutyCounter_reg(0),
      I1 => dutyCounter_reg(1),
      I2 => dutyCounter_reg(2),
      I3 => dutyCounter_reg(4),
      I4 => dutyCounter_reg(3),
      O => \dutyValue[2]_i_10_n_0\
    );
\dutyValue[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000800000"
    )
        port map (
      I0 => dutyCounter_reg(15),
      I1 => dutyCounter_reg(16),
      I2 => dutyCounter_reg(17),
      I3 => \dutyValue[2]_i_8_n_0\,
      I4 => dutyCounter_reg(13),
      I5 => dutyCounter_reg(14),
      O => \dutyValue[2]_i_3_n_0\
    );
\dutyValue[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(5),
      O => \dutyValue[2]_i_4_n_0\
    );
\dutyValue[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(4),
      O => \dutyValue[2]_i_5_n_0\
    );
\dutyValue[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(3),
      O => \dutyValue[2]_i_6_n_0\
    );
\dutyValue[2]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dutyValue_reg(2),
      O => \dutyValue[2]_i_7_n_0\
    );
\dutyValue[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222A22222222"
    )
        port map (
      I0 => \dutyValue[2]_i_9_n_0\,
      I1 => dutyCounter_reg(8),
      I2 => dutyCounter_reg(5),
      I3 => dutyCounter_reg(6),
      I4 => dutyCounter_reg(7),
      I5 => \dutyValue[2]_i_10_n_0\,
      O => \dutyValue[2]_i_8_n_0\
    );
\dutyValue[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dutyCounter_reg(10),
      I1 => dutyCounter_reg(9),
      I2 => dutyCounter_reg(12),
      I3 => dutyCounter_reg(11),
      O => \dutyValue[2]_i_9_n_0\
    );
\dutyValue[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(9),
      O => \dutyValue[6]_i_2_n_0\
    );
\dutyValue[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(8),
      O => \dutyValue[6]_i_3_n_0\
    );
\dutyValue[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(7),
      O => \dutyValue[6]_i_4_n_0\
    );
\dutyValue[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => dutyValue_reg(6),
      O => \dutyValue[6]_i_5_n_0\
    );
\dutyValue_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[10]_i_1_n_7\,
      Q => dutyValue_reg(10),
      R => '0'
    );
\dutyValue_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyValue_reg[6]_i_1_n_0\,
      CO(3) => \dutyValue_reg[10]_i_1_n_0\,
      CO(2) => \dutyValue_reg[10]_i_1_n_1\,
      CO(1) => \dutyValue_reg[10]_i_1_n_2\,
      CO(0) => \dutyValue_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dutyValue_reg(13 downto 10),
      O(3) => \dutyValue_reg[10]_i_1_n_4\,
      O(2) => \dutyValue_reg[10]_i_1_n_5\,
      O(1) => \dutyValue_reg[10]_i_1_n_6\,
      O(0) => \dutyValue_reg[10]_i_1_n_7\,
      S(3) => \dutyValue[10]_i_2_n_0\,
      S(2) => \dutyValue[10]_i_3_n_0\,
      S(1) => \dutyValue[10]_i_4_n_0\,
      S(0) => \dutyValue[10]_i_5_n_0\
    );
\dutyValue_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[10]_i_1_n_6\,
      Q => dutyValue_reg(11),
      R => '0'
    );
\dutyValue_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[10]_i_1_n_5\,
      Q => dutyValue_reg(12),
      R => '0'
    );
\dutyValue_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[10]_i_1_n_4\,
      Q => dutyValue_reg(13),
      R => '0'
    );
\dutyValue_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[14]_i_1_n_7\,
      Q => dutyValue_reg(14),
      R => '0'
    );
\dutyValue_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyValue_reg[10]_i_1_n_0\,
      CO(3) => \NLW_dutyValue_reg[14]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \dutyValue_reg[14]_i_1_n_1\,
      CO(1) => \dutyValue_reg[14]_i_1_n_2\,
      CO(0) => \dutyValue_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => dutyValue_reg(16 downto 14),
      O(3) => \dutyValue_reg[14]_i_1_n_4\,
      O(2) => \dutyValue_reg[14]_i_1_n_5\,
      O(1) => \dutyValue_reg[14]_i_1_n_6\,
      O(0) => \dutyValue_reg[14]_i_1_n_7\,
      S(3) => \dutyValue[14]_i_2_n_0\,
      S(2) => \dutyValue[14]_i_3_n_0\,
      S(1) => \dutyValue[14]_i_4_n_0\,
      S(0) => \dutyValue[14]_i_5_n_0\
    );
\dutyValue_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[14]_i_1_n_6\,
      Q => dutyValue_reg(15),
      R => '0'
    );
\dutyValue_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[14]_i_1_n_5\,
      Q => dutyValue_reg(16),
      R => '0'
    );
\dutyValue_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[14]_i_1_n_4\,
      Q => dutyValue_reg(17),
      R => '0'
    );
\dutyValue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[2]_i_2_n_7\,
      Q => dutyValue_reg(2),
      R => '0'
    );
\dutyValue_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dutyValue_reg[2]_i_2_n_0\,
      CO(2) => \dutyValue_reg[2]_i_2_n_1\,
      CO(1) => \dutyValue_reg[2]_i_2_n_2\,
      CO(0) => \dutyValue_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => in0,
      DI(2) => in0,
      DI(1) => dutyValue_reg(3),
      DI(0) => '1',
      O(3) => \dutyValue_reg[2]_i_2_n_4\,
      O(2) => \dutyValue_reg[2]_i_2_n_5\,
      O(1) => \dutyValue_reg[2]_i_2_n_6\,
      O(0) => \dutyValue_reg[2]_i_2_n_7\,
      S(3) => \dutyValue[2]_i_4_n_0\,
      S(2) => \dutyValue[2]_i_5_n_0\,
      S(1) => \dutyValue[2]_i_6_n_0\,
      S(0) => \dutyValue[2]_i_7_n_0\
    );
\dutyValue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[2]_i_2_n_6\,
      Q => dutyValue_reg(3),
      R => '0'
    );
\dutyValue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[2]_i_2_n_5\,
      Q => dutyValue_reg(4),
      R => '0'
    );
\dutyValue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[2]_i_2_n_4\,
      Q => dutyValue_reg(5),
      R => '0'
    );
\dutyValue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[6]_i_1_n_7\,
      Q => dutyValue_reg(6),
      R => '0'
    );
\dutyValue_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyValue_reg[2]_i_2_n_0\,
      CO(3) => \dutyValue_reg[6]_i_1_n_0\,
      CO(2) => \dutyValue_reg[6]_i_1_n_1\,
      CO(1) => \dutyValue_reg[6]_i_1_n_2\,
      CO(0) => \dutyValue_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => dutyValue_reg(9),
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \dutyValue_reg[6]_i_1_n_4\,
      O(2) => \dutyValue_reg[6]_i_1_n_5\,
      O(1) => \dutyValue_reg[6]_i_1_n_6\,
      O(0) => \dutyValue_reg[6]_i_1_n_7\,
      S(3) => \dutyValue[6]_i_2_n_0\,
      S(2) => \dutyValue[6]_i_3_n_0\,
      S(1) => \dutyValue[6]_i_4_n_0\,
      S(0) => \dutyValue[6]_i_5_n_0\
    );
\dutyValue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[6]_i_1_n_6\,
      Q => dutyValue_reg(7),
      R => '0'
    );
\dutyValue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[6]_i_1_n_5\,
      Q => dutyValue_reg(8),
      R => '0'
    );
\dutyValue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \dutyValue[2]_i_1_n_0\,
      D => \dutyValue_reg[6]_i_1_n_4\,
      Q => dutyValue_reg(9),
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(8),
      I1 => dutyCounter_reg(8),
      I2 => dutyCounter_reg(9),
      I3 => dutyValue_reg(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(16),
      I1 => dutyCounter_reg(16),
      I2 => dutyCounter_reg(17),
      I3 => dutyValue_reg(17),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(6),
      I1 => dutyCounter_reg(6),
      I2 => dutyCounter_reg(7),
      I3 => dutyValue_reg(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(14),
      I1 => dutyCounter_reg(14),
      I2 => dutyCounter_reg(15),
      I3 => dutyValue_reg(15),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(4),
      I1 => dutyCounter_reg(4),
      I2 => dutyCounter_reg(5),
      I3 => dutyValue_reg(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(12),
      I1 => dutyCounter_reg(12),
      I2 => dutyCounter_reg(13),
      I3 => dutyValue_reg(13),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(2),
      I1 => dutyCounter_reg(2),
      I2 => dutyCounter_reg(3),
      I3 => dutyValue_reg(3),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => dutyValue_reg(10),
      I1 => dutyCounter_reg(10),
      I2 => dutyCounter_reg(11),
      I3 => dutyValue_reg(11),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(9),
      I1 => dutyValue_reg(9),
      I2 => dutyCounter_reg(8),
      I3 => dutyValue_reg(8),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(17),
      I1 => dutyValue_reg(17),
      I2 => dutyCounter_reg(16),
      I3 => dutyValue_reg(16),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(7),
      I1 => dutyValue_reg(7),
      I2 => dutyCounter_reg(6),
      I3 => dutyValue_reg(6),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(15),
      I1 => dutyValue_reg(15),
      I2 => dutyCounter_reg(14),
      I3 => dutyValue_reg(14),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(5),
      I1 => dutyValue_reg(5),
      I2 => dutyCounter_reg(4),
      I3 => dutyValue_reg(4),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(13),
      I1 => dutyValue_reg(13),
      I2 => dutyCounter_reg(12),
      I3 => dutyValue_reg(12),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(3),
      I1 => dutyValue_reg(3),
      I2 => dutyCounter_reg(2),
      I3 => dutyValue_reg(2),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => dutyCounter_reg(11),
      I1 => dutyValue_reg(11),
      I2 => dutyCounter_reg(10),
      I3 => dutyValue_reg(10),
      O => \i__carry_i_8__0_n_0\
    );
\led0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led0_inferred__0/i__carry_n_0\,
      CO(2) => \led0_inferred__0/i__carry_n_1\,
      CO(1) => \led0_inferred__0/i__carry_n_2\,
      CO(0) => \led0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_led0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\led0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \led0_inferred__0/i__carry_n_0\,
      CO(3) => p_0_in,
      CO(2) => \led0_inferred__0/i__carry__0_n_1\,
      CO(1) => \led0_inferred__0/i__carry__0_n_2\,
      CO(0) => \led0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_led0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\led[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2020000F202F0F0"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sw(0),
      I3 => p_0_in,
      I4 => sw(1),
      I5 => sel0(3),
      O => \led[0]_i_1_n_0\
    );
\led[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2020000F202F0F0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sw(0),
      I3 => p_0_in,
      I4 => sw(1),
      I5 => sel0(3),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8080000F808F0F0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sw(0),
      I3 => p_0_in,
      I4 => sw(1),
      I5 => sel0(3),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      O => \led[3]_i_1_n_0\
    );
\led[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABABAFA"
    )
        port map (
      I0 => sw(0),
      I1 => sel0(2),
      I2 => sw(1),
      I3 => sel0(0),
      I4 => sel0(1),
      O => p_0_out
    );
\led[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E200E2CC"
    )
        port map (
      I0 => sel0(2),
      I1 => sw(0),
      I2 => p_0_in,
      I3 => sw(1),
      I4 => sel0(3),
      O => \led[3]_i_3_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => p_0_out,
      D => \led[0]_i_1_n_0\,
      Q => led(0),
      S => \led[3]_i_1_n_0\
    );
\led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => p_0_out,
      D => \led[1]_i_1_n_0\,
      Q => led(1),
      R => \led[3]_i_1_n_0\
    );
\led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => p_0_out,
      D => \led[2]_i_1_n_0\,
      Q => led(2),
      R => \led[3]_i_1_n_0\
    );
\led_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => p_0_out,
      D => \led[3]_i_3_n_0\,
      Q => led(3),
      S => \led[3]_i_1_n_0\
    );
\pwm_direction[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => pwm_direction,
      I1 => \pwm_direction[0]_i_3_n_0\,
      I2 => \dutyValue[2]_i_3_n_0\,
      I3 => in0,
      O => \pwm_direction[0]_i_1_n_0\
    );
\pwm_direction[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \pwm_direction[0]_i_4_n_0\,
      I1 => dutyValue_reg(3),
      I2 => dutyValue_reg(2),
      I3 => dutyValue_reg(5),
      I4 => dutyValue_reg(4),
      I5 => \pwm_direction[0]_i_5_n_0\,
      O => pwm_direction
    );
\pwm_direction[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80020000"
    )
        port map (
      I0 => \pwm_direction[0]_i_6_n_0\,
      I1 => dutyValue_reg(15),
      I2 => dutyValue_reg(16),
      I3 => dutyValue_reg(17),
      I4 => \pwm_direction[0]_i_7_n_0\,
      O => \pwm_direction[0]_i_3_n_0\
    );
\pwm_direction[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => dutyValue_reg(7),
      I1 => dutyValue_reg(6),
      I2 => dutyValue_reg(9),
      I3 => dutyValue_reg(8),
      O => \pwm_direction[0]_i_4_n_0\
    );
\pwm_direction[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => dutyValue_reg(10),
      I1 => dutyValue_reg(11),
      I2 => dutyValue_reg(14),
      I3 => dutyValue_reg(12),
      I4 => \pwm_direction[0]_i_8_n_0\,
      O => \pwm_direction[0]_i_5_n_0\
    );
\pwm_direction[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000080"
    )
        port map (
      I0 => \pwm_direction[0]_i_9_n_0\,
      I1 => dutyValue_reg(6),
      I2 => dutyValue_reg(7),
      I3 => dutyValue_reg(9),
      I4 => dutyValue_reg(10),
      I5 => dutyValue_reg(11),
      O => \pwm_direction[0]_i_6_n_0\
    );
\pwm_direction[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => dutyValue_reg(13),
      I1 => dutyValue_reg(14),
      I2 => \dutyCounter[0]_i_1_n_0\,
      I3 => dutyValue_reg(2),
      I4 => dutyValue_reg(5),
      I5 => dutyValue_reg(8),
      O => \pwm_direction[0]_i_7_n_0\
    );
\pwm_direction[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => dutyValue_reg(15),
      I1 => dutyValue_reg(13),
      I2 => dutyValue_reg(17),
      I3 => dutyValue_reg(16),
      O => \pwm_direction[0]_i_8_n_0\
    );
\pwm_direction[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1800000000000018"
    )
        port map (
      I0 => dutyValue_reg(6),
      I1 => dutyValue_reg(4),
      I2 => dutyValue_reg(3),
      I3 => dutyValue_reg(15),
      I4 => dutyValue_reg(12),
      I5 => dutyValue_reg(11),
      O => \pwm_direction[0]_i_9_n_0\
    );
\pwm_direction_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \pwm_direction[0]_i_1_n_0\,
      Q => in0,
      R => '0'
    );
\status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF0B000000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \status[2]_i_2_n_0\,
      I5 => sel0(0),
      O => \status[0]_i_1_n_0\
    );
\status[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => sel0(0),
      I1 => sw(0),
      I2 => sw(1),
      I3 => \status[2]_i_2_n_0\,
      I4 => sel0(1),
      O => \status[1]_i_1_n_0\
    );
\status[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFFF08000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \status[2]_i_2_n_0\,
      I5 => sel0(2),
      O => \status[2]_i_1_n_0\
    );
\status[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => \status[2]_i_10_n_0\
    );
\status[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      O => \status[2]_i_11_n_0\
    );
\status[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      O => \status[2]_i_12_n_0\
    );
\status[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00022222"
    )
        port map (
      I0 => \status[2]_i_3_n_0\,
      I1 => \status[2]_i_4_n_0\,
      I2 => \status[2]_i_5_n_0\,
      I3 => \status[2]_i_6_n_0\,
      I4 => \status[2]_i_7_n_0\,
      I5 => counter_reg(22),
      O => \status[2]_i_2_n_0\
    );
\status[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter_reg(25),
      I1 => counter_reg(24),
      I2 => counter_reg(23),
      O => \status[2]_i_3_n_0\
    );
\status[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter_reg(21),
      I1 => counter_reg(20),
      I2 => counter_reg(19),
      O => \status[2]_i_4_n_0\
    );
\status[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(15),
      I2 => counter_reg(13),
      I3 => counter_reg(14),
      O => \status[2]_i_5_n_0\
    );
\status[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A888A888A888A8"
    )
        port map (
      I0 => \status[2]_i_8_n_0\,
      I1 => \status[2]_i_9_n_0\,
      I2 => \status[2]_i_10_n_0\,
      I3 => counter_reg(7),
      I4 => \status[2]_i_11_n_0\,
      I5 => \status[2]_i_12_n_0\,
      O => \status[2]_i_6_n_0\
    );
\status[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(18),
      O => \status[2]_i_7_n_0\
    );
\status[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(12),
      O => \status[2]_i_8_n_0\
    );
\status[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => \status[2]_i_9_n_0\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \status[0]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \status[1]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \status[2]_i_1_n_0\,
      Q => sel0(2),
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
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
      sw(1 downto 0) => sw(1 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
