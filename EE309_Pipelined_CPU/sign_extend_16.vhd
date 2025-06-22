library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_16 is
	generic(
		IN_WIDTH : integer := 6
	);
	port(
		d_in : in  std_logic_vector(IN_WIDTH-1 downto 0);
		d_out: out std_logic_vector(15 downto 0)
	);
end entity;

architecture dtf of sign_extend_16 is
begin
	d_out(IN_WIDTH-2 downto 0) <= d_in(IN_WIDTH-2 downto 0);
	d_out(15 downto IN_WIDTH-1) <= (others=>d_in(IN_WIDTH-1));
end architecture;