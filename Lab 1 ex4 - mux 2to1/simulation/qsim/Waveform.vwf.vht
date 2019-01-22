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
-- Generated on "01/22/2019 00:07:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_2to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_2to1_vhd_vec_tst IS
END mux_2to1_vhd_vec_tst;
ARCHITECTURE mux_2to1_arch OF mux_2to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT mux_2to1
	PORT (
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	s : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_2to1
	PORT MAP (
-- list connections between master ports and signals
	D0 => D0,
	D1 => D1,
	s => s,
	y => y
	);

-- s
t_prcs_s: PROCESS
BEGIN
LOOP
	s <= '0';
	WAIT FOR 500000 ps;
	s <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 62500 ps;
	D1 <= '0';
	WAIT FOR 250000 ps;
	D1 <= '1';
	WAIT FOR 62500 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 125000 ps;
	D1 <= '0';
	WAIT FOR 62500 ps;
	D1 <= '1';
	WAIT FOR 250000 ps;
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '1';
	WAIT FOR 375000 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
	WAIT FOR 62500 ps;
	D0 <= '0';
	WAIT FOR 125000 ps;
	D0 <= '1';
	WAIT FOR 250000 ps;
	D0 <= '0';
	WAIT FOR 62500 ps;
	D0 <= '1';
WAIT;
END PROCESS t_prcs_D0;
END mux_2to1_arch;
