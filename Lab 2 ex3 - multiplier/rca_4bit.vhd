library ieee;
use ieee.std_logic_1164.all;

entity rca_4bit is

port ( A : in std_logic_vector (3 downto 0);
		 B : in std_logic_vector (3 downto 0);
		 Cin : in std_logic;
		 S : out std_logic_vector (3 downto 0);
		 Cout : out std_logic);
		 
end rca_4bit;

architecture behavioral of rca_4bit is

	 
-- Full Adder VHDL Code Component Decalaration
		component full_adder 

				port ( A : in std_logic;
						 B : in std_logic;
						 Cin : in std_logic;
						 S : out std_logic;
						 Cout : out std_logic);
		 
				end component;
	
signal Crazy : std_logic_vector(3 downto 1);

begin

-- Port Mapping Full Adder 4 times
FA1: full_adder port map( A(0), B(0), Cin, S(0), Crazy(1));
FA2: full_adder port map( A(1), B(1), Crazy(1), S(1), Crazy(2));
FA3: full_adder port map( A(2), B(2), Crazy(2), S(2), Crazy(3));
FA4: full_adder port map( A(3), B(3), Crazy(3), S(3), Cout);

end behavioral;