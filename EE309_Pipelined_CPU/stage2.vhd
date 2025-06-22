library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stage2 is
	generic (
    -- 16 bit data, 8 registers, 3 bit register addresses
	 INST_WIDTH : integer := 16;
    REG_WIDTH : integer := 16;
	 REG_ADD_WIDTH : integer := 3;
	 OP_WIDTH : integer := 4
	);
	port(
			clk, rst : in std_logic;
			IR_in : in std_logic_vector(INST_WIDTH-1 downto 0);
			d3_in : in std_logic_vector(REG_WIDTH-1 downto 0);
			a3_in : in std_logic_vector(REG_ADD_WIDTH-1 downto 0);
			regSel, RegWrEn : in std_logic;
			dataSel : in std_logic_vector(1 downto 0);
			opcode : out std_logic_vector(OP_WIDTH-1 downto 0);
			x, y : out std_logic_vector(REG_WIDTH-1 downto 0);
			dest : out std_logic_vector(REG_ADD_WIDTH-1 downto 0)
		);
end entity;

architecture sim of stage2 is
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
	
	component regfile1 is
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

	component mux4_1 is
		generic(
			D_WIDTH : integer := 16
		);
		port(
			a3, a2, a1, a0 : in std_logic_vector(D_WIDTH-1 downto 0);
			s : in std_logic_vector(1 downto 0);
			y : out std_logic_vector(D_WIDTH-1 downto 0)
		);
	end component;

	component sign_extend_16 is
		generic(
			IN_WIDTH : integer := 6
		);
		port(
			d_in : in  std_logic_vector(IN_WIDTH-1 downto 0);
			d_out: out std_logic_vector(15 downto 0)
		);
	end component;
	
	signal IR_out : std_logic_vector(INST_WIDTH-1 downto 0);
	signal ra, rb, rc, a1_in : std_logic_vector(REG_ADD_WIDTH-1 downto 0);
	signal d2_out, se_imm6, se_imm9 : std_logic_vector(REG_WIDTH-1 downto 0);
	signal imm6 : std_logic_vector(5 downto 0);
	signal imm9 : std_logic_vector(8 downto 0);
	
begin
	IR : regfile port map(d_in=>IR_in, d_out=>IR_out, clk=>clk, rst=>rst);
	opcode <= IR_out(15 downto 12);
	ra <= IR_out(11 downto 9);
	rb <= IR_out(8 downto 6);
	rc <= IR_out(5 downto 3);
	imm6 <= IR_out(5 downto 0);
	imm9 <= IR_out(8 downto 0);
	regSelMux : mux2_1 generic map(D_WIDTH=>3) port map(a1=>ra, a0=>rb, s=>regSel, y=>a1_in);
	reg_file: regfile1 port map(a1=>a1_in, a2=>rc, a3=>a3_in, d3=>d3_in, d1=>x, d2=>d2_out, clk=>clk, rst=>rst, wr_en=>RegWrEn);
	dataSelMux : mux4_1 port map(a0=>d2_out, a1=>se_imm6, a2=>se_imm9, a3=>se_imm9, s=>dataSel, y=>y);
	dest <= ra;
	se6 : sign_extend_16 generic map(IN_WIDTH=>6) port map(d_in=>imm6, d_out=>se_imm6);
	se9 : sign_extend_16 generic map(IN_WIDTH=>9) port map(d_in=>imm9, d_out=>se_imm9);
end architecture;