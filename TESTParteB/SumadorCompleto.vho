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

-- DATE "11/01/2024 18:59:08"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SumadorCompleto IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_cin : IN std_logic;
	clk : IN std_logic;
	o_res : OUT std_logic;
	o_cout : OUT std_logic
	);
END SumadorCompleto;

-- Design Ports Information
-- o_res	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_cout	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_cin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SumadorCompleto IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_res : std_logic;
SIGNAL ww_o_cout : std_logic;
SIGNAL clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL D3_aQ_aq : std_logic;
SIGNAL in_cin_ainput_o : std_logic;
SIGNAL D3_aQ_afeeder_combout : std_logic;
SIGNAL o_res_aoutput_o : std_logic;
SIGNAL o_cout_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL clk_ainputclkctrl_outclk : std_logic;
SIGNAL in_b_ainput_o : std_logic;
SIGNAL D2_aQ_afeeder_combout : std_logic;
SIGNAL D2_aQ_aq : std_logic;
SIGNAL in_a_ainput_o : std_logic;
SIGNAL D1_aQ_afeeder_combout : std_logic;
SIGNAL D1_aQ_aq : std_logic;
SIGNAL res_a0_combout : std_logic;
SIGNAL D4_aQ_aq : std_logic;
SIGNAL cout_a0_combout : std_logic;
SIGNAL D5_aQ_aq : std_logic;
SIGNAL D3_aQ_CLK_driver : std_logic;
SIGNAL D3_aQ_D_driver : std_logic;
SIGNAL in_cin_ainput_I_driver : std_logic;
SIGNAL D3_aQ_afeeder_DATAD_driver : std_logic;
SIGNAL o_res_aoutput_I_driver : std_logic;
SIGNAL o_cout_aoutput_I_driver : std_logic;
SIGNAL clk_ainput_I_driver : std_logic;
SIGNAL in_b_ainput_I_driver : std_logic;
SIGNAL D2_aQ_afeeder_DATAD_driver : std_logic;
SIGNAL D2_aQ_CLK_driver : std_logic;
SIGNAL D2_aQ_D_driver : std_logic;
SIGNAL in_a_ainput_I_driver : std_logic;
SIGNAL D1_aQ_afeeder_DATAD_driver : std_logic;
SIGNAL D1_aQ_CLK_driver : std_logic;
SIGNAL D1_aQ_D_driver : std_logic;
SIGNAL res_a0_DATAA_driver : std_logic;
SIGNAL res_a0_DATAC_driver : std_logic;
SIGNAL res_a0_DATAD_driver : std_logic;
SIGNAL D4_aQ_CLK_driver : std_logic;
SIGNAL D4_aQ_D_driver : std_logic;
SIGNAL cout_a0_DATAA_driver : std_logic;
SIGNAL cout_a0_DATAB_driver : std_logic;
SIGNAL cout_a0_DATAC_driver : std_logic;
SIGNAL D5_aQ_CLK_driver : std_logic;
SIGNAL D5_aQ_D_driver : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_cin <= in_cin;
ww_clk <= clk;
o_res <= ww_o_res;
o_cout <= ww_o_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

D3_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainputclkctrl_outclk,
	dataout => D3_aQ_CLK_driver);

D3_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D3_aQ_afeeder_combout,
	dataout => D3_aQ_D_driver);

-- Location: FF_X1_Y62_N13
D3_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D3_aQ_CLK_driver,
	d => D3_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3_aQ_aq);

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

D3_aQ_afeeder_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_cin_ainput_o,
	dataout => D3_aQ_afeeder_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N12
D3_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D3_aQ_afeeder_combout = in_cin_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D3_aQ_afeeder_DATAD_driver,
	combout => D3_aQ_afeeder_combout);

o_res_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D4_aQ_aq,
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
	datain => D5_aQ_aq,
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

clk_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_clk,
	dataout => clk_ainput_I_driver);

-- Location: IOIBUF_X0_Y36_N1
clk_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => clk_ainput_I_driver,
	o => clk_ainput_o);

clk_ainputclkctrl_INCLK_a0_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainput_o,
	dataout => clk_ainputclkctrl_INCLK_bus(0));

clk_ainputclkctrl_INCLK_a1_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(1));

clk_ainputclkctrl_INCLK_a2_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(2));

clk_ainputclkctrl_INCLK_a3_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => clk_ainputclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G4
clk_ainputclkctrl : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_ainputclkctrl_outclk);

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

D2_aQ_afeeder_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_b_ainput_o,
	dataout => D2_aQ_afeeder_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N26
D2_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D2_aQ_afeeder_combout = in_b_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2_aQ_afeeder_DATAD_driver,
	combout => D2_aQ_afeeder_combout);

D2_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainputclkctrl_outclk,
	dataout => D2_aQ_CLK_driver);

D2_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_afeeder_combout,
	dataout => D2_aQ_D_driver);

-- Location: FF_X1_Y62_N27
D2_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D2_aQ_CLK_driver,
	d => D2_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2_aQ_aq);

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

D1_aQ_afeeder_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => in_a_ainput_o,
	dataout => D1_aQ_afeeder_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N28
D1_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D1_aQ_afeeder_combout = in_a_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D1_aQ_afeeder_DATAD_driver,
	combout => D1_aQ_afeeder_combout);

D1_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainputclkctrl_outclk,
	dataout => D1_aQ_CLK_driver);

D1_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D1_aQ_afeeder_combout,
	dataout => D1_aQ_D_driver);

-- Location: FF_X1_Y62_N29
D1_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D1_aQ_CLK_driver,
	d => D1_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1_aQ_aq);

res_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D3_aQ_aq,
	dataout => res_a0_DATAA_driver);

res_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_aq,
	dataout => res_a0_DATAC_driver);

res_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D1_aQ_aq,
	dataout => res_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y62_N24
res_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- res_a0_combout = D3_aQ_aq $ (D2_aQ_aq $ (D1_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => res_a0_DATAA_driver,
	datac => res_a0_DATAC_driver,
	datad => res_a0_DATAD_driver,
	combout => res_a0_combout);

D4_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainputclkctrl_outclk,
	dataout => D4_aQ_CLK_driver);

D4_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => res_a0_combout,
	dataout => D4_aQ_D_driver);

-- Location: FF_X1_Y62_N25
D4_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D4_aQ_CLK_driver,
	d => D4_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D4_aQ_aq);

cout_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D3_aQ_aq,
	dataout => cout_a0_DATAA_driver);

cout_a0_DATAB_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D1_aQ_aq,
	dataout => cout_a0_DATAB_driver);

cout_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => D2_aQ_aq,
	dataout => cout_a0_DATAC_driver);

-- Location: LCCOMB_X1_Y62_N10
cout_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- cout_a0_combout = (D3_aQ_aq & ((D1_aQ_aq) # (D2_aQ_aq))) # (!D3_aQ_aq & (D1_aQ_aq & D2_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cout_a0_DATAA_driver,
	datab => cout_a0_DATAB_driver,
	datac => cout_a0_DATAC_driver,
	combout => cout_a0_combout);

D5_aQ_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => clk_ainputclkctrl_outclk,
	dataout => D5_aQ_CLK_driver);

D5_aQ_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => cout_a0_combout,
	dataout => D5_aQ_D_driver);

-- Location: FF_X1_Y62_N11
D5_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => D5_aQ_CLK_driver,
	d => D5_aQ_D_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D5_aQ_aq);

ww_o_res <= o_res_aoutput_o;

ww_o_cout <= o_cout_aoutput_o;
END structure;


