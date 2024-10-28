library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity new_project is
	port (SW1 : IN STD_LOGIC;
			SW2 : IN STD_LOGIC;
			SW3 : IN STD_LOGIC;
			LED : OUT STD_LOGIC);
end new_project;

architecture behave of new_project is

begin
	
	LED <=   NOT( SW1 XOR NOT SW2 ) OR ( NOT SW2 AND SW3);

end behave;			
