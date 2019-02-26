library ieee;
use ieee.std_logic_1164.all;

entity array_multi_5bit is
port(
		X: in std_logic_vector(4 downto 0);
		Y: in std_logic_vector(4 downto 0);
		P: out std_logic_vector(9 downto 0)
		--Cout: out std_logic_vector(19 downto 1)
      );

end entity array_multi_5bit;

architecture structure of array_multi_5bit is

signal noCarry: std_logic;
signal Cinternal: std_logic_vector(19 downto 0);
signal Sums : std_logic_vector(19 downto 0);
--signal Cinternal_level_1: std_logic_vector(3 downto 1);


begin

--noCarry <= '0';



P(0) <= X(0) AND Y(0); --value of product 0
--P(1) <= Sums(0);

end architecture structure;