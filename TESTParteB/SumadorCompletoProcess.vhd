library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


 -- RTL VIEW ES CORRECTO, PERO WAVEPROCESS (.VWF) ERROR, NO C POR Q, no necesita clock (le quite el FF, combinacional puro)



entity SumadorCompletoProcess is

 -- DEFINE SEÑALES DE ENTRADA Y SALIDA SUMADOR
PORT 
( 	
	in_a: in std_logic;
	in_b: in std_logic;
	in_cin: in std_logic;
	o_res: out std_logic;
	o_cout: out std_logic
);

end SumadorCompletoProcess;


 
architecture behave of SumadorCompletoProcess is


 -- INIT ARCHITECTURE BEHAVEOURAL
	
	begin
	SumComp: process (in_a, in_b, in_cin)

	variable ab : std_logic; 
	variable axb : std_logic;
 
		begin
			ab := in_a and in_b;
			axb := in_a xor in_b;
			
			o_res <= axb xor in_cin;
			o_cout <= ab or ( in_cin and axb );
	end process;
end behave;