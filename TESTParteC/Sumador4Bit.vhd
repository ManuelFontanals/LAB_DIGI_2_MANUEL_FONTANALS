library ieee;
use ieee.std_logic_1164.all;


entity Sumador4Bit is
	PORT(
	a : in std_logic;
	b : in std_logic;
	cin : in std_logic;
	cout : out	std_logic;
	res : out std_logic
	);
end Sumador4Bit;


architecture behave of Sumador4Bit is

begin
	res <= a xor b xor cin;
	cout <= (a and b) or ( cin and (a xor b) );
	
end behave;
