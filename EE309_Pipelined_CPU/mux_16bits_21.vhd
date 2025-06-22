library ieee;
use ieee.std_logic_1164.all;

entity mux_16bits_21 is 
 port( A,B  : in std_logic_vector(15 downto 0);
       S    : in std_logic; 
		 Y    : out std_logic_vector(15 downto 0));
end entity;

architecture struct of mux_16bits_21 is 

	component mux_2_1 is 
		port( A,B,S: in std_logic; 
			   Y      : out std_logic);
	end component;
 
begin 
gen: for i in 0 to 15 generate
mux: mux_2_1 port map( A => A(i), B => B(i), S => S, Y => Y(i));
end generate;	

end struct; 