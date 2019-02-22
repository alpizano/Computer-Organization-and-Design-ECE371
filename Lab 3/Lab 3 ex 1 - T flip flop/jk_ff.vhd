library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
	port 
	(
		clk	: in std_logic;  
		JK	   : in std_logic_vector(1 downto 0);  -- J is 1st bit, K is 0th bit (MSB <=> LSB)
		Q	   : out std_logic
		--Qbar	: out std_logic);
		);

end entity jk_ff;

architecture behavior of jk_ff is
	
	signal qtemp : std_logic;

begin

	--Qbar <= not Qtemp; 
	
	jk_ff : process(clk) is begin 
	
		if(rising_edge(clk)) then

			case (jk) is
				when "11" => Qtemp <= not Qtemp; -- If both J and K are 1, Q becomes opposite of present state
				when "01" => Qtemp <= '0'; -- If only K is 1, Q becomes 0
				when "10" => Qtemp <= '1'; -- If only J is 1, Q become 1
				when others => Qtemp <= Qtemp; -- Q retains old value
			end case;
	
		
	 end if;		
	 
	end process jk_ff;
	
	Q <= Qtemp;
	
	
end architecture behavior;
