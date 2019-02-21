library ieee;
use ieee.std_logic_1164.all;

entity gen_shift_reg is

	generic(N : positive := 4);
	port 
	(
		--rst	: in std_logic;
		--en	   : in std_logic; 
		CLK	: in std_logic; 
		Sin	: in std_logic; --D
		Sout	 : out std_logic -- Q
		); 
end entity;

architecture structure of gen_shift_reg is


signal Qinternal : std_logic_vector(N downto 0); ---- QN-1:0

 

begin

Qinternal(0) <= Sin;
	
  d_ff_stages: for i in 0 to N-1 generate 
  
	  d_ff: entity work.d_ff(behavioral)
	  
		port map(CLK => CLK, D => Qinternal(i), Q => Qinternal(i+1));
	
	end generate d_ff_stages;
	
	
	
	Sout <= Qinternal(N-1);
	
end architecture structure;
