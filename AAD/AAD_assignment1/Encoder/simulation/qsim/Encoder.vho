-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/19/2023 18:22:38"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Encoder IS
    PORT (
	dIn : IN std_logic_vector(15 DOWNTO 0);
	dOut : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END Encoder;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[16]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[17]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[22]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[23]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[14]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dOut : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \dIn[14]~input_o\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \xorPorta16|y~combout\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \dIn[13]~input_o\ : std_logic;
SIGNAL \xorRemainder0|y~combout\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \xorRemainder1|y~0_combout\ : std_logic;
SIGNAL \dIn[15]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \xorPorta89|y~combout\ : std_logic;
SIGNAL \xorRemainder1|y~combout\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \xorRemainder2|y~0_combout\ : std_logic;
SIGNAL \xorRemainder2|y~combout\ : std_logic;
SIGNAL \xorRemainder5|y~0_combout\ : std_logic;
SIGNAL \dIn[11]~input_o\ : std_logic;
SIGNAL \xorRemainder3|y~combout\ : std_logic;
SIGNAL \dIn[12]~input_o\ : std_logic;
SIGNAL \xorRemainder4|y~0_combout\ : std_logic;
SIGNAL \xorRemainder4|y~combout\ : std_logic;
SIGNAL \xorRemainder5|y~combout\ : std_logic;
SIGNAL \xorRemainder6|y~0_combout\ : std_logic;
SIGNAL \xorRemainder6|y~combout\ : std_logic;
SIGNAL \xorRemainder7|y~0_combout\ : std_logic;
SIGNAL \xorRemainder7|y~combout\ : std_logic;
SIGNAL \ALT_INV_dIn[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[1]~input_o\ : std_logic;
SIGNAL \xorRemainder7|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorRemainder6|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorRemainder4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorRemainder5|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorRemainder2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorRemainder1|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xorPorta89|ALT_INV_y~combout\ : std_logic;
SIGNAL \xorPorta16|ALT_INV_y~combout\ : std_logic;

BEGIN

ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_dIn[12]~input_o\ <= NOT \dIn[12]~input_o\;
\ALT_INV_dIn[11]~input_o\ <= NOT \dIn[11]~input_o\;
\ALT_INV_dIn[10]~input_o\ <= NOT \dIn[10]~input_o\;
\ALT_INV_dIn[3]~input_o\ <= NOT \dIn[3]~input_o\;
\ALT_INV_dIn[15]~input_o\ <= NOT \dIn[15]~input_o\;
\ALT_INV_dIn[7]~input_o\ <= NOT \dIn[7]~input_o\;
\ALT_INV_dIn[5]~input_o\ <= NOT \dIn[5]~input_o\;
\ALT_INV_dIn[9]~input_o\ <= NOT \dIn[9]~input_o\;
\ALT_INV_dIn[2]~input_o\ <= NOT \dIn[2]~input_o\;
\ALT_INV_dIn[0]~input_o\ <= NOT \dIn[0]~input_o\;
\ALT_INV_dIn[14]~input_o\ <= NOT \dIn[14]~input_o\;
\ALT_INV_dIn[4]~input_o\ <= NOT \dIn[4]~input_o\;
\ALT_INV_dIn[8]~input_o\ <= NOT \dIn[8]~input_o\;
\ALT_INV_dIn[6]~input_o\ <= NOT \dIn[6]~input_o\;
\ALT_INV_dIn[13]~input_o\ <= NOT \dIn[13]~input_o\;
\ALT_INV_dIn[1]~input_o\ <= NOT \dIn[1]~input_o\;
\xorRemainder7|ALT_INV_y~0_combout\ <= NOT \xorRemainder7|y~0_combout\;
\xorRemainder6|ALT_INV_y~0_combout\ <= NOT \xorRemainder6|y~0_combout\;
\xorRemainder4|ALT_INV_y~0_combout\ <= NOT \xorRemainder4|y~0_combout\;
\xorRemainder5|ALT_INV_y~0_combout\ <= NOT \xorRemainder5|y~0_combout\;
\xorRemainder2|ALT_INV_y~0_combout\ <= NOT \xorRemainder2|y~0_combout\;
\xorRemainder1|ALT_INV_y~0_combout\ <= NOT \xorRemainder1|y~0_combout\;
\xorPorta89|ALT_INV_y~combout\ <= NOT \xorPorta89|y~combout\;
\xorPorta16|ALT_INV_y~combout\ <= NOT \xorPorta16|y~combout\;

-- Location: IOOBUF_X60_Y0_N53
\dOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder0|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(0));

-- Location: IOOBUF_X52_Y0_N19
\dOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder1|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(1));

-- Location: IOOBUF_X62_Y0_N19
\dOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder2|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(2));

-- Location: IOOBUF_X66_Y0_N93
\dOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder3|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(3));

-- Location: IOOBUF_X60_Y0_N36
\dOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder4|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(4));

-- Location: IOOBUF_X54_Y0_N53
\dOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder5|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(5));

-- Location: IOOBUF_X56_Y0_N2
\dOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder6|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(6));

-- Location: IOOBUF_X54_Y0_N36
\dOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder7|y~combout\,
	devoe => ww_devoe,
	o => ww_dOut(7));

-- Location: IOOBUF_X68_Y0_N19
\dOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[0]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(8));

-- Location: IOOBUF_X58_Y0_N76
\dOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[1]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(9));

-- Location: IOOBUF_X52_Y0_N53
\dOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[2]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(10));

-- Location: IOOBUF_X58_Y0_N42
\dOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[3]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(11));

-- Location: IOOBUF_X64_Y0_N2
\dOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[4]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(12));

-- Location: IOOBUF_X52_Y0_N2
\dOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[5]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(13));

-- Location: IOOBUF_X66_Y0_N59
\dOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[6]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(14));

-- Location: IOOBUF_X66_Y0_N42
\dOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[7]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(15));

-- Location: IOOBUF_X54_Y0_N2
\dOut[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[8]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(16));

-- Location: IOOBUF_X68_Y0_N53
\dOut[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[9]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(17));

-- Location: IOOBUF_X56_Y0_N19
\dOut[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[10]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(18));

-- Location: IOOBUF_X56_Y0_N53
\dOut[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[11]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(19));

-- Location: IOOBUF_X62_Y0_N36
\dOut[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[12]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(20));

-- Location: IOOBUF_X64_Y0_N36
\dOut[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[13]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(21));

-- Location: IOOBUF_X60_Y0_N19
\dOut[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[14]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(22));

-- Location: IOOBUF_X50_Y0_N42
\dOut[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[15]~input_o\,
	devoe => ww_devoe,
	o => ww_dOut(23));

-- Location: IOIBUF_X58_Y0_N92
\dIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\dIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\dIn[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(14),
	o => \dIn[14]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\dIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\dIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\dIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: LABCELL_X60_Y1_N30
\xorPorta16|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorPorta16|y~combout\ = ( \dIn[4]~input_o\ & ( \dIn[0]~input_o\ & ( !\dIn[14]~input_o\ $ (!\dIn[2]~input_o\) ) ) ) # ( !\dIn[4]~input_o\ & ( \dIn[0]~input_o\ & ( !\dIn[14]~input_o\ $ (\dIn[2]~input_o\) ) ) ) # ( \dIn[4]~input_o\ & ( !\dIn[0]~input_o\ & ( 
-- !\dIn[14]~input_o\ $ (\dIn[2]~input_o\) ) ) ) # ( !\dIn[4]~input_o\ & ( !\dIn[0]~input_o\ & ( !\dIn[14]~input_o\ $ (!\dIn[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[14]~input_o\,
	datac => \ALT_INV_dIn[2]~input_o\,
	datae => \ALT_INV_dIn[4]~input_o\,
	dataf => \ALT_INV_dIn[0]~input_o\,
	combout => \xorPorta16|y~combout\);

-- Location: IOIBUF_X54_Y0_N18
\dIn[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\dIn[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(13),
	o => \dIn[13]~input_o\);

-- Location: LABCELL_X60_Y1_N9
\xorRemainder0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder0|y~combout\ = ( \dIn[13]~input_o\ & ( !\dIn[1]~input_o\ $ (!\dIn[6]~input_o\ $ (!\xorPorta16|y~combout\ $ (\dIn[8]~input_o\))) ) ) # ( !\dIn[13]~input_o\ & ( !\dIn[1]~input_o\ $ (!\dIn[6]~input_o\ $ (!\xorPorta16|y~combout\ $ 
-- (!\dIn[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[1]~input_o\,
	datab => \ALT_INV_dIn[6]~input_o\,
	datac => \xorPorta16|ALT_INV_y~combout\,
	datad => \ALT_INV_dIn[8]~input_o\,
	dataf => \ALT_INV_dIn[13]~input_o\,
	combout => \xorRemainder0|y~combout\);

-- Location: IOIBUF_X68_Y0_N35
\dIn[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\dIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: LABCELL_X60_Y1_N18
\xorRemainder1|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder1|y~0_combout\ = ( \dIn[6]~input_o\ & ( !\dIn[3]~input_o\ $ (!\dIn[0]~input_o\ $ (!\dIn[8]~input_o\)) ) ) # ( !\dIn[6]~input_o\ & ( !\dIn[3]~input_o\ $ (!\dIn[0]~input_o\ $ (\dIn[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dIn[3]~input_o\,
	datac => \ALT_INV_dIn[0]~input_o\,
	datad => \ALT_INV_dIn[8]~input_o\,
	dataf => \ALT_INV_dIn[6]~input_o\,
	combout => \xorRemainder1|y~0_combout\);

-- Location: IOIBUF_X50_Y0_N75
\dIn[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(15),
	o => \dIn[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\dIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\dIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: LABCELL_X60_Y1_N15
\xorPorta89|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorPorta89|y~combout\ = ( \dIn[7]~input_o\ & ( !\dIn[15]~input_o\ $ (!\dIn[5]~input_o\ $ (!\dIn[4]~input_o\)) ) ) # ( !\dIn[7]~input_o\ & ( !\dIn[15]~input_o\ $ (!\dIn[5]~input_o\ $ (\dIn[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[15]~input_o\,
	datac => \ALT_INV_dIn[5]~input_o\,
	datad => \ALT_INV_dIn[4]~input_o\,
	dataf => \ALT_INV_dIn[7]~input_o\,
	combout => \xorPorta89|y~combout\);

-- Location: LABCELL_X60_Y1_N21
\xorRemainder1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder1|y~combout\ = ( \xorPorta89|y~combout\ & ( !\dIn[9]~input_o\ $ (!\dIn[13]~input_o\ $ (!\xorRemainder1|y~0_combout\)) ) ) # ( !\xorPorta89|y~combout\ & ( !\dIn[9]~input_o\ $ (!\dIn[13]~input_o\ $ (\xorRemainder1|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[9]~input_o\,
	datac => \ALT_INV_dIn[13]~input_o\,
	datad => \xorRemainder1|ALT_INV_y~0_combout\,
	dataf => \xorPorta89|ALT_INV_y~combout\,
	combout => \xorRemainder1|y~combout\);

-- Location: IOIBUF_X62_Y0_N52
\dIn[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: LABCELL_X60_Y1_N24
\xorRemainder2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder2|y~0_combout\ = ( \dIn[7]~input_o\ & ( !\dIn[10]~input_o\ $ (\dIn[5]~input_o\) ) ) # ( !\dIn[7]~input_o\ & ( !\dIn[10]~input_o\ $ (!\dIn[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dIn[10]~input_o\,
	datad => \ALT_INV_dIn[5]~input_o\,
	dataf => \ALT_INV_dIn[7]~input_o\,
	combout => \xorRemainder2|y~0_combout\);

-- Location: LABCELL_X60_Y1_N27
\xorRemainder2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder2|y~combout\ = ( \dIn[9]~input_o\ & ( !\dIn[0]~input_o\ $ (!\xorRemainder2|y~0_combout\ $ (!\dIn[13]~input_o\ $ (\dIn[2]~input_o\))) ) ) # ( !\dIn[9]~input_o\ & ( !\dIn[0]~input_o\ $ (!\xorRemainder2|y~0_combout\ $ (!\dIn[13]~input_o\ $ 
-- (!\dIn[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[0]~input_o\,
	datab => \xorRemainder2|ALT_INV_y~0_combout\,
	datac => \ALT_INV_dIn[13]~input_o\,
	datad => \ALT_INV_dIn[2]~input_o\,
	dataf => \ALT_INV_dIn[9]~input_o\,
	combout => \xorRemainder2|y~combout\);

-- Location: LABCELL_X60_Y1_N6
\xorRemainder5|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder5|y~0_combout\ = ( \dIn[3]~input_o\ & ( !\dIn[1]~input_o\ $ (!\dIn[6]~input_o\ $ (!\dIn[10]~input_o\)) ) ) # ( !\dIn[3]~input_o\ & ( !\dIn[1]~input_o\ $ (!\dIn[6]~input_o\ $ (\dIn[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[1]~input_o\,
	datab => \ALT_INV_dIn[6]~input_o\,
	datac => \ALT_INV_dIn[10]~input_o\,
	dataf => \ALT_INV_dIn[3]~input_o\,
	combout => \xorRemainder5|y~0_combout\);

-- Location: IOIBUF_X56_Y0_N35
\dIn[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(11),
	o => \dIn[11]~input_o\);

-- Location: LABCELL_X60_Y1_N3
\xorRemainder3|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder3|y~combout\ = ( \dIn[14]~input_o\ & ( !\xorRemainder5|y~0_combout\ $ (!\dIn[8]~input_o\ $ (!\dIn[11]~input_o\)) ) ) # ( !\dIn[14]~input_o\ & ( !\xorRemainder5|y~0_combout\ $ (!\dIn[8]~input_o\ $ (\dIn[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xorRemainder5|ALT_INV_y~0_combout\,
	datac => \ALT_INV_dIn[8]~input_o\,
	datad => \ALT_INV_dIn[11]~input_o\,
	dataf => \ALT_INV_dIn[14]~input_o\,
	combout => \xorRemainder3|y~combout\);

-- Location: IOIBUF_X62_Y0_N1
\dIn[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(12),
	o => \dIn[12]~input_o\);

-- Location: LABCELL_X60_Y1_N36
\xorRemainder4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder4|y~0_combout\ = ( \dIn[9]~input_o\ & ( !\dIn[11]~input_o\ $ (!\dIn[2]~input_o\ $ (!\dIn[12]~input_o\)) ) ) # ( !\dIn[9]~input_o\ & ( !\dIn[11]~input_o\ $ (!\dIn[2]~input_o\ $ (\dIn[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dIn[11]~input_o\,
	datac => \ALT_INV_dIn[2]~input_o\,
	datad => \ALT_INV_dIn[12]~input_o\,
	dataf => \ALT_INV_dIn[9]~input_o\,
	combout => \xorRemainder4|y~0_combout\);

-- Location: LABCELL_X60_Y1_N39
\xorRemainder4|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder4|y~combout\ = ( \dIn[15]~input_o\ & ( !\dIn[4]~input_o\ $ (!\dIn[7]~input_o\ $ (!\xorRemainder4|y~0_combout\)) ) ) # ( !\dIn[15]~input_o\ & ( !\dIn[4]~input_o\ $ (!\dIn[7]~input_o\ $ (\xorRemainder4|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[4]~input_o\,
	datac => \ALT_INV_dIn[7]~input_o\,
	datad => \xorRemainder4|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_dIn[15]~input_o\,
	combout => \xorRemainder4|y~combout\);

-- Location: LABCELL_X60_Y1_N0
\xorRemainder5|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder5|y~combout\ = ( \dIn[5]~input_o\ & ( !\xorRemainder5|y~0_combout\ $ (!\xorPorta16|y~combout\ $ (!\dIn[12]~input_o\)) ) ) # ( !\dIn[5]~input_o\ & ( !\xorRemainder5|y~0_combout\ $ (!\xorPorta16|y~combout\ $ (\dIn[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xorRemainder5|ALT_INV_y~0_combout\,
	datac => \xorPorta16|ALT_INV_y~combout\,
	datad => \ALT_INV_dIn[12]~input_o\,
	dataf => \ALT_INV_dIn[5]~input_o\,
	combout => \xorRemainder5|y~combout\);

-- Location: LABCELL_X60_Y1_N45
\xorRemainder6|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder6|y~0_combout\ = ( \dIn[11]~input_o\ & ( \dIn[13]~input_o\ & ( !\dIn[2]~input_o\ $ (!\dIn[1]~input_o\) ) ) ) # ( !\dIn[11]~input_o\ & ( \dIn[13]~input_o\ & ( !\dIn[2]~input_o\ $ (\dIn[1]~input_o\) ) ) ) # ( \dIn[11]~input_o\ & ( 
-- !\dIn[13]~input_o\ & ( !\dIn[2]~input_o\ $ (\dIn[1]~input_o\) ) ) ) # ( !\dIn[11]~input_o\ & ( !\dIn[13]~input_o\ & ( !\dIn[2]~input_o\ $ (!\dIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[2]~input_o\,
	datad => \ALT_INV_dIn[1]~input_o\,
	datae => \ALT_INV_dIn[11]~input_o\,
	dataf => \ALT_INV_dIn[13]~input_o\,
	combout => \xorRemainder6|y~0_combout\);

-- Location: LABCELL_X60_Y1_N12
\xorRemainder6|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder6|y~combout\ = ( \dIn[6]~input_o\ & ( !\xorPorta89|y~combout\ $ (!\dIn[3]~input_o\ $ (!\xorRemainder6|y~0_combout\)) ) ) # ( !\dIn[6]~input_o\ & ( !\xorPorta89|y~combout\ $ (!\dIn[3]~input_o\ $ (\xorRemainder6|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xorPorta89|ALT_INV_y~combout\,
	datac => \ALT_INV_dIn[3]~input_o\,
	datad => \xorRemainder6|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_dIn[6]~input_o\,
	combout => \xorRemainder6|y~combout\);

-- Location: LABCELL_X60_Y1_N51
\xorRemainder7|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder7|y~0_combout\ = ( \dIn[0]~input_o\ & ( !\dIn[7]~input_o\ $ (\dIn[3]~input_o\) ) ) # ( !\dIn[0]~input_o\ & ( !\dIn[7]~input_o\ $ (!\dIn[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[7]~input_o\,
	datac => \ALT_INV_dIn[3]~input_o\,
	dataf => \ALT_INV_dIn[0]~input_o\,
	combout => \xorRemainder7|y~0_combout\);

-- Location: LABCELL_X60_Y1_N54
\xorRemainder7|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xorRemainder7|y~combout\ = ( \dIn[1]~input_o\ & ( \dIn[13]~input_o\ & ( !\dIn[5]~input_o\ $ (!\xorRemainder7|y~0_combout\ $ (\dIn[12]~input_o\)) ) ) ) # ( !\dIn[1]~input_o\ & ( \dIn[13]~input_o\ & ( !\dIn[5]~input_o\ $ (!\xorRemainder7|y~0_combout\ $ 
-- (!\dIn[12]~input_o\)) ) ) ) # ( \dIn[1]~input_o\ & ( !\dIn[13]~input_o\ & ( !\dIn[5]~input_o\ $ (!\xorRemainder7|y~0_combout\ $ (!\dIn[12]~input_o\)) ) ) ) # ( !\dIn[1]~input_o\ & ( !\dIn[13]~input_o\ & ( !\dIn[5]~input_o\ $ (!\xorRemainder7|y~0_combout\ 
-- $ (\dIn[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dIn[5]~input_o\,
	datac => \xorRemainder7|ALT_INV_y~0_combout\,
	datad => \ALT_INV_dIn[12]~input_o\,
	datae => \ALT_INV_dIn[1]~input_o\,
	dataf => \ALT_INV_dIn[13]~input_o\,
	combout => \xorRemainder7|y~combout\);

-- Location: LABCELL_X2_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


