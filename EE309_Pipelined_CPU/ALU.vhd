library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	generic(
	REG_WIDTH : integer := 16
	);
	port(
	X, Y : in std_logic_vector(REG_WIDTH-1 downto 0);
	O : out std_logic_vector(REG_WIDTH-1 downto 0);
	ALUFunc : in std_logic_vector(1 downto 0)
	);
end entity;

architecture beh of ALU is
component mutiplier_16bit is
port (a,b : in  std_logic_vector(15 downto 0);
		c : out std_logic_vector(31 downto 0));
end component;
signal o_temp : std_logic_vector(31 downto 0);
begin

inst: mutiplier_16bit port map(a=>X, b=>Y, c=> o_temp );
	ALU_proc : process(X, Y, ALUFunc)
	begin
		case ALUFunc is
			when "00" =>	-- add
				O <= std_logic_vector(unsigned(X)+unsigned(Y));
			when "01" =>	-- subtract
				O <= std_logic_vector(unsigned(X)-unsigned(Y));
			when "10" =>	-- multiply
				O <= o_temp(15 downto 0);
			when "11" =>	-- sll
				O <= std_logic_vector(unsigned(X) sll to_integer(unsigned(Y)));
			when others =>
				O <= (others=>'X');
		end case;
	end process;
end architecture;