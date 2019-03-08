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

-- DATE "03/07/2019 21:33:40"

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

ENTITY 	tbird_lights IS
    PORT (
	L : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	CLK : IN std_logic;
	reset : IN std_logic;
	LC : BUFFER std_logic;
	LB : BUFFER std_logic;
	LA : BUFFER std_logic;
	RA : BUFFER std_logic;
	RB : BUFFER std_logic;
	RC : BUFFER std_logic
	);
END tbird_lights;

-- Design Ports Information
-- LC	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LA	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tbird_lights IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LC : std_logic;
SIGNAL ww_LB : std_logic;
SIGNAL ww_LA : std_logic;
SIGNAL ww_RA : std_logic;
SIGNAL ww_RB : std_logic;
SIGNAL ww_RC : std_logic;
SIGNAL \L~input_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \LC~output_o\ : std_logic;
SIGNAL \LB~output_o\ : std_logic;
SIGNAL \LA~output_o\ : std_logic;
SIGNAL \RA~output_o\ : std_logic;
SIGNAL \RB~output_o\ : std_logic;
SIGNAL \RC~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_L <= L;
ww_R <= R;
ww_S <= S;
ww_CLK <= CLK;
ww_reset <= reset;
LC <= ww_LC;
LB <= ww_LB;
LA <= ww_LA;
RA <= ww_RA;
RB <= ww_RB;
RC <= ww_RC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y0_N23
\LC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LC~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\LB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LB~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\LA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LA~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\RA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RA~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\RB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RB~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\RC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RC~output_o\);

-- Location: IOIBUF_X85_Y0_N22
\L~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L,
	o => \L~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_LC <= \LC~output_o\;

ww_LB <= \LB~output_o\;

ww_LA <= \LA~output_o\;

ww_RA <= \RA~output_o\;

ww_RB <= \RB~output_o\;

ww_RC <= \RC~output_o\;
END structure;


