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
-- Generated on "02/21/2019 19:13:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          johnson_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY johnson_nbit_vhd_vec_tst IS
END johnson_nbit_vhd_vec_tst;
ARCHITECTURE johnson_nbit_arch OF johnson_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL Qout : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT johnson_nbit
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	Qout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : johnson_nbit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	Qout => Qout
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

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
	WAIT FOR 625000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 125000 ps;
	clr <= '1';
	WAIT FOR 750000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 250000 ps;
	clr <= '1';
	WAIT FOR 125000 ps;
	clr <= '0';
	WAIT FOR 625000 ps;
	clr <= '1';
	WAIT FOR 250000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
END johnson_nbit_arch;
