library ieee;
use ieee.std_logic_1164.all;

entity mux_8_1 is 
  port( 
    A, B, C, D, E, F, G, H, S0, S1, S2: in std_logic;
	 Y                                 : out std_logic);
end entity;

architecture struct of mux_8_1 is 
begin 
  Y <= (((not S0) and (not S1) and (not S2) and A) or 
        (S0 and (not S1) and (not S2) and B) or 
        ((not S0) and S1 and (not S2) and C) or 
        (S1 and S0 and (not S2) and D) or 
        ((not S0) and (not S1) and S2 and E) or 
        (S0 and (not S1) and S2 and F) or 
        ((not S0) and S1 and S2 and G) or 
        (S1 and S0 and S2 and H));

		  
end struct;