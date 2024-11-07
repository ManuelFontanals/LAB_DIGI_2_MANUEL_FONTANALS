library ieee;
use ieee.std_logic_1164.all;

entity IdentAyB is
	PORT (
			in_a : in std_logic_vector (15 downto 0);
			in_b : in std_logic_vector (5 downto 0);
			a_uno_en : out std_logic;
			b_uno_en : out std_logic
	);
	
end IdentAyB;

architecture behave of IdentAyB is
begin
	
	UnoEn : process (in_a, in_b) is
	
	variable a: integer; b: integer;
		
	begin
		
		case i=to_integer(unsigned(in_a)) is
			when i>0 & i<2 => 
			
	end process UnoEn;
	
end behave;