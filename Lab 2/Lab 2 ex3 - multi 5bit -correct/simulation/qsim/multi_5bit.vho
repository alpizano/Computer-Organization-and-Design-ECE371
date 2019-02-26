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

-- DATE "02/12/2019 23:50:40"

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

ENTITY 	multi_5bit IS
    PORT (
	X : IN std_logic_vector(4 DOWNTO 0);
	Y : IN std_logic_vector(4 DOWNTO 0);
	Cout : OUT std_logic;
	P : OUT std_logic_vector(9 DOWNTO 0)
	);
END multi_5bit;

ARCHITECTURE structure OF multi_5bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_P : std_logic_vector(9 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \P[8]~output_o\ : std_logic;
SIGNAL \P[9]~output_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \HA_1|Cout~combout\ : std_logic;
SIGNAL \FA_2|Cout~0_combout\ : std_logic;
SIGNAL \FA_3|Cout~0_combout\ : std_logic;
SIGNAL \FA_4|Cout~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \FA_4|S~0_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \FA_3|S~0_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \FA_2|S~combout\ : std_logic;
SIGNAL \HA_6|Cout~combout\ : std_logic;
SIGNAL \FA_7|Cout~0_combout\ : std_logic;
SIGNAL \FA_8|Cout~0_combout\ : std_logic;
SIGNAL \FA_9|Cout~0_combout\ : std_logic;
SIGNAL \FA_10|S~2_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \FA_9|S~0_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \FA_8|S~0_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \FA_7|S~combout\ : std_logic;
SIGNAL \HA_11|Cout~combout\ : std_logic;
SIGNAL \FA_12|Cout~0_combout\ : std_logic;
SIGNAL \FA_13|Cout~0_combout\ : std_logic;
SIGNAL \FA_14|Cout~0_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \FA_10|Cout~0_combout\ : std_logic;
SIGNAL \FA_15|S~0_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \FA_14|S~0_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \FA_13|S~0_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \FA_12|S~0_combout\ : std_logic;
SIGNAL \HA_16|Cout~combout\ : std_logic;
SIGNAL \FA_17|Cout~0_combout\ : std_logic;
SIGNAL \FA_18|Cout~0_combout\ : std_logic;
SIGNAL \FA_19|Cout~0_combout\ : std_logic;
SIGNAL \FA_15|Cout~0_combout\ : std_logic;
SIGNAL \FA_20|Cout~0_combout\ : std_logic;
SIGNAL \P~0_combout\ : std_logic;
SIGNAL \HA_1|S~combout\ : std_logic;
SIGNAL \HA_6|S~combout\ : std_logic;
SIGNAL \HA_11|S~combout\ : std_logic;
SIGNAL \HA_16|S~combout\ : std_logic;
SIGNAL \FA_17|S~combout\ : std_logic;
SIGNAL \FA_18|S~combout\ : std_logic;
SIGNAL \FA_19|S~combout\ : std_logic;
SIGNAL \FA_20|S~0_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
Cout <= ww_Cout;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_20|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P~0_combout\,
	devoe => ww_devoe,
	o => \P[0]~output_o\);

\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA_1|S~combout\,
	devoe => ww_devoe,
	o => \P[1]~output_o\);

\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA_6|S~combout\,
	devoe => ww_devoe,
	o => \P[2]~output_o\);

\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA_11|S~combout\,
	devoe => ww_devoe,
	o => \P[3]~output_o\);

\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HA_16|S~combout\,
	devoe => ww_devoe,
	o => \P[4]~output_o\);

\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_17|S~combout\,
	devoe => ww_devoe,
	o => \P[5]~output_o\);

\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_18|S~combout\,
	devoe => ww_devoe,
	o => \P[6]~output_o\);

\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_19|S~combout\,
	devoe => ww_devoe,
	o => \P[7]~output_o\);

\P[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_20|S~0_combout\,
	devoe => ww_devoe,
	o => \P[8]~output_o\);

\P[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_20|Cout~0_combout\,
	devoe => ww_devoe,
	o => \P[9]~output_o\);

\Y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\X[3]~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[1]~input_o\,
	combout => \comb~0_combout\);

\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Y[1]~input_o\ & \X[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[2]~input_o\,
	combout => \comb~1_combout\);

\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\Y[1]~input_o\ & \X[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[1]~input_o\,
	combout => \comb~2_combout\);

\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

\HA_1|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_1|Cout~combout\ = (\Y[0]~input_o\ & (\Y[1]~input_o\ & (\X[1]~input_o\ & \X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \HA_1|Cout~combout\);

\FA_2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_2|Cout~0_combout\ = (\comb~2_combout\ & ((\HA_1|Cout~combout\) # ((\Y[0]~input_o\ & \X[2]~input_o\)))) # (!\comb~2_combout\ & (\Y[0]~input_o\ & (\X[2]~input_o\ & \HA_1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \comb~2_combout\,
	datad => \HA_1|Cout~combout\,
	combout => \FA_2|Cout~0_combout\);

\FA_3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_3|Cout~0_combout\ = (\comb~1_combout\ & ((\FA_2|Cout~0_combout\) # ((\Y[0]~input_o\ & \X[3]~input_o\)))) # (!\comb~1_combout\ & (\Y[0]~input_o\ & (\X[3]~input_o\ & \FA_2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[3]~input_o\,
	datac => \comb~1_combout\,
	datad => \FA_2|Cout~0_combout\,
	combout => \FA_3|Cout~0_combout\);

\FA_4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_4|Cout~0_combout\ = (\comb~0_combout\ & ((\FA_3|Cout~0_combout\) # ((\Y[0]~input_o\ & \X[4]~input_o\)))) # (!\comb~0_combout\ & (\Y[0]~input_o\ & (\X[4]~input_o\ & \FA_3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[4]~input_o\,
	datac => \comb~0_combout\,
	datad => \FA_3|Cout~0_combout\,
	combout => \FA_4|Cout~0_combout\);

\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\X[4]~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[1]~input_o\,
	combout => \comb~3_combout\);

\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\X[3]~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[2]~input_o\,
	combout => \comb~4_combout\);

\FA_4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_4|S~0_combout\ = (\X[4]~input_o\ & (\Y[0]~input_o\ $ (((\X[3]~input_o\ & \Y[1]~input_o\))))) # (!\X[4]~input_o\ & (\X[3]~input_o\ & (\Y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \X[3]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \FA_4|S~0_combout\);

\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\X[2]~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[2]~input_o\,
	combout => \comb~5_combout\);

\FA_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_3|S~0_combout\ = (\Y[0]~input_o\ & (\X[3]~input_o\ $ (((\Y[1]~input_o\ & \X[2]~input_o\))))) # (!\Y[0]~input_o\ & (\Y[1]~input_o\ & (\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \FA_3|S~0_combout\);

\comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\X[1]~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y[2]~input_o\,
	combout => \comb~6_combout\);

\FA_2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_2|S~combout\ = \comb~2_combout\ $ (\HA_1|Cout~combout\ $ (((\Y[0]~input_o\ & \X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \comb~2_combout\,
	datad => \HA_1|Cout~combout\,
	combout => \FA_2|S~combout\);

\HA_6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_6|Cout~combout\ = (\X[0]~input_o\ & (\Y[2]~input_o\ & \FA_2|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[2]~input_o\,
	datac => \FA_2|S~combout\,
	combout => \HA_6|Cout~combout\);

\FA_7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_7|Cout~0_combout\ = (\comb~6_combout\ & ((\HA_6|Cout~combout\) # (\FA_2|Cout~0_combout\ $ (\FA_3|S~0_combout\)))) # (!\comb~6_combout\ & (\HA_6|Cout~combout\ & (\FA_2|Cout~0_combout\ $ (\FA_3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_2|Cout~0_combout\,
	datab => \FA_3|S~0_combout\,
	datac => \comb~6_combout\,
	datad => \HA_6|Cout~combout\,
	combout => \FA_7|Cout~0_combout\);

\FA_8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_8|Cout~0_combout\ = (\comb~5_combout\ & ((\FA_7|Cout~0_combout\) # (\FA_3|Cout~0_combout\ $ (\FA_4|S~0_combout\)))) # (!\comb~5_combout\ & (\FA_7|Cout~0_combout\ & (\FA_3|Cout~0_combout\ $ (\FA_4|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_3|Cout~0_combout\,
	datab => \FA_4|S~0_combout\,
	datac => \comb~5_combout\,
	datad => \FA_7|Cout~0_combout\,
	combout => \FA_8|Cout~0_combout\);

\FA_9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_9|Cout~0_combout\ = (\comb~4_combout\ & ((\FA_8|Cout~0_combout\) # (\FA_4|Cout~0_combout\ $ (\comb~3_combout\)))) # (!\comb~4_combout\ & (\FA_8|Cout~0_combout\ & (\FA_4|Cout~0_combout\ $ (\comb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_4|Cout~0_combout\,
	datab => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => \FA_8|Cout~0_combout\,
	combout => \FA_9|Cout~0_combout\);

\FA_10|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_10|S~2_combout\ = (\X[4]~input_o\ & (\Y[2]~input_o\ $ (((\Y[1]~input_o\ & \FA_4|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \FA_4|Cout~0_combout\,
	datad => \Y[2]~input_o\,
	combout => \FA_10|S~2_combout\);

\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

\comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\X[3]~input_o\ & \Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[3]~input_o\,
	combout => \comb~7_combout\);

\FA_9|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_9|S~0_combout\ = \FA_4|Cout~0_combout\ $ (\comb~3_combout\ $ (((\X[3]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[2]~input_o\,
	datac => \FA_4|Cout~0_combout\,
	datad => \comb~3_combout\,
	combout => \FA_9|S~0_combout\);

\comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\X[2]~input_o\ & \Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[3]~input_o\,
	combout => \comb~8_combout\);

\FA_8|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_8|S~0_combout\ = \FA_3|Cout~0_combout\ $ (\FA_4|S~0_combout\ $ (((\X[2]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[2]~input_o\,
	datac => \FA_3|Cout~0_combout\,
	datad => \FA_4|S~0_combout\,
	combout => \FA_8|S~0_combout\);

\comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\X[1]~input_o\ & \Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y[3]~input_o\,
	combout => \comb~9_combout\);

\FA_7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_7|S~combout\ = \FA_2|Cout~0_combout\ $ (\FA_3|S~0_combout\ $ (\comb~6_combout\ $ (\HA_6|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_2|Cout~0_combout\,
	datab => \FA_3|S~0_combout\,
	datac => \comb~6_combout\,
	datad => \HA_6|Cout~combout\,
	combout => \FA_7|S~combout\);

\HA_11|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_11|Cout~combout\ = (\X[0]~input_o\ & (\Y[3]~input_o\ & \FA_7|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \FA_7|S~combout\,
	combout => \HA_11|Cout~combout\);

\FA_12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_12|Cout~0_combout\ = (\comb~9_combout\ & ((\HA_11|Cout~combout\) # (\FA_7|Cout~0_combout\ $ (\FA_8|S~0_combout\)))) # (!\comb~9_combout\ & (\HA_11|Cout~combout\ & (\FA_7|Cout~0_combout\ $ (\FA_8|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_7|Cout~0_combout\,
	datab => \FA_8|S~0_combout\,
	datac => \comb~9_combout\,
	datad => \HA_11|Cout~combout\,
	combout => \FA_12|Cout~0_combout\);

\FA_13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_13|Cout~0_combout\ = (\comb~8_combout\ & ((\FA_12|Cout~0_combout\) # (\FA_8|Cout~0_combout\ $ (\FA_9|S~0_combout\)))) # (!\comb~8_combout\ & (\FA_12|Cout~0_combout\ & (\FA_8|Cout~0_combout\ $ (\FA_9|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_8|Cout~0_combout\,
	datab => \FA_9|S~0_combout\,
	datac => \comb~8_combout\,
	datad => \FA_12|Cout~0_combout\,
	combout => \FA_13|Cout~0_combout\);

\FA_14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_14|Cout~0_combout\ = (\comb~7_combout\ & ((\FA_13|Cout~0_combout\) # (\FA_9|Cout~0_combout\ $ (\FA_10|S~2_combout\)))) # (!\comb~7_combout\ & (\FA_13|Cout~0_combout\ & (\FA_9|Cout~0_combout\ $ (\FA_10|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_9|Cout~0_combout\,
	datab => \FA_10|S~2_combout\,
	datac => \comb~7_combout\,
	datad => \FA_13|Cout~0_combout\,
	combout => \FA_14|Cout~0_combout\);

\comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\X[4]~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[2]~input_o\,
	combout => \comb~10_combout\);

\FA_10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_10|Cout~0_combout\ = (\comb~10_combout\ & ((\FA_9|Cout~0_combout\) # ((\FA_4|Cout~0_combout\ & \comb~3_combout\)))) # (!\comb~10_combout\ & (\FA_4|Cout~0_combout\ & (\comb~3_combout\ & \FA_9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_4|Cout~0_combout\,
	datab => \comb~3_combout\,
	datac => \comb~10_combout\,
	datad => \FA_9|Cout~0_combout\,
	combout => \FA_10|Cout~0_combout\);

\FA_15|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_15|S~0_combout\ = \FA_10|Cout~0_combout\ $ (((\X[4]~input_o\ & \Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA_10|Cout~0_combout\,
	datac => \X[4]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \FA_15|S~0_combout\);

\comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\Y[4]~input_o\ & \X[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[3]~input_o\,
	combout => \comb~11_combout\);

\FA_14|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_14|S~0_combout\ = \FA_9|Cout~0_combout\ $ (\FA_10|S~2_combout\ $ (((\X[3]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \FA_9|Cout~0_combout\,
	datad => \FA_10|S~2_combout\,
	combout => \FA_14|S~0_combout\);

\comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\Y[4]~input_o\ & \X[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[2]~input_o\,
	combout => \comb~12_combout\);

\FA_13|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_13|S~0_combout\ = \FA_8|Cout~0_combout\ $ (\FA_9|S~0_combout\ $ (((\X[2]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \FA_8|Cout~0_combout\,
	datad => \FA_9|S~0_combout\,
	combout => \FA_13|S~0_combout\);

\comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\Y[4]~input_o\ & \X[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[1]~input_o\,
	combout => \comb~13_combout\);

\FA_12|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_12|S~0_combout\ = \FA_7|Cout~0_combout\ $ (\FA_8|S~0_combout\ $ (((\X[1]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \FA_7|Cout~0_combout\,
	datad => \FA_8|S~0_combout\,
	combout => \FA_12|S~0_combout\);

\HA_16|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_16|Cout~combout\ = (\Y[4]~input_o\ & (\X[0]~input_o\ & (\HA_11|Cout~combout\ $ (\FA_12|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[0]~input_o\,
	datac => \HA_11|Cout~combout\,
	datad => \FA_12|S~0_combout\,
	combout => \HA_16|Cout~combout\);

\FA_17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_17|Cout~0_combout\ = (\comb~13_combout\ & ((\HA_16|Cout~combout\) # (\FA_12|Cout~0_combout\ $ (\FA_13|S~0_combout\)))) # (!\comb~13_combout\ & (\HA_16|Cout~combout\ & (\FA_12|Cout~0_combout\ $ (\FA_13|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_12|Cout~0_combout\,
	datab => \FA_13|S~0_combout\,
	datac => \comb~13_combout\,
	datad => \HA_16|Cout~combout\,
	combout => \FA_17|Cout~0_combout\);

\FA_18|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_18|Cout~0_combout\ = (\comb~12_combout\ & ((\FA_17|Cout~0_combout\) # (\FA_13|Cout~0_combout\ $ (\FA_14|S~0_combout\)))) # (!\comb~12_combout\ & (\FA_17|Cout~0_combout\ & (\FA_13|Cout~0_combout\ $ (\FA_14|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_13|Cout~0_combout\,
	datab => \FA_14|S~0_combout\,
	datac => \comb~12_combout\,
	datad => \FA_17|Cout~0_combout\,
	combout => \FA_18|Cout~0_combout\);

\FA_19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_19|Cout~0_combout\ = (\comb~11_combout\ & ((\FA_18|Cout~0_combout\) # (\FA_14|Cout~0_combout\ $ (\FA_15|S~0_combout\)))) # (!\comb~11_combout\ & (\FA_18|Cout~0_combout\ & (\FA_14|Cout~0_combout\ $ (\FA_15|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_14|Cout~0_combout\,
	datab => \FA_15|S~0_combout\,
	datac => \comb~11_combout\,
	datad => \FA_18|Cout~0_combout\,
	combout => \FA_19|Cout~0_combout\);

\FA_15|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_15|Cout~0_combout\ = (\FA_14|Cout~0_combout\ & ((\FA_10|Cout~0_combout\) # ((\Y[3]~input_o\ & \X[4]~input_o\)))) # (!\FA_14|Cout~0_combout\ & (\Y[3]~input_o\ & (\X[4]~input_o\ & \FA_10|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datab => \X[4]~input_o\,
	datac => \FA_14|Cout~0_combout\,
	datad => \FA_10|Cout~0_combout\,
	combout => \FA_15|Cout~0_combout\);

\FA_20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_20|Cout~0_combout\ = (\FA_19|Cout~0_combout\ & ((\FA_15|Cout~0_combout\) # ((\Y[4]~input_o\ & \X[4]~input_o\)))) # (!\FA_19|Cout~0_combout\ & (\Y[4]~input_o\ & (\X[4]~input_o\ & \FA_15|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[4]~input_o\,
	datac => \FA_19|Cout~0_combout\,
	datad => \FA_15|Cout~0_combout\,
	combout => \FA_20|Cout~0_combout\);

\P~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P~0_combout\ = (\Y[0]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \X[0]~input_o\,
	combout => \P~0_combout\);

\HA_1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_1|S~combout\ = (\Y[0]~input_o\ & (\X[1]~input_o\ $ (((\Y[1]~input_o\ & \X[0]~input_o\))))) # (!\Y[0]~input_o\ & (\Y[1]~input_o\ & (\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \HA_1|S~combout\);

\HA_6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_6|S~combout\ = \FA_2|S~combout\ $ (((\X[0]~input_o\ & \Y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA_2|S~combout\,
	datac => \X[0]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \HA_6|S~combout\);

\HA_11|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_11|S~combout\ = \FA_7|S~combout\ $ (((\X[0]~input_o\ & \Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA_7|S~combout\,
	datac => \X[0]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \HA_11|S~combout\);

\HA_16|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA_16|S~combout\ = \HA_11|Cout~combout\ $ (\FA_12|S~0_combout\ $ (((\Y[4]~input_o\ & \X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[0]~input_o\,
	datac => \HA_11|Cout~combout\,
	datad => \FA_12|S~0_combout\,
	combout => \HA_16|S~combout\);

\FA_17|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_17|S~combout\ = \FA_12|Cout~0_combout\ $ (\FA_13|S~0_combout\ $ (\comb~13_combout\ $ (\HA_16|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_12|Cout~0_combout\,
	datab => \FA_13|S~0_combout\,
	datac => \comb~13_combout\,
	datad => \HA_16|Cout~combout\,
	combout => \FA_17|S~combout\);

\FA_18|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_18|S~combout\ = \FA_13|Cout~0_combout\ $ (\FA_14|S~0_combout\ $ (\comb~12_combout\ $ (\FA_17|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_13|Cout~0_combout\,
	datab => \FA_14|S~0_combout\,
	datac => \comb~12_combout\,
	datad => \FA_17|Cout~0_combout\,
	combout => \FA_18|S~combout\);

\FA_19|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_19|S~combout\ = \FA_14|Cout~0_combout\ $ (\FA_15|S~0_combout\ $ (\comb~11_combout\ $ (\FA_18|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA_14|Cout~0_combout\,
	datab => \FA_15|S~0_combout\,
	datac => \comb~11_combout\,
	datad => \FA_18|Cout~0_combout\,
	combout => \FA_19|S~combout\);

\FA_20|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_20|S~0_combout\ = \FA_19|Cout~0_combout\ $ (\FA_15|Cout~0_combout\ $ (((\Y[4]~input_o\ & \X[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[4]~input_o\,
	datac => \FA_19|Cout~0_combout\,
	datad => \FA_15|Cout~0_combout\,
	combout => \FA_20|S~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;

ww_P(8) <= \P[8]~output_o\;

ww_P(9) <= \P[9]~output_o\;
END structure;


