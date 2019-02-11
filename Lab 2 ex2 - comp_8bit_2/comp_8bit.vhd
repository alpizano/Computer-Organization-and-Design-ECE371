Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comp_8bit is
	  port(
	  A : in std_logic_vector(3 downto 0);
	  B : in std_logic_vector(3 downto 0);
	  E :  out std_logic;
	  G : out std_logic;
	  L : out std_logic
	  );

end comp_8bit;

	 
architecture bhv of comp_8bit is

begin

G <= '1' when (A > B)

else '0';

E <= '1' when (A = B)

else '0';

L <= '1' when (A < B)

else '0';

end bhv;