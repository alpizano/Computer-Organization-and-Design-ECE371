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

-- DATE "02/12/2019 23:20:08"

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

ENTITY 	cla_16bit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	Cout : BUFFER std_logic;
	S : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END cla_16bit;

ARCHITECTURE structure OF cla_16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \cla_4bit_4|Cin_internal[1]~0_combout\ : std_logic;
SIGNAL \cla_4bit_4|Cin_internal[1]~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \cla_4bit_3|Cin_internal[1]~0_combout\ : std_logic;
SIGNAL \cla_4bit_3|Cin_internal[1]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \cla_4bit_2|Cin_internal[1]~0_combout\ : std_logic;
SIGNAL \cla_4bit_2|Cin_internal[1]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \cla_4bit_1|Cin_internal[1]~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \cla_4bit_1|Cin_internal[1]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \cla_4bit_1|Cin_internal[3]~2_combout\ : std_logic;
SIGNAL \cla_4bit_2|Cin_internal[1]~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \cla_4bit_2|Cin_internal[3]~3_combout\ : std_logic;
SIGNAL \cla_4bit_3|Cin_internal[1]~2_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \cla_4bit_3|Cin_internal[3]~3_combout\ : std_logic;
SIGNAL \cla_4bit_4|Cin_internal[1]~2_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \cla_4bit_4|Cin_internal[3]~3_combout\ : std_logic;
SIGNAL \cla_4bit_4|Cout~0_combout\ : std_logic;
SIGNAL \cla_4bit_1|S[0]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \cla_4bit_1|Cin_internal[2]~3_combout\ : std_logic;
SIGNAL \cla_4bit_1|S[2]~1_combout\ : std_logic;
SIGNAL \cla_4bit_1|S[3]~2_combout\ : std_logic;
SIGNAL \cla_4bit_1|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \cla_4bit_2|Cin_internal[2]~4_combout\ : std_logic;
SIGNAL \cla_4bit_2|S[2]~0_combout\ : std_logic;
SIGNAL \cla_4bit_2|S[3]~1_combout\ : std_logic;
SIGNAL \cla_4bit_2|Cout~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \cla_4bit_3|Cin_internal[2]~4_combout\ : std_logic;
SIGNAL \cla_4bit_3|S[2]~0_combout\ : std_logic;
SIGNAL \cla_4bit_3|S[3]~1_combout\ : std_logic;
SIGNAL \cla_4bit_3|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \cla_4bit_4|Cin_internal[2]~4_combout\ : std_logic;
SIGNAL \cla_4bit_4|S[2]~0_combout\ : std_logic;
SIGNAL \cla_4bit_4|S[3]~1_combout\ : std_logic;
SIGNAL \cla_4bit_3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cla_4bit_1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cla_4bit_2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cla_4bit_4|S\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Cout <= ww_Cout;
S <= ww_S;
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
	i => \cla_4bit_4|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_1|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_1|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_1|S[2]~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_1|S[3]~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_2|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_2|S\(1),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_2|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_2|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_3|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_3|S\(1),
	devoe => ww_devoe,
	o => \S[9]~output_o\);

\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_3|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_3|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_4|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_4|S\(1),
	devoe => ww_devoe,
	o => \S[13]~output_o\);

\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_4|S[2]~0_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_4bit_4|S[3]~1_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\cla_4bit_4|Cin_internal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cin_internal[1]~0_combout\ = (\A[12]~input_o\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	combout => \cla_4bit_4|Cin_internal[1]~0_combout\);

\cla_4bit_4|Cin_internal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cin_internal[1]~1_combout\ = (\A[12]~input_o\) # (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	combout => \cla_4bit_4|Cin_internal[1]~1_combout\);

\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\cla_4bit_3|Cin_internal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cin_internal[1]~0_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	combout => \cla_4bit_3|Cin_internal[1]~0_combout\);

\cla_4bit_3|Cin_internal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cin_internal[1]~1_combout\ = (\A[8]~input_o\) # (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	combout => \cla_4bit_3|Cin_internal[1]~1_combout\);

\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\cla_4bit_2|Cin_internal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cin_internal[1]~0_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	combout => \cla_4bit_2|Cin_internal[1]~0_combout\);

\cla_4bit_2|Cin_internal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cin_internal[1]~1_combout\ = (\A[4]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	combout => \cla_4bit_2|Cin_internal[1]~1_combout\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\cla_4bit_1|Cin_internal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|Cin_internal[1]~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	combout => \cla_4bit_1|Cin_internal[1]~0_combout\);

\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

\cla_4bit_1|Cin_internal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|Cin_internal[1]~1_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \cla_4bit_1|Cin_internal[1]~1_combout\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\cla_4bit_1|Cin_internal[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|Cin_internal[3]~2_combout\ = (\A[2]~input_o\ & ((\cla_4bit_1|Cin_internal[1]~0_combout\) # ((\cla_4bit_1|Cin_internal[1]~1_combout\) # (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & ((\cla_4bit_1|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_1|Cin_internal[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_1|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_1|Cin_internal[1]~1_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \cla_4bit_1|Cin_internal[3]~2_combout\);

\cla_4bit_2|Cin_internal[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cin_internal[1]~2_combout\ = (\cla_4bit_2|Cin_internal[1]~1_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\cla_4bit_1|Cin_internal[3]~2_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \cla_4bit_1|Cin_internal[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_2|Cin_internal[1]~1_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \cla_4bit_1|Cin_internal[3]~2_combout\,
	combout => \cla_4bit_2|Cin_internal[1]~2_combout\);

\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\cla_4bit_2|Cin_internal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cin_internal[3]~3_combout\ = (\A[6]~input_o\ & ((\cla_4bit_2|Cin_internal[1]~0_combout\) # ((\cla_4bit_2|Cin_internal[1]~2_combout\) # (\B[6]~input_o\)))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & ((\cla_4bit_2|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_2|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_2|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_2|Cin_internal[1]~2_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \cla_4bit_2|Cin_internal[3]~3_combout\);

\cla_4bit_3|Cin_internal[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cin_internal[1]~2_combout\ = (\cla_4bit_3|Cin_internal[1]~1_combout\ & ((\A[7]~input_o\ & ((\B[7]~input_o\) # (\cla_4bit_2|Cin_internal[3]~3_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \cla_4bit_2|Cin_internal[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_3|Cin_internal[1]~1_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \cla_4bit_2|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_3|Cin_internal[1]~2_combout\);

\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\cla_4bit_3|Cin_internal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cin_internal[3]~3_combout\ = (\A[10]~input_o\ & ((\cla_4bit_3|Cin_internal[1]~0_combout\) # ((\cla_4bit_3|Cin_internal[1]~2_combout\) # (\B[10]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\cla_4bit_3|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_3|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_3|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_3|Cin_internal[1]~2_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \cla_4bit_3|Cin_internal[3]~3_combout\);

\cla_4bit_4|Cin_internal[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cin_internal[1]~2_combout\ = (\cla_4bit_4|Cin_internal[1]~1_combout\ & ((\A[11]~input_o\ & ((\B[11]~input_o\) # (\cla_4bit_3|Cin_internal[3]~3_combout\))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & \cla_4bit_3|Cin_internal[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_4|Cin_internal[1]~1_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \cla_4bit_3|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_4|Cin_internal[1]~2_combout\);

\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\cla_4bit_4|Cin_internal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cin_internal[3]~3_combout\ = (\A[14]~input_o\ & ((\cla_4bit_4|Cin_internal[1]~0_combout\) # ((\cla_4bit_4|Cin_internal[1]~2_combout\) # (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\cla_4bit_4|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_4|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_4|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_4|Cin_internal[1]~2_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \cla_4bit_4|Cin_internal[3]~3_combout\);

\cla_4bit_4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cout~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # (\cla_4bit_4|Cin_internal[3]~3_combout\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & \cla_4bit_4|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \cla_4bit_4|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_4|Cout~0_combout\);

\cla_4bit_1|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|S[0]~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \cla_4bit_1|S[0]~0_combout\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\cla_4bit_1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|S\(1) = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\cla_4bit_1|Cin_internal[1]~0_combout\) # (\cla_4bit_1|Cin_internal[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \cla_4bit_1|Cin_internal[1]~0_combout\,
	datad => \cla_4bit_1|Cin_internal[1]~1_combout\,
	combout => \cla_4bit_1|S\(1));

\cla_4bit_1|Cin_internal[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|Cin_internal[2]~3_combout\ = (\A[1]~input_o\ & ((\cla_4bit_1|Cin_internal[1]~0_combout\) # ((\cla_4bit_1|Cin_internal[1]~1_combout\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\cla_4bit_1|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_1|Cin_internal[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_1|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_1|Cin_internal[1]~1_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \cla_4bit_1|Cin_internal[2]~3_combout\);

\cla_4bit_1|S[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|S[2]~1_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\cla_4bit_1|Cin_internal[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \cla_4bit_1|Cin_internal[2]~3_combout\,
	combout => \cla_4bit_1|S[2]~1_combout\);

\cla_4bit_1|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|S[3]~2_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\cla_4bit_1|Cin_internal[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \cla_4bit_1|Cin_internal[3]~2_combout\,
	combout => \cla_4bit_1|S[3]~2_combout\);

\cla_4bit_1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_1|Cout~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\cla_4bit_1|Cin_internal[3]~2_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \cla_4bit_1|Cin_internal[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \cla_4bit_1|Cin_internal[3]~2_combout\,
	combout => \cla_4bit_1|Cout~0_combout\);

\cla_4bit_2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|S\(0) = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\cla_4bit_1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \cla_4bit_1|Cout~0_combout\,
	combout => \cla_4bit_2|S\(0));

\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\cla_4bit_2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|S\(1) = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\cla_4bit_2|Cin_internal[1]~0_combout\) # (\cla_4bit_2|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \cla_4bit_2|Cin_internal[1]~0_combout\,
	datad => \cla_4bit_2|Cin_internal[1]~2_combout\,
	combout => \cla_4bit_2|S\(1));

\cla_4bit_2|Cin_internal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cin_internal[2]~4_combout\ = (\A[5]~input_o\ & ((\cla_4bit_2|Cin_internal[1]~0_combout\) # ((\cla_4bit_2|Cin_internal[1]~2_combout\) # (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\cla_4bit_2|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_2|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_2|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_2|Cin_internal[1]~2_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \cla_4bit_2|Cin_internal[2]~4_combout\);

\cla_4bit_2|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|S[2]~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\cla_4bit_2|Cin_internal[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \cla_4bit_2|Cin_internal[2]~4_combout\,
	combout => \cla_4bit_2|S[2]~0_combout\);

\cla_4bit_2|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|S[3]~1_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\cla_4bit_2|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \cla_4bit_2|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_2|S[3]~1_combout\);

\cla_4bit_2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_2|Cout~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\cla_4bit_2|Cin_internal[3]~3_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \cla_4bit_2|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \cla_4bit_2|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_2|Cout~0_combout\);

\cla_4bit_3|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|S\(0) = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\cla_4bit_2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \cla_4bit_2|Cout~0_combout\,
	combout => \cla_4bit_3|S\(0));

\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\cla_4bit_3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|S\(1) = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\cla_4bit_3|Cin_internal[1]~0_combout\) # (\cla_4bit_3|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \cla_4bit_3|Cin_internal[1]~0_combout\,
	datad => \cla_4bit_3|Cin_internal[1]~2_combout\,
	combout => \cla_4bit_3|S\(1));

\cla_4bit_3|Cin_internal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cin_internal[2]~4_combout\ = (\A[9]~input_o\ & ((\cla_4bit_3|Cin_internal[1]~0_combout\) # ((\cla_4bit_3|Cin_internal[1]~2_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\cla_4bit_3|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_3|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_3|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_3|Cin_internal[1]~2_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \cla_4bit_3|Cin_internal[2]~4_combout\);

\cla_4bit_3|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|S[2]~0_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (\cla_4bit_3|Cin_internal[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \cla_4bit_3|Cin_internal[2]~4_combout\,
	combout => \cla_4bit_3|S[2]~0_combout\);

\cla_4bit_3|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|S[3]~1_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (\cla_4bit_3|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \cla_4bit_3|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_3|S[3]~1_combout\);

\cla_4bit_3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_3|Cout~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # (\cla_4bit_3|Cin_internal[3]~3_combout\))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & \cla_4bit_3|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \cla_4bit_3|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_3|Cout~0_combout\);

\cla_4bit_4|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|S\(0) = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\cla_4bit_3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \cla_4bit_3|Cout~0_combout\,
	combout => \cla_4bit_4|S\(0));

\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\cla_4bit_4|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|S\(1) = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\cla_4bit_4|Cin_internal[1]~0_combout\) # (\cla_4bit_4|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \cla_4bit_4|Cin_internal[1]~0_combout\,
	datad => \cla_4bit_4|Cin_internal[1]~2_combout\,
	combout => \cla_4bit_4|S\(1));

\cla_4bit_4|Cin_internal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|Cin_internal[2]~4_combout\ = (\A[13]~input_o\ & ((\cla_4bit_4|Cin_internal[1]~0_combout\) # ((\cla_4bit_4|Cin_internal[1]~2_combout\) # (\B[13]~input_o\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\cla_4bit_4|Cin_internal[1]~0_combout\) # 
-- (\cla_4bit_4|Cin_internal[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_4bit_4|Cin_internal[1]~0_combout\,
	datab => \cla_4bit_4|Cin_internal[1]~2_combout\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \cla_4bit_4|Cin_internal[2]~4_combout\);

\cla_4bit_4|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|S[2]~0_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\cla_4bit_4|Cin_internal[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \cla_4bit_4|Cin_internal[2]~4_combout\,
	combout => \cla_4bit_4|S[2]~0_combout\);

\cla_4bit_4|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cla_4bit_4|S[3]~1_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (\cla_4bit_4|Cin_internal[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \cla_4bit_4|Cin_internal[3]~3_combout\,
	combout => \cla_4bit_4|S[3]~1_combout\);

ww_Cout <= \Cout~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;
END structure;


