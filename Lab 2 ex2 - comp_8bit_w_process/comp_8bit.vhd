library ieee;
use ieee.std_logic_1164.all;

entity comp_8bit is

port( A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		L: out std_logic;
		G: out std_logic;
		E: out std_logic
    );

end entity comp_8bit;

architecture dataflow of comp_8bit is

signal LGE_vector : std_logic_vector(2 downto 0); --Less than bit is [2], Greater than bit is [1], and equal bit is [0]

begin

logic: process (A,B) is

	begin

		if (A < B) then 
		LGE_vector <= "100";

		elsif (A > B) then
		LGE_vector <= "010";

		elsif (A = B) then
		LGE_vector <= "001";

		else
		LGE_vector <= "000";

end if;

--CSA inside process?
L <= LGE_vector(2); 
G <= LGE_vector(1);
E <= LGE_vector(0);

end process logic;

end architecture dataflow;