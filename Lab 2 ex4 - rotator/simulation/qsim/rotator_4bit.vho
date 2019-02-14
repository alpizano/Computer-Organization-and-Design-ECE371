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

-- DATE "02/13/2019 00:03:18"

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

ENTITY 	rotator_4bit IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	L : IN std_logic;
	shift : IN std_logic_vector(1 DOWNTO 0);
	Y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END rotator_4bit;

ARCHITECTURE structure OF rotator_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_L : std_logic;
SIGNAL ww_shift : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \shift[1]~input_o\ : std_logic;
SIGNAL \L~input_o\ : std_logic;
SIGNAL \shift[0]~input_o\ : std_logic;
SIGNAL \mux_0|Y~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \mux_0|Y~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \mux_0|Y~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \mux_0|Y~3_combout\ : std_logic;
SIGNAL \mux_1|Y~0_combout\ : std_logic;
SIGNAL \mux_1|Y~1_combout\ : std_logic;
SIGNAL \mux_2|Y~0_combout\ : std_logic;
SIGNAL \mux_2|Y~1_combout\ : std_logic;
SIGNAL \mux_3|Y~0_combout\ : std_logic;
SIGNAL \mux_3|Y~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_L <= L;
ww_shift <= shift;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_0|Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_3|Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\shift[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift(1),
	o => \shift[1]~input_o\);

\L~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L,
	o => \L~input_o\);

\shift[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift(0),
	o => \shift[0]~input_o\);

\mux_0|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_0|Y~0_combout\ = \shift[1]~input_o\ $ (((!\L~input_o\ & \shift[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[1]~input_o\,
	datab => \L~input_o\,
	datad => \shift[0]~input_o\,
	combout => \mux_0|Y~0_combout\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\mux_0|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_0|Y~1_combout\ = \shift[1]~input_o\ $ (((\L~input_o\ & \shift[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift[1]~input_o\,
	datac => \L~input_o\,
	datad => \shift[0]~input_o\,
	combout => \mux_0|Y~1_combout\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\mux_0|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_0|Y~2_combout\ = (\mux_0|Y~0_combout\ & (((\mux_0|Y~1_combout\)))) # (!\mux_0|Y~0_combout\ & ((\mux_0|Y~1_combout\ & (\A[3]~input_o\)) # (!\mux_0|Y~1_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_0|Y~0_combout\,
	datab => \A[3]~input_o\,
	datac => \mux_0|Y~1_combout\,
	datad => \A[0]~input_o\,
	combout => \mux_0|Y~2_combout\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\mux_0|Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_0|Y~3_combout\ = (\mux_0|Y~0_combout\ & ((\mux_0|Y~2_combout\ & ((\A[2]~input_o\))) # (!\mux_0|Y~2_combout\ & (\A[1]~input_o\)))) # (!\mux_0|Y~0_combout\ & (((\mux_0|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \mux_0|Y~0_combout\,
	datac => \mux_0|Y~2_combout\,
	datad => \A[2]~input_o\,
	combout => \mux_0|Y~3_combout\);

\mux_1|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|Y~0_combout\ = (\mux_0|Y~1_combout\ & (((\mux_0|Y~0_combout\)))) # (!\mux_0|Y~1_combout\ & ((\mux_0|Y~0_combout\ & (\A[2]~input_o\)) # (!\mux_0|Y~0_combout\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_0|Y~1_combout\,
	datab => \A[2]~input_o\,
	datac => \mux_0|Y~0_combout\,
	datad => \A[1]~input_o\,
	combout => \mux_1|Y~0_combout\);

\mux_1|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|Y~1_combout\ = (\mux_0|Y~1_combout\ & ((\mux_1|Y~0_combout\ & ((\A[3]~input_o\))) # (!\mux_1|Y~0_combout\ & (\A[0]~input_o\)))) # (!\mux_0|Y~1_combout\ & (((\mux_1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \mux_0|Y~1_combout\,
	datac => \mux_1|Y~0_combout\,
	datad => \A[3]~input_o\,
	combout => \mux_1|Y~1_combout\);

\mux_2|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|Y~0_combout\ = (\mux_0|Y~0_combout\ & (((\mux_0|Y~1_combout\)))) # (!\mux_0|Y~0_combout\ & ((\mux_0|Y~1_combout\ & (\A[1]~input_o\)) # (!\mux_0|Y~1_combout\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_0|Y~0_combout\,
	datab => \A[1]~input_o\,
	datac => \mux_0|Y~1_combout\,
	datad => \A[2]~input_o\,
	combout => \mux_2|Y~0_combout\);

\mux_2|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|Y~1_combout\ = (\mux_0|Y~0_combout\ & ((\mux_2|Y~0_combout\ & ((\A[0]~input_o\))) # (!\mux_2|Y~0_combout\ & (\A[3]~input_o\)))) # (!\mux_0|Y~0_combout\ & (((\mux_2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \mux_0|Y~0_combout\,
	datac => \mux_2|Y~0_combout\,
	datad => \A[0]~input_o\,
	combout => \mux_2|Y~1_combout\);

\mux_3|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_3|Y~0_combout\ = (\mux_0|Y~1_combout\ & (((\mux_0|Y~0_combout\)))) # (!\mux_0|Y~1_combout\ & ((\mux_0|Y~0_combout\ & (\A[0]~input_o\)) # (!\mux_0|Y~0_combout\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_0|Y~1_combout\,
	datab => \A[0]~input_o\,
	datac => \mux_0|Y~0_combout\,
	datad => \A[3]~input_o\,
	combout => \mux_3|Y~0_combout\);

\mux_3|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_3|Y~1_combout\ = (\mux_0|Y~1_combout\ & ((\mux_3|Y~0_combout\ & ((\A[1]~input_o\))) # (!\mux_3|Y~0_combout\ & (\A[2]~input_o\)))) # (!\mux_0|Y~1_combout\ & (((\mux_3|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \mux_0|Y~1_combout\,
	datac => \mux_3|Y~0_combout\,
	datad => \A[1]~input_o\,
	combout => \mux_3|Y~1_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;
END structure;


