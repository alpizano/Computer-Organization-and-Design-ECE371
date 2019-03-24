library ieee;
use ieee.std_logic_1164.all;

entity alu_1bit is
port(A: in std_logic;
	  B: in std_logic;
     ALUControl: in std_logic_vector (1 downto 0); -- Op code
	  --B_invert: in std_logic;
	  Cin : std_logic;
	  --Op_code : std_logic_vector(1 downto 0);
	  Cout : out std_logic;
	  Sum: out std_logic;
     Result: out std_logic -- Output of 4-to-1 MUX
   --N: out std_logic; -- Negative flag
	--Z: out std_logic --Zero flag
     --ALUFlags: out std_logic_vector (1 downto 0)

);

end entity alu_1bit;

architecture behavioral of alu_1bit is

signal B_inter : std_logic; -- output of 2to1 MUX
--signal Cout : std_logic; --Carryout output of FA
--signal Sum : std_logic; --Sum output of FA
signal AND_ans : std_logic; -- output of AND gate
signal OR_ans : std_logic; -- output of OR gate

begin

-- 2-to-1 MUX
	with ALUControl(0) select
	--with B_invert select
		B_inter <= not(B) when '1',
		B when others;
		
-- Full Adder
	FA: entity work.full_adder(dataflow)
	port map(A => A, B => B_inter, Cin => Cin, Cout => Cout, S => Sum );

-- AND gate
	 AND_ans <= A and B;

-- OR gate
	 OR_ans <= A or B;

-- 4-to-1 MUX
	with ALUControl select
	--with Op_code select
		Result <= Sum when "00",
					 Sum when "01",
					 AND_ans when "10",
                OR_ans when others;

end architecture behavioral;