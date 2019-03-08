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
-- Generated on "03/07/2019 21:30:13"
                                                            
-- Vhdl Test Bench template for design  :  tbird_lights
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tbird_lights_vhd_tst IS
END tbird_lights_vhd_tst;
ARCHITECTURE tbird_lights_arch OF tbird_lights_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL LA : STD_LOGIC;
SIGNAL LB : STD_LOGIC;
SIGNAL LC : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL RA : STD_LOGIC;
SIGNAL RB : STD_LOGIC;
SIGNAL RC : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT tbird_lights
	PORT (
	CLK : IN STD_LOGIC;
	L : IN STD_LOGIC;
	LA : BUFFER STD_LOGIC;
	LB : BUFFER STD_LOGIC;
	LC : BUFFER STD_LOGIC;
	R : IN STD_LOGIC;
	RA : BUFFER STD_LOGIC;
	RB : BUFFER STD_LOGIC;
	RC : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	S : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tbird_lights
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	L => L,
	LA => LA,
	LB => LB,
	LC => LC,
	R => R,
	RA => RA,
	RB => RB,
	RC => RC,
	reset => reset,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
      reset <= '1' ; wait for 5 ns ;
		reset <= '0' ; wait for 5 ns ;
		L <= '0' ; wait for 10 ns ;
		L <= '1' ; wait for 10 ns ;
		L <= '1' ; wait for 10 ns ;
		L <= '0' ; wait for 10 ns ;
		L <= '1' ; wait for 10 ns ;
		L <= '0' ; wait for 10 ns ;
		L <= '0' ; wait for 10 ns ;
		L <= '1' ; wait for 10 ns ;
		L <= '1' ; wait for 10 ns ;
		L <= '0' ; wait for 10 ns ;     

		R <= '0' ; wait for 10 ns ;
		R <= '1' ; wait for 10 ns ;
		R <= '1' ; wait for 10 ns ;
		R <= '0' ; wait for 10 ns ;
		R <= '1' ; wait for 10 ns ;
		R <= '0' ; wait for 10 ns ;
		R <= '0' ; wait for 10 ns ;
		R <= '1' ; wait for 10 ns ;
		R <= '1' ; wait for 10 ns ;
		R <= '0' ; wait for 10 ns ; 

		S <= '0' ; wait for 10 ns ;
		S <= '1' ; wait for 10 ns ;
		S <= '1' ; wait for 10 ns ;
		S <= '0' ; wait for 10 ns ;
		S <= '1' ; wait for 10 ns ;
		S <= '0' ; wait for 10 ns ;
		S <= '0' ; wait for 10 ns ;
		S <= '1' ; wait for 10 ns ;
		S <= '1' ; wait for 10 ns ;
		S <= '0' ; wait for 10 ns ; 

		
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
		end loop;  
WAIT;                                                        
END PROCESS always;                                          
END tbird_lights_arch;
