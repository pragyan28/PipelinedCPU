library ieee;
use ieee.std_logic_1164.all;

entity adder_subtractor_16bit is
port (a: in std_logic_vector(15 downto 0);
      b: in std_logic_vector(15 downto 0);
		m: in std_logic;
		sum: out std_logic_vector(15 downto 0);
		carry: out std_logic
		);
end entity;

architecture simple of adder_subtractor_16bit is
signal p:std_logic_vector(15 downto 0);
signal c: std_logic_vector(14 downto 0);

component full_adder is
port(a: in std_logic;
     b: in std_logic;
	  c: in std_logic;
	  sum: out std_logic;
	  carry: out std_logic
	  );
end component;


begin
xor_op: for i in 0 to 15 generate
p(i) <= b(i) xor m;
end generate;

inst1: full_adder port map(a=>a(0), b=>p(0), c=>m, sum=>sum(0), carry=> c(0));

adder: for i in 1 to 14 generate
inst: full_adder port map(a=>a(i), b=>p(i),c=>c(i-1),sum=>sum(i), carry=>c(i));
end generate;
inst2: full_adder port map(a=>a(15), b=>p(15),c=>c(14),sum=>sum(15),carry=>carry);

end architecture;  		