library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mutiplier_16bit is
port (a,b : in  std_logic_vector(15 downto 0);
		c : out std_logic_vector(31 downto 0));
end entity;


architecture mul_arch of mutiplier_16bit is
signal a_int, b_int, res_int : integer;
begin
    a_int <= to_integer(unsigned(a));
    b_int <= to_integer(unsigned(b));
    res_int <= a_int * b_int;
    
    c <= std_logic_vector(to_unsigned(res_int, 32));
end architecture;	 