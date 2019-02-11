library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
port (A : in std_logic;
		B : in std_logic;
		Cout : out std_logic;
		S : out std_logic
);

end entity half_adder;

architecture dataflow of half_adder is

begin

S <= A XOR B;
Cout <= A AND B;

end architecture dataflow;