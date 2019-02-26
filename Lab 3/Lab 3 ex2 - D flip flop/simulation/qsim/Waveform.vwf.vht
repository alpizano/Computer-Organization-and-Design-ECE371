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
-- Generated on "02/21/2019 01:38:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          d_ff
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY d_ff_vhd_vec_tst IS
END d_ff_vhd_vec_tst;
ARCHITECTURE d_ff_arch OF d_ff_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT d_ff
	PORT (
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : d_ff
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	D => D,
	Q => Q
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

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 187500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 250000 ps;
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 250000 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 312500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 187500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 187500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 812500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 125000 ps;
	D <= '0';
	WAIT FOR 250000 ps;
	D <= '1';
	WAIT FOR 250000 ps;
	D <= '0';
	WAIT FOR 125000 ps;
	D <= '1';
	WAIT FOR 62500 ps;
	D <= '0';
	WAIT FOR 62500 ps;
	D <= '1';
WAIT;
END PROCESS t_prcs_D;
END d_ff_arch;
