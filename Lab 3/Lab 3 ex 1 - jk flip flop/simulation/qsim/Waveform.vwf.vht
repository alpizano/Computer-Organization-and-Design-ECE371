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
-- Generated on "02/21/2019 19:05:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          jk_ff
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY jk_ff_vhd_vec_tst IS
END jk_ff_vhd_vec_tst;
ARCHITECTURE jk_ff_arch OF jk_ff_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL jk : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL q : STD_LOGIC;
SIGNAL qbar : STD_LOGIC;
COMPONENT jk_ff
	PORT (
	clk : IN STD_LOGIC;
	jk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	q : OUT STD_LOGIC;
	qbar : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jk_ff
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	jk => jk,
	q => q,
	qbar => qbar
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 62500 ps;
	FOR i IN 1 TO 7
	LOOP
		clk <= '0';
		WAIT FOR 62500 ps;
		clk <= '1';
		WAIT FOR 62500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- jk[1]
t_prcs_jk_1: PROCESS
BEGIN
	jk(1) <= '1';
	WAIT FOR 62500 ps;
	jk(1) <= '0';
	WAIT FOR 62500 ps;
	jk(1) <= '1';
	WAIT FOR 62500 ps;
	jk(1) <= '0';
	WAIT FOR 437500 ps;
	jk(1) <= '1';
	WAIT FOR 62500 ps;
	jk(1) <= '0';
	WAIT FOR 125000 ps;
	jk(1) <= '1';
	WAIT FOR 62500 ps;
	jk(1) <= '0';
WAIT;
END PROCESS t_prcs_jk_1;
-- jk[0]
t_prcs_jk_0: PROCESS
BEGIN
	jk(0) <= '1';
	WAIT FOR 250000 ps;
	jk(0) <= '0';
	WAIT FOR 125000 ps;
	jk(0) <= '1';
	WAIT FOR 62500 ps;
	jk(0) <= '0';
	WAIT FOR 62500 ps;
	jk(0) <= '1';
	WAIT FOR 187500 ps;
	jk(0) <= '0';
	WAIT FOR 125000 ps;
	jk(0) <= '1';
	WAIT FOR 125000 ps;
	jk(0) <= '0';
WAIT;
END PROCESS t_prcs_jk_0;
END jk_ff_arch;
