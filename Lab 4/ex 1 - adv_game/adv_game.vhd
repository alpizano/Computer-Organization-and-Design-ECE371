library ieee;
use ieee.std_logic_1164.all;
entity adv_game is
	port
	(  clk		  : in std_logic;
		n, s, e, w : in std_logic;
		reset	     : in std_logic;
		sw, d, win : out std_logic
	);
end entity;
architecture rtl of adv_game is
	type state_type is (CC, TT, RR, SS, DD, VV, GG); -- 7 total states
	signal state : state_type;
	signal v : std_logic; --signal for vorpal sword, '1' = has sword, '0' = no sword
begin
	process (clk, reset)
	begin
		if reset = '1' then
			state <= CC;
		elsif (rising_edge(clk)) then
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
						state <= SS;
					end if;	
					
				when DD=>
					if v = '1' then
						state <= VV; -- go to victory vault if have sword (v = '1')		
					elsif v = '0' then
						state <= GG; -- go to grievous gravard if no vorpal sword (v = '0')
					else
					   state <= DD;
					end if;			
				when VV=>
				   state <= CC; -- when you win the game, go back to CC and start over		
			   when GG=>
				   state <= CC; -- -- when you win the game, go back to CC and start over				
			end case;
		end if;
	end process;

	process (state, sw)
	begin
			case state is
			-- MOORE outputs (only depends on state)
				when CC => sw <= '0';
				when TT => sw <= '0';
				when SS => sw <= '1'; --when you find vorpal sword in SS
				when RR => sw <= '0';
				when VV => win <= '1';
				when GG=> d <= '1';
			-- MEELY output (depends on state AND external input, hence the 'sw' in sensitivity list)
				when DD =>
					if sw = '1' then
						v <= '1';
					else
						v <= '0';
					end if;	
			end case;
	end process;
end rtl;
