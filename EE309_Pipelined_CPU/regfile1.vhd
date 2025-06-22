library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regfile1 is
	generic (
    -- 16 bit data, 8 registers, 3 bit register addresses
    REG_WIDTH : integer := 16;
    REG_DEPTH : integer := 8;
	 REG_ADD_WIDTH : integer := 3
  );
  port (
  A1, A2, A3 : in std_logic_vector(REG_ADD_WIDTH-1 downto 0);
  D1, D2 : out std_logic_vector(REG_WIDTH-1 downto 0);
  D3 : in std_logic_vector(REG_WIDTH-1 downto 0);
  clk : in std_logic;
  rst : in std_logic;
  wr_en : in std_logic
  );
end entity;

architecture sim of regfile1 is
	type reg_type is array(0 to REG_DEPTH-1) of std_logic_vector(REG_WIDTH-1 downto 0);
	signal reg : reg_type;
begin
	D1 <= reg(to_integer(unsigned(A1)));
	D2 <= reg(to_integer(unsigned(A2)));
	reg_proc: process(clk)
	begin
		if rising_edge(clk) then
			if rst='1' then
				for i in reg'range loop
					reg(i) <= (others=>'0');
				end loop;
			else
				if wr_en='1' then
					reg(to_integer(unsigned(A3))) <= D3;
				end if;
			end if;
		end if;
	end process;
end architecture;