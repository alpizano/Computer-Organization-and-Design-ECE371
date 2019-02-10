
library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  
  port (
    A : in  std_logic_vector(1 downto 0);
    B : in  std_logic_vector(1 downto 0);
    L_in : in std_logic;
    G_in : in std_logic;
    E_in : in std_logic;
    L : out std_logic;
    G : out  std_logic;
    E : out  std_logic);

end comparator;

architecture behav of comparator is

begin  -- behav
  process (A, B, L_in, G_in, E_in)
  begin  -- process
    if ( (A = B) and E_in = '1') then
      E <= '1';
    else
      E <= '0';
    end if;
    if (A(1)= '1' and B(1) = '0')
      or ( (A(1) = B(1)) and (A(0)='1' and B(0)= '0'))
      or ((A = B) and G_in = '1') then
      G <= '1';
    else
      G <= '0';
    end if;
    if (A(1)='0' and B(1) ='1')
      or ((A(1) = B(1)) and A(0)='0' and B(0)= '1')
      or ((A = B) and L_in = '1') then
      L <= '1';
    else
      L <= '0';  
    end if;
  
  end process;
  
end behav;

library ieee;
use ieee.std_logic_1164.all;

entity comp_8bit is
port (
    A : in  std_logic_vector(7 downto 0);
    B : in  std_logic_vector(7 downto 0);
    L : out std_logic;
    G : out  std_logic;
    E : out  std_logic);
  
end comp_8bit;

architecture struct of comp_8bit is
component comparator
  port (
    A : in std_logic_vector(1 downto 0);
    B : in std_logic_vector(1 downto 0);
    L_in : in std_logic;
    G_in : in std_logic;
    E_in : in std_logic;
    L : out std_logic;
    G : out  std_logic;
    E : out  std_logic);
end component;
signal E_0, E_1, E_2, L_0, L_1, L_2, G_0, G_1, G_2 : std_logic;
begin  -- struct
  u1 : comparator port map (
    A => A(1 downto 0),
    B => B(1 downto 0),
    L_in => '0',
    G_in => '0',
    E_in => '1',
    G    => G_0,
    L    => L_0,
    E    => E_0);
   
  u2 : comparator port map (
    A => A(3 downto 2),
    B => B(3 downto 2),
    G_in => G_0,
    L_in => L_0,
    E_in => E_0,
    G    => G_1,
    L    => L_1,
    E    => E_1);
  u3 : comparator port map (
    A => A(5 downto 4),
    B => B(5 downto 4),
    G_in => G_1,
    L_in => L_1,
    E_in => E_1,
    L    => L_2,
    E    => E_2);
  u4 : comparator port map (
    A => A(7 downto 6),
    B => B(7 downto 6),
    G_in => G_2,
    L_in => L_2,
    E_in => E_2,
    L    => L,
    G    => G,
    E    => E);

end struct;