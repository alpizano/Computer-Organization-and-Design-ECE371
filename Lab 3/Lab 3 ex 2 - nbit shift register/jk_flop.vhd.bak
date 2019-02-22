library ieee;
use ieee.std_logic_1164.all;

entity jk_flop is
	port 
	(
		rst	: in std_logic; 
		clk	: in std_logic; 
		en	   : in std_logic; 
		j	   : in std_logic;  
		k	   : in std_logic; 
		q	   : out std_logic; 
		qbar	: out std_logic);

end entity;

architecture behavior of jk_flop is
	
	signal qtemp :std_logic;
	signal en_jk :std_logic_vector (2 downto 0);

begin

	en_jk<= en & j&k;
	
	qbar <= not qtemp; 
	
	jk_flop : process(clk, rst) is begin 

	
	if(falling_edge(clk)) then
	
		if( rst = '1') then qtemp <= '0';
		
		else

			case (en_jk) is
				when "111" => qtemp <= not qtemp;
				when "101" => qtemp <= '0';
				when "110" => qtemp <= '1';
				when others => qtemp <= qtemp;
			end case;
			
		end if;
		
	 end if;		
	 
	end process jk_flop;
	
	q <= qtemp;
	
	
end architecture behavior;
