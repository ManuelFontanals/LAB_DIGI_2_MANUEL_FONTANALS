library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


entity SumadorCompleto is

 -- DEFINE SEÑALES DE ENTRADA Y SALIDA SUMADOR
PORT 
( 	
	in_a: in std_logic;
	in_b: in std_logic;
	in_cin: in std_logic;
	clk: in std_logic;
	o_res: out std_logic;
	o_cout: out std_logic
);

end SumadorCompleto;


 
architecture behave of SumadorCompleto is

 -- CREA VARIABLES PARA FLIP FLOP TIPO D
	component D_FF
		PORT 
		( 	
			D,CLOCK: in std_logic;
			Q: out std_logic
		);
	end component;
	

	-- CREO SEÑALES INTERMEDIAS
	signal a, b, cin, cout, res: std_logic;


	
 -- INIT ARCHITECTURE BEHAVEOURAL
 
begin
	-- DEF COMPORTAMIENTO SEÑALES
	res <= a xor b xor cin;
	cout <= (a and b) or ( cin and (a xor b) );
	
	D1: D_FF port map (in_a, clk, a);
	D2: D_FF port map (in_b, clk, b);
	D3: D_FF port map (in_cin, clk, cin);
	D4: D_FF port map (res, clk, o_res);
	D5: D_FF port map (cout, clk, o_cout);	
	
	
	
end behave;
