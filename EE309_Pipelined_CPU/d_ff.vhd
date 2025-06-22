library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port(
		clk : in std_logic;
		rst : in std_logic;
		d_in: in std_logic;
		d_out: out std_logic
	);
end entity;

architecture beh of d_ff is
begin
	dff_proc : process(clk)
	begin
		if rising_edge(clk) then
			if rst='1' then
				d_out <= '0';
			else
				d_out <= d_in;
			end if;
		end if;
	end process;
end architecture;