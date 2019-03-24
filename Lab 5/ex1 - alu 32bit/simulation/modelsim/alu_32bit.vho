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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/23/2019 19:52:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_32bit IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUControl : IN std_logic_vector(1 DOWNTO 0);
	Result : BUFFER std_logic_vector(31 DOWNTO 0);
	ALUFlags : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END alu_32bit;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFlags[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFlags[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFlags[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFlags[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUControl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUFlags : std_logic_vector(3 DOWNTO 0);
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \Result[16]~output_o\ : std_logic;
SIGNAL \Result[17]~output_o\ : std_logic;
SIGNAL \Result[18]~output_o\ : std_logic;
SIGNAL \Result[19]~output_o\ : std_logic;
SIGNAL \Result[20]~output_o\ : std_logic;
SIGNAL \Result[21]~output_o\ : std_logic;
SIGNAL \Result[22]~output_o\ : std_logic;
SIGNAL \Result[23]~output_o\ : std_logic;
SIGNAL \Result[24]~output_o\ : std_logic;
SIGNAL \Result[25]~output_o\ : std_logic;
SIGNAL \Result[26]~output_o\ : std_logic;
SIGNAL \Result[27]~output_o\ : std_logic;
SIGNAL \Result[28]~output_o\ : std_logic;
SIGNAL \Result[29]~output_o\ : std_logic;
SIGNAL \Result[30]~output_o\ : std_logic;
SIGNAL \Result[31]~output_o\ : std_logic;
SIGNAL \ALUFlags[0]~output_o\ : std_logic;
SIGNAL \ALUFlags[1]~output_o\ : std_logic;
SIGNAL \ALUFlags[2]~output_o\ : std_logic;
SIGNAL \ALUFlags[3]~output_o\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALU_0|Mux0~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALU_0|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_1|Mux0~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ALU_1|Mux0~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_1|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_2|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_2|Mux0~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ALU_2|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ALU_3|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_3|Mux0~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ALU_3|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_4|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_4|Mux0~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ALU_4|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_5|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_5|Mux0~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ALU_5|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_6|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_6|Mux0~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ALU_6|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_7|Mux0~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU_7|Mux0~1_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \ALU_7|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \ALU_8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_8|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \ALU_9|Mux0~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \ALU_9|Mux0~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \ALU_9|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_10|Mux0~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ALU_10|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_10|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \ALU_11|Mux0~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ALU_11|Mux0~1_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \ALU_11|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \ALU_12|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_12|Mux0~1_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ALU_12|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \ALU_13|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_13|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_13|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \ALU_14|Mux0~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \ALU_14|Mux0~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ALU_14|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_15|Mux0~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ALU_15|Mux0~1_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \ALU_15|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_16|Mux0~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \ALU_16|Mux0~1_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ALU_16|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_17|Mux0~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ALU_17|Mux0~1_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \ALU_17|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_18|Mux0~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ALU_18|Mux0~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \ALU_18|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_19|Mux0~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ALU_19|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_19|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \ALU_20|Mux0~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ALU_20|Mux0~1_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \ALU_20|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_21|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_21|Mux0~1_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \ALU_21|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_22|Mux0~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ALU_22|Mux0~1_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ALU_22|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_23|Mux0~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \ALU_23|Mux0~1_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \ALU_23|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_24|Mux0~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \ALU_24|Mux0~1_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \ALU_24|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ALU_25|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_25|Mux0~1_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \ALU_25|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_26|Mux0~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \ALU_26|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_26|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \ALU_27|Mux0~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ALU_27|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_27|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \ALU_28|Mux0~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ALU_28|Mux0~1_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \ALU_28|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_29|Mux0~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ALU_29|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_29|FA|Cout~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \ALU_30|Mux0~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \ALU_30|Mux0~1_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \XNOR_ans~0_combout\ : std_logic;
SIGNAL \ALU_31|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_30|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALU_31|Mux0~1_combout\ : std_logic;
SIGNAL \XOR_ans~0_combout\ : std_logic;
SIGNAL \ALUFlags~0_combout\ : std_logic;
SIGNAL \ALU_31|FA|Cout~0_combout\ : std_logic;
SIGNAL \ALUFlags~1_combout\ : std_logic;
SIGNAL \ALUFlags~4_combout\ : std_logic;
SIGNAL \ALUFlags~5_combout\ : std_logic;
SIGNAL \ALUFlags~6_combout\ : std_logic;
SIGNAL \ALUFlags~2_combout\ : std_logic;
SIGNAL \ALUFlags~3_combout\ : std_logic;
SIGNAL \ALUFlags~7_combout\ : std_logic;
SIGNAL \ALUFlags~8_combout\ : std_logic;
SIGNAL \ALUFlags~10_combout\ : std_logic;
SIGNAL \ALUFlags~11_combout\ : std_logic;
SIGNAL \ALUFlags~9_combout\ : std_logic;
SIGNAL \ALUFlags~12_combout\ : std_logic;
SIGNAL \ALT_INV_ALUFlags~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALUControl <= ALUControl;
Result <= ww_Result;
ALUFlags <= ww_ALUFlags;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ALUFlags~12_combout\ <= NOT \ALUFlags~12_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N9
\Result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_5|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_6|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_7|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_8|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_9|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\Result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_10|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_11|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_12|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_13|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_14|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_15|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_16|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_17|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_18|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[18]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_19|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_20|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[20]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_21|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[21]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_22|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[22]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_23|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[23]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_24|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[24]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_25|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[25]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_26|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[26]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_27|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[27]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_28|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[28]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_29|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[29]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_30|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[30]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_31|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Result[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\ALUFlags[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFlags~0_combout\,
	devoe => ww_devoe,
	o => \ALUFlags[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ALUFlags[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFlags~1_combout\,
	devoe => ww_devoe,
	o => \ALUFlags[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\ALUFlags[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ALUFlags~12_combout\,
	devoe => ww_devoe,
	o => \ALUFlags[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\ALUFlags[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_31|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUFlags[3]~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\ALUControl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\ALUControl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X58_Y69_N0
\ALU_0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_0|Mux0~0_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\ALUControl[0]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\A[0]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ALU_0|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X58_Y69_N26
\ALU_0|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_0|FA|Cout~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\ALUControl[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \ALU_0|FA|Cout~0_combout\);

-- Location: LCCOMB_X58_Y69_N20
\ALU_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_1|Mux0~0_combout\ = \A[1]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_0|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \ALU_0|FA|Cout~0_combout\,
	combout => \ALU_1|Mux0~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X58_Y69_N6
\ALU_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_1|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_1|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[1]~input_o\))) # (!\ALU_1|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[1]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\ALU_1|Mux0~0_combout\ 
-- $ (\ALUControl[0]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_1|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ALU_1|Mux0~1_combout\);

-- Location: IOIBUF_X52_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X58_Y69_N24
\ALU_1|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_1|FA|Cout~0_combout\ = (\ALU_0|FA|Cout~0_combout\ & ((\A[1]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[1]~input_o\)))) # (!\ALU_0|FA|Cout~0_combout\ & (\A[1]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_0|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ALU_1|FA|Cout~0_combout\);

-- Location: LCCOMB_X58_Y69_N18
\ALU_2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_2|Mux0~0_combout\ = \A[2]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_1|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \ALU_1|FA|Cout~0_combout\,
	combout => \ALU_2|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y69_N4
\ALU_2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_2|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[2]~input_o\) # (\ALU_2|Mux0~0_combout\))) # (!\ALUControl[0]~input_o\ & (\B[2]~input_o\ & \ALU_2|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\B[2]~input_o\ $ (\ALU_2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_2|Mux0~0_combout\,
	combout => \ALU_2|Mux0~1_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X58_Y69_N14
\ALU_2|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_2|FA|Cout~0_combout\ = (\A[2]~input_o\ & ((\ALU_1|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\ALU_1|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_1|FA|Cout~0_combout\,
	combout => \ALU_2|FA|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X58_Y69_N8
\ALU_3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_3|Mux0~0_combout\ = \A[3]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_2|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \ALU_2|FA|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \ALU_3|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y69_N10
\ALU_3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_3|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[3]~input_o\ & ((\ALUControl[0]~input_o\) # (\ALU_3|Mux0~0_combout\))) # (!\B[3]~input_o\ & (\ALUControl[0]~input_o\ & \ALU_3|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[3]~input_o\ $ 
-- (\ALUControl[0]~input_o\ $ (\ALU_3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_3|Mux0~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_3|Mux0~1_combout\);

-- Location: IOIBUF_X58_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X58_Y69_N28
\ALU_3|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_3|FA|Cout~0_combout\ = (\ALU_2|FA|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\ALU_2|FA|Cout~0_combout\ & (\A[3]~input_o\ & (\B[3]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_2|FA|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \ALU_3|FA|Cout~0_combout\);

-- Location: LCCOMB_X60_Y69_N24
\ALU_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_4|Mux0~0_combout\ = \A[4]~input_o\ $ (((\ALU_3|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ALU_3|FA|Cout~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_4|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y69_N30
\ALU_4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_4|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[4]~input_o\ & ((\ALUControl[0]~input_o\) # (\ALU_4|Mux0~0_combout\))) # (!\B[4]~input_o\ & (\ALUControl[0]~input_o\ & \ALU_4|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[4]~input_o\ $ 
-- (\ALUControl[0]~input_o\ $ (\ALU_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_4|Mux0~0_combout\,
	combout => \ALU_4|Mux0~1_combout\);

-- Location: IOIBUF_X27_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X58_Y69_N16
\ALU_4|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_4|FA|Cout~0_combout\ = (\A[4]~input_o\ & ((\ALU_3|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\ALU_3|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_3|FA|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ALU_4|FA|Cout~0_combout\);

-- Location: LCCOMB_X34_Y69_N8
\ALU_5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_5|Mux0~0_combout\ = \A[5]~input_o\ $ (((\ALU_4|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ALU_4|FA|Cout~0_combout\,
	datac => \ALUControl[1]~input_o\,
	combout => \ALU_5|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y69_N2
\ALU_5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_5|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[5]~input_o\ & ((\ALU_5|Mux0~0_combout\) # (\ALUControl[0]~input_o\))) # (!\B[5]~input_o\ & (\ALU_5|Mux0~0_combout\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[5]~input_o\ $ 
-- (\ALU_5|Mux0~0_combout\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ALU_5|Mux0~0_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_5|Mux0~1_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X34_Y69_N12
\ALU_5|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_5|FA|Cout~0_combout\ = (\A[5]~input_o\ & ((\ALU_4|FA|Cout~0_combout\) # (\B[5]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\A[5]~input_o\ & (\ALU_4|FA|Cout~0_combout\ & (\B[5]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ALU_4|FA|Cout~0_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_5|FA|Cout~0_combout\);

-- Location: LCCOMB_X34_Y69_N22
\ALU_6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_6|Mux0~0_combout\ = \A[6]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_5|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \ALU_5|FA|Cout~0_combout\,
	combout => \ALU_6|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y69_N16
\ALU_6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_6|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[6]~input_o\ & ((\ALU_6|Mux0~0_combout\) # (\ALUControl[0]~input_o\))) # (!\B[6]~input_o\ & (\ALU_6|Mux0~0_combout\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[6]~input_o\ $ 
-- (\ALU_6|Mux0~0_combout\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALU_6|Mux0~0_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_6|Mux0~1_combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X34_Y69_N10
\ALU_6|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_6|FA|Cout~0_combout\ = (\ALU_5|FA|Cout~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\ALU_5|FA|Cout~0_combout\ & (\A[6]~input_o\ & (\B[6]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_5|FA|Cout~0_combout\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_6|FA|Cout~0_combout\);

-- Location: LCCOMB_X34_Y69_N28
\ALU_7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_7|Mux0~0_combout\ = \A[7]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_6|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALU_6|FA|Cout~0_combout\,
	combout => \ALU_7|Mux0~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X34_Y69_N6
\ALU_7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_7|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_7|Mux0~0_combout\ & ((\B[7]~input_o\) # (\ALUControl[0]~input_o\))) # (!\ALU_7|Mux0~0_combout\ & (\B[7]~input_o\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\ALU_7|Mux0~0_combout\ 
-- $ (\B[7]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_7|Mux0~0_combout\,
	datac => \B[7]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_7|Mux0~1_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X34_Y69_N0
\ALU_7|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_7|FA|Cout~0_combout\ = (\ALU_6|FA|Cout~0_combout\ & ((\A[7]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[7]~input_o\)))) # (!\ALU_6|FA|Cout~0_combout\ & (\A[7]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_6|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \ALU_7|FA|Cout~0_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X34_Y69_N18
\ALU_8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_8|Mux0~0_combout\ = \A[8]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_7|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_7|FA|Cout~0_combout\,
	datac => \A[8]~input_o\,
	combout => \ALU_8|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y69_N4
\ALU_8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_8|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[8]~input_o\ & ((\ALU_8|Mux0~0_combout\) # (\ALUControl[0]~input_o\))) # (!\B[8]~input_o\ & (\ALU_8|Mux0~0_combout\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[8]~input_o\ $ 
-- (\ALU_8|Mux0~0_combout\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \ALU_8|Mux0~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_8|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y69_N30
\ALU_8|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_8|FA|Cout~0_combout\ = (\ALU_7|FA|Cout~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\ALU_7|FA|Cout~0_combout\ & (\A[8]~input_o\ & (\B[8]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \ALU_7|FA|Cout~0_combout\,
	datac => \A[8]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_8|FA|Cout~0_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X34_Y69_N24
\ALU_9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_9|Mux0~0_combout\ = \A[9]~input_o\ $ (((\ALU_8|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_8|FA|Cout~0_combout\,
	datab => \A[9]~input_o\,
	datac => \ALUControl[1]~input_o\,
	combout => \ALU_9|Mux0~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X34_Y69_N26
\ALU_9|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_9|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_9|Mux0~0_combout\ & ((\B[9]~input_o\) # (\ALUControl[0]~input_o\))) # (!\ALU_9|Mux0~0_combout\ & (\B[9]~input_o\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\ALU_9|Mux0~0_combout\ 
-- $ (\B[9]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_9|Mux0~0_combout\,
	datac => \B[9]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_9|Mux0~1_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X34_Y69_N20
\ALU_9|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_9|FA|Cout~0_combout\ = (\ALU_8|FA|Cout~0_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\ALU_8|FA|Cout~0_combout\ & (\A[9]~input_o\ & (\B[9]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_8|FA|Cout~0_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \ALUControl[0]~input_o\,
	combout => \ALU_9|FA|Cout~0_combout\);

-- Location: LCCOMB_X48_Y69_N0
\ALU_10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_10|Mux0~0_combout\ = \A[10]~input_o\ $ (((\ALU_9|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \ALU_9|FA|Cout~0_combout\,
	datac => \ALUControl[1]~input_o\,
	combout => \ALU_10|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X48_Y69_N2
\ALU_10|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_10|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_10|Mux0~0_combout\) # (\B[10]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_10|Mux0~0_combout\ & \B[10]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_10|Mux0~0_combout\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALU_10|Mux0~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_10|Mux0~1_combout\);

-- Location: LCCOMB_X48_Y69_N20
\ALU_10|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_10|FA|Cout~0_combout\ = (\A[10]~input_o\ & ((\ALU_9|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[10]~input_o\)))) # (!\A[10]~input_o\ & (\ALU_9|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \ALU_9|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[10]~input_o\,
	combout => \ALU_10|FA|Cout~0_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X48_Y69_N22
\ALU_11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_11|Mux0~0_combout\ = \A[11]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_10|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_10|FA|Cout~0_combout\,
	datac => \A[11]~input_o\,
	combout => \ALU_11|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X48_Y69_N24
\ALU_11|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_11|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_11|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[11]~input_o\))) # (!\ALU_11|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[11]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_11|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_11|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[11]~input_o\,
	combout => \ALU_11|Mux0~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X48_Y69_N26
\ALU_11|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_11|FA|Cout~0_combout\ = (\A[11]~input_o\ & ((\ALU_10|FA|Cout~0_combout\) # (\B[11]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\A[11]~input_o\ & (\ALU_10|FA|Cout~0_combout\ & (\B[11]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_10|FA|Cout~0_combout\,
	combout => \ALU_11|FA|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X48_Y69_N12
\ALU_12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_12|Mux0~0_combout\ = \A[12]~input_o\ $ (((\ALU_11|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_11|FA|Cout~0_combout\,
	datab => \A[12]~input_o\,
	datac => \ALUControl[1]~input_o\,
	combout => \ALU_12|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y69_N14
\ALU_12|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_12|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[12]~input_o\ & ((\ALUControl[0]~input_o\) # (\ALU_12|Mux0~0_combout\))) # (!\B[12]~input_o\ & (\ALUControl[0]~input_o\ & \ALU_12|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[12]~input_o\ $ 
-- (\ALUControl[0]~input_o\ $ (\ALU_12|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[12]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_12|Mux0~0_combout\,
	combout => \ALU_12|Mux0~1_combout\);

-- Location: IOIBUF_X45_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X48_Y69_N8
\ALU_12|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_12|FA|Cout~0_combout\ = (\ALU_11|FA|Cout~0_combout\ & ((\A[12]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[12]~input_o\)))) # (!\ALU_11|FA|Cout~0_combout\ & (\A[12]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_11|FA|Cout~0_combout\,
	datab => \A[12]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \ALU_12|FA|Cout~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X48_Y69_N18
\ALU_13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_13|Mux0~0_combout\ = \A[13]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_12|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \ALU_12|FA|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \ALU_13|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y69_N28
\ALU_13|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_13|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[13]~input_o\) # (\ALU_13|Mux0~0_combout\))) # (!\ALUControl[0]~input_o\ & (\B[13]~input_o\ & \ALU_13|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\B[13]~input_o\ $ (\ALU_13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \ALU_13|Mux0~0_combout\,
	combout => \ALU_13|Mux0~1_combout\);

-- Location: LCCOMB_X48_Y69_N6
\ALU_13|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_13|FA|Cout~0_combout\ = (\ALU_12|FA|Cout~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\ALU_12|FA|Cout~0_combout\ & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \ALU_12|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \ALU_13|FA|Cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X60_Y69_N26
\ALU_14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_14|Mux0~0_combout\ = \A[14]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_13|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_13|FA|Cout~0_combout\,
	datad => \A[14]~input_o\,
	combout => \ALU_14|Mux0~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X60_Y69_N4
\ALU_14|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_14|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_14|Mux0~0_combout\) # (\B[14]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_14|Mux0~0_combout\ & \B[14]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_14|Mux0~0_combout\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_14|Mux0~0_combout\,
	datad => \B[14]~input_o\,
	combout => \ALU_14|Mux0~1_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X60_Y69_N6
\ALU_14|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_14|FA|Cout~0_combout\ = (\A[14]~input_o\ & ((\ALU_13|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\ALU_13|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \ALU_13|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[14]~input_o\,
	combout => \ALU_14|FA|Cout~0_combout\);

-- Location: LCCOMB_X60_Y69_N16
\ALU_15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_15|Mux0~0_combout\ = \A[15]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_14|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \ALU_14|FA|Cout~0_combout\,
	combout => \ALU_15|Mux0~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X60_Y69_N2
\ALU_15|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_15|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_15|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[15]~input_o\))) # (!\ALU_15|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[15]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_15|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_15|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \ALU_15|Mux0~1_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X60_Y69_N12
\ALU_15|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_15|FA|Cout~0_combout\ = (\ALU_14|FA|Cout~0_combout\ & ((\A[15]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[15]~input_o\)))) # (!\ALU_14|FA|Cout~0_combout\ & (\A[15]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_14|FA|Cout~0_combout\,
	datab => \A[15]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \ALU_15|FA|Cout~0_combout\);

-- Location: LCCOMB_X60_Y69_N30
\ALU_16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_16|Mux0~0_combout\ = \A[16]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_15|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \ALU_15|FA|Cout~0_combout\,
	combout => \ALU_16|Mux0~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X60_Y69_N8
\ALU_16|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_16|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_16|Mux0~0_combout\) # (\B[16]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_16|Mux0~0_combout\ & \B[16]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_16|Mux0~0_combout\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_16|Mux0~0_combout\,
	datad => \B[16]~input_o\,
	combout => \ALU_16|Mux0~1_combout\);

-- Location: IOIBUF_X56_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X60_Y69_N18
\ALU_16|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_16|FA|Cout~0_combout\ = (\ALU_15|FA|Cout~0_combout\ & ((\A[16]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[16]~input_o\)))) # (!\ALU_15|FA|Cout~0_combout\ & (\A[16]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_15|FA|Cout~0_combout\,
	datab => \A[16]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[16]~input_o\,
	combout => \ALU_16|FA|Cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N16
\ALU_17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_17|Mux0~0_combout\ = \A[17]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_16|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALU_16|FA|Cout~0_combout\,
	combout => \ALU_17|Mux0~0_combout\);

-- Location: IOIBUF_X65_Y0_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X61_Y1_N26
\ALU_17|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_17|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_17|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[17]~input_o\))) # (!\ALU_17|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[17]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_17|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_17|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[17]~input_o\,
	combout => \ALU_17|Mux0~1_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X61_Y1_N4
\ALU_17|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_17|FA|Cout~0_combout\ = (\A[17]~input_o\ & ((\ALU_16|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[17]~input_o\)))) # (!\A[17]~input_o\ & (\ALU_16|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_16|FA|Cout~0_combout\,
	datad => \B[17]~input_o\,
	combout => \ALU_17|FA|Cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N22
\ALU_18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_18|Mux0~0_combout\ = \A[18]~input_o\ $ (((\ALU_17|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \ALU_17|FA|Cout~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_18|Mux0~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X61_Y1_N24
\ALU_18|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_18|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_18|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[18]~input_o\))) # (!\ALU_18|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[18]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_18|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_18|Mux0~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ALU_18|Mux0~1_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X61_Y1_N18
\ALU_18|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_18|FA|Cout~0_combout\ = (\A[18]~input_o\ & ((\ALU_17|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[18]~input_o\)))) # (!\A[18]~input_o\ & (\ALU_17|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_17|FA|Cout~0_combout\,
	datad => \B[18]~input_o\,
	combout => \ALU_18|FA|Cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N12
\ALU_19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_19|Mux0~0_combout\ = \A[19]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_18|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[1]~input_o\,
	datac => \A[19]~input_o\,
	datad => \ALU_18|FA|Cout~0_combout\,
	combout => \ALU_19|Mux0~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X61_Y1_N30
\ALU_19|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_19|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_19|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[19]~input_o\))) # (!\ALU_19|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[19]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_19|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_19|Mux0~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \ALU_19|Mux0~1_combout\);

-- Location: LCCOMB_X61_Y1_N8
\ALU_19|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_19|FA|Cout~0_combout\ = (\A[19]~input_o\ & ((\ALU_18|FA|Cout~0_combout\) # (\B[19]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\A[19]~input_o\ & (\ALU_18|FA|Cout~0_combout\ & (\B[19]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_18|FA|Cout~0_combout\,
	combout => \ALU_19|FA|Cout~0_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X61_Y1_N10
\ALU_20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_20|Mux0~0_combout\ = \A[20]~input_o\ $ (((\ALU_19|FA|Cout~0_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_19|FA|Cout~0_combout\,
	datac => \A[20]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_20|Mux0~0_combout\);

-- Location: IOIBUF_X62_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X61_Y1_N28
\ALU_20|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_20|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_20|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[20]~input_o\))) # (!\ALU_20|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[20]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_20|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_20|Mux0~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_20|Mux0~1_combout\);

-- Location: IOIBUF_X65_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X61_Y1_N14
\ALU_20|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_20|FA|Cout~0_combout\ = (\A[20]~input_o\ & ((\ALU_19|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[20]~input_o\)))) # (!\A[20]~input_o\ & (\ALU_19|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \ALU_19|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \ALU_20|FA|Cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N0
\ALU_21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_21|Mux0~0_combout\ = \A[21]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_20|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALU_20|FA|Cout~0_combout\,
	combout => \ALU_21|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y1_N2
\ALU_21|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_21|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[21]~input_o\ & ((\ALUControl[0]~input_o\) # (\ALU_21|Mux0~0_combout\))) # (!\B[21]~input_o\ & (\ALUControl[0]~input_o\ & \ALU_21|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[21]~input_o\ $ 
-- (\ALUControl[0]~input_o\ $ (\ALU_21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_21|Mux0~0_combout\,
	combout => \ALU_21|Mux0~1_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X61_Y1_N20
\ALU_21|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_21|FA|Cout~0_combout\ = (\A[21]~input_o\ & ((\ALU_20|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[21]~input_o\)))) # (!\A[21]~input_o\ & (\ALU_20|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ALU_20|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[21]~input_o\,
	combout => \ALU_21|FA|Cout~0_combout\);

-- Location: LCCOMB_X75_Y69_N8
\ALU_22|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_22|Mux0~0_combout\ = \A[22]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_21|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \ALU_21|FA|Cout~0_combout\,
	combout => \ALU_22|Mux0~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X75_Y69_N18
\ALU_22|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_22|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_22|Mux0~0_combout\) # (\B[22]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_22|Mux0~0_combout\ & \B[22]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_22|Mux0~0_combout\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_22|Mux0~0_combout\,
	datad => \B[22]~input_o\,
	combout => \ALU_22|Mux0~1_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X75_Y69_N12
\ALU_22|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_22|FA|Cout~0_combout\ = (\ALU_21|FA|Cout~0_combout\ & ((\A[22]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[22]~input_o\)))) # (!\ALU_21|FA|Cout~0_combout\ & (\A[22]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_21|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \ALU_22|FA|Cout~0_combout\);

-- Location: LCCOMB_X75_Y69_N14
\ALU_23|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_23|Mux0~0_combout\ = \A[23]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_22|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[23]~input_o\,
	datad => \ALU_22|FA|Cout~0_combout\,
	combout => \ALU_23|Mux0~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X75_Y69_N0
\ALU_23|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_23|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_23|Mux0~0_combout\) # (\B[23]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_23|Mux0~0_combout\ & \B[23]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_23|Mux0~0_combout\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_23|Mux0~0_combout\,
	datad => \B[23]~input_o\,
	combout => \ALU_23|Mux0~1_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X75_Y69_N10
\ALU_23|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_23|FA|Cout~0_combout\ = (\ALU_22|FA|Cout~0_combout\ & ((\A[23]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[23]~input_o\)))) # (!\ALU_22|FA|Cout~0_combout\ & (\A[23]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_22|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \ALU_23|FA|Cout~0_combout\);

-- Location: LCCOMB_X75_Y69_N4
\ALU_24|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_24|Mux0~0_combout\ = \A[24]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_23|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \ALU_23|FA|Cout~0_combout\,
	combout => \ALU_24|Mux0~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X75_Y69_N6
\ALU_24|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_24|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_24|Mux0~0_combout\) # (\B[24]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_24|Mux0~0_combout\ & \B[24]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_24|Mux0~0_combout\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_24|Mux0~0_combout\,
	datad => \B[24]~input_o\,
	combout => \ALU_24|Mux0~1_combout\);

-- Location: IOIBUF_X79_Y73_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X75_Y69_N24
\ALU_24|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_24|FA|Cout~0_combout\ = (\ALU_23|FA|Cout~0_combout\ & ((\A[24]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[24]~input_o\)))) # (!\ALU_23|FA|Cout~0_combout\ & (\A[24]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_23|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ALU_24|FA|Cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X75_Y69_N26
\ALU_25|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_25|Mux0~0_combout\ = \A[25]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_24|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_24|FA|Cout~0_combout\,
	datad => \A[25]~input_o\,
	combout => \ALU_25|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y69_N20
\ALU_25|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_25|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[25]~input_o\) # (\ALU_25|Mux0~0_combout\))) # (!\ALUControl[0]~input_o\ & (\B[25]~input_o\ & \ALU_25|Mux0~0_combout\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\B[25]~input_o\ $ (\ALU_25|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[25]~input_o\,
	datad => \ALU_25|Mux0~0_combout\,
	combout => \ALU_25|Mux0~1_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X75_Y69_N30
\ALU_25|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_25|FA|Cout~0_combout\ = (\ALU_24|FA|Cout~0_combout\ & ((\A[25]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[25]~input_o\)))) # (!\ALU_24|FA|Cout~0_combout\ & (\A[25]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALU_24|FA|Cout~0_combout\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \ALU_25|FA|Cout~0_combout\);

-- Location: LCCOMB_X75_Y69_N16
\ALU_26|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_26|Mux0~0_combout\ = \A[26]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_25|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[26]~input_o\,
	datac => \ALU_25|FA|Cout~0_combout\,
	combout => \ALU_26|Mux0~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X75_Y69_N2
\ALU_26|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_26|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_26|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[26]~input_o\))) # (!\ALU_26|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[26]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_26|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_26|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[26]~input_o\,
	combout => \ALU_26|Mux0~1_combout\);

-- Location: LCCOMB_X75_Y69_N28
\ALU_26|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_26|FA|Cout~0_combout\ = (\ALU_25|FA|Cout~0_combout\ & ((\A[26]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[26]~input_o\)))) # (!\ALU_25|FA|Cout~0_combout\ & (\A[26]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_25|FA|Cout~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \ALU_26|FA|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X69_Y69_N8
\ALU_27|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_27|Mux0~0_combout\ = \A[27]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_26|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_26|FA|Cout~0_combout\,
	datad => \A[27]~input_o\,
	combout => \ALU_27|Mux0~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X69_Y69_N2
\ALU_27|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_27|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_27|Mux0~0_combout\) # (\B[27]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_27|Mux0~0_combout\ & \B[27]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_27|Mux0~0_combout\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALU_27|Mux0~0_combout\,
	datac => \B[27]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_27|Mux0~1_combout\);

-- Location: LCCOMB_X69_Y69_N4
\ALU_27|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_27|FA|Cout~0_combout\ = (\A[27]~input_o\ & ((\ALU_26|FA|Cout~0_combout\) # (\B[27]~input_o\ $ (\ALUControl[0]~input_o\)))) # (!\A[27]~input_o\ & (\ALU_26|FA|Cout~0_combout\ & (\B[27]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALU_26|FA|Cout~0_combout\,
	combout => \ALU_27|FA|Cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X69_Y69_N6
\ALU_28|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_28|Mux0~0_combout\ = \A[28]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_27|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \ALU_27|FA|Cout~0_combout\,
	datad => \A[28]~input_o\,
	combout => \ALU_28|Mux0~0_combout\);

-- Location: IOIBUF_X87_Y73_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X69_Y69_N0
\ALU_28|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_28|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_28|Mux0~0_combout\ & ((\B[28]~input_o\) # (\ALUControl[0]~input_o\))) # (!\ALU_28|Mux0~0_combout\ & (\B[28]~input_o\ & \ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_28|Mux0~0_combout\ $ (\B[28]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_28|Mux0~0_combout\,
	datab => \B[28]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_28|Mux0~1_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X69_Y69_N18
\ALU_28|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_28|FA|Cout~0_combout\ = (\A[28]~input_o\ & ((\ALU_27|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\ALU_27|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \ALU_27|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ALU_28|FA|Cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N28
\ALU_29|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_29|Mux0~0_combout\ = \A[29]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_28|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \ALU_28|FA|Cout~0_combout\,
	combout => \ALU_29|Mux0~0_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X69_Y69_N14
\ALU_29|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_29|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALU_29|Mux0~0_combout\ & ((\ALUControl[0]~input_o\) # (\B[29]~input_o\))) # (!\ALU_29|Mux0~0_combout\ & (\ALUControl[0]~input_o\ & \B[29]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALU_29|Mux0~0_combout\ $ (\ALUControl[0]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_29|Mux0~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_29|Mux0~1_combout\);

-- Location: LCCOMB_X69_Y69_N24
\ALU_29|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_29|FA|Cout~0_combout\ = (\ALU_28|FA|Cout~0_combout\ & ((\A[29]~input_o\) # (\ALUControl[0]~input_o\ $ (\B[29]~input_o\)))) # (!\ALU_28|FA|Cout~0_combout\ & (\A[29]~input_o\ & (\ALUControl[0]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALU_28|FA|Cout~0_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \ALU_29|FA|Cout~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X69_Y69_N26
\ALU_30|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_30|Mux0~0_combout\ = \A[30]~input_o\ $ (((!\ALUControl[1]~input_o\ & \ALU_29|FA|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALU_29|FA|Cout~0_combout\,
	datad => \A[30]~input_o\,
	combout => \ALU_30|Mux0~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X69_Y69_N20
\ALU_30|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_30|Mux0~1_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\ALU_30|Mux0~0_combout\) # (\B[30]~input_o\))) # (!\ALUControl[0]~input_o\ & (\ALU_30|Mux0~0_combout\ & \B[30]~input_o\)))) # (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ $ (\ALU_30|Mux0~0_combout\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALU_30|Mux0~0_combout\,
	datad => \B[30]~input_o\,
	combout => \ALU_30|Mux0~1_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X60_Y69_N28
\XNOR_ans~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \XNOR_ans~0_combout\ = \ALUControl[0]~input_o\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \XNOR_ans~0_combout\);

-- Location: LCCOMB_X69_Y69_N30
\ALU_31|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_31|Mux0~0_combout\ = (\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\ALUControl[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALU_31|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y69_N16
\ALU_30|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_30|FA|Cout~0_combout\ = (\A[30]~input_o\ & ((\ALU_29|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\ALU_29|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ALU_29|FA|Cout~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B[30]~input_o\,
	combout => \ALU_30|FA|Cout~0_combout\);

-- Location: LCCOMB_X69_Y69_N10
\ALU_31|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_31|Mux0~1_combout\ = (\ALU_31|Mux0~0_combout\) # ((!\ALUControl[1]~input_o\ & (\XNOR_ans~0_combout\ $ (\ALU_30|FA|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \XNOR_ans~0_combout\,
	datac => \ALU_31|Mux0~0_combout\,
	datad => \ALU_30|FA|Cout~0_combout\,
	combout => \ALU_31|Mux0~1_combout\);

-- Location: LCCOMB_X60_Y69_N22
\XOR_ans~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \XOR_ans~0_combout\ = \ALUControl[0]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[0]~input_o\,
	datac => \B[31]~input_o\,
	combout => \XOR_ans~0_combout\);

-- Location: LCCOMB_X60_Y69_N0
\ALUFlags~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~0_combout\ = (\XNOR_ans~0_combout\ & (\ALUControl[1]~input_o\ & (\XOR_ans~0_combout\ $ (\ALU_30|FA|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOR_ans~0_combout\,
	datab => \XNOR_ans~0_combout\,
	datac => \ALU_30|FA|Cout~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \ALUFlags~0_combout\);

-- Location: LCCOMB_X58_Y69_N2
\ALU_31|FA|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_31|FA|Cout~0_combout\ = (\A[31]~input_o\ & ((\ALU_30|FA|Cout~0_combout\) # (\ALUControl[0]~input_o\ $ (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\ALU_30|FA|Cout~0_combout\ & (\ALUControl[0]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \ALU_30|FA|Cout~0_combout\,
	combout => \ALU_31|FA|Cout~0_combout\);

-- Location: LCCOMB_X57_Y31_N0
\ALUFlags~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~1_combout\ = (!\ALUControl[1]~input_o\ & \ALU_31|FA|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datad => \ALU_31|FA|Cout~0_combout\,
	combout => \ALUFlags~1_combout\);

-- Location: LCCOMB_X34_Y69_N14
\ALUFlags~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~4_combout\ = (\ALU_7|Mux0~1_combout\) # ((\ALU_6|Mux0~1_combout\) # ((\ALU_8|Mux0~1_combout\) # (\ALU_5|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_7|Mux0~1_combout\,
	datab => \ALU_6|Mux0~1_combout\,
	datac => \ALU_8|Mux0~1_combout\,
	datad => \ALU_5|Mux0~1_combout\,
	combout => \ALUFlags~4_combout\);

-- Location: LCCOMB_X48_Y69_N16
\ALUFlags~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~5_combout\ = (\ALU_10|Mux0~1_combout\) # ((\ALU_9|Mux0~1_combout\) # ((\ALU_12|Mux0~1_combout\) # (\ALU_11|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_10|Mux0~1_combout\,
	datab => \ALU_9|Mux0~1_combout\,
	datac => \ALU_12|Mux0~1_combout\,
	datad => \ALU_11|Mux0~1_combout\,
	combout => \ALUFlags~5_combout\);

-- Location: LCCOMB_X60_Y69_N10
\ALUFlags~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~6_combout\ = (\ALU_15|Mux0~1_combout\) # ((\ALU_13|Mux0~1_combout\) # ((\ALU_14|Mux0~1_combout\) # (\ALU_16|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_15|Mux0~1_combout\,
	datab => \ALU_13|Mux0~1_combout\,
	datac => \ALU_14|Mux0~1_combout\,
	datad => \ALU_16|Mux0~1_combout\,
	combout => \ALUFlags~6_combout\);

-- Location: LCCOMB_X58_Y69_N12
\ALUFlags~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~2_combout\ = (\ALU_1|Mux0~1_combout\) # ((\ALU_0|Mux0~0_combout\) # (\ALU_2|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Mux0~1_combout\,
	datab => \ALU_0|Mux0~0_combout\,
	datac => \ALU_2|Mux0~1_combout\,
	combout => \ALUFlags~2_combout\);

-- Location: LCCOMB_X58_Y69_N22
\ALUFlags~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~3_combout\ = (\ALU_31|FA|Cout~0_combout\) # ((\ALU_3|Mux0~1_combout\) # ((\ALU_4|Mux0~1_combout\) # (\ALUFlags~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_31|FA|Cout~0_combout\,
	datab => \ALU_3|Mux0~1_combout\,
	datac => \ALU_4|Mux0~1_combout\,
	datad => \ALUFlags~2_combout\,
	combout => \ALUFlags~3_combout\);

-- Location: LCCOMB_X48_Y69_N10
\ALUFlags~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~7_combout\ = (\ALUFlags~4_combout\) # ((\ALUFlags~5_combout\) # ((\ALUFlags~6_combout\) # (\ALUFlags~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFlags~4_combout\,
	datab => \ALUFlags~5_combout\,
	datac => \ALUFlags~6_combout\,
	datad => \ALUFlags~3_combout\,
	combout => \ALUFlags~7_combout\);

-- Location: LCCOMB_X61_Y1_N6
\ALUFlags~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~8_combout\ = (\ALU_17|Mux0~1_combout\) # ((\ALU_20|Mux0~1_combout\) # ((\ALU_19|Mux0~1_combout\) # (\ALU_18|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_17|Mux0~1_combout\,
	datab => \ALU_20|Mux0~1_combout\,
	datac => \ALU_19|Mux0~1_combout\,
	datad => \ALU_18|Mux0~1_combout\,
	combout => \ALUFlags~8_combout\);

-- Location: LCCOMB_X69_Y69_N12
\ALUFlags~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~10_combout\ = (\ALU_26|Mux0~1_combout\) # ((\ALU_28|Mux0~1_combout\) # ((\ALU_27|Mux0~1_combout\) # (\ALU_25|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_26|Mux0~1_combout\,
	datab => \ALU_28|Mux0~1_combout\,
	datac => \ALU_27|Mux0~1_combout\,
	datad => \ALU_25|Mux0~1_combout\,
	combout => \ALUFlags~10_combout\);

-- Location: LCCOMB_X69_Y69_N22
\ALUFlags~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~11_combout\ = (\ALUFlags~10_combout\) # ((\ALU_30|Mux0~1_combout\) # ((\ALU_31|Mux0~1_combout\) # (\ALU_29|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFlags~10_combout\,
	datab => \ALU_30|Mux0~1_combout\,
	datac => \ALU_31|Mux0~1_combout\,
	datad => \ALU_29|Mux0~1_combout\,
	combout => \ALUFlags~11_combout\);

-- Location: LCCOMB_X75_Y69_N22
\ALUFlags~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~9_combout\ = (\ALU_24|Mux0~1_combout\) # ((\ALU_23|Mux0~1_combout\) # ((\ALU_21|Mux0~1_combout\) # (\ALU_22|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_24|Mux0~1_combout\,
	datab => \ALU_23|Mux0~1_combout\,
	datac => \ALU_21|Mux0~1_combout\,
	datad => \ALU_22|Mux0~1_combout\,
	combout => \ALUFlags~9_combout\);

-- Location: LCCOMB_X48_Y69_N4
\ALUFlags~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUFlags~12_combout\ = (\ALUFlags~7_combout\) # ((\ALUFlags~8_combout\) # ((\ALUFlags~11_combout\) # (\ALUFlags~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUFlags~7_combout\,
	datab => \ALUFlags~8_combout\,
	datac => \ALUFlags~11_combout\,
	datad => \ALUFlags~9_combout\,
	combout => \ALUFlags~12_combout\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_Result(16) <= \Result[16]~output_o\;

ww_Result(17) <= \Result[17]~output_o\;

ww_Result(18) <= \Result[18]~output_o\;

ww_Result(19) <= \Result[19]~output_o\;

ww_Result(20) <= \Result[20]~output_o\;

ww_Result(21) <= \Result[21]~output_o\;

ww_Result(22) <= \Result[22]~output_o\;

ww_Result(23) <= \Result[23]~output_o\;

ww_Result(24) <= \Result[24]~output_o\;

ww_Result(25) <= \Result[25]~output_o\;

ww_Result(26) <= \Result[26]~output_o\;

ww_Result(27) <= \Result[27]~output_o\;

ww_Result(28) <= \Result[28]~output_o\;

ww_Result(29) <= \Result[29]~output_o\;

ww_Result(30) <= \Result[30]~output_o\;

ww_Result(31) <= \Result[31]~output_o\;

ww_ALUFlags(0) <= \ALUFlags[0]~output_o\;

ww_ALUFlags(1) <= \ALUFlags[1]~output_o\;

ww_ALUFlags(2) <= \ALUFlags[2]~output_o\;

ww_ALUFlags(3) <= \ALUFlags[3]~output_o\;
END structure;


