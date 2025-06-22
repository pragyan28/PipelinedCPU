library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stage1 is
	generic (
		INST_WIDTH : integer := 16;
		REG_WIDTH : integer := 16
	);
	port (
		clk, rst, imem_rst : in std_logic;
		PC_en, WrEnI, RdEnI : in std_logic;
		wr_data_IMEM : in std_logic_vector(INST_WIDTH-1 downto 0);
		PC_out : out std_logic_vector(REG_WIDTH-1 downto 0);
		IR : out std_logic_vector(INST_WIDTH-1 downto 0)
	);
end entity;

architecture sim of stage1 is
	component ring_buffer is
	  generic (
		 -- 16 bit data
		 RAM_WIDTH : integer := 16;
		 RAM_DEPTH : integer := 32
	  );
	  port (
		 clk : in std_logic;
		 rst : in std_logic;
	  
		 -- Write port
		 wr_en : in std_logic;
		 wr_data : in std_logic_vector(RAM_WIDTH - 1 downto 0);
	  
		 -- Read port
		 rd_en : in std_logic;
		 rd_valid : out std_logic;
		 rd_data : out std_logic_vector(RAM_WIDTH - 1 downto 0);
	  
		 -- Flags
		 empty : out std_logic;
		 empty_next : out std_logic;
		 full : out std_logic;
		 full_next : out std_logic;
	  
		 -- The number of elements in the FIFO
		 fill_count : out integer range RAM_DEPTH - 1 downto 0
	  );
	end component;
	
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
	
	signal NewPC, PC : std_logic_vector(REG_WIDTH-1 downto 0);
	
begin
	PCAddProc: process(PC, PC_en)
	begin
		if PC_en='1' then NewPC<=std_logic_vector(unsigned(PC)+to_unsigned(2, REG_WIDTH));
		else NewPC<=PC;
		end if;
	end process;
	PCreg : regfile generic map(REG_WIDTH=>REG_WIDTH) port map(d_in=>NewPC, d_out=>PC, clk=>clk, rst=>rst);
	PC_out <= PC;
	IMEM: ring_buffer
			generic map(RAM_WIDTH=>INST_WIDTH)
			port map(
				clk => clk,
				rst => imem_rst,
				wr_en => WrEnI,
				wr_data => wr_data_IMEM,
				rd_en => RdEnI,
				rd_valid => open,
				rd_data => IR,
				empty => open,
				empty_next => open,
				full => open,
				full_next => open,
				fill_count => open	
			);
end architecture;