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
-- Generated on "01/29/2018 16:12:46"
                                                             
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
	CLK <= '0';
	WAIT FOR 40000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 199
	LOOP
		CLK <= '0';
		WAIT FOR 50000 ps;
		CLK <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- RESET_N
t_prcs_RESET_N: PROCESS
BEGIN
	RESET_N <= '0';
	WAIT FOR 200000 ps;
	RESET_N <= '1';
WAIT;
END PROCESS t_prcs_RESET_N;
-- C[7]
t_prcs_C_7: PROCESS
BEGIN
	C(7) <= '0';
WAIT;
END PROCESS t_prcs_C_7;
-- C[6]
t_prcs_C_6: PROCESS
BEGIN
	C(6) <= '0';
WAIT;
END PROCESS t_prcs_C_6;
-- C[5]
t_prcs_C_5: PROCESS
BEGIN
	C(5) <= '0';
WAIT;
END PROCESS t_prcs_C_5;
-- C[4]
t_prcs_C_4: PROCESS
BEGIN
	C(4) <= '1';
WAIT;
END PROCESS t_prcs_C_4;
-- C[3]
t_prcs_C_3: PROCESS
BEGIN
	C(3) <= '1';
WAIT;
END PROCESS t_prcs_C_3;
-- C[2]
t_prcs_C_2: PROCESS
BEGIN
	C(2) <= '1';
WAIT;
END PROCESS t_prcs_C_2;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '1';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '1';
WAIT;
END PROCESS t_prcs_C_0;

-- DVI
t_prcs_DVI: PROCESS
BEGIN
	DVI <= '0';
	WAIT FOR 250000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 2400000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
WAIT;
END PROCESS t_prcs_DVI;
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	A(15) <= '0';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	A(14) <= '0';
	WAIT FOR 2700000 ps;
	A(14) <= '1';
	WAIT FOR 2500000 ps;
	A(14) <= '0';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	A(13) <= '1';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	A(12) <= '0';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '1';
	WAIT FOR 2700000 ps;
	A(11) <= '0';
	WAIT FOR 2500000 ps;
	A(11) <= '1';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '1';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '0';
	WAIT FOR 2700000 ps;
	A(8) <= '1';
	WAIT FOR 2500000 ps;
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
	WAIT FOR 2700000 ps;
	A(7) <= '1';
	WAIT FOR 2500000 ps;
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '1';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 2700000 ps;
	A(2) <= '1';
	WAIT FOR 2500000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
	WAIT FOR 2700000 ps;
	A(1) <= '0';
	WAIT FOR 2500000 ps;
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
	WAIT FOR 2700000 ps;
	A(0) <= '0';
	WAIT FOR 2500000 ps;
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
END StudentDesign_arch;
