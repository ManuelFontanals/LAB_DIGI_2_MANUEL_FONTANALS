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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Nov 01 20:57:03 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SumadorDefBloq IS 
	PORT
	(
		Cin1 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		Cin2 :  IN  STD_LOGIC;
		Cin3 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		a4 :  IN  STD_LOGIC;
		b4 :  IN  STD_LOGIC;
		Cin4 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Cout1 :  OUT  STD_LOGIC;
		res1 :  OUT  STD_LOGIC;
		Cout2 :  OUT  STD_LOGIC;
		res2 :  OUT  STD_LOGIC;
		res3 :  OUT  STD_LOGIC;
		Cout3 :  OUT  STD_LOGIC;
		Cout4 :  OUT  STD_LOGIC;
		res4 :  OUT  STD_LOGIC
	);
END SumadorDefBloq;

ARCHITECTURE bdf_type OF SumadorDefBloq IS 

COMPONENT sumador4bit
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 res : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 CLOCK : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;


BEGIN 



b2v_inst1 : sumador4bit
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 cin => SYNTHESIZED_WIRE_2,
		 cout => SYNTHESIZED_WIRE_4,
		 res => SYNTHESIZED_WIRE_3);


b2v_inst11 : d_ff
PORT MAP(D => a1,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst12 : d_ff
PORT MAP(D => b1,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst13 : d_ff
PORT MAP(D => Cin1,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_3,
		 CLOCK => clk,
		 Q => res1);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_4,
		 CLOCK => clk,
		 Q => Cout1);


b2v_inst2 : sumador4bit
PORT MAP(a => SYNTHESIZED_WIRE_5,
		 b => SYNTHESIZED_WIRE_6,
		 cin => SYNTHESIZED_WIRE_7,
		 cout => SYNTHESIZED_WIRE_9,
		 res => SYNTHESIZED_WIRE_8);


b2v_inst21 : d_ff
PORT MAP(D => a2,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_5);


b2v_inst22 : d_ff
PORT MAP(D => b2,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_6);


b2v_inst23 : d_ff
PORT MAP(D => Cin2,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_7);


b2v_inst24 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_8,
		 CLOCK => clk,
		 Q => res2);


b2v_inst25 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_9,
		 CLOCK => clk,
		 Q => Cout2);


b2v_inst3 : sumador4bit
PORT MAP(a => SYNTHESIZED_WIRE_10,
		 b => SYNTHESIZED_WIRE_11,
		 cin => SYNTHESIZED_WIRE_12,
		 cout => SYNTHESIZED_WIRE_14,
		 res => SYNTHESIZED_WIRE_13);


b2v_inst31 : d_ff
PORT MAP(D => a3,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_10);


b2v_inst32 : d_ff
PORT MAP(D => b3,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_11);


b2v_inst33 : d_ff
PORT MAP(D => Cin3,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_12);


b2v_inst34 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_13,
		 CLOCK => clk,
		 Q => res3);


b2v_inst35 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_14,
		 CLOCK => clk,
		 Q => Cout3);


b2v_inst4 : sumador4bit
PORT MAP(a => SYNTHESIZED_WIRE_15,
		 b => SYNTHESIZED_WIRE_16,
		 cin => SYNTHESIZED_WIRE_17,
		 cout => SYNTHESIZED_WIRE_19,
		 res => SYNTHESIZED_WIRE_18);


b2v_inst41 : d_ff
PORT MAP(D => a4,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_15);


b2v_inst42 : d_ff
PORT MAP(D => b4,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_16);


b2v_inst43 : d_ff
PORT MAP(D => Cin4,
		 CLOCK => clk,
		 Q => SYNTHESIZED_WIRE_17);


b2v_inst44 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_18,
		 CLOCK => clk,
		 Q => res4);


b2v_inst45 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_19,
		 CLOCK => clk,
		 Q => Cout4);


END bdf_type;