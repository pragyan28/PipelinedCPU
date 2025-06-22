library ieee;
use ieee.std_logic_1164.all;

entity regfile is
	generic(
		REG_WIDTH : integer := 16
	);
	port(
		d_in : in  std_logic_vector(REG_WIDTH-1 downto 0);
		d_out: out std_logic_vector(REG_WIDTH-1 downto 0);
		clk, rst: in std_logic 
	);
end entity;

architecture sim of regfile is
	signal sig : std_logic_vector(REG_WIDTH-1 downto 0);
begin
	d_out <= sig;
	reg_proc : process(clk, rst)
	begin
		if rst='1' then
			sig<=(others=>'0');
		elsif rising_edge(clk) then
			sig <= d_in;
		end if;
	end process;
end architecture;