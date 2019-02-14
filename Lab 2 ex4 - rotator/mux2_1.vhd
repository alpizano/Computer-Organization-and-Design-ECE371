library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is

	port(A: in std_logic_vector(1 downto 0);
		  S: in std_logic;
		  Y: out std_logic
	);
	
end mux2_1;

architecture behavior of mux2_1 is

begin
	
	Y <= A(1) when S = '0' else
		  A(0);

end behavior;