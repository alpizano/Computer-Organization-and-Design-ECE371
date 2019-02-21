library ieee;
use ieee.std_logic_1164.all;

entity gen_shift_reg is

	generic(N : positive := 4);
	port 
	(
		--rst	: in std_logic;
		--en	   : in std_logic; 
		CLK	: in std_logic; 
		Sin	: in std_logic_vector(N-1 downto 0); --Sin
		--Sout  : out std_logic;
		Sout	   : out std_logic_vector(N-1 downto 0) -- Sout

		); 
end entity;

architecture structure of gen_shift_reg is


signal Qinternal : std_logic_vector ---- QN-1:0


begin
	
  d_ff_stages: for k in 0 to N-1 generate 
  
	  d_ff: entity work.d_ff(behavioral)
		port map(CLK => CLK, D => Sin(k), Q => Sout(k));
	
	end generate d_ff_stages;
	
	--Sout <= Q(0);
	
end architecture structure;
