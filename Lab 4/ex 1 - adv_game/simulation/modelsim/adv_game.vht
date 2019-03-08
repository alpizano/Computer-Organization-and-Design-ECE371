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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/07/2019 19:21:50"
                                                            
-- Vhdl Test Bench template for design  :  adv_game
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY adv_game_vhd_tst IS
END adv_game_vhd_tst;
ARCHITECTURE adv_game_arch OF adv_game_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL n : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL sw : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL win : STD_LOGIC;
COMPONENT adv_game
	PORT (
	clk : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	e : IN STD_LOGIC;
	n : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	s : IN STD_LOGIC;
	sw : OUT STD_LOGIC;
	w : IN STD_LOGIC;
	win : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : adv_game
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	e => e,
	n => n,
	reset => reset,
	s => s,
	sw => sw,
	w => w,
	win => win
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
      reset <= '1' ; wait for 5 ns ;
		reset <= '0' ; wait for 5 ns ;
		n <= '0' ; wait for 10 ns ;
		n <= '1' ; wait for 10 ns ;
		n <= '1' ; wait for 10 ns ;
		n <= '0' ; wait for 10 ns ;
		n <= '1' ; wait for 10 ns ;
		n <= '0' ; wait for 10 ns ;
		n <= '0' ; wait for 10 ns ;
		n <= '1' ; wait for 10 ns ;
		n <= '1' ; wait for 10 ns ;
		n <= '0' ; wait for 10 ns ;
		
		s <= '0' ; wait for 10 ns ;
		s <= '1' ; wait for 10 ns ;
		s <= '1' ; wait for 10 ns ;
		s <= '0' ; wait for 10 ns ;
		s <= '1' ; wait for 10 ns ;
		s <= '0' ; wait for 10 ns ;
		s <= '0' ; wait for 10 ns ;
		s <= '1' ; wait for 10 ns ;
		s <= '1' ; wait for 10 ns ;
		s <= '0' ; wait for 10 ns ;
		
		e <= '0' ; wait for 10 ns ;
		e <= '1' ; wait for 10 ns ;
		e <= '1' ; wait for 10 ns ;
		e <= '0' ; wait for 10 ns ;
		e <= '1' ; wait for 10 ns ;
		e <= '0' ; wait for 10 ns ;
		e <= '0' ; wait for 10 ns ;
		e <= '1' ; wait for 10 ns ;
		e <= '1' ; wait for 10 ns ;
		e <= '0' ; wait for 10 ns ;
		
		w <= '0' ; wait for 10 ns ;
		w <= '1' ; wait for 10 ns ;
		w <= '1' ; wait for 10 ns ;
		w <= '0' ; wait for 10 ns ;
		w <= '1' ; wait for 10 ns ;
		w <= '0' ; wait for 10 ns ;
		w <= '0' ; wait for 10 ns ;
		w <= '1' ; wait for 10 ns ;
		w <= '1' ; wait for 10 ns ;
		w <= '0' ; wait for 10 ns ;
		
		
		-- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
       for i in 1 to 10 loop
			clk <= '0'; wait for 5 ns ;
			clk <= '1'; wait for 5 ns ;
		end loop; -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END adv_game_arch;
