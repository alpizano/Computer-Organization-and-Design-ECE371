library ieee;
use ieee.std_logic_1164.all;

entity d_ff is

port(
		CLK : in std_logic;
		D : in std_logic;
		Q : out std_logic
		--Qbar : out std_logic
    );

end entity;

--signal Qtemp : std_logic;


architecture behavioral of d_ff is

begin 

--Qbar <= not(Qtemp);

	process (CLK) is begin
	
		if(rising_edge(CLK)) then
			Q <= D;
		
		end if;
		
			--case (D) is
				--when '0' => Qtemp <= '0'; --active CLK reset
				--when "1" => Qtemp <= '1'; -- active CLK set
				--when others => Qtemp <= Qtemp;
			--end case;

	end process;
	
	--Q <= Qtemp;


end architecture behavioral;