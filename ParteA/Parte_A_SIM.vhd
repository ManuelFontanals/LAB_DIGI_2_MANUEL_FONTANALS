library IEEE;
use IEEE.STD_LOGIC_1164.all;


 -- HOLA SOY YO:
entity Parte_A_SIM is

end Parte_A_SIM;



architecture behavior of Parte_A_SIM is 

	component Parte_A 
	-- DEFINE NOMBRE DEL COMPONENTE PARA SIMUL
		
		port (SW1 : IN std_logic;
				SW2 : IN std_logic;
				SW3 : IN std_logic;
				LED : OUT std_logic);
	end component;
	
	
	
	
	-- ______VALORES TEST______
	
	-- DEFINE VALORES DE LAS SEÑALES INI (CREO)
	
		--signal in
		signal SW1 : std_logic := '0';
		signal SW2 : std_logic := '0';
		signal SW3 : std_logic := '0';
		--signal out
		signal LED : std_logic;
		
		
		
		
		
	--______INICIA PROCESO TEST______
		
	BEGIN
		
		-- UNIT UNDER TEST, LE DEFINE QUE SEÑAL DEL "new_project" ES CADA COMPONENTE DE SIMUL
		uut : Parte_A port map(
		SW1 => SW1,
		SW2 => SW2,
		SW3 => SW3,
		LED => LED
		);
		
		-- DA VALORES SOBRE LAS ENTRADAS
		stim_proc :process
		
		begin
		
		SW1 <= '0' ; SW2 <= '0' ; SW3 <= '0'; wait for 10ns;
		SW1 <= '0' ; SW2 <= '0' ; SW3 <= '1'; wait for 10ns;
		SW1 <= '0' ; SW2 <= '1' ; SW3 <= '0'; wait for 10ns;
		SW1 <= '0' ; SW2 <= '1' ; SW3 <= '1'; wait for 10ns;
		SW1 <= '1' ; SW2 <= '0' ; SW3 <= '0'; wait for 10ns;
		SW1 <= '1' ; SW2 <= '0' ; SW3 <= '1'; wait for 10ns;
		SW1 <= '1' ; SW2 <= '1' ; SW3 <= '0'; wait for 10ns;
		SW1 <= '1' ; SW2 <= '1' ; SW3 <= '1'; wait for 10ns;
		
		wait;
		end process;
		
	END;

		