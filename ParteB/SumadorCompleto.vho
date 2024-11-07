-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/07/2024 02:03:07"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SumadorCompletoProcess IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_cin : IN std_logic;
	o_res : OUT std_logic;
	o_cout : OUT std_logic
	);
END SumadorCompletoProcess;

-- Design Ports Information
-- o_res	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_cout	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_cin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SumadorCompletoProcess IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_cin : std_logic;
SIGNAL ww_o_res : std_logic;
SIGNAL ww_o_cout : std_logic;
SIGNAL o_res_aoutput_o : std_logic;
SIGNAL o_cout_aoutput_o : std_logic;
SIGNAL in_cin_ainput_o : std_logic;
SIGNAL in_b_ainput_o : std_logic;
SIGNAL in_a_ainput_o : std_logic;
SIGNAL o_res_a0_combout : std_logic;
SIGNAL o_cout_a0_combout : std_logic;
SIGNAL o_res_aoutput_I_driver : std_logic;
SIGNAL o_cout_aoutput_I_driver : std_logic;
SIGNAL in_cin_ainput_I_driver : std_logic;
SIGNAL in_b_ainput_I_driver : std_logic;
SIGNAL in_a_ainput_I_driver : std_logic;
SIGNAL o_res_a0_DATAA_driver : std_logic;
SIGNAL o_res_a0_DATAB_driver : std_logic;
SIGNAL o_res_a0_DATAD_driver : std_logic;
SIGNAL o_cout_a0_DATAA_driver : std_logic;
SIGNAL o_cout_a0_DATAB_driver : std_logic;
SIGNAL o_cout_a0_DATAD_driver : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_cin <= in_cin;
o_res <= ww_o_res;
o_cout <= ww_o_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

o_res_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => o_res_a0_combout,
	dataout => o_res_aoutput_I_driver);

-- Location: IOOBUF_X0_Y63_N23
o_res_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => o_res_aoutput_I_driver,
	devoe => ww_devoe,
	o => o_res_aoutput_o);

o_cout_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => o_cout_a0_combout,
	dataout => o_cout_aoutput_I_driver);

-- Location: IOOBUF_X0_Y62_N23
o_cout_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => o_cout_aoutput_I_driver,
	devoe => ww_devoe,
	o => o_cout_aoutput_o);

in_cin_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_cin,
	dataout => in_cin_ainput_I_driver);

-- Location: IOIBUF_X0_Y61_N22
in_cin_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_cin_ainput_I_driver,
	o => in_cin_ainput_o);

in_b_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_b,
	dataout => in_b_ainput_I_driver);

-- Location: IOIBUF_X0_Y62_N15
in_b_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_b_ainput_I_driver,
	o => in_b_ainput_o);

in_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_in_a,
	dataout => in_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y63_N15
in_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => in_a_ainput_I_driver,
	o => in_a_ainput_o);

o_res_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_cin_ainput_o,
	dataout => o_res_a0_DATAA_driver);

o_res_a0_DATAB_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_b_ainput_o,
	dataout => o_res_a0_DATAB_driver);

o_res_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_a_ainput_o,
	dataout => o_res_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N0
o_res_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- o_res_a0_combout = in_cin_ainput_o $ (in_b_ainput_o $ (in_a_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_res_a0_DATAA_driver,
	datab => o_res_a0_DATAB_driver,
	datad => o_res_a0_DATAD_driver,
	combout => o_res_a0_combout);

o_cout_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_cin_ainput_o,
	dataout => o_cout_a0_DATAA_driver);

o_cout_a0_DATAB_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_b_ainput_o,
	dataout => o_cout_a0_DATAB_driver);

o_cout_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_a_ainput_o,
	dataout => o_cout_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N2
o_cout_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- o_cout_a0_combout = (in_cin_ainput_o & ((in_b_ainput_o) # (in_a_ainput_o))) # (!in_cin_ainput_o & (in_b_ainput_o & in_a_ainput_o))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_cout_a0_DATAA_driver,
	datab => o_cout_a0_DATAB_driver,
	datad => o_cout_a0_DATAD_driver,
	combout => o_cout_a0_combout);

ww_o_res <= o_res_aoutput_o;

ww_o_cout <= o_cout_aoutput_o;
END structure;


