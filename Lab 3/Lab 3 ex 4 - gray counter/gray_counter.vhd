library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity gray_counter is

port(clk : in std_logic;
     reset: in std_logic;
	  dout: out std_logic_vector(2 downto 0)
	  );
	  
end entity;

architecture behavioral of gray_counter is

signal temp: std_logic_vector(2 downto 0);
signal temp_gray: std_logic_vector(2 downto 0);

begin

	process(clk, reset)

		begin

			if(reset='1') then temp<="000";
			
			elsif(clk'event and clk='1') then
				temp <= temp+1;
				
			end if;
			
	end process;
	
	process(temp)
	
		begin
		
			temp_gray(2)<=temp(2);
			
			temp_gray(1)<= temp(1) xor temp(2);
			
			temp_gray(0)<= temp(1) xor temp(0);

	end process;
	
	dout <= temp_gray;
	
end behavioral;