library ieee; -- library clause 
use ieee.std_logic_1164.all; -- clause

entity digital_circuit is
--port clause
port(signal A: in std_logic;  --signal_name : signal_mode data_type
   signal B: in std_logic;  --signal_name : signal_mode data_type
   signal Y: out std_logic
     );
end entity digital_circuit;
--start of architecture declaration statement  (defines implementation of entity)

architecture dataflow of digital_circuit is 
--describes what the entity does 
--declaration potrion of the architecture            
 --signal a : std_logic;  --declare internal signal a
 --signal b : std_logic;  --declare internal signal b

begin
--implementation portion of the architecture 
     --concurrent signal assignment (CSA) (i.e you can write these in any order)
  
  Y<= A AND B;
    
end architecture dataflow;  