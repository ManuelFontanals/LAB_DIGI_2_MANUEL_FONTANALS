library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


entity FF6 is

 -- DEFINE SEÑALES DE ENTRADA Y SALIDA SUMADOR
PORT 
( 	
	a0 : in std_logic;
	a1 : in std_logic;
	a2 : in std_logic;
	a3 : in std_logic;
	a4 : in std_logic;
	a5 : in std_logic;
	
	clk: in std_logic;
	
--	out_a0 : out std_logic;
--	out_a1 : out std_logic;
--	out_a2 : out std_logic;
--	out_a3 : out std_logic;
-- out_a4 : out std_logic;
--	out_a5 : out std_logic
	
	OUT6 : out std_logic_vector (5 downto 0)
	
);

end FF6;


 
architecture behave of FF6 is

 -- CREA VARIABLES PARA FLIP FLOP TIPO D
	component D_FF
		PORT 
		( 	
			D,CLOCK: in std_logic;
			Q: out std_logic
		);
	end component;
	
	
	signal a00, a11, a22, a33, a44, a55 : std_logic;
	
 -- INIT ARCHITECTURE BEHAVEOURAL
 
begin
	-- DEF COMPORTAMIENTO SEÑALES
	
	
	
	D1: D_FF port map (a0, clk, a00);
	D2: D_FF port map (a1, clk, a11);
	D3: D_FF port map (a2, clk, a22);
	D4: D_FF port map (a3, clk, a33);
	D5: D_FF port map (a4, clk, a44);	
	D6: D_FF port map (a5, clk, a55);	
	
	OUT6 <= a00 & a11 & a22 & a33 & a44 & a55;
	
	
end behave;