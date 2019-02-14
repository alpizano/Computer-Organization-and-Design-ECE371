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
-- Generated on "02/13/2019 00:03:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          rotator_4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rotator_4bit_vhd_vec_tst IS
END rotator_4bit_vhd_vec_tst;
ARCHITECTURE rotator_4bit_arch OF rotator_4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL L : STD_LOGIC;
SIGNAL shift : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT rotator_4bit
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	L : IN STD_LOGIC;
	shift : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : rotator_4bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	L => L,
	shift => shift,
	Y => Y
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
LOOP
	A(3) <= '0';
	WAIT FOR 500000 ps;
	A(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 250000 ps;
	A(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 125000 ps;
	A(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 62500 ps;
	A(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;

-- L
t_prcs_L: PROCESS
BEGIN
	L <= '1';
	WAIT FOR 62500 ps;
	L <= '0';
	WAIT FOR 125000 ps;
	L <= '1';
	WAIT FOR 250000 ps;
	L <= '0';
	WAIT FOR 62500 ps;
	L <= '1';
	WAIT FOR 125000 ps;
	L <= '0';
	WAIT FOR 62500 ps;
	L <= '1';
	WAIT FOR 125000 ps;
	L <= '0';
	WAIT FOR 125000 ps;
	L <= '1';
WAIT;
END PROCESS t_prcs_L;
-- shift[1]
t_prcs_shift_1: PROCESS
BEGIN
	shift(1) <= '1';
	WAIT FOR 62500 ps;
	shift(1) <= '0';
	WAIT FOR 187500 ps;
	shift(1) <= '1';
	WAIT FOR 62500 ps;
	shift(1) <= '0';
	WAIT FOR 312500 ps;
	shift(1) <= '1';
WAIT;
END PROCESS t_prcs_shift_1;
-- shift[0]
t_prcs_shift_0: PROCESS
BEGIN
	shift(0) <= '0';
	WAIT FOR 62500 ps;
	shift(0) <= '1';
	WAIT FOR 62500 ps;
	shift(0) <= '0';
	WAIT FOR 62500 ps;
	shift(0) <= '1';
	WAIT FOR 62500 ps;
	shift(0) <= '0';
	WAIT FOR 62500 ps;
	shift(0) <= '1';
	WAIT FOR 250000 ps;
	shift(0) <= '0';
	WAIT FOR 187500 ps;
	shift(0) <= '1';
	WAIT FOR 62500 ps;
	shift(0) <= '0';
WAIT;
END PROCESS t_prcs_shift_0;
END rotator_4bit_arch;
