library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;



entity SIMResComp is

end SIMResComp;




architecture behave of SIMResComp is

	
	-- DEFINE SEÑALES DE ENTRADA Y SALIDA SUMADOR

	component RestadorCompleto 
		PORT 
		( 	
			in_a: in std_logic;
			in_b: in std_logic;
			in_bin: in std_logic;
			clk: in std_logic;
			o_res: out std_logic;
			o_bout: out std_logic
		);
	end component;

	
	
	
	-- DEF VAL INI
	
	-- in
	signal in_a: std_logic := '0';
	signal in_b: std_logic := '0';
	signal in_bin: std_logic := '0';
	signal clk: std_logic := '0';
	-- out
	signal o_res: std_logic;
	signal o_bout: std_logic;
	
	-- clk period
	constant clock_period: time := 20ns;
	
	
	
	
	-- TRAIGO SEÑALES DE SumadorCompleto
	
	BEGIN
		uut: RestadorCompleto PORT MAP(
			in_a => in_a,
			in_b => in_b,
			in_bin => in_bin,
			clk => clk,
			o_bout => o_bout,
			o_res => o_res
		);
		
		
		
		-- GENERACION DE ESTIMULOS
		
		
		-- GENERO SEÑAL DE CLOCK
		clock_process:process
			begin
				clk <= '0';
				wait for clock_period/2;
				clk <= '1';
				wait for clock_period/2;
			end process;
			
			
		-- GENERO TODAS LAS OTRAS SEÑALES
		stim_proc:process
			begin
				in_a <= '0'; in_b <= '0'; in_bin <= '0'; wait for 30ns; 
				in_a <= '0'; in_b <= '0'; in_bin <= '1'; wait for 30ns; 
				in_a <= '0'; in_b <= '1'; in_bin <= '0'; wait for 30ns; 
				in_a <= '0'; in_b <= '1'; in_bin <= '1'; wait for 30ns; 
				in_a <= '1'; in_b <= '0'; in_bin <= '0'; wait for 30ns; 
				in_a <= '1'; in_b <= '0'; in_bin <= '1'; wait for 30ns; 
				in_a <= '1'; in_b <= '1'; in_bin <= '0'; wait for 30ns; 
				in_a <= '1'; in_b <= '1'; in_bin <= '1'; wait for 30ns; 
				wait;
			end process;
		
		
	END;