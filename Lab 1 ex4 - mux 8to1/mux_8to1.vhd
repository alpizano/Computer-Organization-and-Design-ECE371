library ieee;
use ieee.std_logic_1164.all;

entity mux_8to1 is

port ( s2 : in std_logic;
       s1 : in std_logic;
       s0 : in std_logic;
		 D0 : in std_logic;
		 D1 : in std_logic;
		 D2 : in std_logic;
		 D3 : in std_logic;
		 D4 : in std_logic;
		 D5 : in std_logic;
		 D6 : in std_logic;
		 D7 : in std_logic;
		 y  : out std_logic
     );

end entity mux_8to1;

architecture structure of mux_8to1 is

signal x1 : std_logic; --intermediate output from mux1
signal x2 : std_logic; --intermediate output from mux2


begin


mux4to1_1: entity work.mux_4to1(structure)
port map(s0 => s0, s1 => s1, D0 => D0, D1 => D1, D2 => D2, D3 => D3, y => x1); --component instantiation w/ positional association

mux4to1_2: entity work.mux_4to1(structure)
port map(s0 => s0, s1 => s1, D0 => D4, D1 => D5, D2 => D6, D3 => D6, y => x2); --component instantiation w/ positional association

mux2to1: entity work.mux_2to1(dataflow)
port map(s => s2, D0 => x1, D1 => x2, y => y); --component instantiation w/ positional association


end architecture structure;