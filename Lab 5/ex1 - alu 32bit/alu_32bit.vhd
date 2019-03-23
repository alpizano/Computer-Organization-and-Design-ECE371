libary ieee;
use ieee.std_logic_1164.all;

entity alu_32bit is
--generic( N : Positive:= 4);
port(A, B: in std_logic_vector (31 downto 0);
 ALUControl: in std_logic_vector (1 downto 0);
 Result: out std_logic_vector (31 downto 0);
 ALUFlags: out std_logic_vector (3 downto 0) 
);

end entity alu_32bit;

architecture behavioral of ALU is

signal b_inter : std_logic_vector(31 downto 0); -- output of 2to1 MUX
signal Cout : std_logic; --output of FA
signal Sum : std_logic --result output of FA
signal AND_ans : std_logic_vector(31 downto 0);
signal OR_ans : std_logic_vecttor(31 downto 0);
signal XNOR_ans: std_logic;
signal XOR_ans: std_logic;

begin
	-- 2to1 MUX design
	with ALUControl(0) select
		signal B_inter <= not(B) when '1',
		  	               B when others;
	-- FA design
FA: entity work.full_adder(dataflow)
port map(A => A, B => signal B_inter, Cin => ALUControl(0), Cout => Cout, S => Sum );

	-- AND gate design
	 AND_ans <= A and B;

	-- OR gate design
	 OR_ans <= A or B;

	-- 4to1 MUX design
	with ALUControl select
		Result <= Sum when "00",
			  Sum when "01",
			  AND_ans when "10",
                          OR_ans when others;

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
ALU_chain: for i in 1 to 2 generate

		  Cin_internal(i+1) <= G(i) OR ( P(i) AND Cin_internal(1) );

        end generate ripple;

end architecture behavioral;