-- Quartus II VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;

entity MaquinaEst2 is

	port
	(
		clk		 : in	std_logic;
		x   : in	std_logic;
		reset	 : in	std_logic;
		z   : out	std_logic
	);

end entity;

architecture rtl of MaquinaEst2 is

	-- Build an enumerated type for the state machine
	type state_type is (A, B, D, C);

	-- Register to hold the current state
	signal state : state_type;

begin

	process (clk, reset)
	begin

		if reset = '1' then
			state <= A;

		elsif (rising_edge(clk)) then

			-- Determine the next state synchronously, based on
			-- the current state and the input
			case state is
				when A=>
					if x = '1' then
						state <= B;
					else
						state <= A;
					end if;
				when B=>
					if x = '1' then
						state <= D;
					else
						state <= A;
					end if;
				when D=>
					if x = '1' then
						state <= C;
					else
						state <= A;
					end if;
				when C=>
					if x = '1' then
						state <= C;
					else
						state <= A;
					end if;
			end case;

		end if;
	end process;

	-- Determine the output based only on the current state
	-- and the input (do not wait for a clock edge).
	process (state, x)
	begin
			case state is
				when A=>
					if x = '1' then
						z <= '0';
					else
						z <= '0';
					end if;
				when B=>
					if x = '1' then
						z <= '0';
					else
						z <= '0';
					end if;
				when D=>
					if x = '1' then
						z <= '0';
					else
						z <= '0';
					end if;
				when C=>
					if x = '1' then
						z <= '1';
					else
						z <= '0';
					end if;
			end case;
	end process;

end rtl;
