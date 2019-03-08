library ieee;
use ieee.std_logic_1164.all;

entity tbird_lights is

port (L : in std_logic; -- press LEFT
		R : in std_logic; -- press RIGHT
		S : in std_logic; -- press simulataneously for HAZARD lights (all lights turn on)
      CLK: in std_logic; 
		reset: in std_logic;
		LC,LB,LA,RA,RB,RC: out std_logic); -- individual tail light bits

end entity;
architecture behavioral of tbird_lights is

type STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6,s7); -- 8 total states
signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;

begin

process(reset, CLK)

begin
	if reset = '1' then 
	NEXT_STATE <= S0;
	
	elsif(rising_edge(CLK)) then
		case CURRENT_STATE is
when S0 => if(L = '0' and R = '0' and S='0') then
			NEXT_STATE <= S0;
			elsif (L ='1') then
			NEXT_STATE <= S1;
			elsif (R = '1') then
			NEXT_STATE <= S4;
			else
			NEXT_STATE <= S7; -- turn all lights on; hazard lights
			end if;	
when S1 => if(S = '1') then
			NEXT_STATE <= S7;
			elsif (L = '1') then
			NEXT_STATE <= S2;
			else
			NEXT_STATE <= S0; -- go back to idle when RIGHT is pressed when in the LEFT sequence
			end if;
when S2 => if(S = '1') then
			NEXT_STATE <= S7;
			elsif (L = '1') then
			NEXT_STATE <= S3;
			else
			NEXT_STATE <= S0; -- go back to idle when RIGHT is pressed when in the LEFT sequence
			end if;
when S3 => if(S = '1') then
			NEXT_STATE <= S7;
			else
			NEXT_STATE <= S0; -- go back to idle when RIGHT is pressed when in the LEFT sequence
			end if;
when S4 => if(S = '1') then
			NEXT_STATE <= S7;
			elsif (R = '1') then
			NEXT_STATE <= S5;
			else
			NEXT_STATE <= S0; --go back to idle when LEFT is pressed when in the RIGHT sequence
			end if;
when S5 => if(S = '1') then
			NEXT_STATE <= S7;
			elsif (R = '1') then
			NEXT_STATE <= S6;
			else
			NEXT_STATE <= S0; --go back to idle when LEFT is pressed when in the RIGHT sequence
			end if;
when S6 => if(S = '1') then
			NEXT_STATE <= S7;
			else
			NEXT_STATE <= S0; -- go back to idle when LEFT is pressed when in the RIGHT sequence
			end if;
when S7 => NEXT_STATE <= S0;

		end case;
	end if;
end process;


process(CURRENT_STATE)
begin
LC <= '0'; LB <= '0'; LA <= '0';
RA <= '0'; RB <= '0'; RC <= '0';

case CURRENT_STATE is
-- MOORE OUTPUTS

when S0 => null; -- all lights are off
when S1 => LA <= '1'; --001000
when S2 => LA <= '1'; LB <= '1'; --011000
when S3 => LA <= '1'; LB <= '1'; LC <= '1'; --111000
when S4 => RA <= '1'; --000001
when S5 => RA <= '1'; RB <= '1'; -- 000011
when S6 => RA <= '1'; RB <= '1'; RC <= '1';  --000111
when S7 => LA <= '1'; LB <= '1'; LC <= '1'; RA <= '1'; RB <= '1'; RC <= '1'; --111111

end case;
end process;
end architecture;