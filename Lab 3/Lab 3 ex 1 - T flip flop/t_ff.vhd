library ieee;
use ieee.std_logic_1164.all;

entity t_ff is

port( T: in std_logic;
		CLK: in std_logic;
		Q: out std_logic
     );


end entity;

architecture behavior of t_ff is

begin


jk_ff: entity work.jk_ff(behavior)

port map(clk => clk, JK(1) => T, JK(0) => T, Q => Q );


end architecture behavior;