libary ieee;
use ieee.std_logic_1164.all;

entity alu_32bit is
generic( N : Positive:= 32);
port(A, B: in std_logic_vector (31 downto 0);
 ALUControl: in std_logic_vector (1 downto 0);
 Result: out std_logic_vector (31 downto 0);
 ALUFlags: out std_logic_vector (3 downto 0) 
);

end entity alu_32bit;

architecture behavioral of ALU is

signal XNOR_ans: std_logic;
signal XOR_ans: std_logic;

begin
	

	--XNOR gate
	XNOR_ans <= ALUControl(0) XNOR A(31) XNOR B(31);

	--XOR gate
	XOR_ans <= A(31) XOR Sum(31);

	-- CARRY flag
	ALUFlag(1) <= not(ALUControl(1)) AND Cout;
	-- OVERFLOW flag
	ALUFlag(0) <= XNOR_ans AND XOR_ans AND ALUControl(1);
	-- NEGATIVE flag
	ALUFlag(3) <= Result(31);
	-- ZERO flag
	ALUFlag(2) <= not(Result(31));
	
	
	-- FOR GENERATE
ALU_chain: for i in 0 to N-1 generate

		  Cin_internal(i+1) <= G(i) OR ( P(i) AND Cin_internal(1) );

        end generate ripple;

end architecture behavioral;