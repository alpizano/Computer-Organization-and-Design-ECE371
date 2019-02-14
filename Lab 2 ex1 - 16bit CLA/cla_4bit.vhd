library ieee; -- library clause 
use ieee.std_logic_1164.all; -- clause

entity cla_4bit is
--port clause
--generic( N : Positive:= 4);
port(signal A: in std_logic_vector(3 downto 0);  --signal_name : signal_mode data_type
     signal B: in std_logic_vector(3 downto 0);  --signal_name : signal_mode data_type
	  signal Cin: in std_logic;                   --signal_name : signal_mode data_type
	  signal S: out std_logic_vector(3 downto 0);
	  signal Cout: out std_logic
     );
	  
end entity cla_4bit; --end entity declaration statement

--start of architecture declaration statement  (defines implementation of entity)

architecture dataflow of cla_4bit is 
      --describes what the entity does 
      --declaration potrion of the architecture  
		
signal G : std_logic_vector(3 downto 0); --carry Generate
signal P : std_logic_vector(3 downto 0); --carry Propagate
signal Cin_internal: std_logic_vector(3 downto 1);
signal sum : std_logic_vector(3 downto 0);

		
		
		begin
     --implementation portion of the architecture 
	  
G <= A AND B; 
P <= A XOR B;
sum <= A XOR B;


 
Cin_internal(1) <= G(0) OR ( P(0) AND Cin );  

-- FOR GENERATE
ripple: for i in 1 to 2 generate

		  Cin_internal(i+1) <= G(i) OR ( P(i) AND Cin_internal(1) );

        end generate ripple;

Cout <= G(3) OR ( P(3) AND Cin_internal(3) );

S(0) <= sum(0) XOR Cin;

S(3 downto 1) <= sum(3 downto 1) XOR Cin_internal(3 downto 1);
    
end architecture dataflow;  