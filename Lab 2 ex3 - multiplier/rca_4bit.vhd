library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

	-- Intermediate Carry declaration
	signal c1,c2,c3: std_logic;

	begin

	-- Port Mapping Full Adder 4 times
FA1: full_adder port map( A(0), B(0), Cin, S(0), c1);
FA2: full_adder port map( A(1), B(1), c1, S(1), c2);
FA3: full_adder port map( A(2), B(2), c2, S(2), c3);
FA4: full_adder port map( A(3), B(3), c3, S(3), Cout);

end behavioral;