library ieee;
use ieee.std_logic_1164.all;

entity stage3 is
	generic (
		-- 16 bit data, 8 registers, 3 bit register addresses
		INST_WIDTH : integer := 16;
		REG_WIDTH : integer := 16;
		REG_ADD_WIDTH : integer := 3;
		OP_WIDTH : integer := 4
	);
	port(
		clk, rst, WrEnD_in, RdEnD_in, zSel_in, RegWrEn_in : in std_logic;
		x_in, y_in : in std_logic_vector(REG_WIDTH-1 downto 0);
		dest_in : in std_logic_vector(REG_ADD_WIDTH -1 downto 0);
		ALUFunc_in : in std_logic_vector(1 downto 0);
		dest : out std_logic_vector(REG_ADD_WIDTH -1 downto 0);
		z : out std_logic_vector(REG_WIDTH-1 downto 0);
		RegWrEn : out std_logic
	);
end entity;

architecture sim of stage3 is
	component ALU is
		generic(
		REG_WIDTH : integer := 16
		);
		port(
		X, Y : in std_logic_vector(REG_WIDTH-1 downto 0);
		O : out std_logic_vector(REG_WIDTH-1 downto 0);
		ALUFunc : in std_logic_vector(1 downto 0)
		);
	end component;
	
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
	
	component mux2_1 is
		generic(
			D_WIDTH : integer := 16
		);
		port(
			a1, a0 : in std_logic_vector(D_WIDTH-1 downto 0);
			s : in std_logic;
			y : out std_logic_vector(D_WIDTH-1 downto 0)
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
	
	component d_ff is
		port(
			clk : in std_logic;
			rst : in std_logic;
			d_in: in std_logic;
			d_out: out std_logic
		);
	end component;

	signal x, y, ALUout, DMEMout : std_logic_vector(REG_WIDTH-1 downto 0);
	signal ALUFunc : std_logic_vector(1 downto 0);
	signal WrEnD, zSel : std_logic;
	
begin
	xreg : regfile generic map(REG_WIDTH=>REG_WIDTH) port map(d_in=>x_in, d_out=>x, clk=>clk, rst=>rst);
	yreg : regfile generic map(REG_WIDTH=>REG_WIDTH) port map(d_in=>y_in, d_out=>y, clk=>clk, rst=>rst);
	destreg : regfile generic map(REG_WIDTH=>REG_ADD_WIDTH) port map(d_in=>dest_in, d_out=>dest, clk=>clk, rst=>rst);
	ALUFuncreg : regfile generic map(REG_WIDTH=>2) port map(d_in=>ALUFunc_in, d_out=>ALUFunc, clk=>clk, rst=>rst);
	WrEnDdff : d_ff port map(d_in=>WrEnD_in, d_out=>WrEnD, clk=>clk, rst=>rst);
	zSeldff : d_ff port map(d_in=>zSel_in, d_out=>zSel, clk=>clk, rst=>rst);
	RegWrEndff : d_ff port map(d_in=>RegWrEn_in, d_out=>RegWrEn, clk=>clk, rst=>rst);
	ALUblock : ALU generic map(REG_WIDTH=>REG_WIDTH) port map(X=>x, Y=>y, O=>ALUout, ALUFunc=>ALUFunc);
	zSelMUX : mux2_1 generic map(D_WIDTH=>REG_WIDTH) port map(a1=>DMEMout, a0=>ALUout, s=>zSel, y=>z);
	DMEM: ring_buffer
		generic map(RAM_WIDTH=>REG_WIDTH)
		port map(
			clk => clk,
			rst => rst,
			wr_en => WrEnD,
			wr_data => x,
			rd_en => RdEnD_in,
			rd_valid => open,
			rd_data => DMEMout,
			empty => open,
			empty_next => open,
			full => open,
			full_next => open,
			fill_count => open
		);
end architecture;