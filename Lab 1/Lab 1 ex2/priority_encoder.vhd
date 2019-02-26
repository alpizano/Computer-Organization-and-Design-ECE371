library ieee; -- library clause 
use ieee.std_logic_1164.all; -- clause

entity priority_encoder is

--port clause
port(signal A: in std_logic_vector(7 downto 0);  --signal_name : signal_mode data_type
     signal y: out std_logic_vector(2 downto 0);
	  signal NONE: out std_logic
     );
	  
end entity priority_encoder; --end entity declaration statement

--start of architecture declaration statement  (defines implementation of entity)

architecture dataflow of priority_encoder is 
      --describes what the entity does 
      --declaration potrion of the architecture  
		
  --intermediate signal that will concatanate y output + NONE output in 1 vector
   signal yNONE : std_logic_vector(3 downto 0); 

begin
   NONE <= yNONE(0);
   y <= yNONE(3 downto 1);
	--y_None <= y & NONE;
	 
     --implementation portion of the architecture 
  yNONE <= "1110" when A(7) = '1' else
  "1100" when A(6) = '1' else
  "1010" when A(5) = '1' else -- 00101000, the output Y should be 101 and NONE should be 0
  "1000" when A(4) = '1' else	
  "0110" when A(3) = '1' else  
  "0100" when A(2) = '1' else
  "0010" when A(1) = '1' else
  "0000" when A(0) = '1' else
  "---1"; --don't care base case

    
end architecture dataflow;  