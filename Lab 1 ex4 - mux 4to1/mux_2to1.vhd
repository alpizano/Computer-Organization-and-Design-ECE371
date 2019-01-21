library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1 is

port( s : in std_logic;
      D1 : in std_logic;
		D0 : in std_logic;
		y : out std_logic);
		
end entity mux_2to1;

architecture dataflow of mux_2to1 is

begin

 --using Simple Concurrent Signal Assignment (SCSA)
 y <= (not(s) and D0) OR (s AND D1);



end architecture dataflow;