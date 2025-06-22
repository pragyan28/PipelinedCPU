library ieee;
use ieee.std_logic_1164.all;

entity mux_16bits_41 is 
 port( A,B,C,D: in std_logic_vector(15 downto 0);
       S0, S1 : in std_logic; 
		 Y      : out std_logic_vector(15 downto 0));
end entity;

architecture struct of mux_16bits_41 is 

component mux_4_1 is 
	port( A,B,C,D,S0,S1: in std_logic; 
	       Y           : out std_logic);
end component;
 
begin 

gen: for i in 0 to 15 generate
mux: mux_4_1 port map( A => A(i), B => B(i),C => C(i), D => D(i), S0 => S0, S1 => S1, Y => Y(i));
end generate;	

end struct;  