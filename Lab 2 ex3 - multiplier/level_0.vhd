library ieee;
use ieee.std_logic_1164.all;

entity level_0 is
port (--A : in std_logic_vector(3 downto 0);
      --B : in std_logic_vector(3 downto 0);
		X : in std_logic_vector(4 downto 0);
		Y : in std_logic_vector(4 downto 0);
		--Cin : in std_logic;
		Cout : out std_logic;
		P: out std_logic_vector(9 downto 0)
		--S : out std_logic_vector(7 downto 0)
);

end entity level_0;

architecture structure of level_0 is


signal c : std_logic_vector(19 downto 1); -- intermediate Carry signal, 20 total bits from C19 to C1
signal S_inter : std_logic_vector(19 downto 0); -- 20 bits

begin


--Level 1
HA_1: entity work.half_adder(dataflow)
port map(A => X(1) AND Y(0), B => X(0) AND Y(1), Cout => c(1), S => S_inter(0) ); 

FA_2: entity work.full_adder(dataflow)
port map(A => X(2) AND Y(0), B => X(1) AND Y(1), Cin => C(1), Cout => C(2), S => S_inter(1) );

FA_3: entity work.full_adder(dataflow)
port map(A => X(3) AND Y(0), B => X(2) AND Y(1), Cin => C(2), Cout => C(3), S => S_inter(2) );

FA_4: entity work.full_adder(dataflow)
port map(A => X(4) AND Y(0), B => X(3) AND Y(1), Cin => C(3), Cout => C(4), S => S_inter(3) );

HA_5: entity work.half_adder(dataflow)
port map(A => c(4)         , B => X(4) AND Y(1), Cout => C(5), S => S_inter(4) ); 



--Level 2
HA_6: entity work.half_adder(dataflow)
port map(A => S_inter(1), B => X(0) AND Y(2), Cout => c(5), S => S_inter(5) ); 

FA_7: entity work.full_adder(dataflow)
port map(A => S_inter(2), B => X(1) AND Y(2), Cin => C(5), Cout => C(6), S => S_inter(6) );

FA_8: entity work.full_adder(dataflow)
port map(A => S_inter(3), B => X(2) AND Y(2), Cin => C(6), Cout => C(7), S => S_inter(7) );

FA_9: entity work.full_adder(dataflow)
port map(A => S_inter(4), B => X(3) AND Y(2), Cin => C(7), Cout => C(8), S => S_inter(8) );

FA_10: entity work.full_adder(dataflow)
port map(A => c(5)      , B => X(4) AND Y(2), Cin => C(9), Cout => C(10), S => S_inter(9) );




--Level 3
HA_11: entity work.half_adder(dataflow)
port map(A => S_inter(6), B => X(0) AND Y(3), Cout => c(11), S => S_inter(10) ); 

FA_12: entity work.full_adder(dataflow)
port map(A => S_inter(7), B => X(1) AND Y(3), Cin => C(11), Cout => C(12), S => S_inter(11) );

FA_13: entity work.full_adder(dataflow)
port map(A => S_inter(8), B => X(2) AND Y(3), Cin => C(12), Cout => C(13), S => S_inter(12) );

FA_14: entity work.full_adder(dataflow)
port map(A => S_inter(9), B => X(3) AND Y(3), Cin => C(13), Cout => C(14), S => S_inter(13) );

FA_15: entity work.full_adder(dataflow)
port map(A => c(10)      , B => X(4) AND Y(3), Cin => C(14), Cout => C(15), S => S_inter(14) );


--Level 4
HA_16: entity work.half_adder(dataflow)
port map(A => S_inter(11), B => X(0) AND Y(4), Cout => c(16), S => S_inter(14) ); 

FA_17: entity work.full_adder(dataflow)
port map(A => S_inter(12), B => X(1) AND Y(4), Cin => C(16), Cout => C(17), S => S_inter(15) );

FA_18: entity work.full_adder(dataflow)
port map(A => S_inter(13), B => X(2) AND Y(4), Cin => C(17), Cout => C(18), S => S_inter(16) );

FA_19: entity work.full_adder(dataflow)
port map(A => S_inter(14), B => X(3) AND Y(4), Cin => C(18), Cout => C(19), S => S_inter(17) );

FA_20: entity work.full_adder(dataflow)
port map(A => c(15)      , B => X(4) AND Y(4), Cin => C(19), Cout => Cout, S => S_inter(18) );



P(0) <= X(0) AND Y(0);
P(1) <= S_inter(0);
P(2) <= S_inter(5);
P(3) <= S_inter(10);
P(4) <= S_inter(15);
P(5) <= S_inter(16);
P(6) <= S_inter(17);
P(7) <= S_inter(18);
P(8) <= S_inter(19);
P(9) <= Cout;

end architecture structure;