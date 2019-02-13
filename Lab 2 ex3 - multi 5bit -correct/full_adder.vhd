library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port (A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		S : out std_logic;
		Cout : out std_logic
      );

end entity full_adder;

architecture dataflow of full_adder is

begin

S <= A XOR B XOR Cin;
Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);

end architecture dataflow;