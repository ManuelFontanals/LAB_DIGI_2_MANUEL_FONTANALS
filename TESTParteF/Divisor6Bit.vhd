library ieee;
use ieee .std_logic.all;
use ieee.numeric_std.all;


entity Divisor6Bit is
	PORT (
			a : in std_logic_vector [5 downto 0];
			b : in std_logic_vector [5 downto 0];
			c : out std_logic_vector [9 downto 0]
	);
end Divisor6Bit;

architecture behave of Divisor6Bit is
	begin

end behave;
