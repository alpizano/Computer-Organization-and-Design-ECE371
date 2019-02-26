library ieee;
use ieee.std_logic_1164.all;

entity rotator_4bit is
	port(A: in std_logic_vector(3 downto 0);
		  L: in std_logic;
		  shift: in std_logic_vector(1 downto 0);
		  Y: out std_logic_vector(3 downto 0)
		  );
	
end rotator_4bit;

architecture structural of rotator_4bit is

signal R: std_logic_vector(3 downto 0);
signal Lout: std_logic_vector(3 downto 0);

begin

	mux3_r: entity work.mux4_1(behavior)
	port map(A(3) & A(0) & A(1)&A(2), shift, R(3));
	
	mux2_r: entity work.mux4_1(behavior)
	port map(A(2) &A(3)&A(0)&A(1), shift, R(2));
	
	mux1_r: entity work.mux4_1(behavior)
	port map(A(1)&A(2)&A(3)&A(0), shift, R(1));
	
	mux0_r: entity work.mux4_1(behavior)
	port map(A(0)&A(1)&A(2)&A(3), shift, R(0));
	
	
	mux3_l: entity work.mux4_1(behavior)
	port map(A(3)&A(2)&A(1)&A(0), shift, Lout(3));
	
	mux2_l: entity work.mux4_1(behavior)
	port map(A(2)&A(1)&A(0)&A(3), shift, Lout(2));
	
	mux1_l: entity work.mux4_1(behavior)
	port map(A(1)&A(0)&A(3)&A(2), shift, Lout(1));
	
	mux0_l: entity work.mux4_1(behavior)
	port map(A(0)&A(3)&A(2)&A(1), shift, Lout(0));
	
	
	mux_3: entity work.mux2_1(behavior)
	port map(R(3)&Lout(3), L, Y(3));
	
	mux_2: entity work.mux2_1(behavior)
	port map(R(2)&Lout(2), L, Y(2));
	
	mux_1: entity work.mux2_1(behavior)
	port map(R(1)&Lout(1), L, Y(1));
	
	mux_0: entity work.mux2_1(behavior)
	port map(R(0)&Lout(0), L, Y(0));
	
	
	
end structural;