library ieee;
use ieee.std_logic_1164.all;

entity johnson_nbit is
port ( clk : in std_logic;
	    rst : in std_logic;
	    Q   : out std_logic_vector(3 downto 0)
	   );
	
	end entity;

	architecture Behavioral of johnson_nbit is
	
	signal temp: std_logic_vector(3 downto 0):= "0000";
	
	begin
	
		process(clk,rst)
	
		begin
	
			if rst = '1' then

				temp <= "0000";

					elsif Rising_edge(clk) then

						temp(1) <= temp(0);
						temp(2) <= temp(1);
						temp(3) <= temp(2);
						temp(0) <= not temp(3);

					end if;
		end process;

	Q <= temp;

end Behavioral;