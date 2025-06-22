library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
	generic(
		D_WIDTH : integer := 16
	);
	port(
		a1, a0 : in std_logic_vector(D_WIDTH-1 downto 0);
		s : in std_logic;
		y : out std_logic_vector(D_WIDTH-1 downto 0)
	);
end entity;

architecture dtf of mux2_1 is
begin
	mux_proc : process(a1, a0, s)
	begin
		case s is
			when '0' => y<=a0;
			when '1' => y<=a1;
			when others => y<=(others=>'X');
		end case;
	end process;
end architecture;