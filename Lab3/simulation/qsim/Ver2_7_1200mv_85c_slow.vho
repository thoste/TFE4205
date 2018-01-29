-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.1 Internal Build 593 12/11/2017 SJ Lite Edition"

-- DATE "01/29/2018 16:12:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StudentDesign IS
    PORT (
	DVO : OUT std_logic;
	DVI : IN std_logic;
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	C : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0);
	RESULT_A : OUT std_logic_vector(15 DOWNTO 0);
	RESULT_B : OUT std_logic_vector(15 DOWNTO 0);
	STATUS : OUT std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	D : IN std_logic_vector(7 DOWNTO 0)
	);
END StudentDesign;

-- Design Ports Information
-- DVO	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[15]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[10]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[13]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[11]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[2]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[0]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DVI	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF StudentDesign IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DVO : std_logic;
SIGNAL ww_DVI : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RESET_N~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \DVO~output_o\ : std_logic;
SIGNAL \RESULT_A[15]~output_o\ : std_logic;
SIGNAL \RESULT_A[14]~output_o\ : std_logic;
SIGNAL \RESULT_A[13]~output_o\ : std_logic;
SIGNAL \RESULT_A[12]~output_o\ : std_logic;
SIGNAL \RESULT_A[11]~output_o\ : std_logic;
SIGNAL \RESULT_A[10]~output_o\ : std_logic;
SIGNAL \RESULT_A[9]~output_o\ : std_logic;
SIGNAL \RESULT_A[8]~output_o\ : std_logic;
SIGNAL \RESULT_A[7]~output_o\ : std_logic;
SIGNAL \RESULT_A[6]~output_o\ : std_logic;
SIGNAL \RESULT_A[5]~output_o\ : std_logic;
SIGNAL \RESULT_A[4]~output_o\ : std_logic;
SIGNAL \RESULT_A[3]~output_o\ : std_logic;
SIGNAL \RESULT_A[2]~output_o\ : std_logic;
SIGNAL \RESULT_A[1]~output_o\ : std_logic;
SIGNAL \RESULT_A[0]~output_o\ : std_logic;
SIGNAL \RESULT_B[15]~output_o\ : std_logic;
SIGNAL \RESULT_B[14]~output_o\ : std_logic;
SIGNAL \RESULT_B[13]~output_o\ : std_logic;
SIGNAL \RESULT_B[12]~output_o\ : std_logic;
SIGNAL \RESULT_B[11]~output_o\ : std_logic;
SIGNAL \RESULT_B[10]~output_o\ : std_logic;
SIGNAL \RESULT_B[9]~output_o\ : std_logic;
SIGNAL \RESULT_B[8]~output_o\ : std_logic;
SIGNAL \RESULT_B[7]~output_o\ : std_logic;
SIGNAL \RESULT_B[6]~output_o\ : std_logic;
SIGNAL \RESULT_B[5]~output_o\ : std_logic;
SIGNAL \RESULT_B[4]~output_o\ : std_logic;
SIGNAL \RESULT_B[3]~output_o\ : std_logic;
SIGNAL \RESULT_B[2]~output_o\ : std_logic;
SIGNAL \RESULT_B[1]~output_o\ : std_logic;
SIGNAL \RESULT_B[0]~output_o\ : std_logic;
SIGNAL \STATUS[7]~output_o\ : std_logic;
SIGNAL \STATUS[6]~output_o\ : std_logic;
SIGNAL \STATUS[5]~output_o\ : std_logic;
SIGNAL \STATUS[4]~output_o\ : std_logic;
SIGNAL \STATUS[3]~output_o\ : std_logic;
SIGNAL \STATUS[2]~output_o\ : std_logic;
SIGNAL \STATUS[1]~output_o\ : std_logic;
SIGNAL \STATUS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DVI~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|delay1~feeder_combout\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \RESET_N~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst|inst|delay1~q\ : std_logic;
SIGNAL \inst5|inst|inst|delay2~feeder_combout\ : std_logic;
SIGNAL \inst5|inst|inst|delay2~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|state.IDLE~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S1~q\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S2~feeder_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S2~q\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S3~q\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|startFinder~q\ : std_logic;
SIGNAL \inst5|inst6|inst19~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst19~q\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst10~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst11~q\ : std_logic;
SIGNAL \inst5|inst6|inst16~q\ : std_logic;
SIGNAL \inst5|inst6|inst17~combout\ : std_logic;
SIGNAL \inst5|inst6|inst15~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S4~q\ : std_logic;
SIGNAL \inst5|inst1|inst|state~13_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|state.S5~q\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|DVO~q\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~14_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~13_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~12_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~11_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~10_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~9_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~8_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[8]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~7_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~6_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[10]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~5_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[11]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[12]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst3~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst8~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst10~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst6~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst10~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst6~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \inst|inst|inst10~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \inst|inst|inst7~combout\ : std_logic;
SIGNAL \inst|inst|inst9~combout\ : std_logic;
SIGNAL \inst|inst|inst11~combout\ : std_logic;
SIGNAL \inst|inst1|inst7~combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \inst|inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \inst|inst3|inst7~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \inst|inst3|inst5~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[24]~17\ : std_logic;
SIGNAL \inst5|inst8|inst2[25]~19\ : std_logic;
SIGNAL \inst5|inst8|inst2[26]~21\ : std_logic;
SIGNAL \inst5|inst8|inst2[27]~22_combout\ : std_logic;
SIGNAL \inst|inst3|inst5~_wirecell_combout\ : std_logic;
SIGNAL \inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst5~combout\ : std_logic;
SIGNAL \inst|inst1|inst9~combout\ : std_logic;
SIGNAL \inst|inst1|inst11~combout\ : std_logic;
SIGNAL \inst|inst2|inst5~combout\ : std_logic;
SIGNAL \inst|inst2|inst7~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst|inst2|inst9~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst|inst2|inst11~combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[27]~23\ : std_logic;
SIGNAL \inst5|inst8|inst2[28]~24_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|storeEnvelope~q\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[28]~25\ : std_logic;
SIGNAL \inst5|inst8|inst2[29]~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[29]~27\ : std_logic;
SIGNAL \inst5|inst8|inst2[30]~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[30]~29\ : std_logic;
SIGNAL \inst5|inst8|inst2[31]~31\ : std_logic;
SIGNAL \inst5|inst8|inst2[32]~33\ : std_logic;
SIGNAL \inst5|inst8|inst2[33]~35\ : std_logic;
SIGNAL \inst5|inst8|inst2[34]~37\ : std_logic;
SIGNAL \inst5|inst8|inst2[35]~39\ : std_logic;
SIGNAL \inst5|inst8|inst2[36]~41\ : std_logic;
SIGNAL \inst5|inst8|inst2[37]~43\ : std_logic;
SIGNAL \inst5|inst8|inst2[38]~45\ : std_logic;
SIGNAL \inst5|inst8|inst2[39]~47\ : std_logic;
SIGNAL \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[26]~20_combout\ : std_logic;
SIGNAL \inst|inst3|inst7~_wirecell_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[25]~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[31]~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[32]~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[33]~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[34]~36_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[35]~38_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[36]~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[37]~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[38]~44_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[39]~46_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[24]~16_combout\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst10\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\ : std_logic_vector(40 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|inst8|inst2\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst5|inst6|inst3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst1|inst|ALT_INV_DVO~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DVO <= ww_DVO;
ww_DVI <= DVI;
ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_C <= C;
ww_A <= A;
RESULT_A <= ww_RESULT_A;
RESULT_B <= ww_RESULT_B;
STATUS <= ww_STATUS;
ww_B <= B;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \inst5|inst6|inst2|inst1\(15) & \inst5|inst6|inst2|inst1\(14) & \inst5|inst6|inst2|inst1\(13) & \inst5|inst6|inst2|inst1\(12) & \inst5|inst6|inst2|inst1\(11) & 
\inst5|inst6|inst2|inst1\(10) & \inst5|inst6|inst2|inst1\(9) & \inst5|inst6|inst2|inst1\(8) & \inst5|inst6|inst2|inst1\(7) & \inst5|inst6|inst2|inst1\(6) & \inst5|inst6|inst2|inst1\(5) & \inst5|inst6|inst2|inst1\(4) & 
\inst5|inst6|inst2|inst1\(3) & \inst5|inst6|inst2|inst1\(2) & \inst5|inst6|inst2|inst1\(1) & gnd & gnd);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\inst5|inst8|inst2\(39) & \inst5|inst8|inst2\(38) & \inst5|inst8|inst2\(37) & \inst5|inst8|inst2\(36) & \inst5|inst8|inst2\(35) & \inst5|inst8|inst2\(34) & 
\inst5|inst8|inst2\(33) & \inst5|inst8|inst2\(32) & \inst5|inst8|inst2\(31) & \inst5|inst8|inst2\(30) & \inst5|inst8|inst2\(29) & \inst5|inst8|inst2\(28) & \inst5|inst8|inst2\(27) & \inst5|inst8|inst2\(26) & \inst5|inst8|inst2\(25) & 
\inst5|inst8|inst2\(24) & gnd & gnd);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\ <= (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(0) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(1) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(2) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(3) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(4) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(5) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(6) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(7) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\ <= (\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) & gnd
& gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\ <= (\inst5|inst8|inst2\(39) & \inst5|inst8|inst2\(38) & \inst5|inst8|inst2\(37) & \inst5|inst8|inst2\(36) & \inst5|inst8|inst2\(35) & \inst5|inst8|inst2\(34) & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\inst5|inst8|inst2\(33) & \inst5|inst8|inst2\(32) & \inst5|inst8|inst2\(31) & \inst5|inst8|inst2\(30) & \inst5|inst8|inst2\(29) & \inst5|inst8|inst2\(28) & 
\inst5|inst8|inst2\(27) & \inst5|inst8|inst2\(26) & \inst5|inst8|inst2\(25) & \inst5|inst8|inst2\(24) & \inst5|inst8|inst2\(23) & \inst5|inst8|inst2\(22) & \inst5|inst8|inst2\(21) & \inst5|inst8|inst2\(20) & \inst5|inst8|inst2\(19) & 
\inst5|inst8|inst2\(18) & \inst5|inst8|inst2\(17) & \inst5|inst8|inst2\(16));

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) & gnd
& gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\RESET_N~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_N~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst5|inst1|inst|ALT_INV_DVO~q\ <= NOT \inst5|inst1|inst|DVO~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y73_N9
\DVO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst|ALT_INV_DVO~q\,
	devoe => ww_devoe,
	o => \DVO~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\RESULT_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_A[15]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\RESULT_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(14),
	devoe => ww_devoe,
	o => \RESULT_A[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\RESULT_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(13),
	devoe => ww_devoe,
	o => \RESULT_A[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\RESULT_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(12),
	devoe => ww_devoe,
	o => \RESULT_A[12]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\RESULT_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(11),
	devoe => ww_devoe,
	o => \RESULT_A[11]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\RESULT_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(10),
	devoe => ww_devoe,
	o => \RESULT_A[10]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\RESULT_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(9),
	devoe => ww_devoe,
	o => \RESULT_A[9]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\RESULT_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(8),
	devoe => ww_devoe,
	o => \RESULT_A[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\RESULT_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(7),
	devoe => ww_devoe,
	o => \RESULT_A[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\RESULT_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(6),
	devoe => ww_devoe,
	o => \RESULT_A[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\RESULT_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(5),
	devoe => ww_devoe,
	o => \RESULT_A[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\RESULT_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(4),
	devoe => ww_devoe,
	o => \RESULT_A[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\RESULT_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(3),
	devoe => ww_devoe,
	o => \RESULT_A[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\RESULT_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(2),
	devoe => ww_devoe,
	o => \RESULT_A[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\RESULT_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(1),
	devoe => ww_devoe,
	o => \RESULT_A[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\RESULT_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(0),
	devoe => ww_devoe,
	o => \RESULT_A[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\RESULT_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[15]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\RESULT_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[14]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\RESULT_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[13]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\RESULT_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\RESULT_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[11]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\RESULT_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[10]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\RESULT_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[9]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\RESULT_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[8]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\RESULT_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\RESULT_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\RESULT_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\RESULT_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\RESULT_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\RESULT_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\RESULT_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\RESULT_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\STATUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\STATUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\STATUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[5]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\STATUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[4]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\STATUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\STATUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\STATUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[1]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\STATUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y73_N8
\DVI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DVI,
	o => \DVI~input_o\);

-- Location: LCCOMB_X38_Y68_N18
\inst5|inst|inst|delay1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|delay1~feeder_combout\ = \DVI~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DVI~input_o\,
	combout => \inst5|inst|inst|delay1~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RESET_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: CLKCTRL_G4
\RESET_N~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_N~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_N~inputclkctrl_outclk\);

-- Location: FF_X38_Y68_N19
\inst5|inst|inst|delay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|delay1~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|delay1~q\);

-- Location: LCCOMB_X38_Y68_N28
\inst5|inst|inst|delay2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|delay2~feeder_combout\ = \inst5|inst|inst|delay1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst|inst|delay1~q\,
	combout => \inst5|inst|inst|delay2~feeder_combout\);

-- Location: FF_X38_Y68_N29
\inst5|inst|inst|delay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|delay2~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|delay2~q\);

-- Location: LCCOMB_X38_Y68_N14
\inst5|inst1|inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector1~0_combout\ = (!\inst5|inst1|inst|state.S5~q\ & ((\inst5|inst1|inst|state.IDLE~q\) # ((!\inst5|inst|inst|delay2~q\ & \inst5|inst|inst|delay1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|state.S5~q\,
	datab => \inst5|inst|inst|delay2~q\,
	datac => \inst5|inst1|inst|state.IDLE~q\,
	datad => \inst5|inst|inst|delay1~q\,
	combout => \inst5|inst1|inst|Selector1~0_combout\);

-- Location: FF_X38_Y68_N15
\inst5|inst1|inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector1~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.IDLE~q\);

-- Location: LCCOMB_X38_Y68_N16
\inst5|inst1|inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector0~0_combout\ = (!\inst5|inst|inst|delay2~q\ & (!\inst5|inst1|inst|state.IDLE~q\ & \inst5|inst|inst|delay1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|inst|delay2~q\,
	datac => \inst5|inst1|inst|state.IDLE~q\,
	datad => \inst5|inst|inst|delay1~q\,
	combout => \inst5|inst1|inst|Selector0~0_combout\);

-- Location: FF_X38_Y68_N17
\inst5|inst1|inst|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector0~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.S1~q\);

-- Location: LCCOMB_X38_Y68_N4
\inst5|inst1|inst|state.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|state.S2~feeder_combout\ = \inst5|inst1|inst|state.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst1|inst|state.S1~q\,
	combout => \inst5|inst1|inst|state.S2~feeder_combout\);

-- Location: FF_X38_Y68_N5
\inst5|inst1|inst|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|state.S2~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.S2~q\);

-- Location: FF_X38_Y68_N25
\inst5|inst1|inst|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst1|inst|state.S2~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.S3~q\);

-- Location: LCCOMB_X42_Y68_N18
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0)
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X42_Y68_N12
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y68_N20
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((GND) # 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\))) # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ $ 
-- (GND)))
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1)) # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X42_Y68_N21
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X42_Y68_N22
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC)) 
-- # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X42_Y68_N23
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X42_Y68_N24
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X42_Y68_N25
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X41_Y68_N28
\inst5|inst6|inst2|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~0_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y68_N22
\inst5|inst1|inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector4~0_combout\ = (\inst5|inst1|inst|startFinder~q\ & ((\inst5|inst1|inst|state.S5~q\) # ((\inst5|inst1|inst|state.S1~q\) # (!\inst5|inst1|inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|state.S5~q\,
	datab => \inst5|inst1|inst|startFinder~q\,
	datac => \inst5|inst1|inst|state.IDLE~q\,
	datad => \inst5|inst1|inst|state.S1~q\,
	combout => \inst5|inst1|inst|Selector4~0_combout\);

-- Location: LCCOMB_X38_Y68_N26
\inst5|inst1|inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector4~1_combout\ = (\inst5|inst1|inst|state.S2~q\) # ((\inst5|inst1|inst|Selector4~0_combout\) # (\inst5|inst1|inst|state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|state.S2~q\,
	datac => \inst5|inst1|inst|Selector4~0_combout\,
	datad => \inst5|inst1|inst|state.S3~q\,
	combout => \inst5|inst1|inst|Selector4~1_combout\);

-- Location: FF_X38_Y68_N27
\inst5|inst1|inst|startFinder\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector4~1_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|startFinder~q\);

-- Location: LCCOMB_X38_Y68_N10
\inst5|inst6|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst19~0_combout\ = (\inst5|inst1|inst|startFinder~q\) # ((!\inst5|inst6|inst2|inst2|Equal1~0_combout\ & \inst5|inst6|inst19~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	datac => \inst5|inst6|inst19~q\,
	datad => \inst5|inst1|inst|startFinder~q\,
	combout => \inst5|inst6|inst19~0_combout\);

-- Location: FF_X38_Y68_N11
\inst5|inst6|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst19~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst19~q\);

-- Location: LCCOMB_X38_Y68_N2
\inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\ = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst19~q\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: FF_X42_Y68_N13
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X42_Y68_N6
\inst5|inst6|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst10~0_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst10~0_combout\);

-- Location: FF_X42_Y68_N7
\inst5|inst6|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst10~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst11~q\);

-- Location: FF_X38_Y68_N21
\inst5|inst6|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst16~q\);

-- Location: LCCOMB_X38_Y68_N20
\inst5|inst6|inst17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst17~combout\ = (\inst5|inst6|inst11~q\ & !\inst5|inst6|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst16~q\,
	combout => \inst5|inst6|inst17~combout\);

-- Location: FF_X38_Y68_N3
\inst5|inst6|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst17~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst15~q\);

-- Location: LCCOMB_X38_Y68_N12
\inst5|inst1|inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector2~0_combout\ = (\inst5|inst1|inst|state.S3~q\) # ((\inst5|inst1|inst|state.S4~q\ & !\inst5|inst6|inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|state.S3~q\,
	datac => \inst5|inst1|inst|state.S4~q\,
	datad => \inst5|inst6|inst15~q\,
	combout => \inst5|inst1|inst|Selector2~0_combout\);

-- Location: FF_X38_Y68_N13
\inst5|inst1|inst|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector2~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.S4~q\);

-- Location: LCCOMB_X38_Y68_N30
\inst5|inst1|inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|state~13_combout\ = (\inst5|inst1|inst|state.S4~q\ & \inst5|inst6|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|state.S4~q\,
	datad => \inst5|inst6|inst15~q\,
	combout => \inst5|inst1|inst|state~13_combout\);

-- Location: FF_X38_Y68_N31
\inst5|inst1|inst|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|state~13_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|state.S5~q\);

-- Location: LCCOMB_X38_Y68_N0
\inst5|inst1|inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector0~1_combout\ = (\inst5|inst1|inst|Selector0~0_combout\) # ((!\inst5|inst1|inst|state.S5~q\ & (\inst5|inst1|inst|state.IDLE~q\ & \inst5|inst1|inst|DVO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|state.S5~q\,
	datab => \inst5|inst1|inst|state.IDLE~q\,
	datac => \inst5|inst1|inst|DVO~q\,
	datad => \inst5|inst1|inst|Selector0~0_combout\,
	combout => \inst5|inst1|inst|Selector0~1_combout\);

-- Location: FF_X38_Y68_N1
\inst5|inst1|inst|DVO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector0~1_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|DVO~q\);

-- Location: LCCOMB_X43_Y68_N18
\inst5|inst6|inst2|inst2|Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~14_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|inst6|inst2|inst2|Equal1~14_combout\);

-- Location: LCCOMB_X45_Y68_N14
\inst5|inst6|inst2|inst7[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(1) = (\inst5|inst6|inst2|inst2|Equal1~14_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~14_combout\,
	datab => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(1));

-- Location: FF_X45_Y68_N15
\inst5|inst6|inst2|inst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(1));

-- Location: LCCOMB_X43_Y68_N30
\inst5|inst6|inst2|inst1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(1) = (\inst5|inst6|inst2|inst\(1)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(1),
	datad => \inst5|inst6|inst2|inst2|Equal1~14_combout\,
	combout => \inst5|inst6|inst2|inst1\(1));

-- Location: LCCOMB_X42_Y68_N14
\inst5|inst6|inst2|inst2|Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~13_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~13_combout\);

-- Location: LCCOMB_X43_Y68_N8
\inst5|inst6|inst2|inst7[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(2) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~13_combout\,
	combout => \inst5|inst6|inst2|inst7\(2));

-- Location: FF_X43_Y68_N9
\inst5|inst6|inst2|inst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(2));

-- Location: LCCOMB_X43_Y68_N0
\inst5|inst6|inst2|inst1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(2) = (\inst5|inst6|inst2|inst\(2)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(2),
	datad => \inst5|inst6|inst2|inst2|Equal1~13_combout\,
	combout => \inst5|inst6|inst2|inst1\(2));

-- Location: LCCOMB_X43_Y68_N10
\inst5|inst6|inst2|inst2|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~12_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|inst6|inst2|inst2|Equal1~12_combout\);

-- Location: LCCOMB_X46_Y68_N26
\inst5|inst6|inst2|inst7[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(3) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~12_combout\,
	combout => \inst5|inst6|inst2|inst7\(3));

-- Location: FF_X46_Y68_N27
\inst5|inst6|inst2|inst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(3));

-- Location: LCCOMB_X43_Y68_N26
\inst5|inst6|inst2|inst1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(3) = (\inst5|inst6|inst2|inst\(3)) # ((\inst5|inst6|inst2|inst2|Equal1~12_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~12_combout\,
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(3),
	combout => \inst5|inst6|inst2|inst1\(3));

-- Location: LCCOMB_X42_Y68_N4
\inst5|inst6|inst2|inst2|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~11_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~11_combout\);

-- Location: LCCOMB_X46_Y68_N24
\inst5|inst6|inst2|inst[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[4]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y68_N0
\inst5|inst6|inst2|inst7[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(4) = (\inst5|inst6|inst2|inst2|Equal1~11_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst2|Equal1~11_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(4));

-- Location: FF_X46_Y68_N25
\inst5|inst6|inst2|inst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[4]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(4));

-- Location: LCCOMB_X43_Y68_N4
\inst5|inst6|inst2|inst1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(4) = (\inst5|inst6|inst2|inst\(4)) # ((\inst5|inst6|inst2|inst2|Equal1~11_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~11_combout\,
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst\(4),
	combout => \inst5|inst6|inst2|inst1\(4));

-- Location: LCCOMB_X39_Y68_N6
\inst5|inst6|inst2|inst[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[5]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y68_N2
\inst5|inst6|inst2|inst2|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~10_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~10_combout\);

-- Location: LCCOMB_X42_Y68_N30
\inst5|inst6|inst2|inst7[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(5) = (\inst5|inst6|inst2|inst2|Equal1~10_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~10_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(5));

-- Location: FF_X39_Y68_N7
\inst5|inst6|inst2|inst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[5]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(5));

-- Location: LCCOMB_X43_Y68_N6
\inst5|inst6|inst2|inst1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(5) = (\inst5|inst6|inst2|inst\(5)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(5),
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~10_combout\,
	combout => \inst5|inst6|inst2|inst1\(5));

-- Location: LCCOMB_X39_Y68_N0
\inst5|inst6|inst2|inst[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[6]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[6]~feeder_combout\);

-- Location: LCCOMB_X42_Y68_N28
\inst5|inst6|inst2|inst2|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~9_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~9_combout\);

-- Location: LCCOMB_X42_Y68_N8
\inst5|inst6|inst2|inst7[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(6) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~9_combout\,
	combout => \inst5|inst6|inst2|inst7\(6));

-- Location: FF_X39_Y68_N1
\inst5|inst6|inst2|inst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[6]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(6));

-- Location: LCCOMB_X43_Y68_N12
\inst5|inst6|inst2|inst1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(6) = (\inst5|inst6|inst2|inst\(6)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst\(6),
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~9_combout\,
	combout => \inst5|inst6|inst2|inst1\(6));

-- Location: LCCOMB_X41_Y68_N30
\inst5|inst6|inst2|inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~8_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~8_combout\);

-- Location: LCCOMB_X42_Y67_N2
\inst5|inst6|inst2|inst[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[7]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[7]~feeder_combout\);

-- Location: LCCOMB_X41_Y67_N6
\inst5|inst6|inst2|inst7[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(7) = (\inst5|inst6|inst2|inst2|Equal1~8_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst2|Equal1~8_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(7));

-- Location: FF_X42_Y67_N3
\inst5|inst6|inst2|inst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[7]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(7));

-- Location: LCCOMB_X41_Y68_N4
\inst5|inst6|inst2|inst1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(7) = (\inst5|inst6|inst2|inst\(7)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst2|Equal1~8_combout\,
	datad => \inst5|inst6|inst2|inst\(7),
	combout => \inst5|inst6|inst2|inst1\(7));

-- Location: LCCOMB_X41_Y67_N22
\inst5|inst6|inst2|inst[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[8]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[8]~feeder_combout\);

-- Location: LCCOMB_X41_Y68_N20
\inst5|inst6|inst2|inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~7_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~7_combout\);

-- Location: LCCOMB_X41_Y68_N26
\inst5|inst6|inst2|inst7[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(8) = (\inst5|inst6|inst2|inst2|Equal1~7_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~7_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(8));

-- Location: FF_X41_Y67_N23
\inst5|inst6|inst2|inst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[8]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(8));

-- Location: LCCOMB_X41_Y68_N6
\inst5|inst6|inst2|inst1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(8) = (\inst5|inst6|inst2|inst\(8)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(8),
	datad => \inst5|inst6|inst2|inst2|Equal1~7_combout\,
	combout => \inst5|inst6|inst2|inst1\(8));

-- Location: LCCOMB_X41_Y68_N2
\inst5|inst6|inst2|inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~6_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~6_combout\);

-- Location: LCCOMB_X40_Y68_N26
\inst5|inst6|inst2|inst7[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(9) = (\inst5|inst6|inst2|inst2|Equal1~6_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~6_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(9));

-- Location: FF_X40_Y68_N27
\inst5|inst6|inst2|inst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(9));

-- Location: LCCOMB_X41_Y68_N12
\inst5|inst6|inst2|inst1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(9) = (\inst5|inst6|inst2|inst\(9)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(9),
	datad => \inst5|inst6|inst2|inst2|Equal1~6_combout\,
	combout => \inst5|inst6|inst2|inst1\(9));

-- Location: LCCOMB_X41_Y67_N0
\inst5|inst6|inst2|inst[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[10]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[10]~feeder_combout\);

-- Location: LCCOMB_X42_Y68_N10
\inst5|inst6|inst2|inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~5_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~5_combout\);

-- Location: LCCOMB_X41_Y68_N22
\inst5|inst6|inst2|inst7[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(10) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datab => \inst5|inst6|inst2|inst2|Equal1~5_combout\,
	combout => \inst5|inst6|inst2|inst7\(10));

-- Location: FF_X41_Y67_N1
\inst5|inst6|inst2|inst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[10]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(10));

-- Location: LCCOMB_X41_Y68_N10
\inst5|inst6|inst2|inst1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(10) = (\inst5|inst6|inst2|inst\(10)) # ((\inst5|inst6|inst2|inst2|Equal1~5_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst\(10),
	datac => \inst5|inst6|inst2|inst2|Equal1~5_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(10));

-- Location: LCCOMB_X42_Y67_N20
\inst5|inst6|inst2|inst[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[11]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[11]~feeder_combout\);

-- Location: LCCOMB_X41_Y68_N0
\inst5|inst6|inst2|inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~4_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~4_combout\);

-- Location: LCCOMB_X41_Y67_N16
\inst5|inst6|inst2|inst7[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(11) = (\inst5|inst6|inst2|inst2|Equal1~4_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst2|Equal1~4_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(11));

-- Location: FF_X42_Y67_N21
\inst5|inst6|inst2|inst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[11]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(11));

-- Location: LCCOMB_X41_Y68_N8
\inst5|inst6|inst2|inst1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(11) = (\inst5|inst6|inst2|inst\(11)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(11),
	datad => \inst5|inst6|inst2|inst2|Equal1~4_combout\,
	combout => \inst5|inst6|inst2|inst1\(11));

-- Location: LCCOMB_X42_Y68_N16
\inst5|inst6|inst2|inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~3_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|inst6|inst2|inst2|Equal1~3_combout\);

-- Location: LCCOMB_X43_Y67_N0
\inst5|inst6|inst2|inst[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[12]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[12]~feeder_combout\);

-- Location: LCCOMB_X43_Y68_N2
\inst5|inst6|inst2|inst7[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(12) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst2|Equal1~3_combout\,
	combout => \inst5|inst6|inst2|inst7\(12));

-- Location: FF_X43_Y67_N1
\inst5|inst6|inst2|inst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[12]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(12));

-- Location: LCCOMB_X43_Y68_N14
\inst5|inst6|inst2|inst1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(12) = (\inst5|inst6|inst2|inst\(12)) # ((\inst5|inst6|inst2|inst2|Equal1~3_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~3_combout\,
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst\(12),
	combout => \inst5|inst6|inst2|inst1\(12));

-- Location: LCCOMB_X41_Y68_N18
\inst5|inst6|inst2|inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~2_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|inst6|inst2|inst2|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y68_N24
\inst5|inst6|inst2|inst7[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(13) = (\inst5|inst6|inst2|inst2|Equal1~2_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~2_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(13));

-- Location: FF_X40_Y68_N25
\inst5|inst6|inst2|inst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(13));

-- Location: LCCOMB_X41_Y68_N14
\inst5|inst6|inst2|inst1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(13) = (\inst5|inst6|inst2|inst\(13)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datab => \inst5|inst6|inst2|inst\(13),
	datad => \inst5|inst6|inst2|inst2|Equal1~2_combout\,
	combout => \inst5|inst6|inst2|inst1\(13));

-- Location: LCCOMB_X43_Y68_N24
\inst5|inst6|inst2|inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~1_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|inst6|inst2|inst2|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y68_N12
\inst5|inst6|inst2|inst7[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(14) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~1_combout\,
	combout => \inst5|inst6|inst2|inst7\(14));

-- Location: FF_X45_Y68_N13
\inst5|inst6|inst2|inst[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(14));

-- Location: LCCOMB_X43_Y68_N16
\inst5|inst6|inst2|inst1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(14) = (\inst5|inst6|inst2|inst\(14)) # ((\inst5|inst6|inst2|inst2|Equal1~1_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~1_combout\,
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst\(14),
	combout => \inst5|inst6|inst2|inst1\(14));

-- Location: IOIBUF_X47_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X49_Y69_N20
\inst|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = (\C[4]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C[4]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|inst4~combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X49_Y69_N12
\inst|inst2|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3~combout\ = \A[4]~input_o\ $ (((\C[4]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|inst2|inst3~combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X49_Y69_N28
\inst|inst3|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~combout\ = \A[3]~input_o\ $ (((\C[4]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|inst3|inst~combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X49_Y69_N22
\inst|inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~0_combout\ = (!\A[0]~input_o\ & (\C[4]~input_o\ & (!\A[1]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|inst3|inst8~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X49_Y69_N10
\inst|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst10~combout\ = (\inst|inst2|inst3~combout\ & (\inst|inst3|inst~combout\ & (\inst|inst3|inst8~0_combout\ & !\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst3~combout\,
	datab => \inst|inst3|inst~combout\,
	datac => \inst|inst3|inst8~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|inst2|inst10~combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X54_Y69_N20
\inst|inst2|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6~combout\ = (\inst|inst2|inst10~combout\ & ((\A[6]~input_o\ & (!\inst|inst4~combout\ & \A[5]~input_o\)) # (!\A[6]~input_o\ & (\inst|inst4~combout\ & !\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|inst4~combout\,
	datac => \inst|inst2|inst10~combout\,
	datad => \A[5]~input_o\,
	combout => \inst|inst2|inst6~combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X54_Y69_N18
\inst|inst1|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst10~combout\ = (\inst|inst2|inst6~combout\ & ((\inst|inst4~combout\ & (!\A[8]~input_o\ & !\A[7]~input_o\)) # (!\inst|inst4~combout\ & (\A[8]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \inst|inst2|inst6~combout\,
	datac => \A[8]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|inst1|inst10~combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X54_Y69_N24
\inst|inst1|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6~combout\ = (\inst|inst1|inst10~combout\ & ((\A[9]~input_o\ & (\A[10]~input_o\ & !\inst|inst4~combout\)) # (!\A[9]~input_o\ & (!\A[10]~input_o\ & \inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \inst|inst1|inst10~combout\,
	datac => \A[10]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst1|inst6~combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X54_Y69_N2
\inst|inst|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10~combout\ = (\inst|inst1|inst6~combout\ & ((\A[12]~input_o\ & (\A[11]~input_o\ & !\inst|inst4~combout\)) # (!\A[12]~input_o\ & (!\A[11]~input_o\ & \inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \inst|inst1|inst6~combout\,
	datac => \A[11]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst|inst10~combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X54_Y69_N4
\inst|inst|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7~combout\ = \A[14]~input_o\ $ (((\inst|inst|inst10~combout\ & (\A[13]~input_o\)) # (!\inst|inst|inst10~combout\ & ((\inst|inst4~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \inst|inst|inst10~combout\,
	datac => \A[13]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst|inst7~combout\);

-- Location: LCCOMB_X54_Y69_N6
\inst|inst|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst9~combout\ = \inst|inst|inst10~combout\ $ (\A[13]~input_o\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|inst|inst10~combout\,
	datac => \C[4]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst|inst|inst9~combout\);

-- Location: LCCOMB_X54_Y69_N26
\inst|inst|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst11~combout\ = \A[12]~input_o\ $ (((\inst|inst1|inst6~combout\ & (\A[11]~input_o\)) # (!\inst|inst1|inst6~combout\ & ((\inst|inst4~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \inst|inst1|inst6~combout\,
	datac => \A[11]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst|inst11~combout\);

-- Location: LCCOMB_X54_Y69_N16
\inst|inst1|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst7~combout\ = \A[10]~input_o\ $ (((\inst|inst1|inst10~combout\ & (\A[9]~input_o\)) # (!\inst|inst1|inst10~combout\ & ((\inst|inst4~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \inst|inst1|inst10~combout\,
	datac => \A[10]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst1|inst7~combout\);

-- Location: IOIBUF_X35_Y73_N15
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X43_Y57_N6
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) = (!\C[1]~input_o\ & (!\C[3]~input_o\ & (!\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3));

-- Location: LCCOMB_X43_Y57_N8
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ = (!\C[1]~input_o\ & (!\C[3]~input_o\ & (\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N14
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ = (\C[1]~input_o\ & (!\C[3]~input_o\ & (!\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N20
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ = (\C[1]~input_o\ & (!\C[3]~input_o\ & (\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N30
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ = (!\C[1]~input_o\ & (!\C[3]~input_o\ & (!\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N4
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ = (!\C[1]~input_o\ & (!\C[3]~input_o\ & (\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N10
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ = (\C[1]~input_o\ & (!\C[3]~input_o\ & (!\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N12
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ = (\C[1]~input_o\ & (!\C[3]~input_o\ & (\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N22
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ = (!\C[1]~input_o\ & (\C[3]~input_o\ & (!\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N28
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ = (!\C[1]~input_o\ & (\C[3]~input_o\ & (\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N2
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ = (\C[1]~input_o\ & (\C[3]~input_o\ & (!\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N16
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ = (\C[1]~input_o\ & (\C[3]~input_o\ & (\C[0]~input_o\ & !\C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\);

-- Location: LCCOMB_X42_Y57_N0
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ = (!\C[0]~input_o\ & (\C[3]~input_o\ & (!\C[1]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N26
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ = (!\C[1]~input_o\ & (\C[3]~input_o\ & (\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N24
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ = (\C[1]~input_o\ & (\C[3]~input_o\ & (!\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\);

-- Location: LCCOMB_X43_Y57_N18
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ = (\C[1]~input_o\ & (\C[3]~input_o\ & (\C[0]~input_o\ & \C[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[0]~input_o\,
	datad => \C[2]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\);

-- Location: DSPMULT_X44_Y56_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y56_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y69_N24
\inst|inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst9~0_combout\ = \A[1]~input_o\ $ (((\A[0]~input_o\ & (\C[4]~input_o\ & \A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|inst3|inst9~0_combout\);

-- Location: LCCOMB_X49_Y69_N18
\inst|inst3|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7~combout\ = \A[2]~input_o\ $ ((((!\A[0]~input_o\ & !\A[1]~input_o\)) # (!\inst|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|inst4~combout\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|inst3|inst7~combout\);

-- Location: LCCOMB_X45_Y56_N10
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X49_Y69_N4
\inst|inst3|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst5~combout\ = \inst|inst3|inst~combout\ $ (((\A[2]~input_o\) # (!\inst|inst3|inst8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst~combout\,
	datac => \inst|inst3|inst8~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|inst3|inst5~combout\);

-- Location: LCCOMB_X45_Y56_N12
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\) # (GND)))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ = CARRY((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\);

-- Location: LCCOMB_X46_Y57_N28
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ $ (\inst5|inst8|inst2\(26) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ & (\inst5|inst8|inst2\(26) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ & ((\inst5|inst8|inst2\(26)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\,
	datab => \inst5|inst8|inst2\(26),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\);

-- Location: LCCOMB_X46_Y57_N30
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\ = (\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\ = CARRY((\inst5|inst8|inst2\(27) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\)) # (!\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(27),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\);

-- Location: LCCOMB_X47_Y57_N2
\inst5|inst8|inst1|inst10[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(27) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\,
	combout => \inst5|inst8|inst1|inst10\(27));

-- Location: LCCOMB_X47_Y57_N16
\inst5|inst8|inst2[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[24]~16_combout\ = (\inst5|inst8|inst1|inst10\(24) & ((VCC))) # (!\inst5|inst8|inst1|inst10\(24) & (\A[0]~input_o\ & GND))
-- \inst5|inst8|inst2[24]~17\ = CARRY((\A[0]~input_o\ & !\inst5|inst8|inst1|inst10\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst5|inst8|inst1|inst10\(24),
	datad => VCC,
	combout => \inst5|inst8|inst2[24]~16_combout\,
	cout => \inst5|inst8|inst2[24]~17\);

-- Location: LCCOMB_X47_Y57_N18
\inst5|inst8|inst2[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[25]~18_combout\ = (\inst|inst3|inst9~0_combout\ & (\inst5|inst8|inst1|inst10\(25) & ((VCC) # (!\inst5|inst8|inst2[24]~17\)))) # (!\inst|inst3|inst9~0_combout\ & ((\inst5|inst8|inst1|inst10\(25)) # ((!\inst5|inst8|inst2[24]~17\ & GND))))
-- \inst5|inst8|inst2[25]~19\ = CARRY((\inst|inst3|inst9~0_combout\ & (\inst5|inst8|inst1|inst10\(25) & !\inst5|inst8|inst2[24]~17\)) # (!\inst|inst3|inst9~0_combout\ & ((\inst5|inst8|inst1|inst10\(25)) # (!\inst5|inst8|inst2[24]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst9~0_combout\,
	datab => \inst5|inst8|inst1|inst10\(25),
	datad => VCC,
	cin => \inst5|inst8|inst2[24]~17\,
	combout => \inst5|inst8|inst2[25]~18_combout\,
	cout => \inst5|inst8|inst2[25]~19\);

-- Location: LCCOMB_X47_Y57_N20
\inst5|inst8|inst2[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[26]~20_combout\ = (\inst5|inst8|inst1|inst10\(26) & ((VCC) # ((!\inst|inst3|inst7~combout\ & !\inst5|inst8|inst2[25]~19\)))) # (!\inst5|inst8|inst1|inst10\(26) & (GND))
-- \inst5|inst8|inst2[26]~21\ = CARRY((\inst|inst3|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(26) & !\inst5|inst8|inst2[25]~19\)) # (!\inst|inst3|inst7~combout\ & ((!\inst5|inst8|inst2[25]~19\) # (!\inst5|inst8|inst1|inst10\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(26),
	datad => VCC,
	cin => \inst5|inst8|inst2[25]~19\,
	combout => \inst5|inst8|inst2[26]~20_combout\,
	cout => \inst5|inst8|inst2[26]~21\);

-- Location: LCCOMB_X47_Y57_N22
\inst5|inst8|inst2[27]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[27]~22_combout\ = (\inst|inst3|inst5~combout\ & ((\inst5|inst8|inst1|inst10\(27)) # ((!\inst5|inst8|inst2[26]~21\ & GND)))) # (!\inst|inst3|inst5~combout\ & (\inst5|inst8|inst1|inst10\(27) & ((VCC) # (!\inst5|inst8|inst2[26]~21\))))
-- \inst5|inst8|inst2[27]~23\ = CARRY((\inst|inst3|inst5~combout\ & ((\inst5|inst8|inst1|inst10\(27)) # (!\inst5|inst8|inst2[26]~21\))) # (!\inst|inst3|inst5~combout\ & (\inst5|inst8|inst1|inst10\(27) & !\inst5|inst8|inst2[26]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst5~combout\,
	datab => \inst5|inst8|inst1|inst10\(27),
	datad => VCC,
	cin => \inst5|inst8|inst2[26]~21\,
	combout => \inst5|inst8|inst2[27]~22_combout\,
	cout => \inst5|inst8|inst2[27]~23\);

-- Location: LCCOMB_X47_Y58_N30
\inst|inst3|inst5~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst5~_wirecell_combout\ = !\inst|inst3|inst5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst5~combout\,
	combout => \inst|inst3|inst5~_wirecell_combout\);

-- Location: LCCOMB_X54_Y69_N0
\inst|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~0_combout\ = (\inst|inst|inst10~combout\ & (\A[13]~input_o\ $ (!\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst10~combout\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|inst|inst5~0_combout\);

-- Location: LCCOMB_X54_Y69_N30
\inst|inst|inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~1_combout\ = (\inst|inst|inst5~0_combout\ & (\A[15]~input_o\ $ (((\A[13]~input_o\))))) # (!\inst|inst|inst5~0_combout\ & (\A[15]~input_o\ & (!\C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|inst|inst5~0_combout\,
	datac => \C[4]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst|inst|inst5~1_combout\);

-- Location: LCCOMB_X54_Y69_N8
\inst|inst1|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~combout\ = \A[11]~input_o\ $ (\inst|inst1|inst6~combout\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[11]~input_o\,
	datac => \C[4]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst1|inst5~combout\);

-- Location: LCCOMB_X54_Y69_N10
\inst|inst1|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst9~combout\ = \inst|inst1|inst10~combout\ $ (\A[9]~input_o\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|inst1|inst10~combout\,
	datac => \C[4]~input_o\,
	datad => \A[9]~input_o\,
	combout => \inst|inst1|inst9~combout\);

-- Location: LCCOMB_X54_Y69_N22
\inst|inst1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst11~combout\ = \A[8]~input_o\ $ (((\inst|inst2|inst6~combout\ & ((\A[7]~input_o\))) # (!\inst|inst2|inst6~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \inst|inst2|inst6~combout\,
	datac => \A[8]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|inst1|inst11~combout\);

-- Location: LCCOMB_X54_Y69_N12
\inst|inst2|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst5~combout\ = \inst|inst2|inst6~combout\ $ (\A[7]~input_o\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \inst|inst2|inst6~combout\,
	datac => \C[4]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst|inst2|inst5~combout\);

-- Location: LCCOMB_X54_Y69_N28
\inst|inst2|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst7~combout\ = \A[6]~input_o\ $ (((\inst|inst2|inst10~combout\ & ((\A[5]~input_o\))) # (!\inst|inst2|inst10~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst|inst4~combout\,
	datac => \inst|inst2|inst10~combout\,
	datad => \A[5]~input_o\,
	combout => \inst|inst2|inst7~combout\);

-- Location: LCCOMB_X45_Y56_N16
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\) # (GND)))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ = CARRY((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\);

-- Location: LCCOMB_X54_Y69_N14
\inst|inst2|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst9~combout\ = \inst|inst2|inst10~combout\ $ (\A[5]~input_o\ $ (((\C[4]~input_o\ & \A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \inst|inst2|inst10~combout\,
	datac => \A[15]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst|inst2|inst9~combout\);

-- Location: LCCOMB_X45_Y56_N14
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\);

-- Location: LCCOMB_X49_Y69_N2
\inst|inst2|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst11~combout\ = \inst|inst2|inst3~combout\ $ (((\inst|inst3|inst~combout\ & (\inst|inst3|inst8~0_combout\ & !\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst3~combout\,
	datab => \inst|inst3|inst~combout\,
	datac => \inst|inst3|inst8~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst|inst2|inst11~combout\);

-- Location: LCCOMB_X47_Y57_N24
\inst5|inst8|inst2[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[28]~24_combout\ = (\inst5|inst8|inst1|inst10\(28) & ((VCC) # ((\inst|inst2|inst11~combout\ & !\inst5|inst8|inst2[27]~23\)))) # (!\inst5|inst8|inst1|inst10\(28) & (GND))
-- \inst5|inst8|inst2[28]~25\ = CARRY((\inst5|inst8|inst1|inst10\(28) & (\inst|inst2|inst11~combout\ & !\inst5|inst8|inst2[27]~23\)) # (!\inst5|inst8|inst1|inst10\(28) & ((\inst|inst2|inst11~combout\) # (!\inst5|inst8|inst2[27]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(28),
	datab => \inst|inst2|inst11~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[27]~23\,
	combout => \inst5|inst8|inst2[28]~24_combout\,
	cout => \inst5|inst8|inst2[28]~25\);

-- Location: LCCOMB_X38_Y68_N8
\inst5|inst1|inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|Selector3~0_combout\ = (\inst5|inst1|inst|state.S1~q\) # ((!\inst5|inst1|inst|state.S2~q\ & \inst5|inst1|inst|storeEnvelope~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|state.S2~q\,
	datac => \inst5|inst1|inst|storeEnvelope~q\,
	datad => \inst5|inst1|inst|state.S1~q\,
	combout => \inst5|inst1|inst|Selector3~0_combout\);

-- Location: FF_X38_Y68_N9
\inst5|inst1|inst|storeEnvelope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|Selector3~0_combout\,
	ena => \RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|storeEnvelope~q\);

-- Location: FF_X47_Y57_N25
\inst5|inst8|inst2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[28]~24_combout\,
	asdata => \inst|inst2|inst11~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(28));

-- Location: LCCOMB_X46_Y56_N0
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ $ (\inst5|inst8|inst2\(28) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ & (\inst5|inst8|inst2\(28) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ & ((\inst5|inst8|inst2\(28)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\,
	datab => \inst5|inst8|inst2\(28),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\);

-- Location: LCCOMB_X47_Y57_N12
\inst5|inst8|inst1|inst10[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(28) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(28));

-- Location: LCCOMB_X47_Y57_N26
\inst5|inst8|inst2[29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[29]~26_combout\ = (\inst5|inst8|inst1|inst10\(29) & (((VCC) # (!\inst5|inst8|inst2[28]~25\)) # (!\inst|inst2|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(29) & (!\inst|inst2|inst9~combout\ & (!\inst5|inst8|inst2[28]~25\ & GND)))
-- \inst5|inst8|inst2[29]~27\ = CARRY((\inst5|inst8|inst1|inst10\(29) & ((!\inst5|inst8|inst2[28]~25\) # (!\inst|inst2|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(29) & (!\inst|inst2|inst9~combout\ & !\inst5|inst8|inst2[28]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(29),
	datab => \inst|inst2|inst9~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[28]~25\,
	combout => \inst5|inst8|inst2[29]~26_combout\,
	cout => \inst5|inst8|inst2[29]~27\);

-- Location: FF_X47_Y57_N27
\inst5|inst8|inst2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[29]~26_combout\,
	asdata => \inst|inst2|inst9~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(29));

-- Location: LCCOMB_X46_Y56_N2
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((\inst5|inst8|inst2\(29) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\)) # (!\inst5|inst8|inst2\(29) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((\inst5|inst8|inst2\(29) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ & VCC)) # (!\inst5|inst8|inst2\(29) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\) # 
-- (!\inst5|inst8|inst2\(29)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & (!\inst5|inst8|inst2\(29) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\,
	datab => \inst5|inst8|inst2\(29),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\);

-- Location: LCCOMB_X47_Y57_N10
\inst5|inst8|inst1|inst10[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(29) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(29));

-- Location: LCCOMB_X47_Y57_N28
\inst5|inst8|inst2[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[30]~28_combout\ = (\inst5|inst8|inst1|inst10\(30) & ((VCC) # ((\inst|inst2|inst7~combout\ & !\inst5|inst8|inst2[29]~27\)))) # (!\inst5|inst8|inst1|inst10\(30) & (GND))
-- \inst5|inst8|inst2[30]~29\ = CARRY((\inst|inst2|inst7~combout\ & ((!\inst5|inst8|inst2[29]~27\) # (!\inst5|inst8|inst1|inst10\(30)))) # (!\inst|inst2|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(30) & !\inst5|inst8|inst2[29]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(30),
	datad => VCC,
	cin => \inst5|inst8|inst2[29]~27\,
	combout => \inst5|inst8|inst2[30]~28_combout\,
	cout => \inst5|inst8|inst2[30]~29\);

-- Location: FF_X47_Y57_N29
\inst5|inst8|inst2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[30]~28_combout\,
	asdata => \inst|inst2|inst7~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(30));

-- Location: LCCOMB_X45_Y56_N18
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\);

-- Location: LCCOMB_X46_Y56_N4
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ = ((\inst5|inst8|inst2\(30) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ = CARRY((\inst5|inst8|inst2\(30) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\))) # (!\inst5|inst8|inst2\(30) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(30),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\);

-- Location: LCCOMB_X47_Y57_N8
\inst5|inst8|inst1|inst10[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(30) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(30));

-- Location: LCCOMB_X47_Y57_N30
\inst5|inst8|inst2[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[31]~30_combout\ = (\inst5|inst8|inst1|inst10\(31) & (((VCC) # (!\inst5|inst8|inst2[30]~29\)) # (!\inst|inst2|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(31) & (!\inst|inst2|inst5~combout\ & (!\inst5|inst8|inst2[30]~29\ & GND)))
-- \inst5|inst8|inst2[31]~31\ = CARRY((\inst5|inst8|inst1|inst10\(31) & ((!\inst5|inst8|inst2[30]~29\) # (!\inst|inst2|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(31) & (!\inst|inst2|inst5~combout\ & !\inst5|inst8|inst2[30]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(31),
	datab => \inst|inst2|inst5~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[30]~29\,
	combout => \inst5|inst8|inst2[31]~30_combout\,
	cout => \inst5|inst8|inst2[31]~31\);

-- Location: LCCOMB_X47_Y56_N0
\inst5|inst8|inst2[32]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[32]~32_combout\ = (\inst5|inst8|inst1|inst10\(32) & ((VCC) # ((\inst|inst1|inst11~combout\ & !\inst5|inst8|inst2[31]~31\)))) # (!\inst5|inst8|inst1|inst10\(32) & (GND))
-- \inst5|inst8|inst2[32]~33\ = CARRY((\inst5|inst8|inst1|inst10\(32) & (\inst|inst1|inst11~combout\ & !\inst5|inst8|inst2[31]~31\)) # (!\inst5|inst8|inst1|inst10\(32) & ((\inst|inst1|inst11~combout\) # (!\inst5|inst8|inst2[31]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(32),
	datab => \inst|inst1|inst11~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[31]~31\,
	combout => \inst5|inst8|inst2[32]~32_combout\,
	cout => \inst5|inst8|inst2[32]~33\);

-- Location: LCCOMB_X47_Y56_N2
\inst5|inst8|inst2[33]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[33]~34_combout\ = (\inst5|inst8|inst1|inst10\(33) & (((VCC) # (!\inst5|inst8|inst2[32]~33\)) # (!\inst|inst1|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(33) & (!\inst|inst1|inst9~combout\ & (!\inst5|inst8|inst2[32]~33\ & GND)))
-- \inst5|inst8|inst2[33]~35\ = CARRY((\inst5|inst8|inst1|inst10\(33) & ((!\inst5|inst8|inst2[32]~33\) # (!\inst|inst1|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(33) & (!\inst|inst1|inst9~combout\ & !\inst5|inst8|inst2[32]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(33),
	datab => \inst|inst1|inst9~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[32]~33\,
	combout => \inst5|inst8|inst2[33]~34_combout\,
	cout => \inst5|inst8|inst2[33]~35\);

-- Location: LCCOMB_X47_Y56_N4
\inst5|inst8|inst2[34]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[34]~36_combout\ = (\inst5|inst8|inst1|inst10\(34) & ((VCC) # ((\inst|inst1|inst7~combout\ & !\inst5|inst8|inst2[33]~35\)))) # (!\inst5|inst8|inst1|inst10\(34) & (GND))
-- \inst5|inst8|inst2[34]~37\ = CARRY((\inst|inst1|inst7~combout\ & ((!\inst5|inst8|inst2[33]~35\) # (!\inst5|inst8|inst1|inst10\(34)))) # (!\inst|inst1|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(34) & !\inst5|inst8|inst2[33]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(34),
	datad => VCC,
	cin => \inst5|inst8|inst2[33]~35\,
	combout => \inst5|inst8|inst2[34]~36_combout\,
	cout => \inst5|inst8|inst2[34]~37\);

-- Location: LCCOMB_X47_Y56_N6
\inst5|inst8|inst2[35]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[35]~38_combout\ = (\inst5|inst8|inst1|inst10\(35) & (((VCC) # (!\inst5|inst8|inst2[34]~37\)) # (!\inst|inst1|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(35) & (!\inst|inst1|inst5~combout\ & (!\inst5|inst8|inst2[34]~37\ & GND)))
-- \inst5|inst8|inst2[35]~39\ = CARRY((\inst5|inst8|inst1|inst10\(35) & ((!\inst5|inst8|inst2[34]~37\) # (!\inst|inst1|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(35) & (!\inst|inst1|inst5~combout\ & !\inst5|inst8|inst2[34]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(35),
	datab => \inst|inst1|inst5~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[34]~37\,
	combout => \inst5|inst8|inst2[35]~38_combout\,
	cout => \inst5|inst8|inst2[35]~39\);

-- Location: LCCOMB_X47_Y56_N8
\inst5|inst8|inst2[36]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[36]~40_combout\ = (\inst5|inst8|inst1|inst10\(36) & ((VCC) # ((\inst|inst|inst11~combout\ & !\inst5|inst8|inst2[35]~39\)))) # (!\inst5|inst8|inst1|inst10\(36) & (GND))
-- \inst5|inst8|inst2[36]~41\ = CARRY((\inst|inst|inst11~combout\ & ((!\inst5|inst8|inst2[35]~39\) # (!\inst5|inst8|inst1|inst10\(36)))) # (!\inst|inst|inst11~combout\ & (!\inst5|inst8|inst1|inst10\(36) & !\inst5|inst8|inst2[35]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst11~combout\,
	datab => \inst5|inst8|inst1|inst10\(36),
	datad => VCC,
	cin => \inst5|inst8|inst2[35]~39\,
	combout => \inst5|inst8|inst2[36]~40_combout\,
	cout => \inst5|inst8|inst2[36]~41\);

-- Location: LCCOMB_X47_Y56_N10
\inst5|inst8|inst2[37]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[37]~42_combout\ = (\inst|inst|inst9~combout\ & (\inst5|inst8|inst1|inst10\(37) & ((VCC) # (!\inst5|inst8|inst2[36]~41\)))) # (!\inst|inst|inst9~combout\ & ((\inst5|inst8|inst1|inst10\(37)) # ((!\inst5|inst8|inst2[36]~41\ & GND))))
-- \inst5|inst8|inst2[37]~43\ = CARRY((\inst|inst|inst9~combout\ & (\inst5|inst8|inst1|inst10\(37) & !\inst5|inst8|inst2[36]~41\)) # (!\inst|inst|inst9~combout\ & ((\inst5|inst8|inst1|inst10\(37)) # (!\inst5|inst8|inst2[36]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst9~combout\,
	datab => \inst5|inst8|inst1|inst10\(37),
	datad => VCC,
	cin => \inst5|inst8|inst2[36]~41\,
	combout => \inst5|inst8|inst2[37]~42_combout\,
	cout => \inst5|inst8|inst2[37]~43\);

-- Location: LCCOMB_X47_Y56_N12
\inst5|inst8|inst2[38]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[38]~44_combout\ = (\inst5|inst8|inst1|inst10\(38) & ((VCC) # ((\inst|inst|inst7~combout\ & !\inst5|inst8|inst2[37]~43\)))) # (!\inst5|inst8|inst1|inst10\(38) & (GND))
-- \inst5|inst8|inst2[38]~45\ = CARRY((\inst|inst|inst7~combout\ & ((!\inst5|inst8|inst2[37]~43\) # (!\inst5|inst8|inst1|inst10\(38)))) # (!\inst|inst|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(38) & !\inst5|inst8|inst2[37]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(38),
	datad => VCC,
	cin => \inst5|inst8|inst2[37]~43\,
	combout => \inst5|inst8|inst2[38]~44_combout\,
	cout => \inst5|inst8|inst2[38]~45\);

-- Location: LCCOMB_X47_Y56_N14
\inst5|inst8|inst2[39]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[39]~46_combout\ = (\inst5|inst8|inst1|inst10\(39) & (((VCC) # (!\inst5|inst8|inst2[38]~45\)) # (!\inst|inst|inst5~1_combout\))) # (!\inst5|inst8|inst1|inst10\(39) & (!\inst|inst|inst5~1_combout\ & (!\inst5|inst8|inst2[38]~45\ & GND)))
-- \inst5|inst8|inst2[39]~47\ = CARRY((\inst5|inst8|inst1|inst10\(39) & ((!\inst5|inst8|inst2[38]~45\) # (!\inst|inst|inst5~1_combout\))) # (!\inst5|inst8|inst1|inst10\(39) & (!\inst|inst|inst5~1_combout\ & !\inst5|inst8|inst2[38]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(39),
	datab => \inst|inst|inst5~1_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[38]~45\,
	combout => \inst5|inst8|inst2[39]~46_combout\,
	cout => \inst5|inst8|inst2[39]~47\);

-- Location: LCCOMB_X47_Y56_N16
\inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\ = !\inst5|inst8|inst2[39]~47\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst8|inst2[39]~47\,
	combout => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\);

-- Location: FF_X47_Y57_N23
\inst5|inst8|inst2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[27]~22_combout\,
	asdata => \inst|inst3|inst5~_wirecell_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(27));

-- Location: DSPMULT_X44_Y57_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y57_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y57_N10
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X45_Y57_N12
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X45_Y57_N14
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X45_Y57_N16
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X45_Y57_N18
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X45_Y57_N20
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X45_Y57_N22
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X45_Y57_N24
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X46_Y58_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\ = (\inst5|inst8|inst2\(0) & ((GND) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8)))) # (!\inst5|inst8|inst2\(0) & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8) $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ = CARRY((\inst5|inst8|inst2\(0)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(0),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8),
	datad => VCC,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\);

-- Location: LCCOMB_X47_Y58_N20
\inst5|inst8|inst1|inst10[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(0) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\,
	combout => \inst5|inst8|inst1|inst10\(0));

-- Location: FF_X47_Y58_N21
\inst5|inst8|inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(0),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(0));

-- Location: LCCOMB_X46_Y58_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & ((\inst5|inst8|inst2\(1) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\)) # (!\inst5|inst8|inst2\(1) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & ((\inst5|inst8|inst2\(1) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ & VCC)) # (!\inst5|inst8|inst2\(1) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\) # 
-- (!\inst5|inst8|inst2\(1)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & (!\inst5|inst8|inst2\(1) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9),
	datab => \inst5|inst8|inst2\(1),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X47_Y58_N22
\inst5|inst8|inst1|inst10[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(1) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\,
	combout => \inst5|inst8|inst1|inst10\(1));

-- Location: FF_X47_Y58_N23
\inst5|inst8|inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(1),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(1));

-- Location: LCCOMB_X46_Y58_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ = ((\inst5|inst8|inst2\(2) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ = CARRY((\inst5|inst8|inst2\(2) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10)))) # (!\inst5|inst8|inst2\(2) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(2),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X46_Y58_N6
\inst5|inst8|inst1|inst10[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(2) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(2));

-- Location: FF_X46_Y58_N7
\inst5|inst8|inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(2),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(2));

-- Location: LCCOMB_X46_Y58_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ = (\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\ = CARRY((\inst5|inst8|inst2\(3) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\)) # (!\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(3),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X46_Y56_N28
\inst5|inst8|inst1|inst10[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(3) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(3));

-- Location: FF_X46_Y56_N29
\inst5|inst8|inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(3),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(3));

-- Location: LCCOMB_X46_Y58_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) $ (\inst5|inst8|inst2\(4) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) & (\inst5|inst8|inst2\(4) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) & ((\inst5|inst8|inst2\(4)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12),
	datab => \inst5|inst8|inst2\(4),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X47_Y58_N8
\inst5|inst8|inst1|inst10[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(4) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(4));

-- Location: FF_X47_Y58_N9
\inst5|inst8|inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(4),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(4));

-- Location: LCCOMB_X46_Y58_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ = (\inst5|inst8|inst2\(5) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(5) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\ = CARRY((\inst5|inst8|inst2\(5) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\)) # (!\inst5|inst8|inst2\(5) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(5),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X46_Y58_N0
\inst5|inst8|inst1|inst10[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(5) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(5));

-- Location: FF_X46_Y58_N1
\inst5|inst8|inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(5),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(5));

-- Location: LCCOMB_X46_Y58_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) $ (\inst5|inst8|inst2\(6) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) & (\inst5|inst8|inst2\(6) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) & ((\inst5|inst8|inst2\(6)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14),
	datab => \inst5|inst8|inst2\(6),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X47_Y58_N18
\inst5|inst8|inst1|inst10[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(6) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\,
	combout => \inst5|inst8|inst1|inst10\(6));

-- Location: FF_X47_Y58_N19
\inst5|inst8|inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(6),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(6));

-- Location: LCCOMB_X46_Y58_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & ((\inst5|inst8|inst2\(7) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\)) # (!\inst5|inst8|inst2\(7) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & ((\inst5|inst8|inst2\(7) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ & VCC)) # (!\inst5|inst8|inst2\(7) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\) # 
-- (!\inst5|inst8|inst2\(7)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & (!\inst5|inst8|inst2\(7) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15),
	datab => \inst5|inst8|inst2\(7),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X46_Y58_N2
\inst5|inst8|inst1|inst10[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(7) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(7));

-- Location: FF_X46_Y58_N3
\inst5|inst8|inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(7),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(7));

-- Location: LCCOMB_X46_Y58_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) $ (\inst5|inst8|inst2\(8) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) & (\inst5|inst8|inst2\(8) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) & ((\inst5|inst8|inst2\(8)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16),
	datab => \inst5|inst8|inst2\(8),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X47_Y58_N24
\inst5|inst8|inst1|inst10[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(8) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\,
	combout => \inst5|inst8|inst1|inst10\(8));

-- Location: FF_X47_Y58_N25
\inst5|inst8|inst2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(8),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(8));

-- Location: LCCOMB_X46_Y58_N26
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ = (\inst5|inst8|inst2\(9) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(9) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\ = CARRY((\inst5|inst8|inst2\(9) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\)) # (!\inst5|inst8|inst2\(9) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(9),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X46_Y58_N4
\inst5|inst8|inst1|inst10[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(9) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(9));

-- Location: FF_X46_Y58_N5
\inst5|inst8|inst2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(9),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(9));

-- Location: LCCOMB_X46_Y58_N28
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\ = ((\inst5|inst8|inst2\(10) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ = CARRY((\inst5|inst8|inst2\(10) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\))) # (!\inst5|inst8|inst2\(10) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(10),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X47_Y58_N6
\inst5|inst8|inst1|inst10[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(10) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\,
	combout => \inst5|inst8|inst1|inst10\(10));

-- Location: FF_X47_Y58_N7
\inst5|inst8|inst2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(10),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(10));

-- Location: LCCOMB_X46_Y58_N30
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\ = (\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\ = CARRY((\inst5|inst8|inst2\(11) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\)) # (!\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(11),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X47_Y58_N4
\inst5|inst8|inst1|inst10[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(11) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\,
	combout => \inst5|inst8|inst1|inst10\(11));

-- Location: FF_X47_Y58_N5
\inst5|inst8|inst2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(11),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(11));

-- Location: LCCOMB_X46_Y57_N0
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ $ (\inst5|inst8|inst2\(12) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ & (\inst5|inst8|inst2\(12) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ & ((\inst5|inst8|inst2\(12)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\,
	datab => \inst5|inst8|inst2\(12),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\);

-- Location: LCCOMB_X48_Y57_N24
\inst5|inst8|inst1|inst10[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(12) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\,
	combout => \inst5|inst8|inst1|inst10\(12));

-- Location: FF_X48_Y57_N25
\inst5|inst8|inst2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(12),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(12));

-- Location: LCCOMB_X46_Y57_N2
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((\inst5|inst8|inst2\(13) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\)) # (!\inst5|inst8|inst2\(13) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((\inst5|inst8|inst2\(13) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ & VCC)) # (!\inst5|inst8|inst2\(13) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\) # 
-- (!\inst5|inst8|inst2\(13)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & (!\inst5|inst8|inst2\(13) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\,
	datab => \inst5|inst8|inst2\(13),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\);

-- Location: LCCOMB_X48_Y57_N2
\inst5|inst8|inst1|inst10[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(13) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\,
	combout => \inst5|inst8|inst1|inst10\(13));

-- Location: FF_X48_Y57_N3
\inst5|inst8|inst2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(13),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(13));

-- Location: LCCOMB_X46_Y57_N4
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\ = ((\inst5|inst8|inst2\(14) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ = CARRY((\inst5|inst8|inst2\(14) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\))) # (!\inst5|inst8|inst2\(14) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(14),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\);

-- Location: LCCOMB_X46_Y56_N30
\inst5|inst8|inst1|inst10[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(14) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\,
	combout => \inst5|inst8|inst1|inst10\(14));

-- Location: FF_X46_Y56_N31
\inst5|inst8|inst2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(14),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(14));

-- Location: LCCOMB_X46_Y57_N6
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\ = (\inst5|inst8|inst2\(15) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(15) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\ = CARRY((\inst5|inst8|inst2\(15) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\)) # (!\inst5|inst8|inst2\(15) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(15),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\);

-- Location: LCCOMB_X48_Y57_N12
\inst5|inst8|inst1|inst10[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(15) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\,
	combout => \inst5|inst8|inst1|inst10\(15));

-- Location: FF_X48_Y57_N13
\inst5|inst8|inst2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(15),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(15));

-- Location: LCCOMB_X46_Y57_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\ = ((\inst5|inst8|inst2\(16) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ = CARRY((\inst5|inst8|inst2\(16) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\))) # (!\inst5|inst8|inst2\(16) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(16),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\);

-- Location: LCCOMB_X46_Y57_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ = (\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\ = CARRY((\inst5|inst8|inst2\(17) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\)) # (!\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(17),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\);

-- Location: LCCOMB_X45_Y57_N4
\inst5|inst8|inst1|inst10[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(17) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(17));

-- Location: FF_X45_Y57_N5
\inst5|inst8|inst2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(17),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(17));

-- Location: LCCOMB_X43_Y57_N0
\inst5|inst8|inst1|inst10[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(16) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\,
	combout => \inst5|inst8|inst1|inst10\(16));

-- Location: FF_X43_Y57_N1
\inst5|inst8|inst2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(16),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(16));

-- Location: LCCOMB_X45_Y57_N26
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X45_Y57_N28
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X46_Y57_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ $ (\inst5|inst8|inst2\(18) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ & (\inst5|inst8|inst2\(18) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ & ((\inst5|inst8|inst2\(18)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\,
	datab => \inst5|inst8|inst2\(18),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\);

-- Location: LCCOMB_X46_Y57_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\ = (\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\ = CARRY((\inst5|inst8|inst2\(19) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\)) # (!\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(19),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\);

-- Location: LCCOMB_X46_Y57_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\ = ((\inst5|inst8|inst2\(20) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ = CARRY((\inst5|inst8|inst2\(20) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\))) # (!\inst5|inst8|inst2\(20) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(20),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\);

-- Location: LCCOMB_X46_Y57_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ = (\inst5|inst8|inst2\(21) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(21) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\ = CARRY((\inst5|inst8|inst2\(21) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\)) # (!\inst5|inst8|inst2\(21) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(21),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\);

-- Location: LCCOMB_X46_Y57_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ $ (\inst5|inst8|inst2\(22) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ & (\inst5|inst8|inst2\(22) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ & ((\inst5|inst8|inst2\(22)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\,
	datab => \inst5|inst8|inst2\(22),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\);

-- Location: LCCOMB_X46_Y57_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ = (\inst5|inst8|inst2\(23) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(23) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\ = CARRY((\inst5|inst8|inst2\(23) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\)) # (!\inst5|inst8|inst2\(23) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(23),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\);

-- Location: LCCOMB_X46_Y57_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ $ (\inst5|inst8|inst2\(24) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ & (\inst5|inst8|inst2\(24) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ & ((\inst5|inst8|inst2\(24)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\,
	datab => \inst5|inst8|inst2\(24),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\);

-- Location: LCCOMB_X46_Y57_N26
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((\inst5|inst8|inst2\(25) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\)) # (!\inst5|inst8|inst2\(25) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((\inst5|inst8|inst2\(25) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ & VCC)) # (!\inst5|inst8|inst2\(25) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\) # 
-- (!\inst5|inst8|inst2\(25)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & (!\inst5|inst8|inst2\(25) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\,
	datab => \inst5|inst8|inst2\(25),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\);

-- Location: LCCOMB_X47_Y57_N0
\inst5|inst8|inst1|inst10[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(26) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(26));

-- Location: LCCOMB_X48_Y57_N30
\inst|inst3|inst7~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7~_wirecell_combout\ = !\inst|inst3|inst7~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|inst7~combout\,
	combout => \inst|inst3|inst7~_wirecell_combout\);

-- Location: FF_X47_Y57_N21
\inst5|inst8|inst2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[26]~20_combout\,
	asdata => \inst|inst3|inst7~_wirecell_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(26));

-- Location: LCCOMB_X45_Y57_N30
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X45_Y56_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X45_Y56_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X45_Y56_N4
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X45_Y56_N6
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X45_Y56_N8
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X47_Y57_N14
\inst5|inst8|inst1|inst10[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(25) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(25));

-- Location: FF_X47_Y57_N19
\inst5|inst8|inst2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[25]~18_combout\,
	asdata => \inst|inst3|inst9~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(25));

-- Location: LCCOMB_X45_Y56_N28
\inst5|inst8|inst1|inst10[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(23) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(23));

-- Location: FF_X46_Y57_N29
\inst5|inst8|inst2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst8|inst1|inst10\(23),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	sload => VCC,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(23));

-- Location: LCCOMB_X45_Y56_N22
\inst5|inst8|inst1|inst10[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(22) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(22));

-- Location: FF_X45_Y56_N23
\inst5|inst8|inst2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(22),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(22));

-- Location: LCCOMB_X45_Y57_N8
\inst5|inst8|inst1|inst10[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(21) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(21));

-- Location: FF_X45_Y57_N9
\inst5|inst8|inst2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(21),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(21));

-- Location: LCCOMB_X45_Y57_N2
\inst5|inst8|inst1|inst10[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(20) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\,
	combout => \inst5|inst8|inst1|inst10\(20));

-- Location: FF_X45_Y57_N3
\inst5|inst8|inst2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(20),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(20));

-- Location: LCCOMB_X45_Y56_N20
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ = \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\);

-- Location: LCCOMB_X46_Y56_N6
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\ = (\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ = CARRY((\inst5|inst8|inst2\(31) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\)) # (!\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(31),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\);

-- Location: LCCOMB_X47_Y57_N6
\inst5|inst8|inst1|inst10[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(31) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\,
	combout => \inst5|inst8|inst1|inst10\(31));

-- Location: FF_X47_Y57_N31
\inst5|inst8|inst2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[31]~30_combout\,
	asdata => \inst|inst2|inst5~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(31));

-- Location: LCCOMB_X46_Y56_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ = (\inst5|inst8|inst2\(32) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\))) # (!\inst5|inst8|inst2\(32) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ = CARRY((\inst5|inst8|inst2\(32)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(32),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\);

-- Location: LCCOMB_X46_Y56_N26
\inst5|inst8|inst1|inst10[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(32) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(32));

-- Location: FF_X47_Y56_N1
\inst5|inst8|inst2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[32]~32_combout\,
	asdata => \inst|inst1|inst11~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(32));

-- Location: LCCOMB_X46_Y56_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ = (\inst5|inst8|inst2\(33) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ & VCC)) # (!\inst5|inst8|inst2\(33) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ = CARRY((!\inst5|inst8|inst2\(33) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(33),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\);

-- Location: LCCOMB_X47_Y56_N22
\inst5|inst8|inst1|inst10[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(33) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(33));

-- Location: FF_X47_Y56_N3
\inst5|inst8|inst2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[33]~34_combout\,
	asdata => \inst|inst1|inst9~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(33));

-- Location: LCCOMB_X46_Y56_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ = (\inst5|inst8|inst2\(34) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\))) # (!\inst5|inst8|inst2\(34) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ = CARRY((\inst5|inst8|inst2\(34)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(34),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\);

-- Location: LCCOMB_X47_Y56_N20
\inst5|inst8|inst1|inst10[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(34) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(34));

-- Location: FF_X47_Y56_N5
\inst5|inst8|inst2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[34]~36_combout\,
	asdata => \inst|inst1|inst7~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(34));

-- Location: LCCOMB_X46_Y56_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ = (\inst5|inst8|inst2\(35) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ & VCC)) # (!\inst5|inst8|inst2\(35) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ = CARRY((!\inst5|inst8|inst2\(35) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(35),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\);

-- Location: LCCOMB_X47_Y56_N26
\inst5|inst8|inst1|inst10[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(35) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(35));

-- Location: FF_X47_Y56_N7
\inst5|inst8|inst2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[35]~38_combout\,
	asdata => \inst|inst1|inst5~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(35));

-- Location: LCCOMB_X46_Y56_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ = (\inst5|inst8|inst2\(36) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\))) # (!\inst5|inst8|inst2\(36) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ = CARRY((\inst5|inst8|inst2\(36)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(36),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\);

-- Location: LCCOMB_X47_Y56_N24
\inst5|inst8|inst1|inst10[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(36) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(36));

-- Location: FF_X47_Y56_N9
\inst5|inst8|inst2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[36]~40_combout\,
	asdata => \inst|inst|inst11~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(36));

-- Location: LCCOMB_X46_Y56_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ = (\inst5|inst8|inst2\(37) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ & VCC)) # (!\inst5|inst8|inst2\(37) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ = CARRY((!\inst5|inst8|inst2\(37) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(37),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\);

-- Location: LCCOMB_X47_Y56_N18
\inst5|inst8|inst1|inst10[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(37) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(37));

-- Location: FF_X47_Y56_N11
\inst5|inst8|inst2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[37]~42_combout\,
	asdata => \inst|inst|inst9~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(37));

-- Location: LCCOMB_X46_Y56_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\ = (\inst5|inst8|inst2\(38) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\))) # (!\inst5|inst8|inst2\(38) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ = CARRY((\inst5|inst8|inst2\(38)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(38),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\);

-- Location: LCCOMB_X47_Y56_N28
\inst5|inst8|inst1|inst10[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(38) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\,
	combout => \inst5|inst8|inst1|inst10\(38));

-- Location: FF_X47_Y56_N13
\inst5|inst8|inst2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[38]~44_combout\,
	asdata => \inst|inst|inst7~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(38));

-- Location: LCCOMB_X46_Y56_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\ = (\inst5|inst8|inst2\(39) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ & VCC)) # (!\inst5|inst8|inst2\(39) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\ = CARRY((!\inst5|inst8|inst2\(39) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(39),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\);

-- Location: LCCOMB_X47_Y56_N30
\inst5|inst8|inst1|inst10[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(39) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\,
	combout => \inst5|inst8|inst1|inst10\(39));

-- Location: FF_X47_Y56_N15
\inst5|inst8|inst2[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[39]~46_combout\,
	asdata => \inst|inst|inst5~1_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(39));

-- Location: LCCOMB_X46_Y56_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ = \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\);

-- Location: LCCOMB_X45_Y57_N0
\inst5|inst8|inst1|inst10[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(19) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\,
	combout => \inst5|inst8|inst1|inst10\(19));

-- Location: FF_X45_Y57_N1
\inst5|inst8|inst2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(19),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(19));

-- Location: LCCOMB_X45_Y57_N6
\inst5|inst8|inst1|inst10[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(18) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(18));

-- Location: FF_X45_Y57_N7
\inst5|inst8|inst2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst1|inst10\(18),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sclr => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(18));

-- Location: LCCOMB_X47_Y57_N4
\inst5|inst8|inst1|inst10[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(24) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(24));

-- Location: FF_X47_Y57_N17
\inst5|inst8|inst2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[24]~16_combout\,
	asdata => \A[0]~input_o\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst|storeEnvelope~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(24));

-- Location: DSPMULT_X44_Y68_N0
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y68_N2
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y68_N18
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X45_Y68_N22
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X45_Y68_N24
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X45_Y68_N0
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\ = (((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\) # (\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\)) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13),
	datac => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\,
	datad => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\,
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\);

-- Location: LCCOMB_X43_Y68_N22
\inst5|inst6|inst2|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~1_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31) & 
-- !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29),
	combout => \inst5|inst6|inst2|inst10~1_combout\);

-- Location: LCCOMB_X43_Y68_N28
\inst5|inst6|inst2|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~0_combout\ = (!\inst5|inst6|inst11~q\ & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30) & 
-- !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26),
	combout => \inst5|inst6|inst2|inst10~0_combout\);

-- Location: LCCOMB_X43_Y68_N20
\inst5|inst6|inst2|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~2_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23) & (\inst5|inst6|inst2|inst10~1_combout\ & \inst5|inst6|inst2|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23),
	datac => \inst5|inst6|inst2|inst10~1_combout\,
	datad => \inst5|inst6|inst2|inst10~0_combout\,
	combout => \inst5|inst6|inst2|inst10~2_combout\);

-- Location: LCCOMB_X45_Y68_N26
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3) & 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7) & !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X45_Y68_N16
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0) & 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6) & !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X45_Y68_N20
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5) & (\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\ & 
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5),
	datac => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\,
	datad => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\,
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X45_Y68_N30
\inst5|inst6|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~combout\ = (\inst5|inst6|inst2|inst10~2_combout\ & ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\) # ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\) # 
-- (\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\,
	datab => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\,
	datac => \inst5|inst6|inst2|inst10~2_combout\,
	datad => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\,
	combout => \inst5|inst6|inst2|inst10~combout\);

-- Location: LCCOMB_X41_Y68_N16
\inst5|inst6|inst2|inst7[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(15) = (\inst5|inst6|inst2|inst2|Equal1~0_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(15));

-- Location: FF_X41_Y68_N23
\inst5|inst6|inst2|inst[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(15));

-- Location: LCCOMB_X41_Y68_N24
\inst5|inst6|inst2|inst1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(15) = (\inst5|inst6|inst2|inst\(15)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(15),
	datad => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	combout => \inst5|inst6|inst2|inst1\(15));

-- Location: FF_X41_Y68_N25
\inst5|inst6|inst3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(15),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(14));

-- Location: FF_X43_Y68_N17
\inst5|inst6|inst3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(14),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(13));

-- Location: FF_X41_Y68_N15
\inst5|inst6|inst3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(13),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(12));

-- Location: FF_X43_Y68_N15
\inst5|inst6|inst3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(12),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(11));

-- Location: FF_X41_Y68_N9
\inst5|inst6|inst3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(11),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(10));

-- Location: FF_X41_Y68_N11
\inst5|inst6|inst3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(10),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(9));

-- Location: FF_X41_Y68_N13
\inst5|inst6|inst3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(9),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(8));

-- Location: FF_X41_Y68_N7
\inst5|inst6|inst3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(8),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(7));

-- Location: FF_X41_Y68_N5
\inst5|inst6|inst3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(7),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(6));

-- Location: FF_X43_Y68_N13
\inst5|inst6|inst3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(6),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(5));

-- Location: FF_X43_Y68_N7
\inst5|inst6|inst3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(5),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(4));

-- Location: FF_X43_Y68_N5
\inst5|inst6|inst3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(4),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(3));

-- Location: FF_X43_Y68_N27
\inst5|inst6|inst3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(3),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(2));

-- Location: FF_X43_Y68_N1
\inst5|inst6|inst3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(2),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(1));

-- Location: FF_X43_Y68_N31
\inst5|inst6|inst3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(1),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(0));

-- Location: IOIBUF_X115_Y37_N8
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

ww_DVO <= \DVO~output_o\;

ww_RESULT_A(15) <= \RESULT_A[15]~output_o\;

ww_RESULT_A(14) <= \RESULT_A[14]~output_o\;

ww_RESULT_A(13) <= \RESULT_A[13]~output_o\;

ww_RESULT_A(12) <= \RESULT_A[12]~output_o\;

ww_RESULT_A(11) <= \RESULT_A[11]~output_o\;

ww_RESULT_A(10) <= \RESULT_A[10]~output_o\;

ww_RESULT_A(9) <= \RESULT_A[9]~output_o\;

ww_RESULT_A(8) <= \RESULT_A[8]~output_o\;

ww_RESULT_A(7) <= \RESULT_A[7]~output_o\;

ww_RESULT_A(6) <= \RESULT_A[6]~output_o\;

ww_RESULT_A(5) <= \RESULT_A[5]~output_o\;

ww_RESULT_A(4) <= \RESULT_A[4]~output_o\;

ww_RESULT_A(3) <= \RESULT_A[3]~output_o\;

ww_RESULT_A(2) <= \RESULT_A[2]~output_o\;

ww_RESULT_A(1) <= \RESULT_A[1]~output_o\;

ww_RESULT_A(0) <= \RESULT_A[0]~output_o\;

ww_RESULT_B(15) <= \RESULT_B[15]~output_o\;

ww_RESULT_B(14) <= \RESULT_B[14]~output_o\;

ww_RESULT_B(13) <= \RESULT_B[13]~output_o\;

ww_RESULT_B(12) <= \RESULT_B[12]~output_o\;

ww_RESULT_B(11) <= \RESULT_B[11]~output_o\;

ww_RESULT_B(10) <= \RESULT_B[10]~output_o\;

ww_RESULT_B(9) <= \RESULT_B[9]~output_o\;

ww_RESULT_B(8) <= \RESULT_B[8]~output_o\;

ww_RESULT_B(7) <= \RESULT_B[7]~output_o\;

ww_RESULT_B(6) <= \RESULT_B[6]~output_o\;

ww_RESULT_B(5) <= \RESULT_B[5]~output_o\;

ww_RESULT_B(4) <= \RESULT_B[4]~output_o\;

ww_RESULT_B(3) <= \RESULT_B[3]~output_o\;

ww_RESULT_B(2) <= \RESULT_B[2]~output_o\;

ww_RESULT_B(1) <= \RESULT_B[1]~output_o\;

ww_RESULT_B(0) <= \RESULT_B[0]~output_o\;

ww_STATUS(7) <= \STATUS[7]~output_o\;

ww_STATUS(6) <= \STATUS[6]~output_o\;

ww_STATUS(5) <= \STATUS[5]~output_o\;

ww_STATUS(4) <= \STATUS[4]~output_o\;

ww_STATUS(3) <= \STATUS[3]~output_o\;

ww_STATUS(2) <= \STATUS[2]~output_o\;

ww_STATUS(1) <= \STATUS[1]~output_o\;

ww_STATUS(0) <= \STATUS[0]~output_o\;
END structure;


