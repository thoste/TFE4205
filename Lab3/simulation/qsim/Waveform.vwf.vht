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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/29/2018 13:33:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          StudentDesign
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY StudentDesign_vhd_vec_tst IS
END StudentDesign_vhd_vec_tst;
ARCHITECTURE StudentDesign_arch OF StudentDesign_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DVI : STD_LOGIC;
SIGNAL DVO : STD_LOGIC;
SIGNAL RESET_N : STD_LOGIC;
SIGNAL RESULT_A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESULT_B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL STATUS : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT StudentDesign
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DVI : IN STD_LOGIC;
	DVO : OUT STD_LOGIC;
	RESET_N : IN STD_LOGIC;
	RESULT_A : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESULT_B : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	STATUS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : StudentDesign
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	CLK => CLK,
	D => D,
	DVI => DVI,
	DVO => DVO,
	RESET_N => RESET_N,
	RESULT_A => RESULT_A,
	RESULT_B => RESULT_B,
	STATUS => STATUS
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- DVI
t_prcs_DVI: PROCESS
BEGIN
	DVI <= '1';
	WAIT FOR 1400000 ps;
	DVI <= '0';
	WAIT FOR 300000 ps;
	DVI <= '1';
	WAIT FOR 1100000 ps;
	DVI <= '0';
	WAIT FOR 700000 ps;
	DVI <= '1';
	WAIT FOR 1900000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 100000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 200000 ps;
	DVI <= '0';
WAIT;
END PROCESS t_prcs_DVI;

-- RESET_N
t_prcs_RESET_N: PROCESS
BEGIN
	RESET_N <= '0';
	WAIT FOR 100000 ps;
	RESET_N <= '1';
	WAIT FOR 7000000 ps;
	RESET_N <= '0';
WAIT;
END PROCESS t_prcs_RESET_N;
END StudentDesign_arch;
