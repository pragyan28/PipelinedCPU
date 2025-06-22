library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is 
 port( A,B,S: in std_logic; 
		 Y      : out std_logic);
end entity;

architecture struct of mux_2_1 is 

begin 
  Y <= (((not S) and A) or ( S and B));
end struct; 