library ieee; -- library clause 
use ieee.std_logic_1164.all; -- clause

entity 4bit_cla is
--port clause
generic( N : Positive:= 4);
port(signal A: in std_logic_vector(N-1 downto 0);  --signal_name : signal_mode data_type
     signal B: in std_logic_vector(N-1 downto 0);  --signal_name : signal_mode data_type
	  --signal Cin: in std_logic_vector(N-1 downto 0);  --signal_name : signal_mode data_type
	  --signal S: out std_logic_vector(N-1 downto 0);
	  --signal Cout: out std_logic_vector(N-1 downto 0);  --signal_name : signal_mode data_type
	  signal C: out std_logic_vector(N-1 downto 0)
     );
	  
end entity 4bit_cla; --end entity declaration statement

--start of architecture declaration statement  (defines implementation of entity)

architecture dataflow of 4bit_cla is 
      --describes what the entity does 
      --declaration potrion of the architecture  
		
begin
     --implementation portion of the architecture 
     --concurrent signal assignment (CSA) (i.e you can write these in any order)
  
 
ripple: for i in 0 to N-1 generate
C(i) <= ( A(i) AND B(i) ) OR ( (A(i) XOR B(i)) AND C(i-1) );
--Cout(i) <= ( A(i) AND B(i) ) OR ( (A(i) XOR B(i)) AND Cin(i-1) );
--S(i) <= A(i) XOR B(i) XOR C(i-1);

end generate ripple;
    
end architecture dataflow;  