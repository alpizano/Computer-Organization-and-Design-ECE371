-- Quartus Prime VHDL Template
-- Three-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity misc is

	port(
		clk		 : in	std_logic;
		a	 : in	std_logic;
		reset	 : in	std_logic;
		y	 : out	std_logic
	);

end entity;

architecture behavioral of misc is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2);

	-- Register to hold the current state
	signal state   : state_type;
	signal next_state: state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset) -- process (all) begin
	begin
		if reset = '1' then state <= s0;
		
		elsif (rising_edge(clk)) then 
		
		case state is
		
				when s0=>
					if a = '1' then next_state <= s0;
					else
						next_state <= s1;
					end if;
					
				when s1=>
					if a = '0' then next_state <= s1;
					else
						next_state <= s2;
					end if;
					
				when s2=>
					if a = '0' then next_state <= s1;
					else
						next_state <= s0;
					end if;

					
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	
	-- process (all) begin
	process (state) 
	
	begin
		case state is
		
		--y <= 1 when state = s1 else '0';
		--y <= 0 when state = s0 else '1';
		--y <= 1 when state = s2 else '0';
		
			when s0 =>
				y <= '0';
			when s1 =>
				y <= '1';
			when s2 =>
				--y <= '1';
				
		end case;
	end process;

end architecture behavioral;
