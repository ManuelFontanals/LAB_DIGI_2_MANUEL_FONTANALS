library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;


entity D_FF is
PORT 
( 	
	D,CLOCK: in std_logic;
	Q: out std_logic
);

end D_FF;


 -- CREA FLIP FLOP TIPO D
architecture behave of D_FF is
 
begin

	process (CLOCK)
	begin
	-- FLANCO ALTO
	
		if (CLOCK = '1' and CLOCK'EVENT) then
			Q <= D;
		end if;
	
	end process;

end behave;

	
		