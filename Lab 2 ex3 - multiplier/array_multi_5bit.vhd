library ieee;
use ieee.std_logic_1164.all;

entity array_multi_5bit is
port(X4 : in std_logic;
     X3 : in std_logic;
	  X2 : in std_logic;
	   X1 : in std_logic;
	   X0 : in std_logic;
		Y4 : in std_logic;
		Y3 : in std_logic;
		Y2 : in std_logic;
	   Y1 : in std_logic;
	   Y0 : in std_logic;
	  --Cin:
	  Cout: out std_logic_vector(19 downto 0);
	  P: out std_logic_vector(9 downto 0)
     );

end entity array_multi_5bit;

architecture dataflow of array_multi_5bit is

signal nocarry : std_logic;





component rca_4bit is

port ( A3 : in std_logic;
		 A2 : in std_logic;
		 A1 : in std_logic;
	    A0 : in std_logic;	
		 B3 : in std_logic;
		 B2 : in std_logic;
		 B1 : in std_logic;
		 B0 : in std_logic;
		 Cin : in std_logic;
		 S : out std_logic;
		 Cout : out std_logic);
		 
end component;




begin

nocarry <= '0';

Level1: rca_4bit port map(X4 AND Y0, X3 AND Y0, X2 AND Y0, X1 AND Y0, X3 AND Y1, X2 AND Y1, X1 AND Y1, X0 AND Y1, nocarry, P1, C0);

--Level1: entity work.rca_4bit(behavioral)
--port map(s0 => s0, s1 => s1, D0 => D0, D1 => D1, D2 => D2, D3 => D3, y => x1); 

--Level3: entity work.rca_4bit(behavioral)
--port map(s0 => s0, s1 => s1, D0 => D0, D1 => D1, D2 => D2, D3 => D3, y => x1); 

--Level4: entity work.rca_4bit(behavioral)
--port map(s0 => s0, s1 => s1, D0 => D0, D1 => D1, D2 => D2, D3 => D3, y => x1); 

--Level5: entity work.rca_4bit(behavioral)
--port map(s0 => s0, s1 => s1, D0 => D0, D1 => D1, D2 => D2, D3 => D3, y => x1); 


P(0) <= X(0) AND Y(0);

end architecture dataflow;