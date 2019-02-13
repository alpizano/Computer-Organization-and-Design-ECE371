library ieee;
use ieee.std_logic_1164.all;

entity level_1 is
port (A : in std_logic_vector(3 downto 0);
      B : in std_logic_vector(3 downto 0);
		Cin : in std_logic;
		Cout : out std_logic;
		S : out std_logic_vector(3 downto 0)
);

end entity level_1;

architecture structure of level_1 is


signal c : std_logic_vector(4 downto 1);

begin



HA_1: entity work.half_adder(dataflow)
port map(A =>A(0), B => B(0), Cout => c(1), S => S(0) ); 

FA_2: entity work.full_adder(dataflow)
port map(A =>A(1), B => B(1), Cin => Cin, Cout => C(2), S => S(1) );

FA_3: entity work.full_adder(dataflow)
port map(A =>A(2), B => B(2), Cin => Cin, Cout => C(3), S => S(2) );

FA_4: entity work.full_adder(dataflow)
port map(A =>A(3), B => B(3), Cin => Cin, Cout => C(4), S => S(3) );

HA_5: entity work.half_adder(dataflow)
port map(A => A(4), B => c(4), Cout => Cout, S => S(4) ); 


end architecture structure;