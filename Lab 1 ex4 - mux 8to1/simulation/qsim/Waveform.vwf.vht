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
-- Generated on "01/22/2019 00:01:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_8to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_8to1_vhd_vec_tst IS
END mux_8to1_vhd_vec_tst;
ARCHITECTURE mux_8to1_arch OF mux_8to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL D4 : STD_LOGIC;
SIGNAL D5 : STD_LOGIC;
SIGNAL D6 : STD_LOGIC;
SIGNAL D7 : STD_LOGIC;
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT mux_8to1
	PORT (
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	D4 : IN STD_LOGIC;
	D5 : IN STD_LOGIC;
	D6 : IN STD_LOGIC;
	D7 : IN STD_LOGIC;
	s0 : IN STD_LOGIC;
	s1 : IN STD_LOGIC;
	s2 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_8to1
	PORT MAP (
-- list connections between master ports and signals
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	D4 => D4,
	D5 => D5,
	D6 => D6,
	D7 => D7,
	s0 => s0,
	s1 => s1,
	s2 => s2,
	y => y
	);

-- s2
t_prcs_s2: PROCESS
BEGIN
LOOP
	s2 <= '0';
	WAIT FOR 1000000 ps;
	s2 <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s2;

-- s1
t_prcs_s1: PROCESS
BEGIN
LOOP
	s1 <= '0';
	WAIT FOR 500000 ps;
	s1 <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s1;

-- s0
t_prcs_s0: PROCESS
BEGIN
LOOP
	s0 <= '0';
	WAIT FOR 250000 ps;
	s0 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s0;

-- D7
t_prcs_D7: PROCESS
BEGIN
	D7 <= '0';
	WAIT FOR 125000 ps;
	D7 <= '1';
	WAIT FOR 62500 ps;
	D7 <= '0';
	WAIT FOR 125000 ps;
	D7 <= '1';
	WAIT FOR 125000 ps;
	D7 <= '0';
	WAIT FOR 375000 ps;
	D7 <= '1';
	WAIT FOR 125000 ps;
	D7 <= '0';
	WAIT FOR 62500 ps;
	D7 <= '1';
	WAIT FOR 437500 ps;
	D7 <= '0';
	WAIT FOR 62500 ps;
	D7 <= '1';
	WAIT FOR 62500 ps;
	D7 <= '0';
	WAIT FOR 62500 ps;
	D7 <= '1';
	WAIT FOR 62500 ps;
	D7 <= '0';
	WAIT FOR 187500 ps;
	D7 <= '1';
	WAIT FOR 62500 ps;
	D7 <= '0';
WAIT;
END PROCESS t_prcs_D7;

-- D6
t_prcs_D6: PROCESS
BEGIN
	D6 <= '1';
	WAIT FOR 125000 ps;
	D6 <= '0';
	WAIT FOR 62500 ps;
	D6 <= '1';
	WAIT FOR 250000 ps;
	D6 <= '0';
	WAIT FOR 125000 ps;
	D6 <= '1';
	WAIT FOR 187500 ps;
	D6 <= '0';
	WAIT FOR 62500 ps;
	D6 <= '1';
	WAIT FOR 187500 ps;
	D6 <= '0';
	WAIT FOR 312500 ps;
	D6 <= '1';
	WAIT FOR 62500 ps;
	D6 <= '0';
	WAIT FOR 62500 ps;
	D6 <= '1';
	WAIT FOR 62500 ps;
	D6 <= '0';
	WAIT FOR 125000 ps;
	D6 <= '1';
	WAIT FOR 187500 ps;
	D6 <= '0';
	WAIT FOR 62500 ps;
	D6 <= '1';
WAIT;
END PROCESS t_prcs_D6;

-- D5
t_prcs_D5: PROCESS
BEGIN
	D5 <= '1';
	WAIT FOR 125000 ps;
	D5 <= '0';
	WAIT FOR 62500 ps;
	D5 <= '1';
	WAIT FOR 250000 ps;
	D5 <= '0';
	WAIT FOR 62500 ps;
	D5 <= '1';
	WAIT FOR 187500 ps;
	D5 <= '0';
	WAIT FOR 187500 ps;
	D5 <= '1';
	WAIT FOR 62500 ps;
	D5 <= '0';
	WAIT FOR 125000 ps;
	D5 <= '1';
	WAIT FOR 125000 ps;
	D5 <= '0';
	WAIT FOR 187500 ps;
	D5 <= '1';
	WAIT FOR 62500 ps;
	D5 <= '0';
	WAIT FOR 62500 ps;
	D5 <= '1';
	WAIT FOR 125000 ps;
	D5 <= '0';
	WAIT FOR 125000 ps;
	D5 <= '1';
	WAIT FOR 62500 ps;
	D5 <= '0';
	WAIT FOR 62500 ps;
	D5 <= '1';
	WAIT FOR 62500 ps;
	D5 <= '0';
WAIT;
END PROCESS t_prcs_D5;

-- D4
t_prcs_D4: PROCESS
BEGIN
	D4 <= '0';
	WAIT FOR 187500 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 62500 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 125000 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 125000 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 250000 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 187500 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 62500 ps;
	D4 <= '1';
	WAIT FOR 62500 ps;
	D4 <= '0';
	WAIT FOR 62500 ps;
	D4 <= '1';
	WAIT FOR 250000 ps;
	D4 <= '0';
	WAIT FOR 125000 ps;
	D4 <= '1';
WAIT;
END PROCESS t_prcs_D4;

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '1';
	WAIT FOR 62500 ps;
	D3 <= '0';
	WAIT FOR 62500 ps;
	D3 <= '1';
	WAIT FOR 62500 ps;
	D3 <= '0';
	WAIT FOR 125000 ps;
	D3 <= '1';
	WAIT FOR 125000 ps;
	D3 <= '0';
	WAIT FOR 312500 ps;
	D3 <= '1';
	WAIT FOR 62500 ps;
	D3 <= '0';
	WAIT FOR 187500 ps;
	D3 <= '1';
	WAIT FOR 250000 ps;
	D3 <= '0';
	WAIT FOR 62500 ps;
	D3 <= '1';
	WAIT FOR 62500 ps;
	D3 <= '0';
	WAIT FOR 62500 ps;
	D3 <= '1';
	WAIT FOR 62500 ps;
	D3 <= '0';
	WAIT FOR 62500 ps;
	D3 <= '1';
	WAIT FOR 125000 ps;
	D3 <= '0';
	WAIT FOR 125000 ps;
	D3 <= '1';
WAIT;
END PROCESS t_prcs_D3;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '0';
	WAIT FOR 125000 ps;
	D2 <= '1';
	WAIT FOR 62500 ps;
	D2 <= '0';
	WAIT FOR 125000 ps;
	D2 <= '1';
	WAIT FOR 62500 ps;
	D2 <= '0';
	WAIT FOR 187500 ps;
	D2 <= '1';
	WAIT FOR 312500 ps;
	D2 <= '0';
	WAIT FOR 62500 ps;
	D2 <= '1';
	WAIT FOR 312500 ps;
	D2 <= '0';
	WAIT FOR 312500 ps;
	D2 <= '1';
	WAIT FOR 125000 ps;
	D2 <= '0';
	WAIT FOR 125000 ps;
	D2 <= '1';
	WAIT FOR 62500 ps;
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
	WAIT FOR 125000 ps;
	D1 <= '1';
	WAIT FOR 62500 ps;
	D1 <= '0';
	WAIT FOR 125000 ps;
	D1 <= '1';
	WAIT FOR 125000 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 187500 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 62500 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 187500 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 125000 ps;
	D1 <= '0';
	WAIT FOR 125000 ps;
	D1 <= '1';
	WAIT FOR 62500 ps;
	D1 <= '0';
	WAIT FOR 250000 ps;
	D1 <= '1';
	WAIT FOR 187500 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
WAIT;
END PROCESS t_prcs_D1;

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
	WAIT FOR 125000 ps;
	D0 <= '0';
	WAIT FOR 250000 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 187500 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 250000 ps;
	D0 <= '1';
	WAIT FOR 125000 ps;
	D0 <= '0';
	WAIT FOR 187500 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 125000 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
WAIT;
END PROCESS t_prcs_D0;
END mux_8to1_arch;
