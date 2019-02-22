library ieee;
use ieee.std_logic_1164.all;

entity johnson_nbit is

generic ( N : integer := 4 );

port ( 
       clk: in std_logic; -- clock
       clr: in std_logic; -- clear
       Qout: out std_logic_vector(N-1 downto 0) -- output
 
      );
		
end entity johnson_nbit;


architecture behavioral of johnson_nbit is

signal Qbar: std_logic;

signal Q : std_logic_vector(N-1 downto 0) := (others => '0');

begin

Qbar <= not Q(N-1);

			process(CLK, clr)

				begin
					if(clr = '1') then 
 
					Q <= (others => '0');
 
					elsif(rising_edge(CLK)) then
 
					Q <= Q(N-2 downto 0) & Qbar; 
 
					end if;
 
			end process;

	Qout <= Q;

end architecture behavioral;