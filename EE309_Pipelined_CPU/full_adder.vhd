library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port(a: in std_logic;
     b: in std_logic;
	  c: in std_logic;
	  sum: out std_logic;
	  carry: out std_logic
	  );
end entity;

architecture adder_arch of full_adder is

begin
sum <= (a xor b xor c);
carry <= ((c and (a xor b)) or (a and b));
end architecture;
	  
	  