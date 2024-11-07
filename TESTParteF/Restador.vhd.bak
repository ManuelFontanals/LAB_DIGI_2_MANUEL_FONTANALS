LIBRARY ieee;
USE ieee. std_logic_1164.ALL;


entity Restador4Bit is
	PORT(
	a : in std_logic;
	b : in std_logic;
	bin : in std_logic;
	bout : out	std_logic;
	res : out std_logic
	);
end Restador4Bit;


architecture behave of Restador4Bit is

begin
	res <= a xor b xor bin;
	bout <= ( not a   and  (b or bin) ) or (bin and b);

end behave;
