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
-- Generated on "02/11/2019 18:23:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comp_8bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comp_8bit_vhd_vec_tst IS
END comp_8bit_vhd_vec_tst;
ARCHITECTURE comp_8bit_arch OF comp_8bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL E : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL L : STD_LOGIC;
COMPONENT comp_8bit
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	E : OUT STD_LOGIC;
	G : OUT STD_LOGIC;
	L : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : comp_8bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	E => E,
	G => G,
	L => L
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
	WAIT FOR 125000 ps;
	A(7) <= '1';
	WAIT FOR 62500 ps;
	A(7) <= '0';
	WAIT FOR 62500 ps;
	A(7) <= '1';
	WAIT FOR 62500 ps;
	A(7) <= '0';
	WAIT FOR 62500 ps;
	A(7) <= '1';
	WAIT FOR 125000 ps;
	A(7) <= '0';
	WAIT FOR 62500 ps;
	A(7) <= '1';
	WAIT FOR 62500 ps;
	A(7) <= '0';
	WAIT FOR 62500 ps;
	A(7) <= '1';
	WAIT FOR 62500 ps;
	A(7) <= '0';
	WAIT FOR 62500 ps;
	A(7) <= '1';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '1';
	WAIT FOR 125000 ps;
	A(6) <= '0';
	WAIT FOR 62500 ps;
	A(6) <= '1';
	WAIT FOR 62500 ps;
	A(6) <= '0';
	WAIT FOR 375000 ps;
	A(6) <= '1';
	WAIT FOR 125000 ps;
	A(6) <= '0';
	WAIT FOR 62500 ps;
	A(6) <= '1';
	WAIT FOR 62500 ps;
	A(6) <= '0';
	WAIT FOR 62500 ps;
	A(6) <= '1';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '1';
	WAIT FOR 250000 ps;
	A(5) <= '0';
	WAIT FOR 187500 ps;
	A(5) <= '1';
	WAIT FOR 62500 ps;
	A(5) <= '0';
	WAIT FOR 125000 ps;
	A(5) <= '1';
	WAIT FOR 125000 ps;
	A(5) <= '0';
	WAIT FOR 62500 ps;
	A(5) <= '1';
	WAIT FOR 62500 ps;
	A(5) <= '0';
	WAIT FOR 62500 ps;
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 62500 ps;
	A(4) <= '1';
	WAIT FOR 62500 ps;
	A(4) <= '0';
	WAIT FOR 62500 ps;
	A(4) <= '1';
	WAIT FOR 125000 ps;
	A(4) <= '0';
	WAIT FOR 62500 ps;
	A(4) <= '1';
	WAIT FOR 62500 ps;
	A(4) <= '0';
	WAIT FOR 250000 ps;
	A(4) <= '1';
	WAIT FOR 62500 ps;
	A(4) <= '0';
	WAIT FOR 62500 ps;
	A(4) <= '1';
	WAIT FOR 125000 ps;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 187500 ps;
	A(3) <= '1';
	WAIT FOR 125000 ps;
	A(3) <= '0';
	WAIT FOR 62500 ps;
	A(3) <= '1';
	WAIT FOR 62500 ps;
	A(3) <= '0';
	WAIT FOR 250000 ps;
	A(3) <= '1';
	WAIT FOR 125000 ps;
	A(3) <= '0';
	WAIT FOR 62500 ps;
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 62500 ps;
	A(2) <= '1';
	WAIT FOR 125000 ps;
	A(2) <= '0';
	WAIT FOR 125000 ps;
	A(2) <= '1';
	WAIT FOR 62500 ps;
	A(2) <= '0';
	WAIT FOR 62500 ps;
	A(2) <= '1';
	WAIT FOR 250000 ps;
	A(2) <= '0';
	WAIT FOR 125000 ps;
	A(2) <= '1';
	WAIT FOR 62500 ps;
	A(2) <= '0';
	WAIT FOR 62500 ps;
	A(2) <= '1';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '1';
	WAIT FOR 62500 ps;
	A(1) <= '0';
	WAIT FOR 187500 ps;
	A(1) <= '1';
	WAIT FOR 250000 ps;
	A(1) <= '0';
	WAIT FOR 312500 ps;
	A(1) <= '1';
	WAIT FOR 125000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 125000 ps;
	A(0) <= '1';
	WAIT FOR 62500 ps;
	A(0) <= '0';
	WAIT FOR 125000 ps;
	A(0) <= '1';
	WAIT FOR 125000 ps;
	A(0) <= '0';
	WAIT FOR 62500 ps;
	A(0) <= '1';
	WAIT FOR 187500 ps;
	A(0) <= '0';
	WAIT FOR 62500 ps;
	A(0) <= '1';
	WAIT FOR 62500 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '1';
	WAIT FOR 62500 ps;
	B(7) <= '0';
	WAIT FOR 187500 ps;
	B(7) <= '1';
	WAIT FOR 62500 ps;
	B(7) <= '0';
	WAIT FOR 125000 ps;
	B(7) <= '1';
	WAIT FOR 62500 ps;
	B(7) <= '0';
	WAIT FOR 437500 ps;
	B(7) <= '1';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '1';
	WAIT FOR 125000 ps;
	B(6) <= '0';
	WAIT FOR 62500 ps;
	B(6) <= '1';
	WAIT FOR 62500 ps;
	B(6) <= '0';
	WAIT FOR 62500 ps;
	B(6) <= '1';
	WAIT FOR 187500 ps;
	B(6) <= '0';
	WAIT FOR 62500 ps;
	B(6) <= '1';
	WAIT FOR 62500 ps;
	B(6) <= '0';
	WAIT FOR 62500 ps;
	B(6) <= '1';
	WAIT FOR 187500 ps;
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
	WAIT FOR 125000 ps;
	B(5) <= '1';
	WAIT FOR 125000 ps;
	B(5) <= '0';
	WAIT FOR 125000 ps;
	B(5) <= '1';
	WAIT FOR 62500 ps;
	B(5) <= '0';
	WAIT FOR 62500 ps;
	B(5) <= '1';
	WAIT FOR 187500 ps;
	B(5) <= '0';
	WAIT FOR 125000 ps;
	B(5) <= '1';
	WAIT FOR 125000 ps;
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '1';
	WAIT FOR 187500 ps;
	B(4) <= '0';
	WAIT FOR 125000 ps;
	B(4) <= '1';
	WAIT FOR 62500 ps;
	B(4) <= '0';
	WAIT FOR 62500 ps;
	B(4) <= '1';
	WAIT FOR 125000 ps;
	B(4) <= '0';
	WAIT FOR 62500 ps;
	B(4) <= '1';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '1';
	WAIT FOR 125000 ps;
	B(3) <= '0';
	WAIT FOR 62500 ps;
	B(3) <= '1';
	WAIT FOR 62500 ps;
	B(3) <= '0';
	WAIT FOR 62500 ps;
	B(3) <= '1';
	WAIT FOR 125000 ps;
	B(3) <= '0';
	WAIT FOR 125000 ps;
	B(3) <= '1';
	WAIT FOR 125000 ps;
	B(3) <= '0';
	WAIT FOR 250000 ps;
	B(3) <= '1';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '1';
	WAIT FOR 62500 ps;
	B(2) <= '0';
	WAIT FOR 187500 ps;
	B(2) <= '1';
	WAIT FOR 62500 ps;
	B(2) <= '0';
	WAIT FOR 62500 ps;
	B(2) <= '1';
	WAIT FOR 62500 ps;
	B(2) <= '0';
	WAIT FOR 62500 ps;
	B(2) <= '1';
	WAIT FOR 187500 ps;
	B(2) <= '0';
	WAIT FOR 187500 ps;
	B(2) <= '1';
	WAIT FOR 62500 ps;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
	WAIT FOR 125000 ps;
	B(1) <= '0';
	WAIT FOR 187500 ps;
	B(1) <= '1';
	WAIT FOR 62500 ps;
	B(1) <= '0';
	WAIT FOR 125000 ps;
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
	WAIT FOR 187500 ps;
	B(0) <= '0';
	WAIT FOR 62500 ps;
	B(0) <= '1';
	WAIT FOR 62500 ps;
	B(0) <= '0';
	WAIT FOR 125000 ps;
	B(0) <= '1';
	WAIT FOR 375000 ps;
	B(0) <= '0';
	WAIT FOR 62500 ps;
	B(0) <= '1';
	WAIT FOR 62500 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
END comp_8bit_arch;
