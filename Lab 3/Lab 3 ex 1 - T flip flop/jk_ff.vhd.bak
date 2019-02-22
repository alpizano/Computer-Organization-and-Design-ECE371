library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
	port 
	(
		clk	: in std_logic;  
		jk	   : in std_logic_vector(1 downto 0);  
		q	   : out std_logic; 
		qbar	: out std_logic);

end entity;

architecture behavior of jk_ff is
	
	signal qtemp : std_logic;

begin

	qbar <= not qtemp; 
	
	jk_ff : process(clk) is begin 
	
		if(rising_edge(clk)) then
		
		

			case (jk) is
				when "11" => qtemp <= not qtemp; -- If both J and K are 1, Q becomes opposite of present state
				when "01" => qtemp <= '0'; -- If only K is 1, Q becomes 0
				when "10" => qtemp <= '1'; -- If only J is 1, Q become 1
				when others => qtemp <= qtemp; -- Q retains old value
			end case;
	
		
	 end if;		
	 
	end process jk_ff;
	
	q <= qtemp;
	
	
end architecture behavior;
