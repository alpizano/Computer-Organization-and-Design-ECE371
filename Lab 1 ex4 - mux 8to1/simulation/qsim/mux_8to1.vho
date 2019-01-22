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

-- DATE "01/22/2019 00:01:55"

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

ENTITY 	mux_8to1 IS
    PORT (
	s2 : IN std_logic;
	s1 : IN std_logic;
	s0 : IN std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	y : OUT std_logic
	);
END mux_8to1;

ARCHITECTURE structure OF mux_8to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \mux4to1_1|mux3|y~0_combout\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \mux4to1_1|mux3|y~1_combout\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \mux2to1|y~0_combout\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \mux2to1|y~1_combout\ : std_logic;
SIGNAL \mux2to1|y~2_combout\ : std_logic;

BEGIN

ww_s2 <= s2;
ww_s1 <= s1;
ww_s0 <= s0;
ww_D0 <= D0;
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
ww_D5 <= D5;
ww_D6 <= D6;
ww_D7 <= D7;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2to1|y~2_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

\D2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

\D1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

\s0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

\mux4to1_1|mux3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux4to1_1|mux3|y~0_combout\ = (\s1~input_o\ & (((\s0~input_o\)))) # (!\s1~input_o\ & ((\s0~input_o\ & (\D1~input_o\)) # (!\s0~input_o\ & ((\D0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \D1~input_o\,
	datac => \s0~input_o\,
	datad => \D0~input_o\,
	combout => \mux4to1_1|mux3|y~0_combout\);

\D3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

\mux4to1_1|mux3|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux4to1_1|mux3|y~1_combout\ = (\s1~input_o\ & ((\mux4to1_1|mux3|y~0_combout\ & ((\D3~input_o\))) # (!\mux4to1_1|mux3|y~0_combout\ & (\D2~input_o\)))) # (!\s1~input_o\ & (((\mux4to1_1|mux3|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2~input_o\,
	datab => \s1~input_o\,
	datac => \mux4to1_1|mux3|y~0_combout\,
	datad => \D3~input_o\,
	combout => \mux4to1_1|mux3|y~1_combout\);

\s2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

\D6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6,
	o => \D6~input_o\);

\mux2to1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2to1|y~0_combout\ = (\s1~input_o\ & \D6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~input_o\,
	datab => \D6~input_o\,
	combout => \mux2to1|y~0_combout\);

\D5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5,
	o => \D5~input_o\);

\D4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4,
	o => \D4~input_o\);

\mux2to1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2to1|y~1_combout\ = (!\s1~input_o\ & ((\s0~input_o\ & (\D5~input_o\)) # (!\s0~input_o\ & ((\D4~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D5~input_o\,
	datab => \D4~input_o\,
	datac => \s0~input_o\,
	datad => \s1~input_o\,
	combout => \mux2to1|y~1_combout\);

\mux2to1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2to1|y~2_combout\ = (\s2~input_o\ & (((\mux2to1|y~0_combout\) # (\mux2to1|y~1_combout\)))) # (!\s2~input_o\ & (\mux4to1_1|mux3|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4to1_1|mux3|y~1_combout\,
	datab => \s2~input_o\,
	datac => \mux2to1|y~0_combout\,
	datad => \mux2to1|y~1_combout\,
	combout => \mux2to1|y~2_combout\);

\D7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7,
	o => \D7~input_o\);

ww_y <= \y~output_o\;
END structure;


