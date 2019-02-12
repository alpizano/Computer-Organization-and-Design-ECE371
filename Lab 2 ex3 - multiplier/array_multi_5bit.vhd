library ieee;
use ieee.std_logic_1164.all;

entity array_multi_5bit is
port(
		A: in std_logic_vector(4 downto 0);
		B: in std_logic_vector(4 downto 0);
		P: out std_logic_vector(9 downto 0)
		--Cout: out std_logic_vector(19 downto 1)
      );

end entity array_multi_5bit;

architecture structure of array_multi_5bit is

signal noCarry: std_logic;
signal Cinternal: std_logic_vector(19 downto 0);
signal Sums : std_logic_vector(19 downto 0);
--signal Cinternal_level_1: std_logic_vector(3 downto 1);



--signal Sum_level_0 : std_logic_vector(3 downto 0);
--signal Sum_level_1 : std_logic_vector(3 downto 0);


begin

noCarry <= '0';

level_0: entity work.rca_4bit(behavioral)
port map( 
B(0) => A(1) AND B(0), A(0) => A(0) AND B(1), B(1) => A(2) AND B(0), A(1) => A(1) AND B(1), B(2) => A(3) AND B(0), A(2) => A(2) AND B(1), B(3) => A(4) AND B(0), A(3) => A(3) AND B(1), 
Cin => noCarry, 
S(0) => Sums(0), S(1) => Sums(1), S(2) => Sums(2), S(3) => Sums(3), 
Crazy(1) => Cinternal(0), Crazy(2) => Cinternal(1), Crazy(3) => Cinternal(2), Cout => Cinternal(3) ); 

--level_1: entity work.rca_4bit(behavioral)
--port map( B(0) => Sums(1), A(0) => A(0) AND B(2), B(1) => Sums(2), A(1) => A(1) AND B(2), B(2) => Sums(3), A(2) => A(2) AND B(2), B(3) => A(4) AND B(1), A(3) => A(3) AND B(2), Cin => Cinternal(0), S(0) => Sums(4), S(1) => Sums(5), S(2) => Sums(6), S(3) => Sums(7), C(1) => Cinternal(4), C(2) => Cinternal(5), C(3) => Cinternal(6), Cout => Cinternal(7) ); 

--level3:
--level4:
--level5:

--P(0) <= A(0) AND B(0); --value of product 0
--P(1) <= Sums(0);

end architecture structure;