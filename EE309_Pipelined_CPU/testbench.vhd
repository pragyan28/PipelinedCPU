LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity testbench is 
end testbench;

architecture sim
 of testbench is

-- Declaring component to test
	component proc is
		generic(
		 -- 16 bit data
		 REG_WIDTH : integer := 16;
		 REG_ADD_WIDTH : integer := 3;
		 INST_WIDTH: integer := 16
	 );
		port(
		clk : in std_logic;
		rst : in std_logic;
		imem_rst : in std_logic;
	 
		-- Read/Write to imem
		PC_en : in std_logic;
		rd_en_IMEM : in std_logic;
		wr_en_IMEM : in std_logic;
		wr_data_IMEM : in std_logic_vector(INST_WIDTH-1 downto 0);
	 
		-- Output (not necessary)
		PC_out : out std_logic_vector(REG_WIDTH-1 downto 0);
		IR_out : out std_logic_vector(INST_WIDTH-1 downto 0);
		x_out, y_out, z_out, d3_out : out std_logic_vector(REG_WIDTH-1 downto 0);
		dest0_out, dest_out, a3_out : out std_logic_vector(REG_ADD_WIDTH-1 downto 0)
	);
	end component;
	
	-- Signal Declarations
	signal clk : std_logic := '0';
	signal rst : std_logic := '1';
	signal imem_rst : std_logic := '1';
	signal PC_en : std_logic := '0';
	signal wr_en_IMEM : std_logic;
	signal rd_en_IMEM : std_logic;
	signal wr_data_IMEM : std_logic_vector(15 downto 0);
	signal PC_out, IR_out, x_out, y_out, z_out, d3_out : std_logic_vector(15 downto 0);
	signal dest0_out, dest_out, a3_out : std_logic_vector(2 downto 0);
	
	begin
	processor: proc
	port map(
		clk => clk,
		rst => rst,
		imem_rst=>imem_rst,
		PC_en=>PC_en,
		wr_en_IMEM => wr_en_IMEM,
		rd_en_IMEM => rd_en_IMEM,
		wr_data_IMEM => wr_data_IMEM,
		PC_out=>PC_out,
		x_out=>x_out,
		y_out=>y_out,
		z_out=>z_out,
		d3_out=>d3_out,
		IR_out=>IR_out,
		dest0_out=>dest0_out,
		dest_out=>dest_out,
		a3_out=>a3_out
	);
	
	clk <= not clk after 2 ns;
	imem_rst <= '1', '0' after 5 ns;
	
	process begin
		rst <= '1';
		imem_rst <= '1';
		wait for 5 ns;
		rst <= '0';
		imem_rst <= '0';
		
		PC_en <= '0';
		rd_en_IMEM <= '0';
		wr_en_IMEM <= '1';
		wr_data_IMEM <= x"5005";
		wait for 4 ns;
		wr_data_IMEM <= x"5243";
		wait for 4 ns;
		wr_data_IMEM <= x"F000";
		wait for 4 ns;
		wr_data_IMEM <= x"F000";
		wait for 4 ns;
		wr_data_IMEM <= x"4408";
		wait for 4 ns;
		wr_data_IMEM <= x"1000";
		wait for 4 ns;
		wr_data_IMEM <= x"1200";
		wait for 4 ns;
		wr_data_IMEM <= x"1400";
		wait for 4 ns;
		wr_data_IMEM <= x"0600";
		wait for 4 ns;
		wr_data_IMEM <= x"0800";
		wait for 4 ns;
		wr_data_IMEM <= x"0A00";
		wait for 4 ns;
		wr_data_IMEM <= x"F000";
		wait for 4 ns;
		wr_data_IMEM <= x"F000";
		wait for 4 ns;
		wr_data_IMEM <= x"6CE8";
		wait for 4 ns;
		wr_en_IMEM <= '0';
		wait for 10 ns;
		
		rd_en_IMEM <= '1';
		rst<='1';
		wait for 5 ns;
		rst<='0';
		PC_en <= '1';
		
		wait;
	end process;

end architecture;