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
-- Generated on "02/21/2019 01:11:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gen_shift_reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gen_shift_reg_vhd_vec_tst IS
END gen_shift_reg_vhd_vec_tst;
ARCHITECTURE gen_shift_reg_arch OF gen_shift_reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL Sin : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL Sout : STD_LOGIC;
COMPONENT gen_shift_reg
	PORT (
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	Sin : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	Sout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gen_shift_reg
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Q => Q,
	Sin => Sin,
	Sout => Sout
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 62500 ps;
	FOR i IN 1 TO 63
	LOOP
		CLK <= '0';
		WAIT FOR 62500 ps;
		CLK <= '1';
		WAIT FOR 62500 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- Sin
t_prcs_Sin: PROCESS
BEGIN
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 312500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 187500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 187500 ps;
	Sin <= '0';
	WAIT FOR 312500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 312500 ps;
	Sin <= '1';
	WAIT FOR 312500 ps;
	Sin <= '0';
	WAIT FOR 312500 ps;
	Sin <= '1';
	WAIT FOR 250000 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 437500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 125000 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 187500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 312500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 187500 ps;
	Sin <= '1';
	WAIT FOR 125000 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 125000 ps;
	Sin <= '0';
	WAIT FOR 187500 ps;
	Sin <= '1';
	WAIT FOR 187500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 250000 ps;
	Sin <= '1';
	WAIT FOR 187500 ps;
	Sin <= '0';
	WAIT FOR 375000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 125000 ps;
	Sin <= '1';
	WAIT FOR 62500 ps;
	Sin <= '0';
	WAIT FOR 62500 ps;
	Sin <= '1';
WAIT;
END PROCESS t_prcs_Sin;

-- Sin[0]
t_prcs_Sin_0: PROCESS
BEGIN
	Sin(0) <= '0';
WAIT;
END PROCESS t_prcs_Sin_0;
END gen_shift_reg_arch;
