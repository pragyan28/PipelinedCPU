library ieee;
use ieee.std_logic_1164.all;

entity stage5 is
	generic (
		-- 16 bit data, 8 registers, 3 bit register addresses
		REG_WIDTH : integer := 16;
		REG_ADD_WIDTH : integer := 3
	);
	port(
		clk, rst, RegWrEn_in : in std_logic;
		z_in : in std_logic_vector(REG_WIDTH-1 downto 0);
		dest_in : in std_logic_vector(REG_ADD_WIDTH-1 downto 0);
		d3_in : out std_logic_vector(REG_WIDTH-1 downto 0);
		a3_in : out std_logic_vector(REG_ADD_WIDTH-1 downto 0);
		RegWrEn : out std_logic
	);
end entity;

architecture str of stage5 is
	component regfile is
		generic(
			REG_WIDTH : integer := 16
		);
		port(
			d_in : in  std_logic_vector(REG_WIDTH-1 downto 0);
			d_out: out std_logic_vector(REG_WIDTH-1 downto 0);
			clk, rst: in std_logic 
		);
	end component;
	
	component d_ff is
		port(
			clk : in std_logic;
			rst : in std_logic;
			d_in: in std_logic;
			d_out: out std_logic
		);
	end component;

begin
	zreg : regfile generic map(REG_WIDTH=>REG_WIDTH) port map(d_in=>z_in, d_out=>d3_in, clk=>clk, rst=>rst);
	destreg : regfile generic map(REG_WIDTH=>REG_ADD_WIDTH) port map(d_in=>dest_in, d_out=>a3_in, clk=>clk, rst=>rst);
	RegWrEndff : d_ff port map(d_in=>RegWrEn_in, d_out=>RegWrEn, clk=>clk, rst=>rst);
end architecture;