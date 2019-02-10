library ieee; -- library clause 
use ieee.std_logic_1164.all; -- clause

entity digital_circuit is

--port clause
port(signal A3: in std_logic;  --signal_name : signal_mode data_type
     signal A2: in std_logic;  --signal_name : signal_mode data_type
	  signal A1: in std_logic;  --signal_name : signal_mode data_type
	  signal A0: in std_logic;  --signal_name : signal_mode data_type
     signal P: out std_logic;
	  signal D: out std_logic
     );
	  
end entity digital_circuit; --end entity declaration statement

--start of architecture declaration statement  (defines implementation of entity)

architecture dataflow of digital_circuit is 
      --describes what the entity does 
      --declaration potrion of the architecture  
		
   signal AND_GATE1 : std_logic;  
   signal AND_GATE2 : std_logic; 
   signal AND_GATE3 : std_logic; 
   signal AND_GATE4 : std_logic; 
   --signal OR_GATE : std_logic; 

begin
     --implementation portion of the architecture 
     --concurrent signal assignment (CSA) (i.e you can write these in any order)
  
  AND_GATE1 <= not(A3) AND not(A2) AND (A1);
  AND_GATE2 <= not(A3) AND A2 AND A0;
  AND_GATE3 <= A2 AND not(A1) AND A0;
  AND_GATE4 <= not(A2) AND A1 AND A0;
  P <= AND_GATE1 OR AND_GATE2 OR AND_GATE3 OR AND_GATE4;
  D <= not(A0);
  
  
    
end architecture dataflow;  