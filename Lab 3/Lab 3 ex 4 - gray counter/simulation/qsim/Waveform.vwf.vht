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
-- Generated on "02/21/2019 19:17:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gray_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gray_counter_vhd_vec_tst IS
END gray_counter_vhd_vec_tst;
ARCHITECTURE gray_counter_arch OF gray_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dout : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT gray_counter
	PORT (
	clk : IN STD_LOGIC;
	dout : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gray_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dout => dout,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 62500 ps;
	FOR i IN 1 TO 63
	LOOP
		clk <= '0';
		WAIT FOR 62500 ps;
		clk <= '1';
		WAIT FOR 62500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 250000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 625000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 250000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 500000 ps;
	reset <= '1';
	WAIT FOR 250000 ps;
	reset <= '0';
	WAIT FOR 125000 ps;
	reset <= '1';
	WAIT FOR 250000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 375000 ps;
	reset <= '0';
	WAIT FOR 500000 ps;
	reset <= '1';
	WAIT FOR 125000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 875000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 500000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END gray_counter_arch;
