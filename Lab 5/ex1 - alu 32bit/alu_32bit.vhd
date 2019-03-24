library ieee;
use ieee.std_logic_1164.all;

entity alu_32bit is
--generic( N : Positive:= 32);
port(A, B: in std_logic_vector (31 downto 0);
 ALUControl: in std_logic_vector (1 downto 0);
 Result: out std_logic_vector (31 downto 0);
 ALUFlags: out std_logic_vector (3 downto 0));

end entity alu_32bit;

architecture structural of alu_32bit is

signal XNOR_ans: std_logic;
signal XOR_ans: std_logic;
signal C_internal : std_logic_vector(31 downto 1); --intermediate Carry outs from ALU chain
signal Cout : std_logic; -- final Carry out of 32bit ALU
signal Sum : std_logic_vector(31 downto 0);
signal Result_with_carry: std_logic_vector(32 downto 0);

begin

-- FOR GENERATE
--ALU_chain: for i in 0 to N-1 generate
	--ALU: entity work.alu_1bit(behavioral)
	--port map(A => A(i), B => B(i), ALUControl => ALUControl, Cout => C_internal(i+1), Result => Result(i) );
 --end generate ALU_chain;	  
			  
ALU_0: entity work.alu_1bit(behavioral)
	port map(A => A(0), B => B(0), ALUControl => ALUControl, Cin => ALUControl(0), Cout => C_internal(1), Result => Result(0), Sum => Sum(0));
ALU_1: entity work.alu_1bit(behavioral)
	port map(A => A(1), B => B(1), ALUControl => ALUControl,Cin => C_internal(1), Cout => C_internal(2), Result => Result(1), Sum => Sum(1));
ALU_2: entity work.alu_1bit(behavioral)
	port map(A => A(2), B => B(2), ALUControl => ALUControl, Cin => C_internal(2), Cout => C_internal(3), Result => Result(2), Sum => Sum(2));
ALU_3: entity work.alu_1bit(behavioral)
	port map(A => A(3), B => B(3), ALUControl => ALUControl, Cin => C_internal(3), Cout => C_internal(4), Result => Result(3) , Sum => Sum(3));
ALU_4: entity work.alu_1bit(behavioral)
	port map(A => A(4), B => B(4),ALUControl => ALUControl,  Cin => C_internal(4), Cout => C_internal(5), Result => Result(4), Sum => Sum(4));
ALU_5: entity work.alu_1bit(behavioral)
	port map(A => A(5), B => B(5), ALUControl => ALUControl, Cin => C_internal(5), Cout => C_internal(6), Result => Result(5), Sum => Sum(5));
ALU_6: entity work.alu_1bit(behavioral)
	port map(A => A(6), B => B(6), ALUControl => ALUControl, Cin => C_internal(6), Cout => C_internal(7), Result => Result(6) , Sum => Sum(6));
ALU_7: entity work.alu_1bit(behavioral)
	port map(A => A(7), B => B(7),  ALUControl => ALUControl,Cin => C_internal(7), Cout => C_internal(8), Result => Result(7), Sum => Sum(7));
ALU_8: entity work.alu_1bit(behavioral)
	port map(A => A(8), B => B(8), ALUControl => ALUControl, Cin => C_internal(8), Cout => C_internal(9), Result => Result(8) , Sum => Sum(8));
ALU_9: entity work.alu_1bit(behavioral)
	port map(A => A(9), B => B(9), ALUControl => ALUControl, Cin => C_internal(9), Cout => C_internal(10), Result => Result(9) , Sum => Sum(9));
ALU_10: entity work.alu_1bit(behavioral)
	port map(A => A(10), B => B(10),  ALUControl => ALUControl,Cin => C_internal(10), Cout => C_internal(11), Result => Result(10) , Sum => Sum(10));
ALU_11: entity work.alu_1bit(behavioral)
	port map(A => A(11), B => B(11),  ALUControl => ALUControl,Cin => C_internal(11), Cout => C_internal(12), Result => Result(11), Sum => Sum(11));
ALU_12: entity work.alu_1bit(behavioral)
	port map(A => A(12), B => B(12), ALUControl => ALUControl, Cin => C_internal(12), Cout => C_internal(13), Result => Result(12) , Sum => Sum(12));
ALU_13: entity work.alu_1bit(behavioral)
	port map(A => A(13), B => B(13), ALUControl => ALUControl, Cin => C_internal(13), Cout => C_internal(14), Result => Result(13) , Sum => Sum(13));
ALU_14: entity work.alu_1bit(behavioral)
	port map(A => A(14), B => B(14),  ALUControl => ALUControl,Cin => C_internal(14), Cout => C_internal(15), Result => Result(14) , Sum => Sum(14));
ALU_15: entity work.alu_1bit(behavioral)
	port map(A => A(15), B => B(15),  ALUControl => ALUControl,Cin => C_internal(15), Cout => C_internal(16), Result => Result(15) , Sum => Sum(15));
ALU_16: entity work.alu_1bit(behavioral)
	port map(A => A(16), B => B(16), ALUControl => ALUControl, Cin => C_internal(16), Cout => C_internal(17), Result => Result(16), Sum => Sum(16));
ALU_17: entity work.alu_1bit(behavioral)
	port map(A => A(17), B => B(17), ALUControl => ALUControl, Cin => C_internal(17), Cout => C_internal(18), Result => Result(17) , Sum => Sum(17));
ALU_18: entity work.alu_1bit(behavioral)
	port map(A => A(18), B => B(18), ALUControl => ALUControl, Cin => C_internal(18), Cout => C_internal(19), Result => Result(18) , Sum => Sum(18));
ALU_19: entity work.alu_1bit(behavioral)
	port map(A => A(19), B => B(19), ALUControl => ALUControl, Cin => C_internal(19), Cout => C_internal(20), Result => Result(19) , Sum => Sum(19));
ALU_20: entity work.alu_1bit(behavioral)
	port map(A => A(20), B => B(20), ALUControl => ALUControl, Cin => C_internal(20), Cout => C_internal(21), Result => Result(20) , Sum => Sum(20));
ALU_21: entity work.alu_1bit(behavioral)
	port map(A => A(21), B => B(21), ALUControl => ALUControl, Cin => C_internal(21), Cout => C_internal(22), Result => Result(21) , Sum => Sum(21));
ALU_22: entity work.alu_1bit(behavioral)
	port map(A => A(22), B => B(22), ALUControl => ALUControl, Cin => C_internal(22), Cout => C_internal(23), Result => Result(22) , Sum => Sum(22));
ALU_23: entity work.alu_1bit(behavioral)
	port map(A => A(23), B => B(23), ALUControl => ALUControl, Cin => C_internal(23), Cout => C_internal(24), Result => Result(23), Sum => Sum(23));
ALU_24: entity work.alu_1bit(behavioral)
	port map(A => A(24), B => B(24), ALUControl => ALUControl, Cin => C_internal(24), Cout => C_internal(25), Result => Result(24) , Sum => Sum(24));
ALU_25: entity work.alu_1bit(behavioral)
	port map(A => A(25), B => B(25), ALUControl => ALUControl, Cin => C_internal(25), Cout => C_internal(26), Result => Result(25) , Sum => Sum(25));
ALU_26: entity work.alu_1bit(behavioral)
	port map(A => A(26), B => B(26),ALUControl => ALUControl,  Cin => C_internal(26), Cout => C_internal(27), Result => Result(26) , Sum => Sum(26));
ALU_27: entity work.alu_1bit(behavioral)
	port map(A => A(27), B => B(27), ALUControl => ALUControl, Cin => C_internal(27), Cout => C_internal(28), Result => Result(27) , Sum => Sum(27));
ALU_28: entity work.alu_1bit(behavioral)
	port map(A => A(28), B => B(28), ALUControl => ALUControl, Cin => C_internal(28), Cout => C_internal(29), Result => Result(28) , Sum => Sum(28));
ALU_29: entity work.alu_1bit(behavioral)
port map(A => A(29), B => B(29), ALUControl => ALUControl, Cin => C_internal(29), Cout => C_internal(30), Result => Result(29), Sum => Sum (29));
ALU_30: entity work.alu_1bit(behavioral)
port map(A => A(30), B => B(30), ALUControl => ALUControl, Cin => C_internal(30), Cout => C_internal(31), Result => Result(30) , Sum => Sum(30));
ALU_31: entity work.alu_1bit(behavioral)
port map(A => A(31), B => B(31), ALUControl => ALUControl,Cin => C_internal(31), Cout => Cout, Result => Result(31) , Sum => Sum(31));

-- Appending final Carry out of chain of ALU's to the Sum/Result
	Result_with_carry <= Cout & Result;

	
-- XNOR gate
   XNOR_ans <= ALUControl(0) XNOR A(31) XNOR B(31);

-- XOR gate
   XOR_ans <= A(31) XOR Sum(31);

-- FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS FLAGS 
	
-- OVERFLOW flag
	ALUFlags(0) <= XNOR_ans AND XOR_ans AND ALUControl(1);
	
-- CARRY flag
  ALUFlags(1) <= not(ALUControl(1)) AND Cout;
	
-- ZERO flag
	ALUFlags(2) <= not(Result_with_carry(0)) AND not(Result_with_carry(1)) AND not(Result_with_carry(2)) AND not(Result_with_carry(3)) AND not(Result_with_carry(4)) AND not(Result_with_carry(5)) AND not(Result_with_carry(6)) 
	               AND not(Result_with_carry(7)) AND not(Result_with_carry(8)) AND not(Result_with_carry(9)) AND not(Result_with_carry(10)) AND not(Result_with_carry(11)) AND not(Result_with_carry(12)) 
					   AND not(Result_with_carry(13)) AND not(Result_with_carry(14)) AND not(Result_with_carry(15)) AND not(Result_with_carry(16)) AND not(Result_with_carry(17)) AND not(Result_with_carry(18)) 
					   AND not(Result_with_carry(19)) AND not(Result_with_carry(20)) AND not(Result_with_carry(21)) AND not(Result_with_carry(22)) AND not(Result_with_carry(23)) AND not(Result_with_carry(24)) 	
				      AND not(Result_with_carry(25)) AND not(Result_with_carry(26)) AND not(Result_with_carry(27)) AND not(Result_with_carry(28)) AND not(Result_with_carry(29)) AND not(Result_with_carry(30)) AND not(Result_with_carry(31)) AND not(Result_with_carry(32)) ;
				 
-- NEGATIVE flag
	ALUFlags(3) <= Result(31);
	
end architecture structural;