library ieee;
use ieee.std_logic_1164.all;

entity mux_4_1 is 
 port( a,b,c,d,s0,s1: in std_logic; 
       y            : out std_logic);
end entity;

architecture struct of mux_4_1 is 

begin 
  Y <= (((not s0) and (not s1) and a) or ( s0 and (not s1) and b) or ((not s0) and s1 and c) or (s1 and s0 and d));
end struct; 