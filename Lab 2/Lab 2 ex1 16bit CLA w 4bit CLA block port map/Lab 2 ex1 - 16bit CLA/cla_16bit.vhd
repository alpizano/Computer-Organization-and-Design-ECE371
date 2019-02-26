library ieee;
use ieee.std_logic_1164.all;

entity cla_16bit is

port ( A : in std_logic_vector(15 downto 0);
       B : in std_logic_vector(15 downto 0);
		 Cin : in std_logic;
		 Cout  : out std_logic;
		 S : out std_logic_vector(15 downto 0)
     );

end entity cla_16bit;

architecture structure of cla_16bit is

signal Cin_internal : std_logic_vector(3 downto 1); --intermediate output from mux1



begin


cla_4bit_1: entity work.cla_4bit(dataflow)
port map(A(0) => A(0), A(1) => A(1), A(2) => A(2), A(3) => A(3), B(0) => B(0), B(1) => B(1), B(2) => B(2), B(3) => B(3), S(0) => S(0), S(1) => S(1), S(2) => S(2), S(3) => S(3), Cin => Cin, Cout => Cin_internal(1)); --component instantiation w/ positional association

cla_4bit_2: entity work.cla_4bit(dataflow)
port map(A(0) => A(4), A(1) => A(5), A(2) => A(6), A(3) => A(7), B(0) => B(4), B(1) => B(5), B(2) => B(6), B(3) => B(7), S(0) => S(4), S(1) => S(5), S(2) => S(6), S(3) => S(7), Cin => Cin_internal(1), Cout => Cin_internal(2) ); --component instantiation w/ positional association

cla_4bit_3: entity work.cla_4bit(dataflow)
port map(A(0) => A(8), A(1) => A(9), A(2) => A(10), A(3) => A(11), B(0) => B(8), B(1) => B(9), B(2) => B(10), B(3) => B(11), S(0) => S(8), S(1) => S(9), S(2) => S(10), S(3) => S(11), Cin => Cin_internal(2), Cout => Cin_internal(3)); --component instantiation w/ positional association

cla_4bit_4: entity work.cla_4bit(dataflow)
port map(A(0) => A(12), A(1) => A(13), A(2) => A(14), A(3) => A(15), B(0) => B(12), B(1) => B(13), B(2) => B(14), B(3) => B(15), S(0) => S(12), S(1) => S(13), S(2) => S(14), S(3) => S(15), Cin => Cin_internal(3), Cout => Cout); --component instantiation w/ positional association



end architecture structure;