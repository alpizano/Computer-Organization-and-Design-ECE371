library ieee;
use ieee.std_logic_1164.all;

entity hex7seg_decoder is

 port(D : in std_logic_vector(3 downto 0);
		S : out std_logic_vector(0 to 6));

end entity hex7seg_decoder;

architecture dataflow of hex7seg_decoder is

begin

with D select

       S <= 7x"01" when "0000", --0
            7x"4f" when "0001", --1
            7x"12" when "0010", --2
            7x"06" when "0011", --3
            7x"4c" when "0100", --4
            7x"24" when "0101", --5
            7x"20" when "0110", --6
            7x"0f" when "0111", --7
            7x"00" when "1000", --8
            7x"04" when "1001", --9
            7x"08" when "1010", --A
            7x"60" when "1011", --B
            7x"31" when "1100", --C
            7x"42" when "1101", --D
            7x"30" when "1110", --E
            7x"38" when "1111", --F
            7x"7F" when others;

end architecture dataflow;