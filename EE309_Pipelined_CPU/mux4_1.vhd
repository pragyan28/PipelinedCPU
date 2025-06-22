library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is
	generic(
		D_WIDTH : integer := 16
	);
	port(
		a3, a2, a1, a0 : in std_logic_vector(D_WIDTH-1 downto 0);
		s : in std_logic_vector(1 downto 0);
		y : out std_logic_vector(D_WIDTH-1 downto 0)
	);
end entity;

architecture dtf of mux4_1 is
begin
	mux_proc : process(a3, a2, a1, a0, s)
	begin
		case s is
			when "00" => y<=a0;
			when "01" => y<=a1;
			when "10" => y<=a2;
			when "11" => y<=a3;
			when others => y<=(others=>'X');
		end case;
	end process;
end architecture;