library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is

	port(A: in std_logic_vector(3 downto 0);
		  S: in std_logic_vector(1 downto 0);
		  Y: out std_logic
	);
	
end mux4_1;

architecture behavior of mux4_1 is

begin
	
	Y <= A(3) when S = "00" else
		  A(2) when S = "01" else
		  A(1) when S = "10" else
		  A(0);

end behavior;