library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


entity RestadorCompleto is

 -- DEFINE SEÑALES DE ENTRADA Y SALIDA SUMADOR
PORT 
( 	
	in_a: in std_logic;
	in_b: in std_logic;
	in_bin: in std_logic;
	clk: in std_logic;
	o_res: out std_logic;
	o_bout: out std_logic
);

end RestadorCompleto;


 
architecture behave of RestadorCompleto is

 -- CREA VARIABLES PARA FLIP FLOP TIPO D
	component D_FF
		PORT 
		( 	
			D,CLOCK: in std_logic;
			Q: out std_logic
		);
	end component;
	

	-- NO C Q HACE ESTO (CREO DEF VARIABLES)
	signal a, b, bin, bout, res: std_logic;


	
 -- INIT ARCHITECTURE BEHAVEOURAL
 
begin
	-- DEF COMPORTAMIENTO SEÑALES
	res <= a xor b xor bin;
	bout <= ( not a   and  (b or bin) ) or (bin and b);
	
	D1: D_FF port map (in_a, clk, a);
	D2: D_FF port map (in_b, clk, b);
	D3: D_FF port map (in_bin, clk, bin);
	D4: D_FF port map (res, clk, o_res);
	D5: D_FF port map (bout, clk, o_bout);	
	
	
	
end behave;
