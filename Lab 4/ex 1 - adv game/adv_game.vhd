library ieee;
use ieee.std_logic_1164.all;

entity adv_game is

	port
	(
		clk		 : in	std_logic;
		--input	 : in	std_logic;
		n, s, e, w : in std_logic;
		reset	 : in	std_logic;
		--output	 : out	std_logic_vector(1 downto 0)
		sw, d, win : out std_logic
	);

end entity;

architecture rtl of adv_game is

	-- Build an enumerated type for the state machine
	type state_type is (CC, TT, RR, SS, DD, VV, GG);

	-- Register to hold the current state
	signal state : state_type;

begin

	process (clk, reset)
	begin

		if reset = '1' then
			state <= CC;

		elsif (rising_edge(clk)) then

			-- Determine the next state synchronously, based on
			-- the current state and the input
			case state is
				when CC=>
					if e = '1' then
						state <= TT;
					else
						state <= CC;
					end if;
					
				when TT=>
					if s = '1' then
						state <= RR;
					elsif w = '1' then
					   state <= CC;
					else
						state <= TT;
					end if;
					
				when RR=>
					if w = '1' then
						state <= SS;
					elsif e = '1' then
					   state <= DD;
					elsif n = '1' then
					   state <= TT;
					else
						state <= RR;
					end if;
					
				when SS=>
					if e = '1' then
						state <= RR;
					else
						state <= s1;
					end if;
			end case;

		end if;
	end process;

	-- Determine the output based only on the current state
	-- and the input (do not wait for a clock edge).
	process (state, input)
	begin
			case state is
				when s0=>
					if input = '1' then
						output <= "00";
					else
						output <= "01";
					end if;
				when s1=>
					if input = '1' then
						output <= "01";
					else
						output <= "11";
					end if;
				when s2=>
					if input = '1' then
						output <= "10";
					else
						output <= "10";
					end if;
				when s3=>
					if input = '1' then
						output <= "11";
					else
						output <= "10";
					end if;
			end case;
	end process;

end rtl;
