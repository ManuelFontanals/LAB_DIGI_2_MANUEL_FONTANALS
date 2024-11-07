library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AgrandoA is
	PORT ( 
			a : in std_logic_vector (5 downto 0);
			a_out : out std_logic_vector (15 downto 0)			
	);
end AgrandoA;

architecture behave of AgrandoA is
	begin
		a_out <= "000000" & a & "0000";

end behave;
