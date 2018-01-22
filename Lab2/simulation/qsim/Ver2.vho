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

-- DATE "01/22/2018 13:33:34"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StudentDesign IS
    PORT (
	DVO : OUT std_logic;
	RESULT_A : OUT std_logic_vector(15 DOWNTO 0);
	C : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0);
	RESULT_B : OUT std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	STATUS : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	DVI : IN std_logic;
	D : IN std_logic_vector(7 DOWNTO 0)
	);
END StudentDesign;

-- Design Ports Information
-- DVO	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[13]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[12]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[11]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[10]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[14]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[13]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[12]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[11]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[8]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[7]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[5]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DVI	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_RESULT_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_DVI : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \DVI~input_o\ : std_logic;
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
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst6~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst6~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst1|inst6~combout\ : std_logic;
SIGNAL \inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst6~combout\ : std_logic;
SIGNAL \inst|inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst|inst7~combout\ : std_logic;
SIGNAL \inst|inst|inst4~combout\ : std_logic;
SIGNAL \inst|inst|inst1~combout\ : std_logic;
SIGNAL \inst|inst1|inst10~combout\ : std_logic;
SIGNAL \inst|inst1|inst7~combout\ : std_logic;
SIGNAL \inst|inst1|inst4~combout\ : std_logic;
SIGNAL \inst|inst1|inst1~combout\ : std_logic;
SIGNAL \inst|inst2|inst10~combout\ : std_logic;
SIGNAL \inst|inst2|inst7~combout\ : std_logic;
SIGNAL \inst|inst2|inst4~combout\ : std_logic;
SIGNAL \inst|inst2|inst1~combout\ : std_logic;
SIGNAL \inst|inst3|inst10~combout\ : std_logic;
SIGNAL \inst|inst3|inst7~combout\ : std_logic;
SIGNAL \inst|inst3|inst4~combout\ : std_logic;
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

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DVO <= ww_DVO;
RESULT_A <= ww_RESULT_A;
ww_C <= C;
ww_A <= A;
RESULT_B <= ww_RESULT_B;
ww_B <= B;
STATUS <= ww_STATUS;
ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_DVI <= DVI;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X79_Y0_N23
\DVO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DVO~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\RESULT_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst10~0_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[15]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\RESULT_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst7~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[14]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\RESULT_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst4~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[13]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\RESULT_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[12]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\RESULT_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst10~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[11]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\RESULT_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst7~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[10]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\RESULT_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst4~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[9]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\RESULT_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\RESULT_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst10~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[7]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\RESULT_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst7~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\RESULT_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst4~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\RESULT_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst1~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[4]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\RESULT_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst10~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[3]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\RESULT_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst7~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\RESULT_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst4~combout\,
	devoe => ww_devoe,
	o => \RESULT_A[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\RESULT_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_A[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\RESULT_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[15]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\RESULT_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[14]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\RESULT_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[13]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[13]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\RESULT_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[12]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[12]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\RESULT_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[11]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\RESULT_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[10]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\RESULT_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[9]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\RESULT_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[8]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\RESULT_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[7]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\RESULT_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[6]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\RESULT_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[5]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\RESULT_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\RESULT_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[3]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\RESULT_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\RESULT_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\RESULT_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~input_o\,
	devoe => ww_devoe,
	o => \RESULT_B[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X115_Y11_N2
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X115_Y16_N9
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOIBUF_X0_Y50_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X1_Y46_N16
\inst|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (\A[15]~input_o\ & \C[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datad => \C[4]~input_o\,
	combout => \inst|inst4~0_combout\);

-- Location: IOIBUF_X0_Y55_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y46_N18
\inst|inst3|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6~combout\ = \A[2]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[1]~input_o\ $ (!\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst3|inst6~combout\);

-- Location: IOIBUF_X0_Y47_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y46_N12
\inst|inst2|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~combout\ = \A[4]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[3]~input_o\ $ (\inst|inst3|inst6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst|inst3|inst6~combout\,
	datac => \A[4]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst2|inst~combout\);

-- Location: IOIBUF_X0_Y48_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y46_N6
\inst|inst2|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6~combout\ = \A[6]~input_o\ $ (((\inst|inst4~0_combout\ & (\inst|inst2|inst~combout\ $ (\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst~combout\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst2|inst6~combout\);

-- Location: IOIBUF_X0_Y47_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y46_N0
\inst|inst1|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~combout\ = \A[8]~input_o\ $ (((\inst|inst4~0_combout\ & (\inst|inst2|inst6~combout\ $ (\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst6~combout\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst1|inst~combout\);

-- Location: LCCOMB_X1_Y52_N24
\inst|inst1|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6~combout\ = \A[10]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[9]~input_o\ $ (\inst|inst1|inst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[9]~input_o\,
	datad => \inst|inst1|inst~combout\,
	combout => \inst|inst1|inst6~combout\);

-- Location: LCCOMB_X1_Y52_N10
\inst|inst|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst~combout\ = \A[12]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[11]~input_o\ $ (\inst|inst1|inst6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[11]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst|inst~combout\);

-- Location: LCCOMB_X1_Y52_N12
\inst|inst|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst6~combout\ = \A[14]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[13]~input_o\ $ (\inst|inst|inst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[13]~input_o\,
	datad => \inst|inst|inst~combout\,
	combout => \inst|inst|inst6~combout\);

-- Location: LCCOMB_X1_Y52_N22
\inst|inst|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10~0_combout\ = (\A[15]~input_o\ & ((\inst|inst|inst6~combout\) # (!\C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \C[4]~input_o\,
	datad => \inst|inst|inst6~combout\,
	combout => \inst|inst|inst10~0_combout\);

-- Location: LCCOMB_X1_Y52_N16
\inst|inst|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7~combout\ = \A[14]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[13]~input_o\ $ (!\inst|inst|inst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[13]~input_o\,
	datad => \inst|inst|inst~combout\,
	combout => \inst|inst|inst7~combout\);

-- Location: LCCOMB_X1_Y52_N30
\inst|inst|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst4~combout\ = \A[13]~input_o\ $ (((\A[15]~input_o\ & (\C[4]~input_o\ & !\inst|inst|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[13]~input_o\,
	datac => \C[4]~input_o\,
	datad => \inst|inst|inst~combout\,
	combout => \inst|inst|inst4~combout\);

-- Location: LCCOMB_X1_Y52_N26
\inst|inst|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1~combout\ = \A[12]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[11]~input_o\ $ (!\inst|inst1|inst6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[11]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst|inst1~combout\);

-- Location: LCCOMB_X1_Y52_N8
\inst|inst1|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst10~combout\ = \A[11]~input_o\ $ (((\A[15]~input_o\ & (\C[4]~input_o\ & !\inst|inst1|inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[11]~input_o\,
	datac => \C[4]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst1|inst10~combout\);

-- Location: LCCOMB_X1_Y52_N4
\inst|inst1|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst7~combout\ = \A[10]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[9]~input_o\ $ (!\inst|inst1|inst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \inst|inst4~0_combout\,
	datac => \A[9]~input_o\,
	datad => \inst|inst1|inst~combout\,
	combout => \inst|inst1|inst7~combout\);

-- Location: LCCOMB_X1_Y52_N18
\inst|inst1|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst4~combout\ = \A[9]~input_o\ $ (((\A[15]~input_o\ & (\C[4]~input_o\ & !\inst|inst1|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[9]~input_o\,
	datac => \C[4]~input_o\,
	datad => \inst|inst1|inst~combout\,
	combout => \inst|inst1|inst4~combout\);

-- Location: LCCOMB_X1_Y46_N26
\inst|inst1|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1~combout\ = \A[8]~input_o\ $ (((\inst|inst4~0_combout\ & (\inst|inst2|inst6~combout\ $ (!\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst6~combout\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst1|inst1~combout\);

-- Location: LCCOMB_X1_Y46_N4
\inst|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst10~combout\ = \A[7]~input_o\ $ (((\C[4]~input_o\ & (\A[15]~input_o\ & !\inst|inst2|inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[7]~input_o\,
	datad => \inst|inst2|inst6~combout\,
	combout => \inst|inst2|inst10~combout\);

-- Location: LCCOMB_X1_Y46_N20
\inst|inst2|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst7~combout\ = \A[6]~input_o\ $ (((\inst|inst4~0_combout\ & (\inst|inst2|inst~combout\ $ (!\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst~combout\,
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst2|inst7~combout\);

-- Location: LCCOMB_X1_Y46_N22
\inst|inst2|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst4~combout\ = \A[5]~input_o\ $ (((\C[4]~input_o\ & (\A[15]~input_o\ & !\inst|inst2|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|inst2|inst~combout\,
	combout => \inst|inst2|inst4~combout\);

-- Location: LCCOMB_X1_Y46_N30
\inst|inst2|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1~combout\ = \A[4]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[3]~input_o\ $ (!\inst|inst3|inst6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst|inst3|inst6~combout\,
	datac => \A[4]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst2|inst1~combout\);

-- Location: LCCOMB_X1_Y46_N24
\inst|inst3|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst10~combout\ = \A[3]~input_o\ $ (((\C[4]~input_o\ & (\A[15]~input_o\ & !\inst|inst3|inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst|inst3|inst6~combout\,
	combout => \inst|inst3|inst10~combout\);

-- Location: LCCOMB_X1_Y46_N8
\inst|inst3|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7~combout\ = \A[2]~input_o\ $ (((\inst|inst4~0_combout\ & (\A[1]~input_o\ $ (\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst|inst4~0_combout\,
	combout => \inst|inst3|inst7~combout\);

-- Location: LCCOMB_X1_Y46_N10
\inst|inst3|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst4~combout\ = \A[1]~input_o\ $ (((\A[15]~input_o\ & (\A[0]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[0]~input_o\,
	datad => \C[4]~input_o\,
	combout => \inst|inst3|inst4~combout\);

-- Location: IOIBUF_X60_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

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

-- Location: IOIBUF_X113_Y73_N8
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\RESET_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\DVI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DVI,
	o => \DVI~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
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


