library ieee;
use ieee.std_logic_1164.all;

entity muxes is

port( s : in std_logic;
      D1 : in std_logic;
		D0 : in std_logic;
		y : out std_logic);
		
end entity muxes;

architecture dataflow of muxes is



begin

 --using Simple Concurrent Signal Assignment (SCSA)
 y <= (not(s) and D0) OR (s AND D1);



end architecture dataflow;