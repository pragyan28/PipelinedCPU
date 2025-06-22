-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/03/2025 23:33:09"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	proc IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	imem_rst : IN std_logic;
	PC_en : IN std_logic;
	rd_en_IMEM : IN std_logic;
	wr_en_IMEM : IN std_logic;
	wr_data_IMEM : IN std_logic_vector(15 DOWNTO 0);
	PC_out : BUFFER std_logic_vector(15 DOWNTO 0);
	IR_out : BUFFER std_logic_vector(15 DOWNTO 0);
	x_out : BUFFER std_logic_vector(15 DOWNTO 0);
	y_out : BUFFER std_logic_vector(15 DOWNTO 0);
	z_out : BUFFER std_logic_vector(15 DOWNTO 0);
	d3_out : BUFFER std_logic_vector(15 DOWNTO 0);
	dest0_out : BUFFER std_logic_vector(2 DOWNTO 0);
	dest_out : BUFFER std_logic_vector(2 DOWNTO 0);
	a3_out : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END proc;

-- Design Ports Information
-- PC_out[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[9]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[13]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[15]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[9]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[13]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[14]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_out[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[10]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[13]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_out[15]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[5]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[8]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[10]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[12]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[14]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_out[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[7]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[8]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[11]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[14]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3_out[15]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest0_out[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest0_out[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest0_out[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_out[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_out[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dest_out[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3_out[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3_out[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3_out[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_en	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[6]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[9]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[10]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[12]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[13]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data_IMEM[15]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imem_rst	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en_IMEM	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_en_IMEM	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF proc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_imem_rst : std_logic;
SIGNAL ww_PC_en : std_logic;
SIGNAL ww_rd_en_IMEM : std_logic;
SIGNAL ww_wr_en_IMEM : std_logic;
SIGNAL ww_wr_data_IMEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_x_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_z_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d3_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dest0_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dest_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a3_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \PC_out[9]~output_o\ : std_logic;
SIGNAL \PC_out[10]~output_o\ : std_logic;
SIGNAL \PC_out[11]~output_o\ : std_logic;
SIGNAL \PC_out[12]~output_o\ : std_logic;
SIGNAL \PC_out[13]~output_o\ : std_logic;
SIGNAL \PC_out[14]~output_o\ : std_logic;
SIGNAL \PC_out[15]~output_o\ : std_logic;
SIGNAL \IR_out[0]~output_o\ : std_logic;
SIGNAL \IR_out[1]~output_o\ : std_logic;
SIGNAL \IR_out[2]~output_o\ : std_logic;
SIGNAL \IR_out[3]~output_o\ : std_logic;
SIGNAL \IR_out[4]~output_o\ : std_logic;
SIGNAL \IR_out[5]~output_o\ : std_logic;
SIGNAL \IR_out[6]~output_o\ : std_logic;
SIGNAL \IR_out[7]~output_o\ : std_logic;
SIGNAL \IR_out[8]~output_o\ : std_logic;
SIGNAL \IR_out[9]~output_o\ : std_logic;
SIGNAL \IR_out[10]~output_o\ : std_logic;
SIGNAL \IR_out[11]~output_o\ : std_logic;
SIGNAL \IR_out[12]~output_o\ : std_logic;
SIGNAL \IR_out[13]~output_o\ : std_logic;
SIGNAL \IR_out[14]~output_o\ : std_logic;
SIGNAL \IR_out[15]~output_o\ : std_logic;
SIGNAL \x_out[0]~output_o\ : std_logic;
SIGNAL \x_out[1]~output_o\ : std_logic;
SIGNAL \x_out[2]~output_o\ : std_logic;
SIGNAL \x_out[3]~output_o\ : std_logic;
SIGNAL \x_out[4]~output_o\ : std_logic;
SIGNAL \x_out[5]~output_o\ : std_logic;
SIGNAL \x_out[6]~output_o\ : std_logic;
SIGNAL \x_out[7]~output_o\ : std_logic;
SIGNAL \x_out[8]~output_o\ : std_logic;
SIGNAL \x_out[9]~output_o\ : std_logic;
SIGNAL \x_out[10]~output_o\ : std_logic;
SIGNAL \x_out[11]~output_o\ : std_logic;
SIGNAL \x_out[12]~output_o\ : std_logic;
SIGNAL \x_out[13]~output_o\ : std_logic;
SIGNAL \x_out[14]~output_o\ : std_logic;
SIGNAL \x_out[15]~output_o\ : std_logic;
SIGNAL \y_out[0]~output_o\ : std_logic;
SIGNAL \y_out[1]~output_o\ : std_logic;
SIGNAL \y_out[2]~output_o\ : std_logic;
SIGNAL \y_out[3]~output_o\ : std_logic;
SIGNAL \y_out[4]~output_o\ : std_logic;
SIGNAL \y_out[5]~output_o\ : std_logic;
SIGNAL \y_out[6]~output_o\ : std_logic;
SIGNAL \y_out[7]~output_o\ : std_logic;
SIGNAL \y_out[8]~output_o\ : std_logic;
SIGNAL \y_out[9]~output_o\ : std_logic;
SIGNAL \y_out[10]~output_o\ : std_logic;
SIGNAL \y_out[11]~output_o\ : std_logic;
SIGNAL \y_out[12]~output_o\ : std_logic;
SIGNAL \y_out[13]~output_o\ : std_logic;
SIGNAL \y_out[14]~output_o\ : std_logic;
SIGNAL \y_out[15]~output_o\ : std_logic;
SIGNAL \z_out[0]~output_o\ : std_logic;
SIGNAL \z_out[1]~output_o\ : std_logic;
SIGNAL \z_out[2]~output_o\ : std_logic;
SIGNAL \z_out[3]~output_o\ : std_logic;
SIGNAL \z_out[4]~output_o\ : std_logic;
SIGNAL \z_out[5]~output_o\ : std_logic;
SIGNAL \z_out[6]~output_o\ : std_logic;
SIGNAL \z_out[7]~output_o\ : std_logic;
SIGNAL \z_out[8]~output_o\ : std_logic;
SIGNAL \z_out[9]~output_o\ : std_logic;
SIGNAL \z_out[10]~output_o\ : std_logic;
SIGNAL \z_out[11]~output_o\ : std_logic;
SIGNAL \z_out[12]~output_o\ : std_logic;
SIGNAL \z_out[13]~output_o\ : std_logic;
SIGNAL \z_out[14]~output_o\ : std_logic;
SIGNAL \z_out[15]~output_o\ : std_logic;
SIGNAL \d3_out[0]~output_o\ : std_logic;
SIGNAL \d3_out[1]~output_o\ : std_logic;
SIGNAL \d3_out[2]~output_o\ : std_logic;
SIGNAL \d3_out[3]~output_o\ : std_logic;
SIGNAL \d3_out[4]~output_o\ : std_logic;
SIGNAL \d3_out[5]~output_o\ : std_logic;
SIGNAL \d3_out[6]~output_o\ : std_logic;
SIGNAL \d3_out[7]~output_o\ : std_logic;
SIGNAL \d3_out[8]~output_o\ : std_logic;
SIGNAL \d3_out[9]~output_o\ : std_logic;
SIGNAL \d3_out[10]~output_o\ : std_logic;
SIGNAL \d3_out[11]~output_o\ : std_logic;
SIGNAL \d3_out[12]~output_o\ : std_logic;
SIGNAL \d3_out[13]~output_o\ : std_logic;
SIGNAL \d3_out[14]~output_o\ : std_logic;
SIGNAL \d3_out[15]~output_o\ : std_logic;
SIGNAL \dest0_out[0]~output_o\ : std_logic;
SIGNAL \dest0_out[1]~output_o\ : std_logic;
SIGNAL \dest0_out[2]~output_o\ : std_logic;
SIGNAL \dest_out[0]~output_o\ : std_logic;
SIGNAL \dest_out[1]~output_o\ : std_logic;
SIGNAL \dest_out[2]~output_o\ : std_logic;
SIGNAL \a3_out[0]~output_o\ : std_logic;
SIGNAL \a3_out[1]~output_o\ : std_logic;
SIGNAL \a3_out[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC_en~input_o\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[1]~14_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[2]~15_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[2]~16\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[3]~17_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[3]~18\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[4]~19_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[4]~20\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[5]~21_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[5]~22\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[6]~23_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[6]~24\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[7]~25_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[7]~26\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[8]~27_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[8]~28\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[9]~29_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[9]~30\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[10]~31_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[10]~32\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[11]~33_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[11]~34\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[12]~35_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[12]~36\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[13]~37_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[13]~38\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[14]~39_combout\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[14]~40\ : std_logic;
SIGNAL \fetch_block|PCreg|sig[15]~41_combout\ : std_logic;
SIGNAL \wr_data_IMEM[0]~input_o\ : std_logic;
SIGNAL \fetch_block|IMEM|head[0]~5_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[0]~6\ : std_logic;
SIGNAL \fetch_block|IMEM|head[1]~11_combout\ : std_logic;
SIGNAL \wr_en_IMEM~input_o\ : std_logic;
SIGNAL \imem_rst~input_o\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~5_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~7_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~8_combout\ : std_logic;
SIGNAL \rd_en_IMEM~input_o\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[0]~1\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[1]~3\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[2]~5\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[3]~6_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[0]~0_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[1]~2_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[2]~4_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~9_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~10_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[0]~6\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[1]~11_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[1]~12\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[2]~13_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[2]~14\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[3]~15_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[3]~16\ : std_logic;
SIGNAL \fetch_block|IMEM|tail[4]~17_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[3]~7\ : std_logic;
SIGNAL \fetch_block|IMEM|fill_count[4]~8_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~9_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~10_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[1]~12\ : std_logic;
SIGNAL \fetch_block|IMEM|head[2]~13_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[2]~14\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~15_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~16\ : std_logic;
SIGNAL \fetch_block|IMEM|head[4]~17_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~7_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|head[3]~8_combout\ : std_logic;
SIGNAL \wr_data_IMEM[1]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[2]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[3]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[4]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[5]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[6]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[7]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[8]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[9]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[10]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[11]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[12]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[13]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[14]~input_o\ : std_logic;
SIGNAL \wr_data_IMEM[15]~input_o\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \decode_block|IR|sig[14]~feeder_combout\ : std_logic;
SIGNAL \control_block|Mux0~0_combout\ : std_logic;
SIGNAL \decode_block|regSelMux|y[0]~0_combout\ : std_logic;
SIGNAL \control_block|Mux4~0_combout\ : std_logic;
SIGNAL \control_block|Mux7~0_combout\ : std_logic;
SIGNAL \execute_block|zSeldff|d_out~q\ : std_logic;
SIGNAL \control_block|Mux3~0_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[0]~7_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \decode_block|IR|sig[0]~feeder_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~4_combout\ : std_logic;
SIGNAL \decode_block|IR|sig[15]~feeder_combout\ : std_logic;
SIGNAL \control_block|Mux8~0_combout\ : std_logic;
SIGNAL \execute_block|RegWrEndff|d_out~q\ : std_logic;
SIGNAL \writeback_block|RegWrEndff|d_out~0_combout\ : std_logic;
SIGNAL \writeback_block|RegWrEndff|d_out~q\ : std_logic;
SIGNAL \execute_block|destreg|sig[2]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][5]~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][0]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][15]~4_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][0]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][1]~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][0]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~7_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][0]~8_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][0]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~4_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][1]~5_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][0]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~5_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][6]~6_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][0]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~6_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][12]~7_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][0]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~5_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux15~6_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~0_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~2_cout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~3_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[0]~5_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[0]~6\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~11_combout\ : std_logic;
SIGNAL \control_block|Mux5~0_combout\ : std_logic;
SIGNAL \execute_block|WrEnDdff|d_out~q\ : std_logic;
SIGNAL \execute_block|DMEM|tail[0]~5_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[3]~17\ : std_logic;
SIGNAL \execute_block|DMEM|tail[4]~18_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~9_combout\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[0]~1\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[1]~3\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[2]~5\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[3]~7\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[4]~8_combout\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[1]~2_combout\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[0]~0_combout\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[2]~4_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~10_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~11_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~7_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~8_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[0]~6\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~12_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[1]~13\ : std_logic;
SIGNAL \execute_block|DMEM|tail[2]~14_combout\ : std_logic;
SIGNAL \execute_block|DMEM|tail[2]~15\ : std_logic;
SIGNAL \execute_block|DMEM|tail[3]~16_combout\ : std_logic;
SIGNAL \execute_block|DMEM|fill_count[3]~6_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~9_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~10_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~12\ : std_logic;
SIGNAL \execute_block|DMEM|head[2]~13_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[2]~14\ : std_logic;
SIGNAL \execute_block|DMEM|head[3]~15_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[3]~16\ : std_logic;
SIGNAL \execute_block|DMEM|head[4]~17_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~7_combout\ : std_logic;
SIGNAL \execute_block|DMEM|head[1]~8_combout\ : std_logic;
SIGNAL \decode_block|regSelMux|y[2]~2_combout\ : std_logic;
SIGNAL \decode_block|regSelMux|y[1]~1_combout\ : std_logic;
SIGNAL \decode_block|IR|sig[2]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Decoder0~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][7]~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][2]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][2]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux13~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][1]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][1]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][1]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][1]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][1]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][1]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][1]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux14~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|xreg|sig[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[0]~6_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux12~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux12~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][3]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux12~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux12~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux12~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][6]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~5_combout\ : std_logic;
SIGNAL \control_block|Mux2~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][6]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~2_combout\ : std_logic;
SIGNAL \control_block|Mux1~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux9~6_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~20_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|xreg|sig[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][5]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][5]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][5]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][5]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux10~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux10~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][5]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux10~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][5]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][5]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux10~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux10~4_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~17_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][4]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][4]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux11~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~14_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~11_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~8_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~5_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~4\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~7\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~10\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~13\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~16\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~19\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~21_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][9]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][9]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][9]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][9]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][9]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][9]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][9]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][9]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][9]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux6~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~29_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][8]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][8]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][8]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][8]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~4_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][8]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][8]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][8]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][8]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux7~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~26_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][7]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][7]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][7]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux8~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~23_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~22\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~25\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~28\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~30_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~45_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~46_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~37_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~36_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[12]~38_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[12]~39_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~63_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux1~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux1~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][14]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux1~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux1~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux1~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|xreg|sig[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~62_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~60_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][15]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][15]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][15]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux0~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux0~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][15]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux0~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux0~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux0~4_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~47_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~44_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][13]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][13]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][13]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux2~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux2~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][13]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][13]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux2~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][13]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][13]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux2~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux2~4_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~41_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][12]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~4_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][12]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][12]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux3~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~38_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][11]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][11]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][11]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][11]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux4~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux4~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][11]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][11]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux4~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][11]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux4~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux4~4_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~35_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][10]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~4_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[1][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][10]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux5~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~32_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~31\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~34\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~37\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~40\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~43\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~46\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~48_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~47_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~55_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~56_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~57_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~58_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~59_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[15]~61_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~23_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][15]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux0~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux0~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux0~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux0~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux0~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~39_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[12]~40_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~20_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][12]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][12]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux3~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux3~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux3~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux3~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux3~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~33_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~19_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~18_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[10]~28_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[10]~29_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[10]~30_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[10]~31_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~18_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][10]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux5~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux5~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux5~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux5~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux5~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~36_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~32_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~33_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~34_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~35_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~19_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][11]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux4~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux4~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux4~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux4~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux4~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~42_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~43_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~42_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~41_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[13]~44_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~21_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][13]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][13]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux2~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux2~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux2~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux2~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux2~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~48_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~49_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~50_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~45_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~53_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~51_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~52_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[14]~54_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~22_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[6][14]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux1~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[11]~17_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[9]~24_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[9]~25_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[9]~26_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[9]~27_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~17_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][9]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux6~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux6~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux6~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux6~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux6~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~27_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[8]~20_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[8]~21_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[8]~22_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[8]~23_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~16_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][8]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux7~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux7~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux7~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux7~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux7~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~24_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[7]~16_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~15_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][7]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux8~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux8~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux8~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux8~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux8~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[6]~15_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \decode_block|reg_file|reg~14_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[7][6]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux9~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux9~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux9~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux9~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux9~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~18_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[5]~14_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~13_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[0][5]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux10~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux10~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux10~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux10~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux10~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~15_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[4]~13_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~12_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][4]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux11~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux11~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux11~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux11~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux11~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~9_combout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[2]~11_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \decode_block|reg_file|reg~10_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[2][2]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux13~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux13~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux13~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux13~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux13~4_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~12_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[3]~12_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~11_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[5][3]~q\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~0_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~1_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~2_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~3_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~4_combout\ : std_logic;
SIGNAL \decode_block|dataSelMux|Mux12~5_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \execute_block|yreg|sig[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[0]~8_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|Add0~6_combout\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[1]~10_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \decode_block|reg_file|reg~9_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[3][1]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux14~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux14~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux14~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux14~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux14~4_combout\ : std_logic;
SIGNAL \execute_block|xreg|sig[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \execute_block|zSelMUX|y[0]~9_combout\ : std_logic;
SIGNAL \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \decode_block|reg_file|reg~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|reg[4][0]~q\ : std_logic;
SIGNAL \decode_block|reg_file|Mux15~0_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux15~1_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux15~2_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux15~3_combout\ : std_logic;
SIGNAL \decode_block|reg_file|Mux15~4_combout\ : std_logic;
SIGNAL \fetch_block|IMEM|tail\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fetch_block|PCreg|sig\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \execute_block|DMEM|tail\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fetch_block|IMEM|head\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \execute_block|DMEM|head\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decode_block|IR|sig\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \execute_block|ALUFuncreg|sig\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \writeback_block|zreg|sig\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \execute_block|zSelMUX|y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \execute_block|destreg|sig\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \writeback_block|destreg|sig\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_imem_rst <= imem_rst;
ww_PC_en <= PC_en;
ww_rd_en_IMEM <= rd_en_IMEM;
ww_wr_en_IMEM <= wr_en_IMEM;
ww_wr_data_IMEM <= wr_data_IMEM;
PC_out <= ww_PC_out;
IR_out <= ww_IR_out;
x_out <= ww_x_out;
y_out <= ww_y_out;
z_out <= ww_z_out;
d3_out <= ww_d3_out;
dest0_out <= ww_dest0_out;
dest_out <= ww_dest_out;
a3_out <= ww_a3_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \wr_data_IMEM[15]~input_o\ & \wr_data_IMEM[14]~input_o\ & 
\wr_data_IMEM[13]~input_o\ & \wr_data_IMEM[12]~input_o\ & \wr_data_IMEM[11]~input_o\ & \wr_data_IMEM[10]~input_o\ & \wr_data_IMEM[9]~input_o\ & \wr_data_IMEM[8]~input_o\ & \wr_data_IMEM[7]~input_o\ & \wr_data_IMEM[6]~input_o\ & \wr_data_IMEM[5]~input_o\
& \wr_data_IMEM[4]~input_o\ & \wr_data_IMEM[3]~input_o\ & \wr_data_IMEM[2]~input_o\ & \wr_data_IMEM[1]~input_o\ & \wr_data_IMEM[0]~input_o\);

\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fetch_block|IMEM|head\(4) & \fetch_block|IMEM|head\(3) & \fetch_block|IMEM|head\(2) & \fetch_block|IMEM|head\(1) & \fetch_block|IMEM|head\(0));

\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fetch_block|IMEM|tail\(4) & \fetch_block|IMEM|tail\(3) & \fetch_block|IMEM|tail\(2) & \fetch_block|IMEM|tail\(1) & \fetch_block|IMEM|tail\(0));

\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a1\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a2\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a3\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a4\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a5\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a6\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a7\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a8\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a9\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a10\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a11\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a12\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a13\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a14\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a15\ <= \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~dataout\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~3\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~2\ & \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~1\ & 
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~0\);

\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~0\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~1\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~2\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~3\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~dataout\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \execute_block|xreg|sig[15]~_Duplicate_1_q\ & 
\execute_block|xreg|sig[14]~_Duplicate_1_q\ & \execute_block|xreg|sig[13]~_Duplicate_1_q\ & \execute_block|xreg|sig[12]~_Duplicate_1_q\ & \execute_block|xreg|sig[11]~_Duplicate_1_q\ & \execute_block|xreg|sig[10]~_Duplicate_1_q\ & 
\execute_block|xreg|sig[9]~_Duplicate_1_q\ & \execute_block|xreg|sig[8]~_Duplicate_1_q\ & \execute_block|xreg|sig[7]~_Duplicate_1_q\ & \execute_block|xreg|sig[6]~_Duplicate_1_q\ & \execute_block|xreg|sig[5]~_Duplicate_1_q\ & 
\execute_block|xreg|sig[4]~_Duplicate_1_q\ & \execute_block|xreg|sig[3]~_Duplicate_1_q\ & \execute_block|xreg|sig[2]~_Duplicate_1_q\ & \execute_block|xreg|sig[1]~_Duplicate_1_q\ & \execute_block|xreg|sig[0]~_Duplicate_1_q\);

\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\execute_block|DMEM|head\(4) & \execute_block|DMEM|head\(3) & \execute_block|DMEM|head\(2) & \execute_block|DMEM|head\(1) & \execute_block|DMEM|head\(0));

\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\execute_block|DMEM|tail\(4) & \execute_block|DMEM|tail\(3) & \execute_block|DMEM|tail\(2) & \execute_block|DMEM|tail\(1) & \execute_block|DMEM|tail\(0));

\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a1\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a2\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a3\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a4\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a5\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a6\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a7\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a8\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a9\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a10\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a11\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a12\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a13\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\ <= \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\decode_block|reg_file|Mux0~4_combout\ & \decode_block|reg_file|Mux1~4_combout\ & \decode_block|reg_file|Mux2~4_combout\ & \decode_block|reg_file|Mux3~4_combout\ & 
\decode_block|reg_file|Mux4~4_combout\ & \decode_block|reg_file|Mux5~4_combout\ & \decode_block|reg_file|Mux6~4_combout\ & \decode_block|reg_file|Mux7~4_combout\ & \decode_block|reg_file|Mux8~4_combout\ & \decode_block|reg_file|Mux9~4_combout\ & 
\decode_block|reg_file|Mux10~4_combout\ & \decode_block|reg_file|Mux11~4_combout\ & \decode_block|reg_file|Mux12~4_combout\ & \decode_block|reg_file|Mux13~4_combout\ & \decode_block|reg_file|Mux14~4_combout\ & \decode_block|reg_file|Mux15~4_combout\ & gnd
& gnd);

\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\decode_block|dataSelMux|Mux0~4_combout\ & \decode_block|dataSelMux|Mux1~5_combout\ & \decode_block|dataSelMux|Mux2~4_combout\ & \decode_block|dataSelMux|Mux3~5_combout\ & 
\decode_block|dataSelMux|Mux4~4_combout\ & \decode_block|dataSelMux|Mux5~5_combout\ & \decode_block|dataSelMux|Mux6~5_combout\ & \decode_block|dataSelMux|Mux7~5_combout\ & \decode_block|dataSelMux|Mux8~5_combout\ & \decode_block|dataSelMux|Mux9~6_combout\
& \decode_block|dataSelMux|Mux10~4_combout\ & \decode_block|dataSelMux|Mux11~5_combout\ & \decode_block|dataSelMux|Mux12~5_combout\ & \decode_block|dataSelMux|Mux13~5_combout\ & \decode_block|dataSelMux|Mux14~5_combout\ & 
\decode_block|dataSelMux|Mux15~6_combout\ & gnd & gnd);

\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~0\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~1\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~2\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~3\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~dataout\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y15_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X17_Y25_N23
\PC_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\PC_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(1),
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\PC_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(2),
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\PC_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(3),
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\PC_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(4),
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\PC_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(5),
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\PC_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(6),
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\PC_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(7),
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\PC_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(8),
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\PC_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(9),
	devoe => ww_devoe,
	o => \PC_out[9]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\PC_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(10),
	devoe => ww_devoe,
	o => \PC_out[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\PC_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(11),
	devoe => ww_devoe,
	o => \PC_out[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\PC_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(12),
	devoe => ww_devoe,
	o => \PC_out[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\PC_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(13),
	devoe => ww_devoe,
	o => \PC_out[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\PC_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(14),
	devoe => ww_devoe,
	o => \PC_out[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\PC_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|PCreg|sig\(15),
	devoe => ww_devoe,
	o => \PC_out[15]~output_o\);

-- Location: IOOBUF_X31_Y3_N9
\IR_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \IR_out[0]~output_o\);

-- Location: IOOBUF_X31_Y5_N16
\IR_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \IR_out[1]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\IR_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \IR_out[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\IR_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \IR_out[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\IR_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \IR_out[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\IR_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \IR_out[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\IR_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \IR_out[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\IR_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \IR_out[7]~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\IR_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \IR_out[8]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\IR_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \IR_out[9]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\IR_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \IR_out[10]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\IR_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \IR_out[11]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\IR_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \IR_out[12]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\IR_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \IR_out[13]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\IR_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \IR_out[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\IR_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \IR_out[15]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\x_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \x_out[0]~output_o\);

-- Location: IOOBUF_X31_Y12_N2
\x_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux14~4_combout\,
	devoe => ww_devoe,
	o => \x_out[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\x_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \x_out[2]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\x_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \x_out[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\x_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux11~4_combout\,
	devoe => ww_devoe,
	o => \x_out[4]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\x_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \x_out[5]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\x_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \x_out[6]~output_o\);

-- Location: IOOBUF_X31_Y15_N23
\x_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \x_out[7]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\x_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \x_out[8]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\x_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \x_out[9]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\x_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \x_out[10]~output_o\);

-- Location: IOOBUF_X31_Y14_N2
\x_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \x_out[11]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\x_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \x_out[12]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\x_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \x_out[13]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\x_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \x_out[14]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\x_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|reg_file|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \x_out[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\y_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux15~6_combout\,
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\y_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux14~5_combout\,
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\y_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux13~5_combout\,
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X31_Y4_N9
\y_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux12~5_combout\,
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\y_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux11~5_combout\,
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\y_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\y_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux9~6_combout\,
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\y_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux8~5_combout\,
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\y_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux7~5_combout\,
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\y_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux6~5_combout\,
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\y_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux5~5_combout\,
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\y_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \y_out[11]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\y_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \y_out[12]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\y_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \y_out[13]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\y_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \y_out[14]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\y_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|dataSelMux|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \y_out[15]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\z_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(0),
	devoe => ww_devoe,
	o => \z_out[0]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\z_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(1),
	devoe => ww_devoe,
	o => \z_out[1]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\z_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(2),
	devoe => ww_devoe,
	o => \z_out[2]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\z_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(3),
	devoe => ww_devoe,
	o => \z_out[3]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\z_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(4),
	devoe => ww_devoe,
	o => \z_out[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\z_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(5),
	devoe => ww_devoe,
	o => \z_out[5]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\z_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(6),
	devoe => ww_devoe,
	o => \z_out[6]~output_o\);

-- Location: IOOBUF_X31_Y11_N23
\z_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(7),
	devoe => ww_devoe,
	o => \z_out[7]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\z_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[8]~23_combout\,
	devoe => ww_devoe,
	o => \z_out[8]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\z_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[9]~27_combout\,
	devoe => ww_devoe,
	o => \z_out[9]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\z_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[10]~31_combout\,
	devoe => ww_devoe,
	o => \z_out[10]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\z_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[11]~35_combout\,
	devoe => ww_devoe,
	o => \z_out[11]~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\z_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y\(12),
	devoe => ww_devoe,
	o => \z_out[12]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\z_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[13]~44_combout\,
	devoe => ww_devoe,
	o => \z_out[13]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\z_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[14]~54_combout\,
	devoe => ww_devoe,
	o => \z_out[14]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\z_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|zSelMUX|y[15]~61_combout\,
	devoe => ww_devoe,
	o => \z_out[15]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\d3_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(0),
	devoe => ww_devoe,
	o => \d3_out[0]~output_o\);

-- Location: IOOBUF_X31_Y15_N16
\d3_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(1),
	devoe => ww_devoe,
	o => \d3_out[1]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\d3_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(2),
	devoe => ww_devoe,
	o => \d3_out[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\d3_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(3),
	devoe => ww_devoe,
	o => \d3_out[3]~output_o\);

-- Location: IOOBUF_X31_Y15_N2
\d3_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(4),
	devoe => ww_devoe,
	o => \d3_out[4]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\d3_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(5),
	devoe => ww_devoe,
	o => \d3_out[5]~output_o\);

-- Location: IOOBUF_X31_Y3_N2
\d3_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(6),
	devoe => ww_devoe,
	o => \d3_out[6]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\d3_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(7),
	devoe => ww_devoe,
	o => \d3_out[7]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\d3_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(8),
	devoe => ww_devoe,
	o => \d3_out[8]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\d3_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(9),
	devoe => ww_devoe,
	o => \d3_out[9]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\d3_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(10),
	devoe => ww_devoe,
	o => \d3_out[10]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\d3_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(11),
	devoe => ww_devoe,
	o => \d3_out[11]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\d3_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(12),
	devoe => ww_devoe,
	o => \d3_out[12]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\d3_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(13),
	devoe => ww_devoe,
	o => \d3_out[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\d3_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(14),
	devoe => ww_devoe,
	o => \d3_out[14]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\d3_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|zreg|sig\(15),
	devoe => ww_devoe,
	o => \d3_out[15]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\dest0_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|IR|sig\(9),
	devoe => ww_devoe,
	o => \dest0_out[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\dest0_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|IR|sig\(10),
	devoe => ww_devoe,
	o => \dest0_out[1]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\dest0_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode_block|IR|sig\(11),
	devoe => ww_devoe,
	o => \dest0_out[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\dest_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|destreg|sig\(0),
	devoe => ww_devoe,
	o => \dest_out[0]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\dest_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|destreg|sig\(1),
	devoe => ww_devoe,
	o => \dest_out[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\dest_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \execute_block|destreg|sig\(2),
	devoe => ww_devoe,
	o => \dest_out[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\a3_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|destreg|sig\(0),
	devoe => ww_devoe,
	o => \a3_out[0]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\a3_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|destreg|sig\(1),
	devoe => ww_devoe,
	o => \a3_out[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\a3_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \writeback_block|destreg|sig\(2),
	devoe => ww_devoe,
	o => \a3_out[2]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N22
\PC_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_en,
	o => \PC_en~input_o\);

-- Location: LCCOMB_X12_Y1_N0
\fetch_block|PCreg|sig[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[1]~14_combout\ = \fetch_block|PCreg|sig\(1) $ (\PC_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fetch_block|PCreg|sig\(1),
	datad => \PC_en~input_o\,
	combout => \fetch_block|PCreg|sig[1]~14_combout\);

-- Location: IOIBUF_X0_Y6_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X12_Y1_N1
\fetch_block|PCreg|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[1]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(1));

-- Location: LCCOMB_X12_Y1_N4
\fetch_block|PCreg|sig[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[2]~15_combout\ = (\fetch_block|PCreg|sig\(1) & (\fetch_block|PCreg|sig\(2) $ (VCC))) # (!\fetch_block|PCreg|sig\(1) & (\fetch_block|PCreg|sig\(2) & VCC))
-- \fetch_block|PCreg|sig[2]~16\ = CARRY((\fetch_block|PCreg|sig\(1) & \fetch_block|PCreg|sig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(1),
	datab => \fetch_block|PCreg|sig\(2),
	datad => VCC,
	combout => \fetch_block|PCreg|sig[2]~15_combout\,
	cout => \fetch_block|PCreg|sig[2]~16\);

-- Location: FF_X12_Y1_N5
\fetch_block|PCreg|sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[2]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(2));

-- Location: LCCOMB_X12_Y1_N6
\fetch_block|PCreg|sig[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[3]~17_combout\ = (\fetch_block|PCreg|sig\(3) & (!\fetch_block|PCreg|sig[2]~16\)) # (!\fetch_block|PCreg|sig\(3) & ((\fetch_block|PCreg|sig[2]~16\) # (GND)))
-- \fetch_block|PCreg|sig[3]~18\ = CARRY((!\fetch_block|PCreg|sig[2]~16\) # (!\fetch_block|PCreg|sig\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(3),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[2]~16\,
	combout => \fetch_block|PCreg|sig[3]~17_combout\,
	cout => \fetch_block|PCreg|sig[3]~18\);

-- Location: FF_X12_Y1_N7
\fetch_block|PCreg|sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[3]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(3));

-- Location: LCCOMB_X12_Y1_N8
\fetch_block|PCreg|sig[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[4]~19_combout\ = (\fetch_block|PCreg|sig\(4) & (\fetch_block|PCreg|sig[3]~18\ $ (GND))) # (!\fetch_block|PCreg|sig\(4) & (!\fetch_block|PCreg|sig[3]~18\ & VCC))
-- \fetch_block|PCreg|sig[4]~20\ = CARRY((\fetch_block|PCreg|sig\(4) & !\fetch_block|PCreg|sig[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(4),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[3]~18\,
	combout => \fetch_block|PCreg|sig[4]~19_combout\,
	cout => \fetch_block|PCreg|sig[4]~20\);

-- Location: FF_X12_Y1_N9
\fetch_block|PCreg|sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[4]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(4));

-- Location: LCCOMB_X12_Y1_N10
\fetch_block|PCreg|sig[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[5]~21_combout\ = (\fetch_block|PCreg|sig\(5) & (!\fetch_block|PCreg|sig[4]~20\)) # (!\fetch_block|PCreg|sig\(5) & ((\fetch_block|PCreg|sig[4]~20\) # (GND)))
-- \fetch_block|PCreg|sig[5]~22\ = CARRY((!\fetch_block|PCreg|sig[4]~20\) # (!\fetch_block|PCreg|sig\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(5),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[4]~20\,
	combout => \fetch_block|PCreg|sig[5]~21_combout\,
	cout => \fetch_block|PCreg|sig[5]~22\);

-- Location: FF_X12_Y1_N11
\fetch_block|PCreg|sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[5]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(5));

-- Location: LCCOMB_X12_Y1_N12
\fetch_block|PCreg|sig[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[6]~23_combout\ = (\fetch_block|PCreg|sig\(6) & (\fetch_block|PCreg|sig[5]~22\ $ (GND))) # (!\fetch_block|PCreg|sig\(6) & (!\fetch_block|PCreg|sig[5]~22\ & VCC))
-- \fetch_block|PCreg|sig[6]~24\ = CARRY((\fetch_block|PCreg|sig\(6) & !\fetch_block|PCreg|sig[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(6),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[5]~22\,
	combout => \fetch_block|PCreg|sig[6]~23_combout\,
	cout => \fetch_block|PCreg|sig[6]~24\);

-- Location: FF_X12_Y1_N13
\fetch_block|PCreg|sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[6]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(6));

-- Location: LCCOMB_X12_Y1_N14
\fetch_block|PCreg|sig[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[7]~25_combout\ = (\fetch_block|PCreg|sig\(7) & (!\fetch_block|PCreg|sig[6]~24\)) # (!\fetch_block|PCreg|sig\(7) & ((\fetch_block|PCreg|sig[6]~24\) # (GND)))
-- \fetch_block|PCreg|sig[7]~26\ = CARRY((!\fetch_block|PCreg|sig[6]~24\) # (!\fetch_block|PCreg|sig\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(7),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[6]~24\,
	combout => \fetch_block|PCreg|sig[7]~25_combout\,
	cout => \fetch_block|PCreg|sig[7]~26\);

-- Location: FF_X12_Y1_N15
\fetch_block|PCreg|sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[7]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(7));

-- Location: LCCOMB_X12_Y1_N16
\fetch_block|PCreg|sig[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[8]~27_combout\ = (\fetch_block|PCreg|sig\(8) & (\fetch_block|PCreg|sig[7]~26\ $ (GND))) # (!\fetch_block|PCreg|sig\(8) & (!\fetch_block|PCreg|sig[7]~26\ & VCC))
-- \fetch_block|PCreg|sig[8]~28\ = CARRY((\fetch_block|PCreg|sig\(8) & !\fetch_block|PCreg|sig[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(8),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[7]~26\,
	combout => \fetch_block|PCreg|sig[8]~27_combout\,
	cout => \fetch_block|PCreg|sig[8]~28\);

-- Location: FF_X12_Y1_N17
\fetch_block|PCreg|sig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[8]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(8));

-- Location: LCCOMB_X12_Y1_N18
\fetch_block|PCreg|sig[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[9]~29_combout\ = (\fetch_block|PCreg|sig\(9) & (!\fetch_block|PCreg|sig[8]~28\)) # (!\fetch_block|PCreg|sig\(9) & ((\fetch_block|PCreg|sig[8]~28\) # (GND)))
-- \fetch_block|PCreg|sig[9]~30\ = CARRY((!\fetch_block|PCreg|sig[8]~28\) # (!\fetch_block|PCreg|sig\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(9),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[8]~28\,
	combout => \fetch_block|PCreg|sig[9]~29_combout\,
	cout => \fetch_block|PCreg|sig[9]~30\);

-- Location: FF_X12_Y1_N19
\fetch_block|PCreg|sig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[9]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(9));

-- Location: LCCOMB_X12_Y1_N20
\fetch_block|PCreg|sig[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[10]~31_combout\ = (\fetch_block|PCreg|sig\(10) & (\fetch_block|PCreg|sig[9]~30\ $ (GND))) # (!\fetch_block|PCreg|sig\(10) & (!\fetch_block|PCreg|sig[9]~30\ & VCC))
-- \fetch_block|PCreg|sig[10]~32\ = CARRY((\fetch_block|PCreg|sig\(10) & !\fetch_block|PCreg|sig[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(10),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[9]~30\,
	combout => \fetch_block|PCreg|sig[10]~31_combout\,
	cout => \fetch_block|PCreg|sig[10]~32\);

-- Location: FF_X12_Y1_N21
\fetch_block|PCreg|sig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[10]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(10));

-- Location: LCCOMB_X12_Y1_N22
\fetch_block|PCreg|sig[11]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[11]~33_combout\ = (\fetch_block|PCreg|sig\(11) & (!\fetch_block|PCreg|sig[10]~32\)) # (!\fetch_block|PCreg|sig\(11) & ((\fetch_block|PCreg|sig[10]~32\) # (GND)))
-- \fetch_block|PCreg|sig[11]~34\ = CARRY((!\fetch_block|PCreg|sig[10]~32\) # (!\fetch_block|PCreg|sig\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(11),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[10]~32\,
	combout => \fetch_block|PCreg|sig[11]~33_combout\,
	cout => \fetch_block|PCreg|sig[11]~34\);

-- Location: FF_X12_Y1_N23
\fetch_block|PCreg|sig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[11]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(11));

-- Location: LCCOMB_X12_Y1_N24
\fetch_block|PCreg|sig[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[12]~35_combout\ = (\fetch_block|PCreg|sig\(12) & (\fetch_block|PCreg|sig[11]~34\ $ (GND))) # (!\fetch_block|PCreg|sig\(12) & (!\fetch_block|PCreg|sig[11]~34\ & VCC))
-- \fetch_block|PCreg|sig[12]~36\ = CARRY((\fetch_block|PCreg|sig\(12) & !\fetch_block|PCreg|sig[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(12),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[11]~34\,
	combout => \fetch_block|PCreg|sig[12]~35_combout\,
	cout => \fetch_block|PCreg|sig[12]~36\);

-- Location: FF_X12_Y1_N25
\fetch_block|PCreg|sig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[12]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(12));

-- Location: LCCOMB_X12_Y1_N26
\fetch_block|PCreg|sig[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[13]~37_combout\ = (\fetch_block|PCreg|sig\(13) & (!\fetch_block|PCreg|sig[12]~36\)) # (!\fetch_block|PCreg|sig\(13) & ((\fetch_block|PCreg|sig[12]~36\) # (GND)))
-- \fetch_block|PCreg|sig[13]~38\ = CARRY((!\fetch_block|PCreg|sig[12]~36\) # (!\fetch_block|PCreg|sig\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(13),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[12]~36\,
	combout => \fetch_block|PCreg|sig[13]~37_combout\,
	cout => \fetch_block|PCreg|sig[13]~38\);

-- Location: FF_X12_Y1_N27
\fetch_block|PCreg|sig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[13]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(13));

-- Location: LCCOMB_X12_Y1_N28
\fetch_block|PCreg|sig[14]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[14]~39_combout\ = (\fetch_block|PCreg|sig\(14) & (\fetch_block|PCreg|sig[13]~38\ $ (GND))) # (!\fetch_block|PCreg|sig\(14) & (!\fetch_block|PCreg|sig[13]~38\ & VCC))
-- \fetch_block|PCreg|sig[14]~40\ = CARRY((\fetch_block|PCreg|sig\(14) & !\fetch_block|PCreg|sig[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|PCreg|sig\(14),
	datad => VCC,
	cin => \fetch_block|PCreg|sig[13]~38\,
	combout => \fetch_block|PCreg|sig[14]~39_combout\,
	cout => \fetch_block|PCreg|sig[14]~40\);

-- Location: FF_X12_Y1_N29
\fetch_block|PCreg|sig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[14]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(14));

-- Location: LCCOMB_X12_Y1_N30
\fetch_block|PCreg|sig[15]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|PCreg|sig[15]~41_combout\ = \fetch_block|PCreg|sig\(15) $ (\fetch_block|PCreg|sig[14]~40\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|PCreg|sig\(15),
	cin => \fetch_block|PCreg|sig[14]~40\,
	combout => \fetch_block|PCreg|sig[15]~41_combout\);

-- Location: FF_X12_Y1_N31
\fetch_block|PCreg|sig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|PCreg|sig[15]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \PC_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|PCreg|sig\(15));

-- Location: IOIBUF_X31_Y7_N22
\wr_data_IMEM[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(0),
	o => \wr_data_IMEM[0]~input_o\);

-- Location: LCCOMB_X25_Y9_N12
\fetch_block|IMEM|head[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[0]~5_combout\ = \fetch_block|IMEM|head\(0) $ (VCC)
-- \fetch_block|IMEM|head[0]~6\ = CARRY(\fetch_block|IMEM|head\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|head\(0),
	datad => VCC,
	combout => \fetch_block|IMEM|head[0]~5_combout\,
	cout => \fetch_block|IMEM|head[0]~6\);

-- Location: LCCOMB_X25_Y9_N14
\fetch_block|IMEM|head[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[1]~11_combout\ = (\fetch_block|IMEM|head\(1) & (!\fetch_block|IMEM|head[0]~6\)) # (!\fetch_block|IMEM|head\(1) & ((\fetch_block|IMEM|head[0]~6\) # (GND)))
-- \fetch_block|IMEM|head[1]~12\ = CARRY((!\fetch_block|IMEM|head[0]~6\) # (!\fetch_block|IMEM|head\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|head\(1),
	datad => VCC,
	cin => \fetch_block|IMEM|head[0]~6\,
	combout => \fetch_block|IMEM|head[1]~11_combout\,
	cout => \fetch_block|IMEM|head[1]~12\);

-- Location: IOIBUF_X31_Y17_N1
\wr_en_IMEM~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en_IMEM,
	o => \wr_en_IMEM~input_o\);

-- Location: IOIBUF_X31_Y9_N1
\imem_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_imem_rst,
	o => \imem_rst~input_o\);

-- Location: LCCOMB_X27_Y9_N10
\fetch_block|IMEM|tail[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[0]~5_combout\ = \fetch_block|IMEM|tail\(0) $ (VCC)
-- \fetch_block|IMEM|tail[0]~6\ = CARRY(\fetch_block|IMEM|tail\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|tail\(0),
	datad => VCC,
	combout => \fetch_block|IMEM|tail[0]~5_combout\,
	cout => \fetch_block|IMEM|tail[0]~6\);

-- Location: LCCOMB_X27_Y9_N0
\fetch_block|IMEM|tail[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[0]~7_combout\ = (((!\fetch_block|IMEM|tail\(0)) # (!\fetch_block|IMEM|tail\(2))) # (!\fetch_block|IMEM|tail\(3))) # (!\fetch_block|IMEM|tail\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|tail\(1),
	datab => \fetch_block|IMEM|tail\(3),
	datac => \fetch_block|IMEM|tail\(2),
	datad => \fetch_block|IMEM|tail\(0),
	combout => \fetch_block|IMEM|tail[0]~7_combout\);

-- Location: LCCOMB_X27_Y9_N2
\fetch_block|IMEM|tail[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[0]~8_combout\ = (\imem_rst~input_o\) # ((!\fetch_block|IMEM|tail[0]~7_combout\ & \fetch_block|IMEM|tail\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|tail[0]~7_combout\,
	datac => \imem_rst~input_o\,
	datad => \fetch_block|IMEM|tail\(4),
	combout => \fetch_block|IMEM|tail[0]~8_combout\);

-- Location: IOIBUF_X31_Y15_N8
\rd_en_IMEM~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_en_IMEM,
	o => \rd_en_IMEM~input_o\);

-- Location: LCCOMB_X27_Y9_N20
\fetch_block|IMEM|fill_count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|fill_count[0]~0_combout\ = (\fetch_block|IMEM|tail\(0) & (\fetch_block|IMEM|head\(0) $ (VCC))) # (!\fetch_block|IMEM|tail\(0) & ((\fetch_block|IMEM|head\(0)) # (GND)))
-- \fetch_block|IMEM|fill_count[0]~1\ = CARRY((\fetch_block|IMEM|head\(0)) # (!\fetch_block|IMEM|tail\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|tail\(0),
	datab => \fetch_block|IMEM|head\(0),
	datad => VCC,
	combout => \fetch_block|IMEM|fill_count[0]~0_combout\,
	cout => \fetch_block|IMEM|fill_count[0]~1\);

-- Location: LCCOMB_X27_Y9_N22
\fetch_block|IMEM|fill_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|fill_count[1]~2_combout\ = (\fetch_block|IMEM|tail\(1) & ((\fetch_block|IMEM|head\(1) & (!\fetch_block|IMEM|fill_count[0]~1\)) # (!\fetch_block|IMEM|head\(1) & ((\fetch_block|IMEM|fill_count[0]~1\) # (GND))))) # 
-- (!\fetch_block|IMEM|tail\(1) & ((\fetch_block|IMEM|head\(1) & (\fetch_block|IMEM|fill_count[0]~1\ & VCC)) # (!\fetch_block|IMEM|head\(1) & (!\fetch_block|IMEM|fill_count[0]~1\))))
-- \fetch_block|IMEM|fill_count[1]~3\ = CARRY((\fetch_block|IMEM|tail\(1) & ((!\fetch_block|IMEM|fill_count[0]~1\) # (!\fetch_block|IMEM|head\(1)))) # (!\fetch_block|IMEM|tail\(1) & (!\fetch_block|IMEM|head\(1) & !\fetch_block|IMEM|fill_count[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|tail\(1),
	datab => \fetch_block|IMEM|head\(1),
	datad => VCC,
	cin => \fetch_block|IMEM|fill_count[0]~1\,
	combout => \fetch_block|IMEM|fill_count[1]~2_combout\,
	cout => \fetch_block|IMEM|fill_count[1]~3\);

-- Location: LCCOMB_X27_Y9_N24
\fetch_block|IMEM|fill_count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|fill_count[2]~4_combout\ = ((\fetch_block|IMEM|head\(2) $ (\fetch_block|IMEM|tail\(2) $ (\fetch_block|IMEM|fill_count[1]~3\)))) # (GND)
-- \fetch_block|IMEM|fill_count[2]~5\ = CARRY((\fetch_block|IMEM|head\(2) & ((!\fetch_block|IMEM|fill_count[1]~3\) # (!\fetch_block|IMEM|tail\(2)))) # (!\fetch_block|IMEM|head\(2) & (!\fetch_block|IMEM|tail\(2) & !\fetch_block|IMEM|fill_count[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|head\(2),
	datab => \fetch_block|IMEM|tail\(2),
	datad => VCC,
	cin => \fetch_block|IMEM|fill_count[1]~3\,
	combout => \fetch_block|IMEM|fill_count[2]~4_combout\,
	cout => \fetch_block|IMEM|fill_count[2]~5\);

-- Location: LCCOMB_X27_Y9_N26
\fetch_block|IMEM|fill_count[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|fill_count[3]~6_combout\ = (\fetch_block|IMEM|head\(3) & ((\fetch_block|IMEM|tail\(3) & (!\fetch_block|IMEM|fill_count[2]~5\)) # (!\fetch_block|IMEM|tail\(3) & (\fetch_block|IMEM|fill_count[2]~5\ & VCC)))) # (!\fetch_block|IMEM|head\(3) 
-- & ((\fetch_block|IMEM|tail\(3) & ((\fetch_block|IMEM|fill_count[2]~5\) # (GND))) # (!\fetch_block|IMEM|tail\(3) & (!\fetch_block|IMEM|fill_count[2]~5\))))
-- \fetch_block|IMEM|fill_count[3]~7\ = CARRY((\fetch_block|IMEM|head\(3) & (\fetch_block|IMEM|tail\(3) & !\fetch_block|IMEM|fill_count[2]~5\)) # (!\fetch_block|IMEM|head\(3) & ((\fetch_block|IMEM|tail\(3)) # (!\fetch_block|IMEM|fill_count[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|head\(3),
	datab => \fetch_block|IMEM|tail\(3),
	datad => VCC,
	cin => \fetch_block|IMEM|fill_count[2]~5\,
	combout => \fetch_block|IMEM|fill_count[3]~6_combout\,
	cout => \fetch_block|IMEM|fill_count[3]~7\);

-- Location: LCCOMB_X27_Y9_N4
\fetch_block|IMEM|tail[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[0]~9_combout\ = (!\fetch_block|IMEM|fill_count[3]~6_combout\ & (!\fetch_block|IMEM|fill_count[0]~0_combout\ & (!\fetch_block|IMEM|fill_count[1]~2_combout\ & !\fetch_block|IMEM|fill_count[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|fill_count[3]~6_combout\,
	datab => \fetch_block|IMEM|fill_count[0]~0_combout\,
	datac => \fetch_block|IMEM|fill_count[1]~2_combout\,
	datad => \fetch_block|IMEM|fill_count[2]~4_combout\,
	combout => \fetch_block|IMEM|tail[0]~9_combout\);

-- Location: LCCOMB_X27_Y9_N6
\fetch_block|IMEM|tail[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[0]~10_combout\ = (\imem_rst~input_o\) # ((\rd_en_IMEM~input_o\ & ((\fetch_block|IMEM|fill_count[4]~8_combout\) # (!\fetch_block|IMEM|tail[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_en_IMEM~input_o\,
	datab => \imem_rst~input_o\,
	datac => \fetch_block|IMEM|tail[0]~9_combout\,
	datad => \fetch_block|IMEM|fill_count[4]~8_combout\,
	combout => \fetch_block|IMEM|tail[0]~10_combout\);

-- Location: FF_X27_Y9_N11
\fetch_block|IMEM|tail[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|tail[0]~5_combout\,
	sclr => \fetch_block|IMEM|tail[0]~8_combout\,
	ena => \fetch_block|IMEM|tail[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|tail\(0));

-- Location: LCCOMB_X27_Y9_N12
\fetch_block|IMEM|tail[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[1]~11_combout\ = (\fetch_block|IMEM|tail\(1) & (!\fetch_block|IMEM|tail[0]~6\)) # (!\fetch_block|IMEM|tail\(1) & ((\fetch_block|IMEM|tail[0]~6\) # (GND)))
-- \fetch_block|IMEM|tail[1]~12\ = CARRY((!\fetch_block|IMEM|tail[0]~6\) # (!\fetch_block|IMEM|tail\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|tail\(1),
	datad => VCC,
	cin => \fetch_block|IMEM|tail[0]~6\,
	combout => \fetch_block|IMEM|tail[1]~11_combout\,
	cout => \fetch_block|IMEM|tail[1]~12\);

-- Location: FF_X27_Y9_N13
\fetch_block|IMEM|tail[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|tail[1]~11_combout\,
	sclr => \fetch_block|IMEM|tail[0]~8_combout\,
	ena => \fetch_block|IMEM|tail[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|tail\(1));

-- Location: LCCOMB_X27_Y9_N14
\fetch_block|IMEM|tail[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[2]~13_combout\ = (\fetch_block|IMEM|tail\(2) & (\fetch_block|IMEM|tail[1]~12\ $ (GND))) # (!\fetch_block|IMEM|tail\(2) & (!\fetch_block|IMEM|tail[1]~12\ & VCC))
-- \fetch_block|IMEM|tail[2]~14\ = CARRY((\fetch_block|IMEM|tail\(2) & !\fetch_block|IMEM|tail[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|tail\(2),
	datad => VCC,
	cin => \fetch_block|IMEM|tail[1]~12\,
	combout => \fetch_block|IMEM|tail[2]~13_combout\,
	cout => \fetch_block|IMEM|tail[2]~14\);

-- Location: FF_X27_Y9_N15
\fetch_block|IMEM|tail[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|tail[2]~13_combout\,
	sclr => \fetch_block|IMEM|tail[0]~8_combout\,
	ena => \fetch_block|IMEM|tail[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|tail\(2));

-- Location: LCCOMB_X27_Y9_N16
\fetch_block|IMEM|tail[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[3]~15_combout\ = (\fetch_block|IMEM|tail\(3) & (!\fetch_block|IMEM|tail[2]~14\)) # (!\fetch_block|IMEM|tail\(3) & ((\fetch_block|IMEM|tail[2]~14\) # (GND)))
-- \fetch_block|IMEM|tail[3]~16\ = CARRY((!\fetch_block|IMEM|tail[2]~14\) # (!\fetch_block|IMEM|tail\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|tail\(3),
	datad => VCC,
	cin => \fetch_block|IMEM|tail[2]~14\,
	combout => \fetch_block|IMEM|tail[3]~15_combout\,
	cout => \fetch_block|IMEM|tail[3]~16\);

-- Location: FF_X27_Y9_N17
\fetch_block|IMEM|tail[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|tail[3]~15_combout\,
	sclr => \fetch_block|IMEM|tail[0]~8_combout\,
	ena => \fetch_block|IMEM|tail[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|tail\(3));

-- Location: LCCOMB_X27_Y9_N18
\fetch_block|IMEM|tail[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|tail[4]~17_combout\ = \fetch_block|IMEM|tail\(4) $ (!\fetch_block|IMEM|tail[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|tail\(4),
	cin => \fetch_block|IMEM|tail[3]~16\,
	combout => \fetch_block|IMEM|tail[4]~17_combout\);

-- Location: FF_X27_Y9_N19
\fetch_block|IMEM|tail[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|tail[4]~17_combout\,
	sclr => \fetch_block|IMEM|tail[0]~8_combout\,
	ena => \fetch_block|IMEM|tail[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|tail\(4));

-- Location: LCCOMB_X27_Y9_N28
\fetch_block|IMEM|fill_count[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|fill_count[4]~8_combout\ = \fetch_block|IMEM|head\(4) $ (\fetch_block|IMEM|fill_count[3]~7\ $ (\fetch_block|IMEM|tail\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|head\(4),
	datad => \fetch_block|IMEM|tail\(4),
	cin => \fetch_block|IMEM|fill_count[3]~7\,
	combout => \fetch_block|IMEM|fill_count[4]~8_combout\);

-- Location: LCCOMB_X27_Y9_N30
\fetch_block|IMEM|head[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[3]~9_combout\ = (\fetch_block|IMEM|fill_count[1]~2_combout\ & (\fetch_block|IMEM|fill_count[0]~0_combout\ & (\fetch_block|IMEM|fill_count[3]~6_combout\ & \fetch_block|IMEM|fill_count[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|fill_count[1]~2_combout\,
	datab => \fetch_block|IMEM|fill_count[0]~0_combout\,
	datac => \fetch_block|IMEM|fill_count[3]~6_combout\,
	datad => \fetch_block|IMEM|fill_count[2]~4_combout\,
	combout => \fetch_block|IMEM|head[3]~9_combout\);

-- Location: LCCOMB_X25_Y9_N22
\fetch_block|IMEM|head[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[3]~10_combout\ = (\imem_rst~input_o\) # ((\wr_en_IMEM~input_o\ & ((!\fetch_block|IMEM|head[3]~9_combout\) # (!\fetch_block|IMEM|fill_count[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en_IMEM~input_o\,
	datab => \imem_rst~input_o\,
	datac => \fetch_block|IMEM|fill_count[4]~8_combout\,
	datad => \fetch_block|IMEM|head[3]~9_combout\,
	combout => \fetch_block|IMEM|head[3]~10_combout\);

-- Location: FF_X25_Y9_N15
\fetch_block|IMEM|head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|head[1]~11_combout\,
	sclr => \fetch_block|IMEM|head[3]~8_combout\,
	ena => \fetch_block|IMEM|head[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|head\(1));

-- Location: LCCOMB_X25_Y9_N16
\fetch_block|IMEM|head[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[2]~13_combout\ = (\fetch_block|IMEM|head\(2) & (\fetch_block|IMEM|head[1]~12\ $ (GND))) # (!\fetch_block|IMEM|head\(2) & (!\fetch_block|IMEM|head[1]~12\ & VCC))
-- \fetch_block|IMEM|head[2]~14\ = CARRY((\fetch_block|IMEM|head\(2) & !\fetch_block|IMEM|head[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|head\(2),
	datad => VCC,
	cin => \fetch_block|IMEM|head[1]~12\,
	combout => \fetch_block|IMEM|head[2]~13_combout\,
	cout => \fetch_block|IMEM|head[2]~14\);

-- Location: FF_X25_Y9_N17
\fetch_block|IMEM|head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|head[2]~13_combout\,
	sclr => \fetch_block|IMEM|head[3]~8_combout\,
	ena => \fetch_block|IMEM|head[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|head\(2));

-- Location: LCCOMB_X25_Y9_N18
\fetch_block|IMEM|head[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[3]~15_combout\ = (\fetch_block|IMEM|head\(3) & (!\fetch_block|IMEM|head[2]~14\)) # (!\fetch_block|IMEM|head\(3) & ((\fetch_block|IMEM|head[2]~14\) # (GND)))
-- \fetch_block|IMEM|head[3]~16\ = CARRY((!\fetch_block|IMEM|head[2]~14\) # (!\fetch_block|IMEM|head\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|head\(3),
	datad => VCC,
	cin => \fetch_block|IMEM|head[2]~14\,
	combout => \fetch_block|IMEM|head[3]~15_combout\,
	cout => \fetch_block|IMEM|head[3]~16\);

-- Location: FF_X25_Y9_N19
\fetch_block|IMEM|head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|head[3]~15_combout\,
	sclr => \fetch_block|IMEM|head[3]~8_combout\,
	ena => \fetch_block|IMEM|head[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|head\(3));

-- Location: LCCOMB_X25_Y9_N20
\fetch_block|IMEM|head[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[4]~17_combout\ = \fetch_block|IMEM|head\(4) $ (!\fetch_block|IMEM|head[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|head\(4),
	cin => \fetch_block|IMEM|head[3]~16\,
	combout => \fetch_block|IMEM|head[4]~17_combout\);

-- Location: FF_X25_Y9_N21
\fetch_block|IMEM|head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|head[4]~17_combout\,
	sclr => \fetch_block|IMEM|head[3]~8_combout\,
	ena => \fetch_block|IMEM|head[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|head\(4));

-- Location: LCCOMB_X25_Y9_N26
\fetch_block|IMEM|head[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[3]~7_combout\ = (((!\fetch_block|IMEM|head\(2)) # (!\fetch_block|IMEM|head\(1))) # (!\fetch_block|IMEM|head\(3))) # (!\fetch_block|IMEM|head\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_block|IMEM|head\(0),
	datab => \fetch_block|IMEM|head\(3),
	datac => \fetch_block|IMEM|head\(1),
	datad => \fetch_block|IMEM|head\(2),
	combout => \fetch_block|IMEM|head[3]~7_combout\);

-- Location: LCCOMB_X25_Y9_N28
\fetch_block|IMEM|head[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_block|IMEM|head[3]~8_combout\ = (\imem_rst~input_o\) # ((\fetch_block|IMEM|head\(4) & !\fetch_block|IMEM|head[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_block|IMEM|head\(4),
	datac => \fetch_block|IMEM|head[3]~7_combout\,
	datad => \imem_rst~input_o\,
	combout => \fetch_block|IMEM|head[3]~8_combout\);

-- Location: FF_X25_Y9_N13
\fetch_block|IMEM|head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fetch_block|IMEM|head[0]~5_combout\,
	sclr => \fetch_block|IMEM|head[3]~8_combout\,
	ena => \fetch_block|IMEM|head[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_block|IMEM|head\(0));

-- Location: IOIBUF_X31_Y7_N1
\wr_data_IMEM[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(1),
	o => \wr_data_IMEM[1]~input_o\);

-- Location: IOIBUF_X31_Y12_N15
\wr_data_IMEM[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(2),
	o => \wr_data_IMEM[2]~input_o\);

-- Location: IOIBUF_X31_Y6_N22
\wr_data_IMEM[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(3),
	o => \wr_data_IMEM[3]~input_o\);

-- Location: IOIBUF_X31_Y2_N15
\wr_data_IMEM[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(4),
	o => \wr_data_IMEM[4]~input_o\);

-- Location: IOIBUF_X31_Y13_N8
\wr_data_IMEM[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(5),
	o => \wr_data_IMEM[5]~input_o\);

-- Location: IOIBUF_X31_Y1_N22
\wr_data_IMEM[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(6),
	o => \wr_data_IMEM[6]~input_o\);

-- Location: IOIBUF_X31_Y5_N22
\wr_data_IMEM[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(7),
	o => \wr_data_IMEM[7]~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\wr_data_IMEM[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(8),
	o => \wr_data_IMEM[8]~input_o\);

-- Location: IOIBUF_X31_Y5_N1
\wr_data_IMEM[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(9),
	o => \wr_data_IMEM[9]~input_o\);

-- Location: IOIBUF_X31_Y13_N1
\wr_data_IMEM[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(10),
	o => \wr_data_IMEM[10]~input_o\);

-- Location: IOIBUF_X31_Y7_N8
\wr_data_IMEM[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(11),
	o => \wr_data_IMEM[11]~input_o\);

-- Location: IOIBUF_X31_Y13_N15
\wr_data_IMEM[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(12),
	o => \wr_data_IMEM[12]~input_o\);

-- Location: IOIBUF_X31_Y5_N8
\wr_data_IMEM[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(13),
	o => \wr_data_IMEM[13]~input_o\);

-- Location: IOIBUF_X31_Y4_N15
\wr_data_IMEM[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(14),
	o => \wr_data_IMEM[14]~input_o\);

-- Location: IOIBUF_X31_Y6_N1
\wr_data_IMEM[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data_IMEM(15),
	o => \wr_data_IMEM[15]~input_o\);

-- Location: M9K_X26_Y9_N0
\fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "stage1:fetch_block|ring_buffer:IMEM|altsyncram:ram_rtl_0|altsyncram_87g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X19_Y9_N31
\decode_block|IR|sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a6\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(6));

-- Location: FF_X19_Y9_N21
\decode_block|IR|sig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a9\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(9));

-- Location: FF_X19_Y9_N9
\decode_block|IR|sig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a13\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(13));

-- Location: FF_X19_Y9_N5
\decode_block|IR|sig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a12\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(12));

-- Location: LCCOMB_X19_Y9_N6
\decode_block|IR|sig[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|IR|sig[14]~feeder_combout\ = \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \decode_block|IR|sig[14]~feeder_combout\);

-- Location: FF_X19_Y9_N7
\decode_block|IR|sig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|IR|sig[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(14));

-- Location: LCCOMB_X19_Y9_N10
\control_block|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux0~0_combout\ = (\decode_block|IR|sig\(12) & (\decode_block|IR|sig\(13) $ (!\decode_block|IR|sig\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|IR|sig\(13),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(14),
	combout => \control_block|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y9_N28
\decode_block|regSelMux|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|regSelMux|y[0]~0_combout\ = (\control_block|Mux0~0_combout\ & ((\decode_block|IR|sig\(9)))) # (!\control_block|Mux0~0_combout\ & (\decode_block|IR|sig\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(6),
	datab => \decode_block|IR|sig\(9),
	datad => \control_block|Mux0~0_combout\,
	combout => \decode_block|regSelMux|y[0]~0_combout\);

-- Location: LCCOMB_X20_Y9_N8
\control_block|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux4~0_combout\ = (\decode_block|IR|sig\(13) & (\decode_block|IR|sig\(14) $ (\decode_block|IR|sig\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(13),
	combout => \control_block|Mux4~0_combout\);

-- Location: FF_X20_Y9_N9
\execute_block|ALUFuncreg|sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_block|Mux4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|ALUFuncreg|sig\(0));

-- Location: LCCOMB_X20_Y9_N28
\control_block|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux7~0_combout\ = (!\decode_block|IR|sig\(13) & !\decode_block|IR|sig\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|IR|sig\(13),
	datad => \decode_block|IR|sig\(14),
	combout => \control_block|Mux7~0_combout\);

-- Location: FF_X20_Y9_N29
\execute_block|zSeldff|d_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_block|Mux7~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|zSeldff|d_out~q\);

-- Location: LCCOMB_X20_Y9_N14
\control_block|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux3~0_combout\ = (!\decode_block|IR|sig\(12) & \decode_block|IR|sig\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(14),
	combout => \control_block|Mux3~0_combout\);

-- Location: FF_X20_Y9_N15
\execute_block|ALUFuncreg|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_block|Mux3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|ALUFuncreg|sig\(1));

-- Location: LCCOMB_X22_Y9_N24
\execute_block|zSelMUX|y[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[0]~7_combout\ = (!\execute_block|zSeldff|d_out~q\ & ((\execute_block|ALUFuncreg|sig\(0)) # (!\execute_block|ALUFuncreg|sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUFuncreg|sig\(0),
	datab => \execute_block|zSeldff|d_out~q\,
	datad => \execute_block|ALUFuncreg|sig\(1),
	combout => \execute_block|zSelMUX|y[0]~7_combout\);

-- Location: FF_X20_Y12_N29
\execute_block|xreg|sig[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|Mux15~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y9_N24
\decode_block|IR|sig[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|IR|sig[0]~feeder_combout\ = \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \decode_block|IR|sig[0]~feeder_combout\);

-- Location: FF_X25_Y9_N25
\decode_block|IR|sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|IR|sig[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(0));

-- Location: LCCOMB_X19_Y9_N4
\decode_block|dataSelMux|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~4_combout\ = (\decode_block|IR|sig\(12) & ((\decode_block|IR|sig\(14)) # (!\decode_block|IR|sig\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(13),
	combout => \decode_block|dataSelMux|Mux15~4_combout\);

-- Location: FF_X22_Y9_N25
\decode_block|IR|sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a5\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(5));

-- Location: FF_X17_Y11_N27
\decode_block|IR|sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a3\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(3));

-- Location: FF_X17_Y11_N21
\decode_block|IR|sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a4\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(4));

-- Location: LCCOMB_X25_Y9_N4
\decode_block|IR|sig[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|IR|sig[15]~feeder_combout\ = \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \decode_block|IR|sig[15]~feeder_combout\);

-- Location: FF_X25_Y9_N5
\decode_block|IR|sig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|IR|sig[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(15));

-- Location: LCCOMB_X20_Y9_N30
\control_block|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux8~0_combout\ = (!\decode_block|IR|sig\(15) & ((\decode_block|IR|sig\(14) $ (\decode_block|IR|sig\(13))) # (!\decode_block|IR|sig\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datab => \decode_block|IR|sig\(13),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(15),
	combout => \control_block|Mux8~0_combout\);

-- Location: FF_X20_Y9_N31
\execute_block|RegWrEndff|d_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_block|Mux8~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|RegWrEndff|d_out~q\);

-- Location: LCCOMB_X17_Y11_N24
\writeback_block|RegWrEndff|d_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \writeback_block|RegWrEndff|d_out~0_combout\ = (!\rst~input_o\ & \execute_block|RegWrEndff|d_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \execute_block|RegWrEndff|d_out~q\,
	combout => \writeback_block|RegWrEndff|d_out~0_combout\);

-- Location: FF_X17_Y11_N25
\writeback_block|RegWrEndff|d_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \writeback_block|RegWrEndff|d_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|RegWrEndff|d_out~q\);

-- Location: FF_X19_Y9_N3
\decode_block|IR|sig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a11\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(11));

-- Location: LCCOMB_X16_Y10_N20
\execute_block|destreg|sig[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|destreg|sig[2]~feeder_combout\ = \decode_block|IR|sig\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|IR|sig\(11),
	combout => \execute_block|destreg|sig[2]~feeder_combout\);

-- Location: FF_X16_Y10_N21
\execute_block|destreg|sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|destreg|sig[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|destreg|sig\(2));

-- Location: FF_X17_Y11_N3
\writeback_block|destreg|sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \execute_block|destreg|sig\(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|destreg|sig\(2));

-- Location: FF_X19_Y9_N27
\decode_block|IR|sig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a10\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(10));

-- Location: FF_X17_Y11_N23
\execute_block|destreg|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|IR|sig\(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|destreg|sig\(1));

-- Location: FF_X17_Y11_N13
\writeback_block|destreg|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \execute_block|destreg|sig\(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|destreg|sig\(1));

-- Location: FF_X17_Y1_N9
\execute_block|destreg|sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|IR|sig\(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|destreg|sig\(0));

-- Location: FF_X17_Y11_N19
\writeback_block|destreg|sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \execute_block|destreg|sig\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|destreg|sig\(0));

-- Location: LCCOMB_X17_Y11_N16
\decode_block|reg_file|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~1_combout\ = (\writeback_block|RegWrEndff|d_out~q\ & (\writeback_block|destreg|sig\(2) & (\writeback_block|destreg|sig\(1) & !\writeback_block|destreg|sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|RegWrEndff|d_out~q\,
	datab => \writeback_block|destreg|sig\(2),
	datac => \writeback_block|destreg|sig\(1),
	datad => \writeback_block|destreg|sig\(0),
	combout => \decode_block|reg_file|Decoder0~1_combout\);

-- Location: LCCOMB_X17_Y11_N20
\decode_block|reg_file|reg[6][5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[6][5]~2_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~1_combout\,
	combout => \decode_block|reg_file|reg[6][5]~2_combout\);

-- Location: FF_X18_Y12_N29
\decode_block|reg_file|reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][0]~q\);

-- Location: LCCOMB_X18_Y12_N6
\decode_block|dataSelMux|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~0_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|reg_file|reg[6][0]~q\) # ((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & (((\decode_block|reg_file|reg[4][0]~q\ & !\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[6][0]~q\,
	datac => \decode_block|reg_file|reg[4][0]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux15~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\decode_block|reg_file|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~3_combout\ = (\writeback_block|destreg|sig\(0) & (\writeback_block|destreg|sig\(2) & (\writeback_block|RegWrEndff|d_out~q\ & \writeback_block|destreg|sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|destreg|sig\(0),
	datab => \writeback_block|destreg|sig\(2),
	datac => \writeback_block|RegWrEndff|d_out~q\,
	datad => \writeback_block|destreg|sig\(1),
	combout => \decode_block|reg_file|Decoder0~3_combout\);

-- Location: LCCOMB_X18_Y11_N14
\decode_block|reg_file|reg[7][15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[7][15]~4_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~3_combout\,
	combout => \decode_block|reg_file|reg[7][15]~4_combout\);

-- Location: FF_X19_Y12_N11
\decode_block|reg_file|reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][0]~q\);

-- Location: LCCOMB_X17_Y11_N10
\decode_block|reg_file|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~0_combout\ = (\writeback_block|destreg|sig\(0) & (\writeback_block|destreg|sig\(2) & (\writeback_block|RegWrEndff|d_out~q\ & !\writeback_block|destreg|sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|destreg|sig\(0),
	datab => \writeback_block|destreg|sig\(2),
	datac => \writeback_block|RegWrEndff|d_out~q\,
	datad => \writeback_block|destreg|sig\(1),
	combout => \decode_block|reg_file|Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y11_N10
\decode_block|reg_file|reg[5][1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[5][1]~1_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~0_combout\,
	combout => \decode_block|reg_file|reg[5][1]~1_combout\);

-- Location: FF_X19_Y12_N13
\decode_block|reg_file|reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][0]~q\);

-- Location: LCCOMB_X19_Y12_N10
\decode_block|dataSelMux|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux15~0_combout\ & (\decode_block|reg_file|reg[7][0]~q\)) # (!\decode_block|dataSelMux|Mux15~0_combout\ & ((\decode_block|reg_file|reg[5][0]~q\))))) # 
-- (!\decode_block|IR|sig\(3) & (\decode_block|dataSelMux|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|dataSelMux|Mux15~0_combout\,
	datac => \decode_block|reg_file|reg[7][0]~q\,
	datad => \decode_block|reg_file|reg[5][0]~q\,
	combout => \decode_block|dataSelMux|Mux15~1_combout\);

-- Location: LCCOMB_X17_Y11_N2
\decode_block|reg_file|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~7_combout\ = (\writeback_block|RegWrEndff|d_out~q\ & (\writeback_block|destreg|sig\(1) & (!\writeback_block|destreg|sig\(2) & \writeback_block|destreg|sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|RegWrEndff|d_out~q\,
	datab => \writeback_block|destreg|sig\(1),
	datac => \writeback_block|destreg|sig\(2),
	datad => \writeback_block|destreg|sig\(0),
	combout => \decode_block|reg_file|Decoder0~7_combout\);

-- Location: LCCOMB_X17_Y11_N14
\decode_block|reg_file|reg[3][0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][0]~8_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \decode_block|reg_file|Decoder0~7_combout\,
	combout => \decode_block|reg_file|reg[3][0]~8_combout\);

-- Location: FF_X17_Y9_N23
\decode_block|reg_file|reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][0]~q\);

-- Location: LCCOMB_X19_Y11_N18
\decode_block|reg_file|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~4_combout\ = (!\writeback_block|destreg|sig\(0) & (\writeback_block|destreg|sig\(1) & (!\writeback_block|destreg|sig\(2) & \writeback_block|RegWrEndff|d_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|destreg|sig\(0),
	datab => \writeback_block|destreg|sig\(1),
	datac => \writeback_block|destreg|sig\(2),
	datad => \writeback_block|RegWrEndff|d_out~q\,
	combout => \decode_block|reg_file|Decoder0~4_combout\);

-- Location: LCCOMB_X19_Y11_N20
\decode_block|reg_file|reg[2][1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][1]~5_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~4_combout\,
	combout => \decode_block|reg_file|reg[2][1]~5_combout\);

-- Location: FF_X17_Y9_N1
\decode_block|reg_file|reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][0]~q\);

-- Location: LCCOMB_X17_Y11_N0
\decode_block|reg_file|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~5_combout\ = (\writeback_block|destreg|sig\(0) & (!\writeback_block|destreg|sig\(2) & (\writeback_block|RegWrEndff|d_out~q\ & !\writeback_block|destreg|sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|destreg|sig\(0),
	datab => \writeback_block|destreg|sig\(2),
	datac => \writeback_block|RegWrEndff|d_out~q\,
	datad => \writeback_block|destreg|sig\(1),
	combout => \decode_block|reg_file|Decoder0~5_combout\);

-- Location: LCCOMB_X17_Y11_N26
\decode_block|reg_file|reg[1][6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[1][6]~6_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~5_combout\,
	combout => \decode_block|reg_file|reg[1][6]~6_combout\);

-- Location: FF_X18_Y11_N5
\decode_block|reg_file|reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][0]~q\);

-- Location: LCCOMB_X17_Y11_N28
\decode_block|reg_file|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~6_combout\ = (!\writeback_block|destreg|sig\(0) & (!\writeback_block|destreg|sig\(1) & (\writeback_block|RegWrEndff|d_out~q\ & !\writeback_block|destreg|sig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|destreg|sig\(0),
	datab => \writeback_block|destreg|sig\(1),
	datac => \writeback_block|RegWrEndff|d_out~q\,
	datad => \writeback_block|destreg|sig\(2),
	combout => \decode_block|reg_file|Decoder0~6_combout\);

-- Location: LCCOMB_X18_Y11_N22
\decode_block|reg_file|reg[0][12]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[0][12]~7_combout\ = (\rst~input_o\) # (\decode_block|reg_file|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decode_block|reg_file|Decoder0~6_combout\,
	combout => \decode_block|reg_file|reg[0][12]~7_combout\);

-- Location: FF_X18_Y11_N19
\decode_block|reg_file|reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][0]~q\);

-- Location: LCCOMB_X18_Y11_N18
\decode_block|dataSelMux|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][0]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][0]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][0]~q\,
	datac => \decode_block|reg_file|reg[0][0]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux15~2_combout\);

-- Location: LCCOMB_X17_Y9_N10
\decode_block|dataSelMux|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~3_combout\ = (\decode_block|dataSelMux|Mux15~2_combout\ & ((\decode_block|reg_file|reg[3][0]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux15~2_combout\ & (((\decode_block|reg_file|reg[2][0]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][0]~q\,
	datab => \decode_block|reg_file|reg[2][0]~q\,
	datac => \decode_block|dataSelMux|Mux15~2_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux15~3_combout\);

-- Location: LCCOMB_X22_Y9_N6
\decode_block|dataSelMux|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~5_combout\ = (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux15~1_combout\)) # (!\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux15~1_combout\,
	datad => \decode_block|dataSelMux|Mux15~3_combout\,
	combout => \decode_block|dataSelMux|Mux15~5_combout\);

-- Location: LCCOMB_X22_Y9_N28
\decode_block|dataSelMux|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux15~6_combout\ = (\decode_block|dataSelMux|Mux15~5_combout\) # ((\decode_block|IR|sig\(0) & \decode_block|dataSelMux|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|IR|sig\(0),
	datac => \decode_block|dataSelMux|Mux15~4_combout\,
	datad => \decode_block|dataSelMux|Mux15~5_combout\,
	combout => \decode_block|dataSelMux|Mux15~6_combout\);

-- Location: LCCOMB_X22_Y9_N14
\execute_block|yreg|sig[0]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|yreg|sig[0]~_Duplicate_1feeder_combout\ = \decode_block|dataSelMux|Mux15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|dataSelMux|Mux15~6_combout\,
	combout => \execute_block|yreg|sig[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y9_N15
\execute_block|yreg|sig[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|yreg|sig[0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y11_N0
\execute_block|ALUblock|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~0_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\execute_block|ALUblock|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~2_cout\ = CARRY(\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|ALUFuncreg|sig\(0),
	datad => VCC,
	cout => \execute_block|ALUblock|Add0~2_cout\);

-- Location: LCCOMB_X23_Y11_N18
\execute_block|ALUblock|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~3_combout\ = (\execute_block|xreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~0_combout\ & (\execute_block|ALUblock|Add0~2_cout\ & VCC)) # (!\execute_block|ALUblock|Add0~0_combout\ & 
-- (!\execute_block|ALUblock|Add0~2_cout\)))) # (!\execute_block|xreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~0_combout\ & (!\execute_block|ALUblock|Add0~2_cout\)) # (!\execute_block|ALUblock|Add0~0_combout\ & 
-- ((\execute_block|ALUblock|Add0~2_cout\) # (GND)))))
-- \execute_block|ALUblock|Add0~4\ = CARRY((\execute_block|xreg|sig[0]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~0_combout\ & !\execute_block|ALUblock|Add0~2_cout\)) # (!\execute_block|xreg|sig[0]~_Duplicate_1_q\ & 
-- ((!\execute_block|ALUblock|Add0~2_cout\) # (!\execute_block|ALUblock|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~0_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~2_cout\,
	combout => \execute_block|ALUblock|Add0~3_combout\,
	cout => \execute_block|ALUblock|Add0~4\);

-- Location: LCCOMB_X25_Y11_N18
\execute_block|DMEM|head[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[0]~5_combout\ = \execute_block|DMEM|head\(0) $ (VCC)
-- \execute_block|DMEM|head[0]~6\ = CARRY(\execute_block|DMEM|head\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|head\(0),
	datad => VCC,
	combout => \execute_block|DMEM|head[0]~5_combout\,
	cout => \execute_block|DMEM|head[0]~6\);

-- Location: LCCOMB_X25_Y11_N20
\execute_block|DMEM|head[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[1]~11_combout\ = (\execute_block|DMEM|head\(1) & (!\execute_block|DMEM|head[0]~6\)) # (!\execute_block|DMEM|head\(1) & ((\execute_block|DMEM|head[0]~6\) # (GND)))
-- \execute_block|DMEM|head[1]~12\ = CARRY((!\execute_block|DMEM|head[0]~6\) # (!\execute_block|DMEM|head\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|head\(1),
	datad => VCC,
	cin => \execute_block|DMEM|head[0]~6\,
	combout => \execute_block|DMEM|head[1]~11_combout\,
	cout => \execute_block|DMEM|head[1]~12\);

-- Location: LCCOMB_X20_Y9_N4
\control_block|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux5~0_combout\ = (!\decode_block|IR|sig\(14) & (!\decode_block|IR|sig\(13) & (\decode_block|IR|sig\(12) & !\decode_block|IR|sig\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datab => \decode_block|IR|sig\(13),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(15),
	combout => \control_block|Mux5~0_combout\);

-- Location: FF_X20_Y9_N5
\execute_block|WrEnDdff|d_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_block|Mux5~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|WrEnDdff|d_out~q\);

-- Location: LCCOMB_X27_Y11_N10
\execute_block|DMEM|tail[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[0]~5_combout\ = \execute_block|DMEM|tail\(0) $ (VCC)
-- \execute_block|DMEM|tail[0]~6\ = CARRY(\execute_block|DMEM|tail\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(0),
	datad => VCC,
	combout => \execute_block|DMEM|tail[0]~5_combout\,
	cout => \execute_block|DMEM|tail[0]~6\);

-- Location: LCCOMB_X27_Y11_N16
\execute_block|DMEM|tail[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[3]~16_combout\ = (\execute_block|DMEM|tail\(3) & (!\execute_block|DMEM|tail[2]~15\)) # (!\execute_block|DMEM|tail\(3) & ((\execute_block|DMEM|tail[2]~15\) # (GND)))
-- \execute_block|DMEM|tail[3]~17\ = CARRY((!\execute_block|DMEM|tail[2]~15\) # (!\execute_block|DMEM|tail\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|tail\(3),
	datad => VCC,
	cin => \execute_block|DMEM|tail[2]~15\,
	combout => \execute_block|DMEM|tail[3]~16_combout\,
	cout => \execute_block|DMEM|tail[3]~17\);

-- Location: LCCOMB_X27_Y11_N18
\execute_block|DMEM|tail[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[4]~18_combout\ = \execute_block|DMEM|tail\(4) $ (!\execute_block|DMEM|tail[3]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|tail\(4),
	cin => \execute_block|DMEM|tail[3]~17\,
	combout => \execute_block|DMEM|tail[4]~18_combout\);

-- Location: LCCOMB_X20_Y9_N6
\execute_block|DMEM|tail[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~9_combout\ = (\decode_block|IR|sig\(14)) # ((\decode_block|IR|sig\(13)) # ((\decode_block|IR|sig\(12)) # (\decode_block|IR|sig\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datab => \decode_block|IR|sig\(13),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(15),
	combout => \execute_block|DMEM|tail[1]~9_combout\);

-- Location: LCCOMB_X25_Y11_N4
\execute_block|DMEM|fill_count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|fill_count[0]~0_combout\ = (\execute_block|DMEM|tail\(0) & (\execute_block|DMEM|head\(0) $ (VCC))) # (!\execute_block|DMEM|tail\(0) & ((\execute_block|DMEM|head\(0)) # (GND)))
-- \execute_block|DMEM|fill_count[0]~1\ = CARRY((\execute_block|DMEM|head\(0)) # (!\execute_block|DMEM|tail\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(0),
	datab => \execute_block|DMEM|head\(0),
	datad => VCC,
	combout => \execute_block|DMEM|fill_count[0]~0_combout\,
	cout => \execute_block|DMEM|fill_count[0]~1\);

-- Location: LCCOMB_X25_Y11_N6
\execute_block|DMEM|fill_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|fill_count[1]~2_combout\ = (\execute_block|DMEM|tail\(1) & ((\execute_block|DMEM|head\(1) & (!\execute_block|DMEM|fill_count[0]~1\)) # (!\execute_block|DMEM|head\(1) & ((\execute_block|DMEM|fill_count[0]~1\) # (GND))))) # 
-- (!\execute_block|DMEM|tail\(1) & ((\execute_block|DMEM|head\(1) & (\execute_block|DMEM|fill_count[0]~1\ & VCC)) # (!\execute_block|DMEM|head\(1) & (!\execute_block|DMEM|fill_count[0]~1\))))
-- \execute_block|DMEM|fill_count[1]~3\ = CARRY((\execute_block|DMEM|tail\(1) & ((!\execute_block|DMEM|fill_count[0]~1\) # (!\execute_block|DMEM|head\(1)))) # (!\execute_block|DMEM|tail\(1) & (!\execute_block|DMEM|head\(1) & 
-- !\execute_block|DMEM|fill_count[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(1),
	datab => \execute_block|DMEM|head\(1),
	datad => VCC,
	cin => \execute_block|DMEM|fill_count[0]~1\,
	combout => \execute_block|DMEM|fill_count[1]~2_combout\,
	cout => \execute_block|DMEM|fill_count[1]~3\);

-- Location: LCCOMB_X25_Y11_N8
\execute_block|DMEM|fill_count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|fill_count[2]~4_combout\ = ((\execute_block|DMEM|head\(2) $ (\execute_block|DMEM|tail\(2) $ (\execute_block|DMEM|fill_count[1]~3\)))) # (GND)
-- \execute_block|DMEM|fill_count[2]~5\ = CARRY((\execute_block|DMEM|head\(2) & ((!\execute_block|DMEM|fill_count[1]~3\) # (!\execute_block|DMEM|tail\(2)))) # (!\execute_block|DMEM|head\(2) & (!\execute_block|DMEM|tail\(2) & 
-- !\execute_block|DMEM|fill_count[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|head\(2),
	datab => \execute_block|DMEM|tail\(2),
	datad => VCC,
	cin => \execute_block|DMEM|fill_count[1]~3\,
	combout => \execute_block|DMEM|fill_count[2]~4_combout\,
	cout => \execute_block|DMEM|fill_count[2]~5\);

-- Location: LCCOMB_X25_Y11_N10
\execute_block|DMEM|fill_count[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|fill_count[3]~6_combout\ = (\execute_block|DMEM|tail\(3) & ((\execute_block|DMEM|head\(3) & (!\execute_block|DMEM|fill_count[2]~5\)) # (!\execute_block|DMEM|head\(3) & ((\execute_block|DMEM|fill_count[2]~5\) # (GND))))) # 
-- (!\execute_block|DMEM|tail\(3) & ((\execute_block|DMEM|head\(3) & (\execute_block|DMEM|fill_count[2]~5\ & VCC)) # (!\execute_block|DMEM|head\(3) & (!\execute_block|DMEM|fill_count[2]~5\))))
-- \execute_block|DMEM|fill_count[3]~7\ = CARRY((\execute_block|DMEM|tail\(3) & ((!\execute_block|DMEM|fill_count[2]~5\) # (!\execute_block|DMEM|head\(3)))) # (!\execute_block|DMEM|tail\(3) & (!\execute_block|DMEM|head\(3) & 
-- !\execute_block|DMEM|fill_count[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(3),
	datab => \execute_block|DMEM|head\(3),
	datad => VCC,
	cin => \execute_block|DMEM|fill_count[2]~5\,
	combout => \execute_block|DMEM|fill_count[3]~6_combout\,
	cout => \execute_block|DMEM|fill_count[3]~7\);

-- Location: LCCOMB_X25_Y11_N12
\execute_block|DMEM|fill_count[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|fill_count[4]~8_combout\ = \execute_block|DMEM|head\(4) $ (\execute_block|DMEM|fill_count[3]~7\ $ (\execute_block|DMEM|tail\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|head\(4),
	datad => \execute_block|DMEM|tail\(4),
	cin => \execute_block|DMEM|fill_count[3]~7\,
	combout => \execute_block|DMEM|fill_count[4]~8_combout\);

-- Location: LCCOMB_X25_Y11_N0
\execute_block|DMEM|tail[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~10_combout\ = (!\execute_block|DMEM|fill_count[1]~2_combout\ & (!\execute_block|DMEM|fill_count[0]~0_combout\ & (!\execute_block|DMEM|fill_count[2]~4_combout\ & !\execute_block|DMEM|fill_count[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|fill_count[1]~2_combout\,
	datab => \execute_block|DMEM|fill_count[0]~0_combout\,
	datac => \execute_block|DMEM|fill_count[2]~4_combout\,
	datad => \execute_block|DMEM|fill_count[3]~6_combout\,
	combout => \execute_block|DMEM|tail[1]~10_combout\);

-- Location: LCCOMB_X27_Y11_N28
\execute_block|DMEM|tail[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~11_combout\ = (\rst~input_o\) # ((!\execute_block|DMEM|tail[1]~9_combout\ & ((\execute_block|DMEM|fill_count[4]~8_combout\) # (!\execute_block|DMEM|tail[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail[1]~9_combout\,
	datab => \rst~input_o\,
	datac => \execute_block|DMEM|fill_count[4]~8_combout\,
	datad => \execute_block|DMEM|tail[1]~10_combout\,
	combout => \execute_block|DMEM|tail[1]~11_combout\);

-- Location: FF_X27_Y11_N19
\execute_block|DMEM|tail[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|tail[4]~18_combout\,
	sclr => \execute_block|DMEM|tail[1]~8_combout\,
	ena => \execute_block|DMEM|tail[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|tail\(4));

-- Location: LCCOMB_X27_Y11_N0
\execute_block|DMEM|tail[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~7_combout\ = (((!\execute_block|DMEM|tail\(0)) # (!\execute_block|DMEM|tail\(2))) # (!\execute_block|DMEM|tail\(3))) # (!\execute_block|DMEM|tail\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(1),
	datab => \execute_block|DMEM|tail\(3),
	datac => \execute_block|DMEM|tail\(2),
	datad => \execute_block|DMEM|tail\(0),
	combout => \execute_block|DMEM|tail[1]~7_combout\);

-- Location: LCCOMB_X27_Y11_N26
\execute_block|DMEM|tail[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~8_combout\ = (\rst~input_o\) # ((\execute_block|DMEM|tail\(4) & !\execute_block|DMEM|tail[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|tail\(4),
	datac => \rst~input_o\,
	datad => \execute_block|DMEM|tail[1]~7_combout\,
	combout => \execute_block|DMEM|tail[1]~8_combout\);

-- Location: FF_X27_Y11_N11
\execute_block|DMEM|tail[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|tail[0]~5_combout\,
	sclr => \execute_block|DMEM|tail[1]~8_combout\,
	ena => \execute_block|DMEM|tail[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|tail\(0));

-- Location: LCCOMB_X27_Y11_N12
\execute_block|DMEM|tail[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[1]~12_combout\ = (\execute_block|DMEM|tail\(1) & (!\execute_block|DMEM|tail[0]~6\)) # (!\execute_block|DMEM|tail\(1) & ((\execute_block|DMEM|tail[0]~6\) # (GND)))
-- \execute_block|DMEM|tail[1]~13\ = CARRY((!\execute_block|DMEM|tail[0]~6\) # (!\execute_block|DMEM|tail\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|tail\(1),
	datad => VCC,
	cin => \execute_block|DMEM|tail[0]~6\,
	combout => \execute_block|DMEM|tail[1]~12_combout\,
	cout => \execute_block|DMEM|tail[1]~13\);

-- Location: FF_X27_Y11_N13
\execute_block|DMEM|tail[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|tail[1]~12_combout\,
	sclr => \execute_block|DMEM|tail[1]~8_combout\,
	ena => \execute_block|DMEM|tail[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|tail\(1));

-- Location: LCCOMB_X27_Y11_N14
\execute_block|DMEM|tail[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|tail[2]~14_combout\ = (\execute_block|DMEM|tail\(2) & (\execute_block|DMEM|tail[1]~13\ $ (GND))) # (!\execute_block|DMEM|tail\(2) & (!\execute_block|DMEM|tail[1]~13\ & VCC))
-- \execute_block|DMEM|tail[2]~15\ = CARRY((\execute_block|DMEM|tail\(2) & !\execute_block|DMEM|tail[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|tail\(2),
	datad => VCC,
	cin => \execute_block|DMEM|tail[1]~13\,
	combout => \execute_block|DMEM|tail[2]~14_combout\,
	cout => \execute_block|DMEM|tail[2]~15\);

-- Location: FF_X27_Y11_N15
\execute_block|DMEM|tail[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|tail[2]~14_combout\,
	sclr => \execute_block|DMEM|tail[1]~8_combout\,
	ena => \execute_block|DMEM|tail[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|tail\(2));

-- Location: FF_X27_Y11_N17
\execute_block|DMEM|tail[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|tail[3]~16_combout\,
	sclr => \execute_block|DMEM|tail[1]~8_combout\,
	ena => \execute_block|DMEM|tail[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|tail\(3));

-- Location: LCCOMB_X25_Y11_N2
\execute_block|DMEM|head[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[1]~9_combout\ = (\execute_block|DMEM|fill_count[3]~6_combout\ & (\execute_block|DMEM|fill_count[2]~4_combout\ & (\execute_block|DMEM|fill_count[0]~0_combout\ & \execute_block|DMEM|fill_count[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|fill_count[3]~6_combout\,
	datab => \execute_block|DMEM|fill_count[2]~4_combout\,
	datac => \execute_block|DMEM|fill_count[0]~0_combout\,
	datad => \execute_block|DMEM|fill_count[1]~2_combout\,
	combout => \execute_block|DMEM|head[1]~9_combout\);

-- Location: LCCOMB_X25_Y11_N28
\execute_block|DMEM|head[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[1]~10_combout\ = (\rst~input_o\) # ((\execute_block|WrEnDdff|d_out~q\ & ((!\execute_block|DMEM|fill_count[4]~8_combout\) # (!\execute_block|DMEM|head[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|WrEnDdff|d_out~q\,
	datab => \execute_block|DMEM|head[1]~9_combout\,
	datac => \rst~input_o\,
	datad => \execute_block|DMEM|fill_count[4]~8_combout\,
	combout => \execute_block|DMEM|head[1]~10_combout\);

-- Location: FF_X25_Y11_N21
\execute_block|DMEM|head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|head[1]~11_combout\,
	sclr => \execute_block|DMEM|head[1]~8_combout\,
	ena => \execute_block|DMEM|head[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|head\(1));

-- Location: LCCOMB_X25_Y11_N22
\execute_block|DMEM|head[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[2]~13_combout\ = (\execute_block|DMEM|head\(2) & (\execute_block|DMEM|head[1]~12\ $ (GND))) # (!\execute_block|DMEM|head\(2) & (!\execute_block|DMEM|head[1]~12\ & VCC))
-- \execute_block|DMEM|head[2]~14\ = CARRY((\execute_block|DMEM|head\(2) & !\execute_block|DMEM|head[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|head\(2),
	datad => VCC,
	cin => \execute_block|DMEM|head[1]~12\,
	combout => \execute_block|DMEM|head[2]~13_combout\,
	cout => \execute_block|DMEM|head[2]~14\);

-- Location: FF_X25_Y11_N23
\execute_block|DMEM|head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|head[2]~13_combout\,
	sclr => \execute_block|DMEM|head[1]~8_combout\,
	ena => \execute_block|DMEM|head[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|head\(2));

-- Location: LCCOMB_X25_Y11_N24
\execute_block|DMEM|head[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[3]~15_combout\ = (\execute_block|DMEM|head\(3) & (!\execute_block|DMEM|head[2]~14\)) # (!\execute_block|DMEM|head\(3) & ((\execute_block|DMEM|head[2]~14\) # (GND)))
-- \execute_block|DMEM|head[3]~16\ = CARRY((!\execute_block|DMEM|head[2]~14\) # (!\execute_block|DMEM|head\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|DMEM|head\(3),
	datad => VCC,
	cin => \execute_block|DMEM|head[2]~14\,
	combout => \execute_block|DMEM|head[3]~15_combout\,
	cout => \execute_block|DMEM|head[3]~16\);

-- Location: FF_X25_Y11_N25
\execute_block|DMEM|head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|head[3]~15_combout\,
	sclr => \execute_block|DMEM|head[1]~8_combout\,
	ena => \execute_block|DMEM|head[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|head\(3));

-- Location: LCCOMB_X25_Y11_N26
\execute_block|DMEM|head[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[4]~17_combout\ = \execute_block|DMEM|head\(4) $ (!\execute_block|DMEM|head[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|head\(4),
	cin => \execute_block|DMEM|head[3]~16\,
	combout => \execute_block|DMEM|head[4]~17_combout\);

-- Location: FF_X25_Y11_N27
\execute_block|DMEM|head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|head[4]~17_combout\,
	sclr => \execute_block|DMEM|head[1]~8_combout\,
	ena => \execute_block|DMEM|head[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|head\(4));

-- Location: LCCOMB_X25_Y11_N16
\execute_block|DMEM|head[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[1]~7_combout\ = (((!\execute_block|DMEM|head\(1)) # (!\execute_block|DMEM|head\(2))) # (!\execute_block|DMEM|head\(3))) # (!\execute_block|DMEM|head\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|DMEM|head\(0),
	datab => \execute_block|DMEM|head\(3),
	datac => \execute_block|DMEM|head\(2),
	datad => \execute_block|DMEM|head\(1),
	combout => \execute_block|DMEM|head[1]~7_combout\);

-- Location: LCCOMB_X25_Y11_N14
\execute_block|DMEM|head[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|DMEM|head[1]~8_combout\ = (\rst~input_o\) # ((\execute_block|DMEM|head\(4) & !\execute_block|DMEM|head[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \execute_block|DMEM|head\(4),
	datad => \execute_block|DMEM|head[1]~7_combout\,
	combout => \execute_block|DMEM|head[1]~8_combout\);

-- Location: FF_X25_Y11_N19
\execute_block|DMEM|head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|DMEM|head[0]~5_combout\,
	sclr => \execute_block|DMEM|head[1]~8_combout\,
	ena => \execute_block|DMEM|head[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|DMEM|head\(0));

-- Location: FF_X19_Y9_N29
\decode_block|IR|sig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a8\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(8));

-- Location: LCCOMB_X19_Y9_N20
\decode_block|regSelMux|y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|regSelMux|y[2]~2_combout\ = (\control_block|Mux0~0_combout\ & ((\decode_block|IR|sig\(11)))) # (!\control_block|Mux0~0_combout\ & (\decode_block|IR|sig\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(8),
	datab => \decode_block|IR|sig\(11),
	datad => \control_block|Mux0~0_combout\,
	combout => \decode_block|regSelMux|y[2]~2_combout\);

-- Location: FF_X19_Y9_N13
\decode_block|IR|sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a7\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(7));

-- Location: LCCOMB_X19_Y9_N2
\decode_block|regSelMux|y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|regSelMux|y[1]~1_combout\ = (\control_block|Mux0~0_combout\ & ((\decode_block|IR|sig\(10)))) # (!\control_block|Mux0~0_combout\ & (\decode_block|IR|sig\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(7),
	datab => \decode_block|IR|sig\(10),
	datad => \control_block|Mux0~0_combout\,
	combout => \decode_block|regSelMux|y[1]~1_combout\);

-- Location: LCCOMB_X27_Y9_N8
\decode_block|IR|sig[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|IR|sig[2]~feeder_combout\ = \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \decode_block|IR|sig[2]~feeder_combout\);

-- Location: FF_X27_Y9_N9
\decode_block|IR|sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|IR|sig[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(2));

-- Location: FF_X19_Y12_N9
\decode_block|reg_file|reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][2]~q\);

-- Location: FF_X19_Y12_N3
\decode_block|reg_file|reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][2]~q\);

-- Location: LCCOMB_X17_Y11_N18
\decode_block|reg_file|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Decoder0~2_combout\ = (\writeback_block|RegWrEndff|d_out~q\ & (!\writeback_block|destreg|sig\(1) & (!\writeback_block|destreg|sig\(0) & \writeback_block|destreg|sig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeback_block|RegWrEndff|d_out~q\,
	datab => \writeback_block|destreg|sig\(1),
	datac => \writeback_block|destreg|sig\(0),
	datad => \writeback_block|destreg|sig\(2),
	combout => \decode_block|reg_file|Decoder0~2_combout\);

-- Location: LCCOMB_X17_Y11_N12
\decode_block|reg_file|reg[4][7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[4][7]~3_combout\ = (\decode_block|reg_file|Decoder0~2_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|reg_file|Decoder0~2_combout\,
	datad => \rst~input_o\,
	combout => \decode_block|reg_file|reg[4][7]~3_combout\);

-- Location: FF_X18_Y12_N15
\decode_block|reg_file|reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][2]~q\);

-- Location: FF_X18_Y12_N21
\decode_block|reg_file|reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][2]~q\);

-- Location: LCCOMB_X18_Y12_N14
\decode_block|dataSelMux|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~0_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3)) # ((\decode_block|reg_file|reg[6][2]~q\)))) # (!\decode_block|IR|sig\(4) & (!\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[4][2]~q\,
	datad => \decode_block|reg_file|reg[6][2]~q\,
	combout => \decode_block|dataSelMux|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y12_N2
\decode_block|dataSelMux|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux13~0_combout\ & ((\decode_block|reg_file|reg[7][2]~q\))) # (!\decode_block|dataSelMux|Mux13~0_combout\ & (\decode_block|reg_file|reg[5][2]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][2]~q\,
	datac => \decode_block|reg_file|reg[7][2]~q\,
	datad => \decode_block|dataSelMux|Mux13~0_combout\,
	combout => \decode_block|dataSelMux|Mux13~1_combout\);

-- Location: FF_X19_Y11_N21
\decode_block|reg_file|reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][2]~q\);

-- Location: FF_X18_Y11_N31
\decode_block|reg_file|reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][2]~q\);

-- Location: FF_X18_Y11_N21
\decode_block|reg_file|reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][2]~q\);

-- Location: LCCOMB_X18_Y11_N20
\decode_block|dataSelMux|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][2]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][2]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][2]~q\,
	datac => \decode_block|reg_file|reg[0][2]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux13~2_combout\);

-- Location: LCCOMB_X19_Y8_N10
\decode_block|dataSelMux|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux13~2_combout\ & ((\decode_block|reg_file|reg[3][2]~q\))) # (!\decode_block|dataSelMux|Mux13~2_combout\ & (\decode_block|reg_file|reg[2][2]~q\)))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][2]~q\,
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[3][2]~q\,
	datad => \decode_block|dataSelMux|Mux13~2_combout\,
	combout => \decode_block|dataSelMux|Mux13~3_combout\);

-- Location: LCCOMB_X20_Y8_N0
\decode_block|dataSelMux|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~4_combout\ = (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux13~1_combout\)) # (!\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux13~1_combout\,
	datad => \decode_block|dataSelMux|Mux13~3_combout\,
	combout => \decode_block|dataSelMux|Mux13~4_combout\);

-- Location: LCCOMB_X20_Y8_N18
\decode_block|dataSelMux|Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux13~5_combout\ = (\decode_block|dataSelMux|Mux13~4_combout\) # ((\decode_block|dataSelMux|Mux15~4_combout\ & \decode_block|IR|sig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|IR|sig\(2),
	datad => \decode_block|dataSelMux|Mux13~4_combout\,
	combout => \decode_block|dataSelMux|Mux13~5_combout\);

-- Location: LCCOMB_X20_Y8_N30
\execute_block|yreg|sig[2]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|yreg|sig[2]~_Duplicate_1feeder_combout\ = \decode_block|dataSelMux|Mux13~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|dataSelMux|Mux13~5_combout\,
	combout => \execute_block|yreg|sig[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y8_N31
\execute_block|yreg|sig[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|yreg|sig[2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[2]~_Duplicate_1_q\);

-- Location: FF_X27_Y8_N9
\decode_block|IR|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fetch_block|IMEM|ram_rtl_0|auto_generated|ram_block1a1\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|IR|sig\(1));

-- Location: FF_X19_Y11_N25
\decode_block|reg_file|reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][1]~q\);

-- Location: FF_X18_Y11_N15
\decode_block|reg_file|reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][1]~q\);

-- Location: FF_X18_Y11_N17
\decode_block|reg_file|reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][1]~q\);

-- Location: LCCOMB_X18_Y11_N16
\decode_block|dataSelMux|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][1]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][1]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][1]~q\,
	datac => \decode_block|reg_file|reg[0][1]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux14~2_combout\);

-- Location: LCCOMB_X19_Y11_N12
\decode_block|dataSelMux|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux14~2_combout\ & ((\decode_block|reg_file|reg[3][1]~q\))) # (!\decode_block|dataSelMux|Mux14~2_combout\ & (\decode_block|reg_file|reg[2][1]~q\)))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[2][1]~q\,
	datac => \decode_block|dataSelMux|Mux14~2_combout\,
	datad => \decode_block|reg_file|reg[3][1]~q\,
	combout => \decode_block|dataSelMux|Mux14~3_combout\);

-- Location: FF_X18_Y12_N5
\decode_block|reg_file|reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][1]~q\);

-- Location: FF_X18_Y12_N31
\decode_block|reg_file|reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][1]~q\);

-- Location: LCCOMB_X18_Y12_N30
\decode_block|dataSelMux|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~0_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|reg_file|reg[6][1]~q\) # ((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & (((\decode_block|reg_file|reg[4][1]~q\ & !\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[6][1]~q\,
	datac => \decode_block|reg_file|reg[4][1]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux14~0_combout\);

-- Location: FF_X19_Y12_N15
\decode_block|reg_file|reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][1]~q\);

-- Location: FF_X19_Y12_N29
\decode_block|reg_file|reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~9_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][1]~q\);

-- Location: LCCOMB_X19_Y12_N14
\decode_block|dataSelMux|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux14~0_combout\ & (\decode_block|reg_file|reg[7][1]~q\)) # (!\decode_block|dataSelMux|Mux14~0_combout\ & ((\decode_block|reg_file|reg[5][1]~q\))))) # 
-- (!\decode_block|IR|sig\(3) & (\decode_block|dataSelMux|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|dataSelMux|Mux14~0_combout\,
	datac => \decode_block|reg_file|reg[7][1]~q\,
	datad => \decode_block|reg_file|reg[5][1]~q\,
	combout => \decode_block|dataSelMux|Mux14~1_combout\);

-- Location: LCCOMB_X20_Y8_N28
\decode_block|dataSelMux|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~4_combout\ = (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux14~1_combout\))) # (!\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux14~3_combout\,
	datad => \decode_block|dataSelMux|Mux14~1_combout\,
	combout => \decode_block|dataSelMux|Mux14~4_combout\);

-- Location: LCCOMB_X20_Y8_N26
\decode_block|dataSelMux|Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux14~5_combout\ = (\decode_block|dataSelMux|Mux14~4_combout\) # ((\decode_block|dataSelMux|Mux15~4_combout\ & \decode_block|IR|sig\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|IR|sig\(1),
	datad => \decode_block|dataSelMux|Mux14~4_combout\,
	combout => \decode_block|dataSelMux|Mux14~5_combout\);

-- Location: FF_X20_Y8_N9
\execute_block|yreg|sig[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|dataSelMux|Mux14~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[1]~_Duplicate_1_q\);

-- Location: FF_X20_Y11_N5
\execute_block|xreg|sig[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux13~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y12_N26
\execute_block|ALUblock|ShiftLeft0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~11_combout\ = (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[0]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & 
-- (\execute_block|xreg|sig[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X23_Y12_N20
\execute_block|ALUblock|ShiftLeft0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~12_combout\ = (\execute_block|ALUblock|ShiftLeft0~11_combout\) # ((\execute_block|xreg|sig[1]~_Duplicate_1_q\ & (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & \execute_block|yreg|sig[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[1]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~11_combout\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X23_Y12_N30
\execute_block|ALUblock|ShiftLeft0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~13_combout\ = (!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & \execute_block|ALUblock|ShiftLeft0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~12_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X22_Y12_N28
\execute_block|zSelMUX|y[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[0]~6_combout\ = (\execute_block|ALUFuncreg|sig\(1) & !\execute_block|zSeldff|d_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(1),
	datad => \execute_block|zSeldff|d_out~q\,
	combout => \execute_block|zSelMUX|y[0]~6_combout\);

-- Location: FF_X19_Y11_N23
\decode_block|reg_file|reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][3]~q\);

-- Location: FF_X19_Y11_N15
\decode_block|reg_file|reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][3]~q\);

-- Location: FF_X18_Y11_N13
\decode_block|reg_file|reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][3]~q\);

-- Location: FF_X18_Y11_N23
\decode_block|reg_file|reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][3]~q\);

-- Location: LCCOMB_X19_Y11_N8
\decode_block|reg_file|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux12~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][3]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[0][3]~q\,
	datac => \decode_block|reg_file|reg[1][3]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux12~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\decode_block|reg_file|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux12~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux12~2_combout\ & ((\decode_block|reg_file|reg[3][3]~q\))) # (!\decode_block|reg_file|Mux12~2_combout\ & 
-- (\decode_block|reg_file|reg[2][3]~q\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][3]~q\,
	datab => \decode_block|reg_file|reg[3][3]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux12~2_combout\,
	combout => \decode_block|reg_file|Mux12~3_combout\);

-- Location: FF_X19_Y8_N21
\decode_block|reg_file|reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][3]~q\);

-- Location: FF_X18_Y12_N1
\decode_block|reg_file|reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][3]~q\);

-- Location: FF_X18_Y12_N11
\decode_block|reg_file|reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][3]~q\);

-- Location: LCCOMB_X19_Y11_N28
\decode_block|reg_file|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux12~0_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|reg[6][3]~q\) # ((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & 
-- (((\decode_block|reg_file|reg[4][3]~q\ & !\decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[6][3]~q\,
	datac => \decode_block|reg_file|reg[4][3]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux12~0_combout\);

-- Location: LCCOMB_X20_Y11_N18
\decode_block|reg_file|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux12~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux12~0_combout\ & (\decode_block|reg_file|reg[7][3]~q\)) # (!\decode_block|reg_file|Mux12~0_combout\ & 
-- ((\decode_block|reg_file|reg[5][3]~q\))))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][3]~q\,
	datac => \decode_block|reg_file|reg[5][3]~q\,
	datad => \decode_block|reg_file|Mux12~0_combout\,
	combout => \decode_block|reg_file|Mux12~1_combout\);

-- Location: LCCOMB_X20_Y11_N0
\decode_block|reg_file|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux12~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux12~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux12~3_combout\,
	datad => \decode_block|reg_file|Mux12~1_combout\,
	combout => \decode_block|reg_file|Mux12~4_combout\);

-- Location: FF_X20_Y11_N1
\execute_block|xreg|sig[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux12~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y9_N22
\decode_block|dataSelMux|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~0_combout\ = (\decode_block|IR|sig\(12) & (\decode_block|IR|sig\(13) & ((\decode_block|IR|sig\(5)) # (\decode_block|IR|sig\(14))))) # (!\decode_block|IR|sig\(12) & (\decode_block|IR|sig\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|IR|sig\(13),
	datac => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(14),
	combout => \decode_block|dataSelMux|Mux9~0_combout\);

-- Location: FF_X19_Y12_N21
\decode_block|reg_file|reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][6]~q\);

-- Location: FF_X18_Y12_N19
\decode_block|reg_file|reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][6]~q\);

-- Location: FF_X18_Y12_N13
\decode_block|reg_file|reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][6]~q\);

-- Location: LCCOMB_X18_Y12_N18
\decode_block|dataSelMux|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~4_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3)) # ((\decode_block|reg_file|reg[6][6]~q\)))) # (!\decode_block|IR|sig\(4) & (!\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[4][6]~q\,
	datad => \decode_block|reg_file|reg[6][6]~q\,
	combout => \decode_block|dataSelMux|Mux9~4_combout\);

-- Location: LCCOMB_X19_Y12_N18
\decode_block|dataSelMux|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~5_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux9~4_combout\ & ((\decode_block|reg_file|reg[7][6]~q\))) # (!\decode_block|dataSelMux|Mux9~4_combout\ & (\decode_block|reg_file|reg[5][6]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][6]~q\,
	datac => \decode_block|reg_file|reg[7][6]~q\,
	datad => \decode_block|dataSelMux|Mux9~4_combout\,
	combout => \decode_block|dataSelMux|Mux9~5_combout\);

-- Location: LCCOMB_X19_Y9_N8
\control_block|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux2~0_combout\ = (\decode_block|IR|sig\(13)) # (!\decode_block|IR|sig\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|IR|sig\(12),
	datac => \decode_block|IR|sig\(13),
	combout => \control_block|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y9_N10
\decode_block|reg_file|reg[3][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][6]~feeder_combout\ = \decode_block|reg_file|reg~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~14_combout\,
	combout => \decode_block|reg_file|reg[3][6]~feeder_combout\);

-- Location: FF_X15_Y9_N11
\decode_block|reg_file|reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][6]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][6]~q\);

-- Location: LCCOMB_X15_Y9_N24
\decode_block|reg_file|reg[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][6]~feeder_combout\ = \decode_block|reg_file|reg~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~14_combout\,
	combout => \decode_block|reg_file|reg[2][6]~feeder_combout\);

-- Location: FF_X15_Y9_N25
\decode_block|reg_file|reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[2][6]~feeder_combout\,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][6]~q\);

-- Location: FF_X16_Y9_N13
\decode_block|reg_file|reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][6]~q\);

-- Location: FF_X16_Y9_N31
\decode_block|reg_file|reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][6]~q\);

-- Location: LCCOMB_X16_Y9_N30
\decode_block|dataSelMux|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][6]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][6]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][6]~q\,
	datac => \decode_block|reg_file|reg[0][6]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux9~1_combout\);

-- Location: LCCOMB_X15_Y9_N2
\decode_block|dataSelMux|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~2_combout\ = (\decode_block|dataSelMux|Mux9~1_combout\ & ((\decode_block|reg_file|reg[3][6]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux9~1_combout\ & (((\decode_block|reg_file|reg[2][6]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][6]~q\,
	datab => \decode_block|reg_file|reg[2][6]~q\,
	datac => \decode_block|dataSelMux|Mux9~1_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux9~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\control_block|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_block|Mux1~0_combout\ = (\decode_block|IR|sig\(14) & (\decode_block|IR|sig\(12) & \decode_block|IR|sig\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(14),
	datab => \decode_block|IR|sig\(12),
	datad => \decode_block|IR|sig\(13),
	combout => \control_block|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y9_N0
\decode_block|dataSelMux|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~3_combout\ = (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5)) # ((\control_block|Mux2~0_combout\ & \decode_block|dataSelMux|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_block|Mux2~0_combout\,
	datab => \decode_block|dataSelMux|Mux9~2_combout\,
	datac => \control_block|Mux1~0_combout\,
	datad => \decode_block|IR|sig\(5),
	combout => \decode_block|dataSelMux|Mux9~3_combout\);

-- Location: LCCOMB_X20_Y9_N12
\decode_block|dataSelMux|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux9~6_combout\ = (\decode_block|dataSelMux|Mux9~0_combout\ & ((\decode_block|dataSelMux|Mux9~3_combout\ & (\decode_block|dataSelMux|Mux9~5_combout\)) # (!\decode_block|dataSelMux|Mux9~3_combout\ & ((\decode_block|IR|sig\(6)))))) 
-- # (!\decode_block|dataSelMux|Mux9~0_combout\ & (((\decode_block|dataSelMux|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux9~0_combout\,
	datab => \decode_block|dataSelMux|Mux9~5_combout\,
	datac => \decode_block|dataSelMux|Mux9~3_combout\,
	datad => \decode_block|IR|sig\(6),
	combout => \decode_block|dataSelMux|Mux9~6_combout\);

-- Location: FF_X20_Y9_N13
\execute_block|yreg|sig[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux9~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y9_N12
\execute_block|ALUblock|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~20_combout\ = \execute_block|yreg|sig[6]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|yreg|sig[6]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~20_combout\);

-- Location: FF_X20_Y11_N7
\execute_block|xreg|sig[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux9~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[6]~_Duplicate_1_q\);

-- Location: FF_X20_Y11_N13
\execute_block|xreg|sig[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux10~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y12_N31
\decode_block|reg_file|reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][5]~q\);

-- Location: FF_X19_Y12_N17
\decode_block|reg_file|reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][5]~q\);

-- Location: FF_X18_Y12_N3
\decode_block|reg_file|reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][5]~q\);

-- Location: FF_X18_Y12_N25
\decode_block|reg_file|reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][5]~q\);

-- Location: LCCOMB_X18_Y12_N2
\decode_block|dataSelMux|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux10~0_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3)) # ((\decode_block|reg_file|reg[6][5]~q\)))) # (!\decode_block|IR|sig\(4) & (!\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[4][5]~q\,
	datad => \decode_block|reg_file|reg[6][5]~q\,
	combout => \decode_block|dataSelMux|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\decode_block|dataSelMux|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux10~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux10~0_combout\ & (\decode_block|reg_file|reg[7][5]~q\)) # (!\decode_block|dataSelMux|Mux10~0_combout\ & ((\decode_block|reg_file|reg[5][5]~q\))))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[7][5]~q\,
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[5][5]~q\,
	datad => \decode_block|dataSelMux|Mux10~0_combout\,
	combout => \decode_block|dataSelMux|Mux10~1_combout\);

-- Location: FF_X18_Y9_N29
\decode_block|reg_file|reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][5]~q\);

-- Location: LCCOMB_X18_Y9_N6
\decode_block|dataSelMux|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux10~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][5]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][5]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][5]~q\,
	datac => \decode_block|reg_file|reg[0][5]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux10~2_combout\);

-- Location: FF_X19_Y9_N25
\decode_block|reg_file|reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][5]~q\);

-- Location: FF_X19_Y11_N1
\decode_block|reg_file|reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][5]~q\);

-- Location: LCCOMB_X19_Y9_N24
\decode_block|dataSelMux|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux10~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux10~2_combout\ & ((\decode_block|reg_file|reg[3][5]~q\))) # (!\decode_block|dataSelMux|Mux10~2_combout\ & (\decode_block|reg_file|reg[2][5]~q\)))) # 
-- (!\decode_block|IR|sig\(4) & (\decode_block|dataSelMux|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|dataSelMux|Mux10~2_combout\,
	datac => \decode_block|reg_file|reg[2][5]~q\,
	datad => \decode_block|reg_file|reg[3][5]~q\,
	combout => \decode_block|dataSelMux|Mux10~3_combout\);

-- Location: LCCOMB_X22_Y9_N18
\decode_block|dataSelMux|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux10~4_combout\ = (\decode_block|dataSelMux|Mux15~4_combout\ & (((\decode_block|IR|sig\(5))))) # (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux10~1_combout\)) # 
-- (!\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux10~1_combout\,
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux10~3_combout\,
	datad => \decode_block|IR|sig\(5),
	combout => \decode_block|dataSelMux|Mux10~4_combout\);

-- Location: LCCOMB_X22_Y9_N22
\execute_block|yreg|sig[5]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|yreg|sig[5]~_Duplicate_1feeder_combout\ = \decode_block|dataSelMux|Mux10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|dataSelMux|Mux10~4_combout\,
	combout => \execute_block|yreg|sig[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y9_N23
\execute_block|yreg|sig[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|yreg|sig[5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y9_N26
\execute_block|ALUblock|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~17_combout\ = \execute_block|yreg|sig[5]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|yreg|sig[5]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~17_combout\);

-- Location: FF_X17_Y11_N7
\decode_block|reg_file|reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][4]~q\);

-- Location: FF_X18_Y11_N3
\decode_block|reg_file|reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][4]~q\);

-- Location: FF_X18_Y11_N25
\decode_block|reg_file|reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][4]~q\);

-- Location: LCCOMB_X18_Y11_N24
\decode_block|dataSelMux|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][4]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][4]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][4]~q\,
	datac => \decode_block|reg_file|reg[0][4]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux11~2_combout\);

-- Location: LCCOMB_X18_Y11_N6
\decode_block|dataSelMux|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux11~2_combout\ & ((\decode_block|reg_file|reg[3][4]~q\))) # (!\decode_block|dataSelMux|Mux11~2_combout\ & (\decode_block|reg_file|reg[2][4]~q\)))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[2][4]~q\,
	datac => \decode_block|reg_file|reg[3][4]~q\,
	datad => \decode_block|dataSelMux|Mux11~2_combout\,
	combout => \decode_block|dataSelMux|Mux11~3_combout\);

-- Location: FF_X19_Y10_N1
\decode_block|reg_file|reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][4]~q\);

-- Location: FF_X19_Y10_N23
\decode_block|reg_file|reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][4]~q\);

-- Location: FF_X18_Y12_N23
\decode_block|reg_file|reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][4]~q\);

-- Location: FF_X18_Y12_N17
\decode_block|reg_file|reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][4]~q\);

-- Location: LCCOMB_X17_Y11_N30
\decode_block|dataSelMux|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~0_combout\ = (\decode_block|IR|sig\(4) & (((\decode_block|IR|sig\(3)) # (\decode_block|reg_file|reg[6][4]~q\)))) # (!\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[4][4]~q\ & (!\decode_block|IR|sig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[4][4]~q\,
	datac => \decode_block|IR|sig\(3),
	datad => \decode_block|reg_file|reg[6][4]~q\,
	combout => \decode_block|dataSelMux|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
\decode_block|dataSelMux|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux11~0_combout\ & ((\decode_block|reg_file|reg[7][4]~q\))) # (!\decode_block|dataSelMux|Mux11~0_combout\ & (\decode_block|reg_file|reg[5][4]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][4]~q\,
	datac => \decode_block|reg_file|reg[7][4]~q\,
	datad => \decode_block|dataSelMux|Mux11~0_combout\,
	combout => \decode_block|dataSelMux|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y9_N10
\decode_block|dataSelMux|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~4_combout\ = (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux11~1_combout\))) # (!\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux11~3_combout\,
	datad => \decode_block|dataSelMux|Mux11~1_combout\,
	combout => \decode_block|dataSelMux|Mux11~4_combout\);

-- Location: LCCOMB_X22_Y9_N4
\decode_block|dataSelMux|Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux11~5_combout\ = (\decode_block|dataSelMux|Mux11~4_combout\) # ((\decode_block|IR|sig\(4) & \decode_block|dataSelMux|Mux15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datac => \decode_block|dataSelMux|Mux15~4_combout\,
	datad => \decode_block|dataSelMux|Mux11~4_combout\,
	combout => \decode_block|dataSelMux|Mux11~5_combout\);

-- Location: FF_X22_Y9_N9
\execute_block|yreg|sig[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|dataSelMux|Mux11~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y9_N0
\execute_block|ALUblock|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~14_combout\ = \execute_block|yreg|sig[4]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|yreg|sig[4]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~14_combout\);

-- Location: LCCOMB_X23_Y11_N4
\execute_block|ALUblock|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~11_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[3]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~11_combout\);

-- Location: LCCOMB_X23_Y11_N8
\execute_block|ALUblock|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~8_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~8_combout\);

-- Location: LCCOMB_X23_Y11_N6
\execute_block|ALUblock|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~5_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~5_combout\);

-- Location: LCCOMB_X23_Y11_N20
\execute_block|ALUblock|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~6_combout\ = ((\execute_block|ALUblock|Add0~5_combout\ $ (\execute_block|xreg|sig[1]~_Duplicate_1_q\ $ (!\execute_block|ALUblock|Add0~4\)))) # (GND)
-- \execute_block|ALUblock|Add0~7\ = CARRY((\execute_block|ALUblock|Add0~5_combout\ & ((\execute_block|xreg|sig[1]~_Duplicate_1_q\) # (!\execute_block|ALUblock|Add0~4\))) # (!\execute_block|ALUblock|Add0~5_combout\ & 
-- (\execute_block|xreg|sig[1]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~5_combout\,
	datab => \execute_block|xreg|sig[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~4\,
	combout => \execute_block|ALUblock|Add0~6_combout\,
	cout => \execute_block|ALUblock|Add0~7\);

-- Location: LCCOMB_X23_Y11_N22
\execute_block|ALUblock|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~9_combout\ = (\execute_block|xreg|sig[2]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~8_combout\ & (\execute_block|ALUblock|Add0~7\ & VCC)) # (!\execute_block|ALUblock|Add0~8_combout\ & 
-- (!\execute_block|ALUblock|Add0~7\)))) # (!\execute_block|xreg|sig[2]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~8_combout\ & (!\execute_block|ALUblock|Add0~7\)) # (!\execute_block|ALUblock|Add0~8_combout\ & ((\execute_block|ALUblock|Add0~7\) # 
-- (GND)))))
-- \execute_block|ALUblock|Add0~10\ = CARRY((\execute_block|xreg|sig[2]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~8_combout\ & !\execute_block|ALUblock|Add0~7\)) # (!\execute_block|xreg|sig[2]~_Duplicate_1_q\ & ((!\execute_block|ALUblock|Add0~7\) # 
-- (!\execute_block|ALUblock|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[2]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~8_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~7\,
	combout => \execute_block|ALUblock|Add0~9_combout\,
	cout => \execute_block|ALUblock|Add0~10\);

-- Location: LCCOMB_X23_Y11_N24
\execute_block|ALUblock|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~12_combout\ = ((\execute_block|xreg|sig[3]~_Duplicate_1_q\ $ (\execute_block|ALUblock|Add0~11_combout\ $ (!\execute_block|ALUblock|Add0~10\)))) # (GND)
-- \execute_block|ALUblock|Add0~13\ = CARRY((\execute_block|xreg|sig[3]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~11_combout\) # (!\execute_block|ALUblock|Add0~10\))) # (!\execute_block|xreg|sig[3]~_Duplicate_1_q\ & 
-- (\execute_block|ALUblock|Add0~11_combout\ & !\execute_block|ALUblock|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[3]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~11_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~10\,
	combout => \execute_block|ALUblock|Add0~12_combout\,
	cout => \execute_block|ALUblock|Add0~13\);

-- Location: LCCOMB_X23_Y11_N26
\execute_block|ALUblock|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~15_combout\ = (\execute_block|ALUblock|Add0~14_combout\ & ((\execute_block|xreg|sig[4]~_Duplicate_1_q\ & (\execute_block|ALUblock|Add0~13\ & VCC)) # (!\execute_block|xreg|sig[4]~_Duplicate_1_q\ & 
-- (!\execute_block|ALUblock|Add0~13\)))) # (!\execute_block|ALUblock|Add0~14_combout\ & ((\execute_block|xreg|sig[4]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~13\)) # (!\execute_block|xreg|sig[4]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~13\) 
-- # (GND)))))
-- \execute_block|ALUblock|Add0~16\ = CARRY((\execute_block|ALUblock|Add0~14_combout\ & (!\execute_block|xreg|sig[4]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~13\)) # (!\execute_block|ALUblock|Add0~14_combout\ & ((!\execute_block|ALUblock|Add0~13\) # 
-- (!\execute_block|xreg|sig[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~14_combout\,
	datab => \execute_block|xreg|sig[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~13\,
	combout => \execute_block|ALUblock|Add0~15_combout\,
	cout => \execute_block|ALUblock|Add0~16\);

-- Location: LCCOMB_X23_Y11_N28
\execute_block|ALUblock|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~18_combout\ = ((\execute_block|xreg|sig[5]~_Duplicate_1_q\ $ (\execute_block|ALUblock|Add0~17_combout\ $ (!\execute_block|ALUblock|Add0~16\)))) # (GND)
-- \execute_block|ALUblock|Add0~19\ = CARRY((\execute_block|xreg|sig[5]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~17_combout\) # (!\execute_block|ALUblock|Add0~16\))) # (!\execute_block|xreg|sig[5]~_Duplicate_1_q\ & 
-- (\execute_block|ALUblock|Add0~17_combout\ & !\execute_block|ALUblock|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[5]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~17_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~16\,
	combout => \execute_block|ALUblock|Add0~18_combout\,
	cout => \execute_block|ALUblock|Add0~19\);

-- Location: LCCOMB_X23_Y11_N30
\execute_block|ALUblock|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~21_combout\ = (\execute_block|ALUblock|Add0~20_combout\ & ((\execute_block|xreg|sig[6]~_Duplicate_1_q\ & (\execute_block|ALUblock|Add0~19\ & VCC)) # (!\execute_block|xreg|sig[6]~_Duplicate_1_q\ & 
-- (!\execute_block|ALUblock|Add0~19\)))) # (!\execute_block|ALUblock|Add0~20_combout\ & ((\execute_block|xreg|sig[6]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~19\)) # (!\execute_block|xreg|sig[6]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~19\) 
-- # (GND)))))
-- \execute_block|ALUblock|Add0~22\ = CARRY((\execute_block|ALUblock|Add0~20_combout\ & (!\execute_block|xreg|sig[6]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~19\)) # (!\execute_block|ALUblock|Add0~20_combout\ & ((!\execute_block|ALUblock|Add0~19\) # 
-- (!\execute_block|xreg|sig[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~20_combout\,
	datab => \execute_block|xreg|sig[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~19\,
	combout => \execute_block|ALUblock|Add0~21_combout\,
	cout => \execute_block|ALUblock|Add0~22\);

-- Location: FF_X20_Y11_N15
\execute_block|xreg|sig[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux7~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[8]~_Duplicate_1_q\);

-- Location: FF_X16_Y9_N19
\decode_block|reg_file|reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][9]~q\);

-- Location: FF_X16_Y9_N9
\decode_block|reg_file|reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][9]~q\);

-- Location: LCCOMB_X16_Y9_N8
\decode_block|dataSelMux|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~0_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][9]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][9]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][9]~q\,
	datac => \decode_block|reg_file|reg[0][9]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y9_N18
\decode_block|reg_file|reg[3][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][9]~feeder_combout\ = \decode_block|reg_file|reg~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~17_combout\,
	combout => \decode_block|reg_file|reg[3][9]~feeder_combout\);

-- Location: FF_X17_Y9_N19
\decode_block|reg_file|reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][9]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][9]~q\);

-- Location: LCCOMB_X17_Y9_N12
\decode_block|reg_file|reg[2][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][9]~feeder_combout\ = \decode_block|reg_file|reg~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~17_combout\,
	combout => \decode_block|reg_file|reg[2][9]~feeder_combout\);

-- Location: FF_X17_Y9_N13
\decode_block|reg_file|reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[2][9]~feeder_combout\,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][9]~q\);

-- Location: LCCOMB_X16_Y9_N22
\decode_block|dataSelMux|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~1_combout\ = (\decode_block|dataSelMux|Mux6~0_combout\ & ((\decode_block|reg_file|reg[3][9]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux6~0_combout\ & (((\decode_block|reg_file|reg[2][9]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux6~0_combout\,
	datab => \decode_block|reg_file|reg[3][9]~q\,
	datac => \decode_block|reg_file|reg[2][9]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux6~1_combout\);

-- Location: FF_X18_Y12_N9
\decode_block|reg_file|reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][9]~q\);

-- Location: FF_X18_Y12_N27
\decode_block|reg_file|reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][9]~q\);

-- Location: LCCOMB_X18_Y12_N26
\decode_block|dataSelMux|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|reg_file|reg[6][9]~q\) # ((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & (((\decode_block|reg_file|reg[4][9]~q\ & !\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[6][9]~q\,
	datac => \decode_block|reg_file|reg[4][9]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux6~3_combout\);

-- Location: FF_X19_Y12_N5
\decode_block|reg_file|reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][9]~q\);

-- Location: LCCOMB_X19_Y12_N22
\decode_block|dataSelMux|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~4_combout\ = (\decode_block|dataSelMux|Mux6~3_combout\ & (((\decode_block|reg_file|reg[7][9]~q\) # (!\decode_block|IR|sig\(3))))) # (!\decode_block|dataSelMux|Mux6~3_combout\ & (\decode_block|reg_file|reg[5][9]~q\ & 
-- ((\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux6~3_combout\,
	datab => \decode_block|reg_file|reg[5][9]~q\,
	datac => \decode_block|reg_file|reg[7][9]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux6~4_combout\);

-- Location: LCCOMB_X20_Y9_N26
\decode_block|dataSelMux|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~2_combout\ = (\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(8)))) # (!\control_block|Mux1~0_combout\ & (\decode_block|IR|sig\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(5),
	datab => \decode_block|IR|sig\(8),
	datad => \control_block|Mux1~0_combout\,
	combout => \decode_block|dataSelMux|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y10_N16
\decode_block|dataSelMux|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux6~5_combout\ = (\decode_block|dataSelMux|Mux15~4_combout\ & (((\decode_block|dataSelMux|Mux6~2_combout\)))) # (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|dataSelMux|Mux6~2_combout\ & 
-- ((\decode_block|dataSelMux|Mux6~4_combout\))) # (!\decode_block|dataSelMux|Mux6~2_combout\ & (\decode_block|dataSelMux|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux6~1_combout\,
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux6~4_combout\,
	datad => \decode_block|dataSelMux|Mux6~2_combout\,
	combout => \decode_block|dataSelMux|Mux6~5_combout\);

-- Location: FF_X20_Y10_N17
\execute_block|yreg|sig[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux6~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N12
\execute_block|ALUblock|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~29_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[9]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[9]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~29_combout\);

-- Location: FF_X18_Y10_N21
\decode_block|reg_file|reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][8]~q\);

-- Location: FF_X18_Y10_N3
\decode_block|reg_file|reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][8]~q\);

-- Location: LCCOMB_X18_Y10_N2
\decode_block|dataSelMux|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~3_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][8]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[6][8]~q\,
	datac => \decode_block|reg_file|reg[4][8]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux7~3_combout\);

-- Location: FF_X19_Y10_N9
\decode_block|reg_file|reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][8]~q\);

-- Location: FF_X19_Y10_N21
\decode_block|reg_file|reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][8]~q\);

-- Location: LCCOMB_X19_Y10_N8
\decode_block|dataSelMux|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~4_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux7~3_combout\ & (\decode_block|reg_file|reg[7][8]~q\)) # (!\decode_block|dataSelMux|Mux7~3_combout\ & ((\decode_block|reg_file|reg[5][8]~q\))))) # 
-- (!\decode_block|IR|sig\(3) & (\decode_block|dataSelMux|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|dataSelMux|Mux7~3_combout\,
	datac => \decode_block|reg_file|reg[7][8]~q\,
	datad => \decode_block|reg_file|reg[5][8]~q\,
	combout => \decode_block|dataSelMux|Mux7~4_combout\);

-- Location: LCCOMB_X15_Y9_N26
\decode_block|reg_file|reg[3][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][8]~feeder_combout\ = \decode_block|reg_file|reg~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~16_combout\,
	combout => \decode_block|reg_file|reg[3][8]~feeder_combout\);

-- Location: FF_X15_Y9_N27
\decode_block|reg_file|reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][8]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][8]~q\);

-- Location: FF_X18_Y11_N27
\decode_block|reg_file|reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][8]~q\);

-- Location: FF_X18_Y11_N29
\decode_block|reg_file|reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][8]~q\);

-- Location: LCCOMB_X18_Y11_N28
\decode_block|dataSelMux|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~0_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][8]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][8]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][8]~q\,
	datac => \decode_block|reg_file|reg[0][8]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y9_N8
\decode_block|dataSelMux|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~1_combout\ = (\decode_block|dataSelMux|Mux7~0_combout\ & ((\decode_block|reg_file|reg[3][8]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux7~0_combout\ & (((\decode_block|reg_file|reg[2][8]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][8]~q\,
	datab => \decode_block|reg_file|reg[2][8]~q\,
	datac => \decode_block|dataSelMux|Mux7~0_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux7~1_combout\);

-- Location: LCCOMB_X20_Y9_N18
\decode_block|dataSelMux|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~2_combout\ = (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5)) # ((\control_block|Mux2~0_combout\ & \decode_block|dataSelMux|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_block|Mux2~0_combout\,
	datab => \control_block|Mux1~0_combout\,
	datac => \decode_block|IR|sig\(5),
	datad => \decode_block|dataSelMux|Mux7~1_combout\,
	combout => \decode_block|dataSelMux|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y9_N16
\decode_block|dataSelMux|Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux7~5_combout\ = (\decode_block|dataSelMux|Mux9~0_combout\ & ((\decode_block|dataSelMux|Mux7~2_combout\ & ((\decode_block|dataSelMux|Mux7~4_combout\))) # (!\decode_block|dataSelMux|Mux7~2_combout\ & (\decode_block|IR|sig\(8))))) 
-- # (!\decode_block|dataSelMux|Mux9~0_combout\ & (((\decode_block|dataSelMux|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux9~0_combout\,
	datab => \decode_block|IR|sig\(8),
	datac => \decode_block|dataSelMux|Mux7~4_combout\,
	datad => \decode_block|dataSelMux|Mux7~2_combout\,
	combout => \decode_block|dataSelMux|Mux7~5_combout\);

-- Location: FF_X20_Y9_N17
\execute_block|yreg|sig[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux7~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N14
\execute_block|ALUblock|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~26_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[8]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[8]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~26_combout\);

-- Location: LCCOMB_X19_Y9_N26
\decode_block|dataSelMux|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~2_combout\ = (\control_block|Mux1~0_combout\ & (\decode_block|IR|sig\(7))) # (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(7),
	datab => \decode_block|IR|sig\(5),
	datad => \control_block|Mux1~0_combout\,
	combout => \decode_block|dataSelMux|Mux8~2_combout\);

-- Location: LCCOMB_X17_Y9_N14
\decode_block|reg_file|reg[3][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][7]~feeder_combout\ = \decode_block|reg_file|reg~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~15_combout\,
	combout => \decode_block|reg_file|reg[3][7]~feeder_combout\);

-- Location: FF_X17_Y9_N15
\decode_block|reg_file|reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][7]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][7]~q\);

-- Location: LCCOMB_X17_Y9_N20
\decode_block|reg_file|reg[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][7]~feeder_combout\ = \decode_block|reg_file|reg~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~15_combout\,
	combout => \decode_block|reg_file|reg[2][7]~feeder_combout\);

-- Location: FF_X17_Y9_N21
\decode_block|reg_file|reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[2][7]~feeder_combout\,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][7]~q\);

-- Location: FF_X18_Y9_N15
\decode_block|reg_file|reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][7]~q\);

-- Location: FF_X18_Y9_N13
\decode_block|reg_file|reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][7]~q\);

-- Location: LCCOMB_X18_Y9_N14
\decode_block|dataSelMux|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~0_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4)) # ((\decode_block|reg_file|reg[1][7]~q\)))) # (!\decode_block|IR|sig\(3) & (!\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[0][7]~q\,
	datad => \decode_block|reg_file|reg[1][7]~q\,
	combout => \decode_block|dataSelMux|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\decode_block|dataSelMux|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~1_combout\ = (\decode_block|dataSelMux|Mux8~0_combout\ & ((\decode_block|reg_file|reg[3][7]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux8~0_combout\ & (((\decode_block|reg_file|reg[2][7]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][7]~q\,
	datab => \decode_block|reg_file|reg[2][7]~q\,
	datac => \decode_block|dataSelMux|Mux8~0_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux8~1_combout\);

-- Location: FF_X19_Y12_N7
\decode_block|reg_file|reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][7]~q\);

-- Location: FF_X18_Y10_N1
\decode_block|reg_file|reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][7]~q\);

-- Location: FF_X18_Y10_N7
\decode_block|reg_file|reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][7]~q\);

-- Location: LCCOMB_X18_Y10_N6
\decode_block|dataSelMux|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~3_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][7]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[6][7]~q\,
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[4][7]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux8~3_combout\);

-- Location: LCCOMB_X19_Y12_N6
\decode_block|dataSelMux|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~4_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux8~3_combout\ & ((\decode_block|reg_file|reg[7][7]~q\))) # (!\decode_block|dataSelMux|Mux8~3_combout\ & (\decode_block|reg_file|reg[5][7]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][7]~q\,
	datac => \decode_block|reg_file|reg[7][7]~q\,
	datad => \decode_block|dataSelMux|Mux8~3_combout\,
	combout => \decode_block|dataSelMux|Mux8~4_combout\);

-- Location: LCCOMB_X22_Y9_N16
\decode_block|dataSelMux|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux8~5_combout\ = (\decode_block|dataSelMux|Mux8~2_combout\ & (((\decode_block|dataSelMux|Mux15~4_combout\) # (\decode_block|dataSelMux|Mux8~4_combout\)))) # (!\decode_block|dataSelMux|Mux8~2_combout\ & 
-- (\decode_block|dataSelMux|Mux8~1_combout\ & (!\decode_block|dataSelMux|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux8~2_combout\,
	datab => \decode_block|dataSelMux|Mux8~1_combout\,
	datac => \decode_block|dataSelMux|Mux15~4_combout\,
	datad => \decode_block|dataSelMux|Mux8~4_combout\,
	combout => \decode_block|dataSelMux|Mux8~5_combout\);

-- Location: LCCOMB_X22_Y9_N20
\execute_block|yreg|sig[7]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|yreg|sig[7]~_Duplicate_1feeder_combout\ = \decode_block|dataSelMux|Mux8~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|dataSelMux|Mux8~5_combout\,
	combout => \execute_block|yreg|sig[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y9_N21
\execute_block|yreg|sig[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|yreg|sig[7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y9_N2
\execute_block|ALUblock|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~23_combout\ = \execute_block|yreg|sig[7]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[7]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~23_combout\);

-- Location: LCCOMB_X23_Y10_N0
\execute_block|ALUblock|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~24_combout\ = ((\execute_block|ALUblock|Add0~23_combout\ $ (\execute_block|xreg|sig[7]~_Duplicate_1_q\ $ (!\execute_block|ALUblock|Add0~22\)))) # (GND)
-- \execute_block|ALUblock|Add0~25\ = CARRY((\execute_block|ALUblock|Add0~23_combout\ & ((\execute_block|xreg|sig[7]~_Duplicate_1_q\) # (!\execute_block|ALUblock|Add0~22\))) # (!\execute_block|ALUblock|Add0~23_combout\ & 
-- (\execute_block|xreg|sig[7]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~23_combout\,
	datab => \execute_block|xreg|sig[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~22\,
	combout => \execute_block|ALUblock|Add0~24_combout\,
	cout => \execute_block|ALUblock|Add0~25\);

-- Location: LCCOMB_X23_Y10_N2
\execute_block|ALUblock|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~27_combout\ = (\execute_block|ALUblock|Add0~26_combout\ & ((\execute_block|xreg|sig[8]~_Duplicate_1_q\ & (\execute_block|ALUblock|Add0~25\ & VCC)) # (!\execute_block|xreg|sig[8]~_Duplicate_1_q\ & 
-- (!\execute_block|ALUblock|Add0~25\)))) # (!\execute_block|ALUblock|Add0~26_combout\ & ((\execute_block|xreg|sig[8]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~25\)) # (!\execute_block|xreg|sig[8]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~25\) 
-- # (GND)))))
-- \execute_block|ALUblock|Add0~28\ = CARRY((\execute_block|ALUblock|Add0~26_combout\ & (!\execute_block|xreg|sig[8]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~25\)) # (!\execute_block|ALUblock|Add0~26_combout\ & ((!\execute_block|ALUblock|Add0~25\) # 
-- (!\execute_block|xreg|sig[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~26_combout\,
	datab => \execute_block|xreg|sig[8]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~25\,
	combout => \execute_block|ALUblock|Add0~27_combout\,
	cout => \execute_block|ALUblock|Add0~28\);

-- Location: LCCOMB_X23_Y10_N4
\execute_block|ALUblock|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~30_combout\ = ((\execute_block|xreg|sig[9]~_Duplicate_1_q\ $ (\execute_block|ALUblock|Add0~29_combout\ $ (!\execute_block|ALUblock|Add0~28\)))) # (GND)
-- \execute_block|ALUblock|Add0~31\ = CARRY((\execute_block|xreg|sig[9]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~29_combout\) # (!\execute_block|ALUblock|Add0~28\))) # (!\execute_block|xreg|sig[9]~_Duplicate_1_q\ & 
-- (\execute_block|ALUblock|Add0~29_combout\ & !\execute_block|ALUblock|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[9]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~29_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~28\,
	combout => \execute_block|ALUblock|Add0~30_combout\,
	cout => \execute_block|ALUblock|Add0~31\);

-- Location: LCCOMB_X23_Y11_N14
\execute_block|ALUblock|ShiftLeft0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~14_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[2]~_Duplicate_1_q\)) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|xreg|sig[3]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X23_Y11_N12
\execute_block|ALUblock|ShiftLeft0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~21_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[4]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[5]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[4]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X23_Y11_N2
\execute_block|ALUblock|ShiftLeft0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~22_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~14_combout\)) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~14_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~21_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X20_Y11_N20
\execute_block|ALUblock|ShiftLeft0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~33_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[8]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[9]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[9]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[8]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X20_Y11_N16
\execute_block|ALUblock|ShiftLeft0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~28_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[6]~_Duplicate_1_q\)) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[6]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[7]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X20_Y11_N26
\execute_block|ALUblock|ShiftLeft0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~34_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~28_combout\))) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|ALUblock|ShiftLeft0~33_combout\,
	datac => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~28_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X22_Y8_N2
\execute_block|zSelMUX|y[15]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~45_combout\ = (\execute_block|ALUFuncreg|sig\(1) & ((\execute_block|yreg|sig[3]~_Duplicate_1_q\) # (!\execute_block|ALUFuncreg|sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|ALUFuncreg|sig\(1),
	datac => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|zSelMUX|y[15]~45_combout\);

-- Location: LCCOMB_X22_Y8_N24
\execute_block|zSelMUX|y[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~46_combout\ = (\execute_block|ALUFuncreg|sig\(1) & \execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(1),
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|zSelMUX|y[15]~46_combout\);

-- Location: LCCOMB_X22_Y10_N12
\execute_block|ALUblock|ShiftLeft0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~39_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[11]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[12]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[12]~_Duplicate_1_q\,
	datad => \execute_block|xreg|sig[11]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X23_Y10_N20
\execute_block|zSelMUX|y[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~37_combout\ = (\execute_block|yreg|sig[3]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[1]~_Duplicate_1_q\ & !\execute_block|yreg|sig[2]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	combout => \execute_block|zSelMUX|y[13]~37_combout\);

-- Location: LCCOMB_X23_Y10_N22
\execute_block|zSelMUX|y[13]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~36_combout\ = (\execute_block|yreg|sig[2]~_Duplicate_1_q\) # (\execute_block|yreg|sig[3]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	combout => \execute_block|zSelMUX|y[13]~36_combout\);

-- Location: LCCOMB_X22_Y10_N8
\execute_block|ALUblock|ShiftLeft0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~35_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[9]~_Duplicate_1_q\)) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[10]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[9]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[10]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X23_Y10_N18
\execute_block|zSelMUX|y[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[12]~38_combout\ = (\execute_block|zSelMUX|y[13]~37_combout\ & (((\execute_block|zSelMUX|y[13]~36_combout\) # (\execute_block|ALUblock|ShiftLeft0~35_combout\)))) # (!\execute_block|zSelMUX|y[13]~37_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~39_combout\ & (!\execute_block|zSelMUX|y[13]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~39_combout\,
	datab => \execute_block|zSelMUX|y[13]~37_combout\,
	datac => \execute_block|zSelMUX|y[13]~36_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~35_combout\,
	combout => \execute_block|zSelMUX|y[12]~38_combout\);

-- Location: LCCOMB_X20_Y11_N30
\execute_block|ALUblock|ShiftLeft0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~31_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[7]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[8]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[8]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[7]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X20_Y11_N28
\execute_block|ALUblock|ShiftLeft0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~24_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[5]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[6]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[5]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X22_Y10_N30
\execute_block|ALUblock|ShiftLeft0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~32_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~24_combout\))) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~31_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~24_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X23_Y12_N4
\execute_block|ALUblock|ShiftLeft0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~16_combout\ = (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|yreg|sig[2]~_Duplicate_1_q\ & (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & \execute_block|xreg|sig[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X20_Y11_N2
\execute_block|ALUblock|ShiftLeft0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~18_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[3]~_Duplicate_1_q\)) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[3]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[4]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X23_Y12_N6
\execute_block|ALUblock|ShiftLeft0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~17_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[1]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & 
-- (\execute_block|xreg|sig[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X23_Y12_N24
\execute_block|ALUblock|ShiftLeft0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~19_combout\ = (\execute_block|ALUblock|ShiftLeft0~17_combout\) # ((!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & \execute_block|ALUblock|ShiftLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~18_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~17_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X23_Y12_N22
\execute_block|ALUblock|ShiftLeft0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~20_combout\ = (\execute_block|ALUblock|ShiftLeft0~16_combout\) # ((!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & \execute_block|ALUblock|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~16_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~19_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X22_Y10_N10
\execute_block|zSelMUX|y[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[12]~39_combout\ = (\execute_block|zSelMUX|y[12]~38_combout\ & (((\execute_block|ALUblock|ShiftLeft0~20_combout\) # (!\execute_block|zSelMUX|y[13]~36_combout\)))) # (!\execute_block|zSelMUX|y[12]~38_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~32_combout\ & (\execute_block|zSelMUX|y[13]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[12]~38_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~32_combout\,
	datac => \execute_block|zSelMUX|y[13]~36_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~20_combout\,
	combout => \execute_block|zSelMUX|y[12]~39_combout\);

-- Location: LCCOMB_X22_Y12_N14
\execute_block|zSelMUX|y[13]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~63_combout\ = (!\execute_block|zSeldff|d_out~q\ & (\execute_block|ALUFuncreg|sig\(1) & ((!\execute_block|ALUblock|ShiftLeft0~8_combout\) # (!\execute_block|ALUFuncreg|sig\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|ALUFuncreg|sig\(0),
	datac => \execute_block|ALUFuncreg|sig\(1),
	datad => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	combout => \execute_block|zSelMUX|y[13]~63_combout\);

-- Location: FF_X19_Y12_N27
\decode_block|reg_file|reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][14]~q\);

-- Location: FF_X19_Y12_N1
\decode_block|reg_file|reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][14]~q\);

-- Location: FF_X18_Y10_N23
\decode_block|reg_file|reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][14]~q\);

-- Location: LCCOMB_X18_Y10_N24
\decode_block|reg_file|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux1~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][14]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][14]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][14]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\decode_block|reg_file|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux1~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux1~0_combout\ & (\decode_block|reg_file|reg[7][14]~q\)) # (!\decode_block|reg_file|Mux1~0_combout\ & ((\decode_block|reg_file|reg[5][14]~q\))))) 
-- # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][14]~q\,
	datac => \decode_block|reg_file|reg[5][14]~q\,
	datad => \decode_block|reg_file|Mux1~0_combout\,
	combout => \decode_block|reg_file|Mux1~1_combout\);

-- Location: FF_X15_Y9_N21
\decode_block|reg_file|reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][14]~q\);

-- Location: FF_X19_Y9_N23
\decode_block|reg_file|reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][14]~q\);

-- Location: FF_X16_Y9_N17
\decode_block|reg_file|reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][14]~q\);

-- Location: FF_X16_Y9_N11
\decode_block|reg_file|reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][14]~q\);

-- Location: LCCOMB_X16_Y9_N10
\decode_block|reg_file|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux1~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- (\decode_block|reg_file|reg[1][14]~q\)) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|reg[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[1][14]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[0][14]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y9_N0
\decode_block|reg_file|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux1~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux1~2_combout\ & (\decode_block|reg_file|reg[3][14]~q\)) # (!\decode_block|reg_file|Mux1~2_combout\ & ((\decode_block|reg_file|reg[2][14]~q\))))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][14]~q\,
	datab => \decode_block|reg_file|reg[2][14]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux1~2_combout\,
	combout => \decode_block|reg_file|Mux1~3_combout\);

-- Location: LCCOMB_X20_Y12_N26
\decode_block|reg_file|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux1~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux1~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux1~1_combout\,
	datad => \decode_block|reg_file|Mux1~3_combout\,
	combout => \decode_block|reg_file|Mux1~4_combout\);

-- Location: FF_X20_Y12_N27
\execute_block|xreg|sig[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux1~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[14]~_Duplicate_1_q\);

-- Location: FF_X20_Y10_N11
\execute_block|xreg|sig[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[15]~_Duplicate_1_q\);

-- Location: M9K_X26_Y11_N0
\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "stage3:execute_block|ring_buffer:DMEM|altsyncram:ram_rtl_0|altsyncram_87g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y8_N18
\execute_block|zSelMUX|y[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~62_combout\ = (!\execute_block|zSeldff|d_out~q\ & (((!\execute_block|ALUblock|ShiftLeft0~8_combout\) # (!\execute_block|ALUFuncreg|sig\(1))) # (!\execute_block|ALUFuncreg|sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|ALUFuncreg|sig\(0),
	datac => \execute_block|ALUFuncreg|sig\(1),
	datad => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	combout => \execute_block|zSelMUX|y[14]~62_combout\);

-- Location: LCCOMB_X22_Y8_N26
\execute_block|zSelMUX|y[15]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~60_combout\ = (\execute_block|zSelMUX|y[14]~62_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \execute_block|zSelMUX|y[14]~62_combout\,
	combout => \execute_block|zSelMUX|y[15]~60_combout\);

-- Location: LCCOMB_X17_Y9_N8
\decode_block|reg_file|reg[3][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][15]~feeder_combout\ = \decode_block|reg_file|reg~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~23_combout\,
	combout => \decode_block|reg_file|reg[3][15]~feeder_combout\);

-- Location: FF_X17_Y9_N9
\decode_block|reg_file|reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][15]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][15]~q\);

-- Location: LCCOMB_X17_Y9_N26
\decode_block|reg_file|reg[2][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][15]~feeder_combout\ = \decode_block|reg_file|reg~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~23_combout\,
	combout => \decode_block|reg_file|reg[2][15]~feeder_combout\);

-- Location: FF_X17_Y9_N27
\decode_block|reg_file|reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[2][15]~feeder_combout\,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][15]~q\);

-- Location: FF_X18_Y9_N19
\decode_block|reg_file|reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][15]~q\);

-- Location: FF_X18_Y9_N25
\decode_block|reg_file|reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][15]~q\);

-- Location: LCCOMB_X18_Y9_N24
\decode_block|dataSelMux|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux0~0_combout\ = (\decode_block|IR|sig\(4) & (((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[1][15]~q\)) # (!\decode_block|IR|sig\(3) & 
-- ((\decode_block|reg_file|reg[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[1][15]~q\,
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[0][15]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\decode_block|dataSelMux|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux0~1_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux0~0_combout\ & (\decode_block|reg_file|reg[3][15]~q\)) # (!\decode_block|dataSelMux|Mux0~0_combout\ & ((\decode_block|reg_file|reg[2][15]~q\))))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][15]~q\,
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[2][15]~q\,
	datad => \decode_block|dataSelMux|Mux0~0_combout\,
	combout => \decode_block|dataSelMux|Mux0~1_combout\);

-- Location: FF_X19_Y10_N17
\decode_block|reg_file|reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][15]~q\);

-- Location: FF_X18_Y10_N9
\decode_block|reg_file|reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][15]~q\);

-- Location: FF_X18_Y10_N31
\decode_block|reg_file|reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][15]~q\);

-- Location: LCCOMB_X18_Y10_N30
\decode_block|dataSelMux|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux0~2_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][15]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[6][15]~q\,
	datac => \decode_block|reg_file|reg[4][15]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y10_N30
\decode_block|dataSelMux|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux0~3_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux0~2_combout\ & ((\decode_block|reg_file|reg[7][15]~q\))) # (!\decode_block|dataSelMux|Mux0~2_combout\ & (\decode_block|reg_file|reg[5][15]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][15]~q\,
	datac => \decode_block|reg_file|reg[7][15]~q\,
	datad => \decode_block|dataSelMux|Mux0~2_combout\,
	combout => \decode_block|dataSelMux|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y10_N22
\decode_block|dataSelMux|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux0~4_combout\ = (\decode_block|dataSelMux|Mux15~4_combout\ & (\decode_block|dataSelMux|Mux6~2_combout\)) # (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|dataSelMux|Mux6~2_combout\ & 
-- ((\decode_block|dataSelMux|Mux0~3_combout\))) # (!\decode_block|dataSelMux|Mux6~2_combout\ & (\decode_block|dataSelMux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux15~4_combout\,
	datab => \decode_block|dataSelMux|Mux6~2_combout\,
	datac => \decode_block|dataSelMux|Mux0~1_combout\,
	datad => \decode_block|dataSelMux|Mux0~3_combout\,
	combout => \decode_block|dataSelMux|Mux0~4_combout\);

-- Location: FF_X20_Y10_N1
\execute_block|yreg|sig[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|dataSelMux|Mux0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N0
\execute_block|ALUblock|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~47_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[15]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|ALUFuncreg|sig\(0),
	datac => \execute_block|yreg|sig[15]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~47_combout\);

-- Location: LCCOMB_X20_Y10_N8
\execute_block|ALUblock|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~44_combout\ = \execute_block|yreg|sig[14]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[14]~_Duplicate_1_q\,
	datad => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~44_combout\);

-- Location: FF_X19_Y9_N17
\decode_block|reg_file|reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][13]~q\);

-- Location: FF_X18_Y9_N5
\decode_block|reg_file|reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][13]~q\);

-- Location: FF_X18_Y9_N31
\decode_block|reg_file|reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][13]~q\);

-- Location: LCCOMB_X18_Y9_N4
\decode_block|dataSelMux|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux2~0_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4)) # ((\decode_block|reg_file|reg[1][13]~q\)))) # (!\decode_block|IR|sig\(3) & (!\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[0][13]~q\,
	datad => \decode_block|reg_file|reg[1][13]~q\,
	combout => \decode_block|dataSelMux|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y9_N22
\decode_block|dataSelMux|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux2~1_combout\ = (\decode_block|dataSelMux|Mux2~0_combout\ & ((\decode_block|reg_file|reg[3][13]~q\) # ((!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux2~0_combout\ & (((\decode_block|reg_file|reg[2][13]~q\ & 
-- \decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][13]~q\,
	datab => \decode_block|reg_file|reg[2][13]~q\,
	datac => \decode_block|dataSelMux|Mux2~0_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux2~1_combout\);

-- Location: FF_X18_Y10_N5
\decode_block|reg_file|reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][13]~q\);

-- Location: FF_X18_Y10_N11
\decode_block|reg_file|reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][13]~q\);

-- Location: LCCOMB_X18_Y10_N10
\decode_block|dataSelMux|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux2~2_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][13]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[6][13]~q\,
	datac => \decode_block|reg_file|reg[4][13]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux2~2_combout\);

-- Location: FF_X19_Y10_N27
\decode_block|reg_file|reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][13]~q\);

-- Location: FF_X19_Y10_N3
\decode_block|reg_file|reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~21_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][13]~q\);

-- Location: LCCOMB_X19_Y10_N26
\decode_block|dataSelMux|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux2~3_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux2~2_combout\ & (\decode_block|reg_file|reg[7][13]~q\)) # (!\decode_block|dataSelMux|Mux2~2_combout\ & ((\decode_block|reg_file|reg[5][13]~q\))))) # 
-- (!\decode_block|IR|sig\(3) & (\decode_block|dataSelMux|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|dataSelMux|Mux2~2_combout\,
	datac => \decode_block|reg_file|reg[7][13]~q\,
	datad => \decode_block|reg_file|reg[5][13]~q\,
	combout => \decode_block|dataSelMux|Mux2~3_combout\);

-- Location: LCCOMB_X20_Y10_N4
\decode_block|dataSelMux|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux2~4_combout\ = (\decode_block|dataSelMux|Mux15~4_combout\ & (((\decode_block|dataSelMux|Mux6~2_combout\)))) # (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|dataSelMux|Mux6~2_combout\ & 
-- ((\decode_block|dataSelMux|Mux2~3_combout\))) # (!\decode_block|dataSelMux|Mux6~2_combout\ & (\decode_block|dataSelMux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux2~1_combout\,
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux2~3_combout\,
	datad => \decode_block|dataSelMux|Mux6~2_combout\,
	combout => \decode_block|dataSelMux|Mux2~4_combout\);

-- Location: FF_X20_Y10_N27
\execute_block|yreg|sig[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|dataSelMux|Mux2~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y10_N30
\execute_block|ALUblock|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~41_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[13]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[13]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~41_combout\);

-- Location: FF_X19_Y10_N15
\decode_block|reg_file|reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][12]~q\);

-- Location: FF_X19_Y10_N29
\decode_block|reg_file|reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][12]~q\);

-- Location: FF_X18_Y10_N13
\decode_block|reg_file|reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][12]~q\);

-- Location: FF_X18_Y10_N15
\decode_block|reg_file|reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][12]~q\);

-- Location: LCCOMB_X18_Y10_N14
\decode_block|dataSelMux|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~3_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][12]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[6][12]~q\,
	datac => \decode_block|reg_file|reg[4][12]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y10_N28
\decode_block|dataSelMux|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~4_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux3~3_combout\ & ((\decode_block|reg_file|reg[7][12]~q\))) # (!\decode_block|dataSelMux|Mux3~3_combout\ & (\decode_block|reg_file|reg[5][12]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][12]~q\,
	datac => \decode_block|reg_file|reg[7][12]~q\,
	datad => \decode_block|dataSelMux|Mux3~3_combout\,
	combout => \decode_block|dataSelMux|Mux3~4_combout\);

-- Location: LCCOMB_X15_Y9_N4
\decode_block|reg_file|reg[2][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[2][12]~feeder_combout\ = \decode_block|reg_file|reg~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~20_combout\,
	combout => \decode_block|reg_file|reg[2][12]~feeder_combout\);

-- Location: FF_X15_Y9_N5
\decode_block|reg_file|reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[2][12]~feeder_combout\,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][12]~q\);

-- Location: FF_X18_Y9_N3
\decode_block|reg_file|reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][12]~q\);

-- Location: FF_X18_Y9_N9
\decode_block|reg_file|reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~20_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][12]~q\);

-- Location: LCCOMB_X18_Y9_N8
\decode_block|dataSelMux|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~0_combout\ = (\decode_block|IR|sig\(4) & (((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[1][12]~q\)) # (!\decode_block|IR|sig\(3) & 
-- ((\decode_block|reg_file|reg[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[1][12]~q\,
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[0][12]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y9_N22
\decode_block|dataSelMux|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~1_combout\ = (\decode_block|dataSelMux|Mux3~0_combout\ & (((\decode_block|reg_file|reg[3][12]~q\) # (!\decode_block|IR|sig\(4))))) # (!\decode_block|dataSelMux|Mux3~0_combout\ & (\decode_block|reg_file|reg[2][12]~q\ & 
-- ((\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][12]~q\,
	datab => \decode_block|reg_file|reg[3][12]~q\,
	datac => \decode_block|dataSelMux|Mux3~0_combout\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y9_N20
\decode_block|dataSelMux|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~2_combout\ = (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5)) # ((\control_block|Mux2~0_combout\ & \decode_block|dataSelMux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_block|Mux2~0_combout\,
	datab => \control_block|Mux1~0_combout\,
	datac => \decode_block|IR|sig\(5),
	datad => \decode_block|dataSelMux|Mux3~1_combout\,
	combout => \decode_block|dataSelMux|Mux3~2_combout\);

-- Location: LCCOMB_X20_Y9_N10
\decode_block|dataSelMux|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux3~5_combout\ = (\decode_block|dataSelMux|Mux9~0_combout\ & ((\decode_block|dataSelMux|Mux3~2_combout\ & ((\decode_block|dataSelMux|Mux3~4_combout\))) # (!\decode_block|dataSelMux|Mux3~2_combout\ & (\decode_block|IR|sig\(8))))) 
-- # (!\decode_block|dataSelMux|Mux9~0_combout\ & (((\decode_block|dataSelMux|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux9~0_combout\,
	datab => \decode_block|IR|sig\(8),
	datac => \decode_block|dataSelMux|Mux3~4_combout\,
	datad => \decode_block|dataSelMux|Mux3~2_combout\,
	combout => \decode_block|dataSelMux|Mux3~5_combout\);

-- Location: FF_X20_Y9_N11
\execute_block|yreg|sig[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux3~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N6
\execute_block|ALUblock|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~38_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[12]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|ALUFuncreg|sig\(0),
	datad => \execute_block|yreg|sig[12]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~38_combout\);

-- Location: FF_X17_Y9_N3
\decode_block|reg_file|reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][11]~q\);

-- Location: FF_X17_Y9_N25
\decode_block|reg_file|reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][11]~q\);

-- Location: FF_X16_Y9_N27
\decode_block|reg_file|reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][11]~q\);

-- Location: FF_X16_Y9_N29
\decode_block|reg_file|reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][11]~q\);

-- Location: LCCOMB_X16_Y9_N28
\decode_block|dataSelMux|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux4~0_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][11]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][11]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][11]~q\,
	datac => \decode_block|reg_file|reg[0][11]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\decode_block|dataSelMux|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux4~1_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux4~0_combout\ & (\decode_block|reg_file|reg[3][11]~q\)) # (!\decode_block|dataSelMux|Mux4~0_combout\ & ((\decode_block|reg_file|reg[2][11]~q\))))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][11]~q\,
	datab => \decode_block|reg_file|reg[2][11]~q\,
	datac => \decode_block|IR|sig\(4),
	datad => \decode_block|dataSelMux|Mux4~0_combout\,
	combout => \decode_block|dataSelMux|Mux4~1_combout\);

-- Location: FF_X18_Y10_N29
\decode_block|reg_file|reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][11]~q\);

-- Location: FF_X18_Y10_N27
\decode_block|reg_file|reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][11]~q\);

-- Location: LCCOMB_X18_Y10_N26
\decode_block|dataSelMux|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux4~2_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][11]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[6][11]~q\,
	datac => \decode_block|reg_file|reg[4][11]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux4~2_combout\);

-- Location: FF_X19_Y10_N11
\decode_block|reg_file|reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][11]~q\);

-- Location: LCCOMB_X19_Y10_N4
\decode_block|dataSelMux|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux4~3_combout\ = (\decode_block|dataSelMux|Mux4~2_combout\ & (((\decode_block|reg_file|reg[7][11]~q\)) # (!\decode_block|IR|sig\(3)))) # (!\decode_block|dataSelMux|Mux4~2_combout\ & (\decode_block|IR|sig\(3) & 
-- ((\decode_block|reg_file|reg[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux4~2_combout\,
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[7][11]~q\,
	datad => \decode_block|reg_file|reg[5][11]~q\,
	combout => \decode_block|dataSelMux|Mux4~3_combout\);

-- Location: LCCOMB_X20_Y10_N2
\decode_block|dataSelMux|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux4~4_combout\ = (\decode_block|dataSelMux|Mux15~4_combout\ & (((\decode_block|dataSelMux|Mux6~2_combout\)))) # (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|dataSelMux|Mux6~2_combout\ & 
-- ((\decode_block|dataSelMux|Mux4~3_combout\))) # (!\decode_block|dataSelMux|Mux6~2_combout\ & (\decode_block|dataSelMux|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux4~1_combout\,
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|dataSelMux|Mux4~3_combout\,
	datad => \decode_block|dataSelMux|Mux6~2_combout\,
	combout => \decode_block|dataSelMux|Mux4~4_combout\);

-- Location: FF_X20_Y10_N9
\execute_block|yreg|sig[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|dataSelMux|Mux4~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N20
\execute_block|ALUblock|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~35_combout\ = \execute_block|yreg|sig[11]~_Duplicate_1_q\ $ (\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[11]~_Duplicate_1_q\,
	datac => \execute_block|ALUFuncreg|sig\(0),
	combout => \execute_block|ALUblock|Add0~35_combout\);

-- Location: FF_X19_Y10_N19
\decode_block|reg_file|reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][10]~q\);

-- Location: FF_X19_Y10_N13
\decode_block|reg_file|reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][10]~q\);

-- Location: FF_X18_Y10_N19
\decode_block|reg_file|reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][10]~q\);

-- Location: FF_X18_Y10_N17
\decode_block|reg_file|reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][10]~q\);

-- Location: LCCOMB_X18_Y10_N18
\decode_block|dataSelMux|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~3_combout\ = (\decode_block|IR|sig\(3) & (\decode_block|IR|sig\(4))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & ((\decode_block|reg_file|reg[6][10]~q\))) # (!\decode_block|IR|sig\(4) & 
-- (\decode_block|reg_file|reg[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[4][10]~q\,
	datad => \decode_block|reg_file|reg[6][10]~q\,
	combout => \decode_block|dataSelMux|Mux5~3_combout\);

-- Location: LCCOMB_X19_Y10_N12
\decode_block|dataSelMux|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~4_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux5~3_combout\ & ((\decode_block|reg_file|reg[7][10]~q\))) # (!\decode_block|dataSelMux|Mux5~3_combout\ & (\decode_block|reg_file|reg[5][10]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][10]~q\,
	datac => \decode_block|reg_file|reg[7][10]~q\,
	datad => \decode_block|dataSelMux|Mux5~3_combout\,
	combout => \decode_block|dataSelMux|Mux5~4_combout\);

-- Location: FF_X15_Y9_N7
\decode_block|reg_file|reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][10]~q\);

-- Location: FF_X16_Y9_N25
\decode_block|reg_file|reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[1][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[1][10]~q\);

-- Location: FF_X16_Y9_N15
\decode_block|reg_file|reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][10]~q\);

-- Location: LCCOMB_X16_Y9_N14
\decode_block|dataSelMux|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~0_combout\ = (\decode_block|IR|sig\(4) & (((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[1][10]~q\)) # (!\decode_block|IR|sig\(3) & 
-- ((\decode_block|reg_file|reg[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[1][10]~q\,
	datac => \decode_block|reg_file|reg[0][10]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y9_N28
\decode_block|dataSelMux|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~1_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux5~0_combout\ & (\decode_block|reg_file|reg[3][10]~q\)) # (!\decode_block|dataSelMux|Mux5~0_combout\ & ((\decode_block|reg_file|reg[2][10]~q\))))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][10]~q\,
	datab => \decode_block|IR|sig\(4),
	datac => \decode_block|reg_file|reg[2][10]~q\,
	datad => \decode_block|dataSelMux|Mux5~0_combout\,
	combout => \decode_block|dataSelMux|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y9_N0
\decode_block|dataSelMux|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~2_combout\ = (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5)) # ((\control_block|Mux2~0_combout\ & \decode_block|dataSelMux|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_block|Mux2~0_combout\,
	datab => \control_block|Mux1~0_combout\,
	datac => \decode_block|IR|sig\(5),
	datad => \decode_block|dataSelMux|Mux5~1_combout\,
	combout => \decode_block|dataSelMux|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y9_N2
\decode_block|dataSelMux|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux5~5_combout\ = (\decode_block|dataSelMux|Mux9~0_combout\ & ((\decode_block|dataSelMux|Mux5~2_combout\ & ((\decode_block|dataSelMux|Mux5~4_combout\))) # (!\decode_block|dataSelMux|Mux5~2_combout\ & (\decode_block|IR|sig\(8))))) 
-- # (!\decode_block|dataSelMux|Mux9~0_combout\ & (((\decode_block|dataSelMux|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux9~0_combout\,
	datab => \decode_block|IR|sig\(8),
	datac => \decode_block|dataSelMux|Mux5~4_combout\,
	datad => \decode_block|dataSelMux|Mux5~2_combout\,
	combout => \decode_block|dataSelMux|Mux5~5_combout\);

-- Location: FF_X20_Y9_N3
\execute_block|yreg|sig[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux5~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N18
\execute_block|ALUblock|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~32_combout\ = \execute_block|ALUFuncreg|sig\(0) $ (\execute_block|yreg|sig[10]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|ALUFuncreg|sig\(0),
	datac => \execute_block|yreg|sig[10]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|Add0~32_combout\);

-- Location: LCCOMB_X23_Y10_N6
\execute_block|ALUblock|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~33_combout\ = (\execute_block|ALUblock|Add0~32_combout\ & ((\execute_block|xreg|sig[10]~_Duplicate_1_q\ & (\execute_block|ALUblock|Add0~31\ & VCC)) # (!\execute_block|xreg|sig[10]~_Duplicate_1_q\ & 
-- (!\execute_block|ALUblock|Add0~31\)))) # (!\execute_block|ALUblock|Add0~32_combout\ & ((\execute_block|xreg|sig[10]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~31\)) # (!\execute_block|xreg|sig[10]~_Duplicate_1_q\ & 
-- ((\execute_block|ALUblock|Add0~31\) # (GND)))))
-- \execute_block|ALUblock|Add0~34\ = CARRY((\execute_block|ALUblock|Add0~32_combout\ & (!\execute_block|xreg|sig[10]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~31\)) # (!\execute_block|ALUblock|Add0~32_combout\ & ((!\execute_block|ALUblock|Add0~31\) # 
-- (!\execute_block|xreg|sig[10]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~32_combout\,
	datab => \execute_block|xreg|sig[10]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~31\,
	combout => \execute_block|ALUblock|Add0~33_combout\,
	cout => \execute_block|ALUblock|Add0~34\);

-- Location: LCCOMB_X23_Y10_N8
\execute_block|ALUblock|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~36_combout\ = ((\execute_block|ALUblock|Add0~35_combout\ $ (\execute_block|xreg|sig[11]~_Duplicate_1_q\ $ (!\execute_block|ALUblock|Add0~34\)))) # (GND)
-- \execute_block|ALUblock|Add0~37\ = CARRY((\execute_block|ALUblock|Add0~35_combout\ & ((\execute_block|xreg|sig[11]~_Duplicate_1_q\) # (!\execute_block|ALUblock|Add0~34\))) # (!\execute_block|ALUblock|Add0~35_combout\ & 
-- (\execute_block|xreg|sig[11]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~35_combout\,
	datab => \execute_block|xreg|sig[11]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~34\,
	combout => \execute_block|ALUblock|Add0~36_combout\,
	cout => \execute_block|ALUblock|Add0~37\);

-- Location: LCCOMB_X23_Y10_N10
\execute_block|ALUblock|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~39_combout\ = (\execute_block|xreg|sig[12]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~38_combout\ & (\execute_block|ALUblock|Add0~37\ & VCC)) # (!\execute_block|ALUblock|Add0~38_combout\ & 
-- (!\execute_block|ALUblock|Add0~37\)))) # (!\execute_block|xreg|sig[12]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~38_combout\ & (!\execute_block|ALUblock|Add0~37\)) # (!\execute_block|ALUblock|Add0~38_combout\ & ((\execute_block|ALUblock|Add0~37\) # 
-- (GND)))))
-- \execute_block|ALUblock|Add0~40\ = CARRY((\execute_block|xreg|sig[12]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~38_combout\ & !\execute_block|ALUblock|Add0~37\)) # (!\execute_block|xreg|sig[12]~_Duplicate_1_q\ & ((!\execute_block|ALUblock|Add0~37\) 
-- # (!\execute_block|ALUblock|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[12]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~38_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~37\,
	combout => \execute_block|ALUblock|Add0~39_combout\,
	cout => \execute_block|ALUblock|Add0~40\);

-- Location: LCCOMB_X23_Y10_N12
\execute_block|ALUblock|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~42_combout\ = ((\execute_block|ALUblock|Add0~41_combout\ $ (\execute_block|xreg|sig[13]~_Duplicate_1_q\ $ (!\execute_block|ALUblock|Add0~40\)))) # (GND)
-- \execute_block|ALUblock|Add0~43\ = CARRY((\execute_block|ALUblock|Add0~41_combout\ & ((\execute_block|xreg|sig[13]~_Duplicate_1_q\) # (!\execute_block|ALUblock|Add0~40\))) # (!\execute_block|ALUblock|Add0~41_combout\ & 
-- (\execute_block|xreg|sig[13]~_Duplicate_1_q\ & !\execute_block|ALUblock|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|Add0~41_combout\,
	datab => \execute_block|xreg|sig[13]~_Duplicate_1_q\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~40\,
	combout => \execute_block|ALUblock|Add0~42_combout\,
	cout => \execute_block|ALUblock|Add0~43\);

-- Location: LCCOMB_X23_Y10_N14
\execute_block|ALUblock|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~45_combout\ = (\execute_block|xreg|sig[14]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~44_combout\ & (\execute_block|ALUblock|Add0~43\ & VCC)) # (!\execute_block|ALUblock|Add0~44_combout\ & 
-- (!\execute_block|ALUblock|Add0~43\)))) # (!\execute_block|xreg|sig[14]~_Duplicate_1_q\ & ((\execute_block|ALUblock|Add0~44_combout\ & (!\execute_block|ALUblock|Add0~43\)) # (!\execute_block|ALUblock|Add0~44_combout\ & ((\execute_block|ALUblock|Add0~43\) # 
-- (GND)))))
-- \execute_block|ALUblock|Add0~46\ = CARRY((\execute_block|xreg|sig[14]~_Duplicate_1_q\ & (!\execute_block|ALUblock|Add0~44_combout\ & !\execute_block|ALUblock|Add0~43\)) # (!\execute_block|xreg|sig[14]~_Duplicate_1_q\ & ((!\execute_block|ALUblock|Add0~43\) 
-- # (!\execute_block|ALUblock|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[14]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|Add0~44_combout\,
	datad => VCC,
	cin => \execute_block|ALUblock|Add0~43\,
	combout => \execute_block|ALUblock|Add0~45_combout\,
	cout => \execute_block|ALUblock|Add0~46\);

-- Location: LCCOMB_X23_Y10_N16
\execute_block|ALUblock|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|Add0~48_combout\ = \execute_block|xreg|sig[15]~_Duplicate_1_q\ $ (\execute_block|ALUblock|Add0~46\ $ (!\execute_block|ALUblock|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[15]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|Add0~47_combout\,
	cin => \execute_block|ALUblock|Add0~46\,
	combout => \execute_block|ALUblock|Add0~48_combout\);

-- Location: LCCOMB_X22_Y10_N6
\execute_block|ALUblock|ShiftLeft0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~40_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[12]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[13]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[13]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[12]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X23_Y8_N0
\execute_block|ALUblock|ShiftLeft0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~10_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\) # (\execute_block|yreg|sig[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X23_Y8_N4
\execute_block|zSelMUX|y[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~47_combout\ = (\execute_block|yreg|sig[2]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[0]~_Duplicate_1_q\ & !\execute_block|yreg|sig[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	combout => \execute_block|zSelMUX|y[15]~47_combout\);

-- Location: LCCOMB_X23_Y8_N30
\execute_block|zSelMUX|y[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~55_combout\ = (\execute_block|zSelMUX|y[15]~47_combout\ & (\execute_block|xreg|sig[14]~_Duplicate_1_q\ & ((!\execute_block|ALUblock|ShiftLeft0~10_combout\)))) # (!\execute_block|zSelMUX|y[15]~47_combout\ & 
-- (((\execute_block|xreg|sig[15]~_Duplicate_1_q\) # (\execute_block|ALUblock|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[14]~_Duplicate_1_q\,
	datab => \execute_block|xreg|sig[15]~_Duplicate_1_q\,
	datac => \execute_block|zSelMUX|y[15]~47_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~10_combout\,
	combout => \execute_block|zSelMUX|y[15]~55_combout\);

-- Location: LCCOMB_X23_Y8_N10
\execute_block|ALUblock|ShiftLeft0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~38_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~33_combout\)) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~33_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~37_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X23_Y8_N12
\execute_block|zSelMUX|y[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~56_combout\ = (\execute_block|ALUblock|ShiftLeft0~10_combout\ & ((\execute_block|zSelMUX|y[15]~55_combout\ & (\execute_block|ALUblock|ShiftLeft0~40_combout\)) # (!\execute_block|zSelMUX|y[15]~55_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~38_combout\))))) # (!\execute_block|ALUblock|ShiftLeft0~10_combout\ & (((\execute_block|zSelMUX|y[15]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~40_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~10_combout\,
	datac => \execute_block|zSelMUX|y[15]~55_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~38_combout\,
	combout => \execute_block|zSelMUX|y[15]~56_combout\);

-- Location: LCCOMB_X22_Y8_N22
\execute_block|ALUblock|ShiftLeft0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~29_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~21_combout\)) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~21_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~28_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X20_Y12_N28
\execute_block|ALUblock|ShiftLeft0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~9_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[0]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X22_Y8_N0
\execute_block|ALUblock|ShiftLeft0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~27_combout\ = (\execute_block|yreg|sig[2]~_Duplicate_1_q\ & ((\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~9_combout\))) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & 
-- (\execute_block|ALUblock|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~14_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~9_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X22_Y8_N12
\execute_block|ALUblock|ShiftLeft0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~30_combout\ = (\execute_block|ALUblock|ShiftLeft0~27_combout\) # ((!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & \execute_block|ALUblock|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~29_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~27_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X22_Y8_N8
\execute_block|zSelMUX|y[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~57_combout\ = (\execute_block|zSelMUX|y[15]~45_combout\ & (\execute_block|zSelMUX|y[15]~46_combout\ & ((\execute_block|ALUblock|ShiftLeft0~30_combout\)))) # (!\execute_block|zSelMUX|y[15]~45_combout\ & 
-- (((\execute_block|zSelMUX|y[15]~56_combout\)) # (!\execute_block|zSelMUX|y[15]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[15]~45_combout\,
	datab => \execute_block|zSelMUX|y[15]~46_combout\,
	datac => \execute_block|zSelMUX|y[15]~56_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~30_combout\,
	combout => \execute_block|zSelMUX|y[15]~57_combout\);

-- Location: DSPMULT_X21_Y12_N0
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \rst~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y12_N2
\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y8_N6
\execute_block|zSelMUX|y[15]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~58_combout\ = (\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\ & \execute_block|zSeldff|d_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \execute_block|zSeldff|d_out~q\,
	combout => \execute_block|zSelMUX|y[15]~58_combout\);

-- Location: LCCOMB_X22_Y8_N28
\execute_block|zSelMUX|y[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~59_combout\ = (\execute_block|zSelMUX|y[15]~58_combout\) # ((\execute_block|zSelMUX|y[15]~46_combout\ & ((\execute_block|zSelMUX|y[15]~57_combout\))) # (!\execute_block|zSelMUX|y[15]~46_combout\ & 
-- (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\execute_block|zSelMUX|y[15]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[15]~46_combout\,
	datab => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \execute_block|zSelMUX|y[15]~57_combout\,
	datad => \execute_block|zSelMUX|y[15]~58_combout\,
	combout => \execute_block|zSelMUX|y[15]~59_combout\);

-- Location: LCCOMB_X22_Y8_N16
\execute_block|zSelMUX|y[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[15]~61_combout\ = (\execute_block|zSelMUX|y[15]~60_combout\ & ((\execute_block|zSelMUX|y[15]~59_combout\) # ((\execute_block|ALUblock|Add0~48_combout\ & \execute_block|zSelMUX|y[15]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[15]~60_combout\,
	datab => \execute_block|ALUblock|Add0~48_combout\,
	datac => \execute_block|zSelMUX|y[15]~57_combout\,
	datad => \execute_block|zSelMUX|y[15]~59_combout\,
	combout => \execute_block|zSelMUX|y[15]~61_combout\);

-- Location: FF_X22_Y8_N17
\writeback_block|zreg|sig[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[15]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(15));

-- Location: LCCOMB_X18_Y8_N16
\decode_block|reg_file|reg~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~23_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(15),
	combout => \decode_block|reg_file|reg~23_combout\);

-- Location: FF_X19_Y10_N31
\decode_block|reg_file|reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~23_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][15]~q\);

-- Location: LCCOMB_X18_Y10_N8
\decode_block|reg_file|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux0~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][15]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][15]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][15]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\decode_block|reg_file|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux0~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux0~0_combout\ & (\decode_block|reg_file|reg[7][15]~q\)) # (!\decode_block|reg_file|Mux0~0_combout\ & ((\decode_block|reg_file|reg[5][15]~q\))))) 
-- # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[7][15]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[5][15]~q\,
	datad => \decode_block|reg_file|Mux0~0_combout\,
	combout => \decode_block|reg_file|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\decode_block|reg_file|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux0~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][15]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[0][15]~q\,
	datac => \decode_block|reg_file|reg[1][15]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y9_N10
\decode_block|reg_file|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux0~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux0~2_combout\ & (\decode_block|reg_file|reg[3][15]~q\)) # (!\decode_block|reg_file|Mux0~2_combout\ & ((\decode_block|reg_file|reg[2][15]~q\))))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][15]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[2][15]~q\,
	datad => \decode_block|reg_file|Mux0~2_combout\,
	combout => \decode_block|reg_file|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y10_N10
\decode_block|reg_file|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux0~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux0~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux0~1_combout\,
	datad => \decode_block|reg_file|Mux0~3_combout\,
	combout => \decode_block|reg_file|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y10_N24
\execute_block|zSelMUX|y[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[12]~40_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & ((\execute_block|ALUblock|Add0~39_combout\)))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \execute_block|ALUblock|Add0~39_combout\,
	combout => \execute_block|zSelMUX|y[12]~40_combout\);

-- Location: LCCOMB_X22_Y10_N28
\execute_block|zSelMUX|y[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(12) = (\execute_block|zSelMUX|y[13]~63_combout\ & ((\execute_block|zSelMUX|y[12]~40_combout\ & ((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!\execute_block|zSelMUX|y[12]~40_combout\ & 
-- (\execute_block|zSelMUX|y[12]~39_combout\)))) # (!\execute_block|zSelMUX|y[13]~63_combout\ & (((\execute_block|zSelMUX|y[12]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[12]~39_combout\,
	datab => \execute_block|zSelMUX|y[13]~63_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \execute_block|zSelMUX|y[12]~40_combout\,
	combout => \execute_block|zSelMUX|y\(12));

-- Location: FF_X22_Y10_N29
\writeback_block|zreg|sig[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(12));

-- Location: LCCOMB_X17_Y9_N6
\decode_block|reg_file|reg~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~20_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(12),
	combout => \decode_block|reg_file|reg~20_combout\);

-- Location: LCCOMB_X15_Y9_N14
\decode_block|reg_file|reg[3][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][12]~feeder_combout\ = \decode_block|reg_file|reg~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~20_combout\,
	combout => \decode_block|reg_file|reg[3][12]~feeder_combout\);

-- Location: FF_X15_Y9_N15
\decode_block|reg_file|reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][12]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][12]~q\);

-- Location: LCCOMB_X18_Y9_N26
\decode_block|reg_file|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux3~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- (\decode_block|reg_file|reg[1][12]~q\)) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|reg[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[1][12]~q\,
	datac => \decode_block|reg_file|reg[0][12]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux3~2_combout\);

-- Location: LCCOMB_X18_Y9_N16
\decode_block|reg_file|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux3~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux3~2_combout\ & (\decode_block|reg_file|reg[3][12]~q\)) # (!\decode_block|reg_file|Mux3~2_combout\ & ((\decode_block|reg_file|reg[2][12]~q\))))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][12]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|Mux3~2_combout\,
	datad => \decode_block|reg_file|reg[2][12]~q\,
	combout => \decode_block|reg_file|Mux3~3_combout\);

-- Location: LCCOMB_X18_Y10_N12
\decode_block|reg_file|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux3~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][12]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][12]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][12]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\decode_block|reg_file|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux3~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux3~0_combout\ & (\decode_block|reg_file|reg[7][12]~q\)) # (!\decode_block|reg_file|Mux3~0_combout\ & ((\decode_block|reg_file|reg[5][12]~q\))))) 
-- # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][12]~q\,
	datac => \decode_block|reg_file|reg[5][12]~q\,
	datad => \decode_block|reg_file|Mux3~0_combout\,
	combout => \decode_block|reg_file|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y10_N2
\decode_block|reg_file|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux3~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux3~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux3~3_combout\,
	datad => \decode_block|reg_file|Mux3~1_combout\,
	combout => \decode_block|reg_file|Mux3~4_combout\);

-- Location: FF_X22_Y10_N3
\execute_block|xreg|sig[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux3~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y12_N8
\execute_block|ALUblock|ShiftLeft0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~25_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~18_combout\)) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~18_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~24_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X22_Y10_N14
\execute_block|ALUblock|ShiftLeft0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~36_combout\ = (\execute_block|yreg|sig[1]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~31_combout\))) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~35_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~31_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X20_Y12_N10
\execute_block|zSelMUX|y[11]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~19_combout\ = (\execute_block|ALUFuncreg|sig\(0) & ((\execute_block|yreg|sig[3]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[2]~_Duplicate_1_q\) # (\execute_block|ALUblock|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUFuncreg|sig\(0),
	datab => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	combout => \execute_block|zSelMUX|y[11]~19_combout\);

-- Location: LCCOMB_X20_Y12_N24
\execute_block|zSelMUX|y[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~18_combout\ = ((\execute_block|yreg|sig[3]~_Duplicate_1_q\ & !\execute_block|ALUblock|ShiftLeft0~8_combout\)) # (!\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUFuncreg|sig\(0),
	datab => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	combout => \execute_block|zSelMUX|y[11]~18_combout\);

-- Location: LCCOMB_X22_Y12_N18
\execute_block|zSelMUX|y[10]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[10]~28_combout\ = (\execute_block|zSelMUX|y[11]~19_combout\ & (\execute_block|ALUblock|ShiftLeft0~13_combout\ & ((\execute_block|zSelMUX|y[11]~18_combout\)))) # (!\execute_block|zSelMUX|y[11]~19_combout\ & 
-- (((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\execute_block|zSelMUX|y[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~13_combout\,
	datab => \execute_block|zSelMUX|y[11]~19_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \execute_block|zSelMUX|y[11]~18_combout\,
	combout => \execute_block|zSelMUX|y[10]~28_combout\);

-- Location: LCCOMB_X22_Y12_N0
\execute_block|zSelMUX|y[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[10]~29_combout\ = (\execute_block|zSelMUX|y[11]~17_combout\ & (((\execute_block|zSelMUX|y[10]~28_combout\)))) # (!\execute_block|zSelMUX|y[11]~17_combout\ & ((\execute_block|zSelMUX|y[10]~28_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~36_combout\))) # (!\execute_block|zSelMUX|y[10]~28_combout\ & (\execute_block|ALUblock|ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~25_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~36_combout\,
	datac => \execute_block|zSelMUX|y[11]~17_combout\,
	datad => \execute_block|zSelMUX|y[10]~28_combout\,
	combout => \execute_block|zSelMUX|y[10]~29_combout\);

-- Location: LCCOMB_X22_Y12_N6
\execute_block|zSelMUX|y[10]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[10]~30_combout\ = (!\execute_block|zSeldff|d_out~q\ & ((\execute_block|ALUFuncreg|sig\(1) & ((\execute_block|zSelMUX|y[10]~29_combout\))) # (!\execute_block|ALUFuncreg|sig\(1) & (\execute_block|ALUblock|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|ALUFuncreg|sig\(1),
	datac => \execute_block|ALUblock|Add0~33_combout\,
	datad => \execute_block|zSelMUX|y[10]~29_combout\,
	combout => \execute_block|zSelMUX|y[10]~30_combout\);

-- Location: LCCOMB_X22_Y12_N12
\execute_block|zSelMUX|y[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[10]~31_combout\ = (\execute_block|zSelMUX|y[10]~30_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \execute_block|zSelMUX|y[10]~30_combout\,
	combout => \execute_block|zSelMUX|y[10]~31_combout\);

-- Location: FF_X22_Y12_N13
\writeback_block|zreg|sig[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[10]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(10));

-- Location: LCCOMB_X17_Y9_N2
\decode_block|reg_file|reg~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~18_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(10),
	combout => \decode_block|reg_file|reg~18_combout\);

-- Location: FF_X15_Y9_N29
\decode_block|reg_file|reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~18_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][10]~q\);

-- Location: LCCOMB_X16_Y9_N24
\decode_block|reg_file|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux5~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][10]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][10]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[1][10]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y9_N4
\decode_block|reg_file|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux5~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux5~2_combout\ & ((\decode_block|reg_file|reg[3][10]~q\))) # (!\decode_block|reg_file|Mux5~2_combout\ & (\decode_block|reg_file|reg[2][10]~q\)))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][10]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[3][10]~q\,
	datad => \decode_block|reg_file|Mux5~2_combout\,
	combout => \decode_block|reg_file|Mux5~3_combout\);

-- Location: LCCOMB_X18_Y10_N16
\decode_block|reg_file|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux5~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][10]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][10]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][10]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y10_N18
\decode_block|reg_file|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux5~1_combout\ = (\decode_block|reg_file|Mux5~0_combout\ & (((\decode_block|reg_file|reg[7][10]~q\)) # (!\decode_block|regSelMux|y[0]~0_combout\))) # (!\decode_block|reg_file|Mux5~0_combout\ & 
-- (\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[5][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|Mux5~0_combout\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[5][10]~q\,
	datad => \decode_block|reg_file|reg[7][10]~q\,
	combout => \decode_block|reg_file|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y12_N20
\decode_block|reg_file|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux5~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux5~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux5~3_combout\,
	datad => \decode_block|reg_file|Mux5~1_combout\,
	combout => \decode_block|reg_file|Mux5~4_combout\);

-- Location: FF_X20_Y12_N21
\execute_block|xreg|sig[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux5~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y12_N12
\execute_block|ALUblock|ShiftLeft0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~15_combout\ = (!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & ((\execute_block|yreg|sig[1]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~9_combout\)) # (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|ShiftLeft0~9_combout\,
	datac => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~14_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X20_Y12_N16
\execute_block|zSelMUX|y[11]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~32_combout\ = (\execute_block|zSelMUX|y[11]~18_combout\ & ((\execute_block|zSelMUX|y[11]~19_combout\ & (!\execute_block|ALUblock|ShiftLeft0~15_combout\)) # (!\execute_block|zSelMUX|y[11]~19_combout\ & 
-- ((!\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT11\))))) # (!\execute_block|zSelMUX|y[11]~18_combout\ & (((\execute_block|zSelMUX|y[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~15_combout\,
	datab => \execute_block|zSelMUX|y[11]~18_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \execute_block|zSelMUX|y[11]~19_combout\,
	combout => \execute_block|zSelMUX|y[11]~32_combout\);

-- Location: LCCOMB_X20_Y12_N2
\execute_block|zSelMUX|y[11]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~33_combout\ = (\execute_block|zSelMUX|y[11]~17_combout\ & (((!\execute_block|zSelMUX|y[11]~32_combout\)))) # (!\execute_block|zSelMUX|y[11]~17_combout\ & ((\execute_block|zSelMUX|y[11]~32_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~29_combout\)) # (!\execute_block|zSelMUX|y[11]~32_combout\ & ((\execute_block|ALUblock|ShiftLeft0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~29_combout\,
	datab => \execute_block|zSelMUX|y[11]~17_combout\,
	datac => \execute_block|ALUblock|ShiftLeft0~38_combout\,
	datad => \execute_block|zSelMUX|y[11]~32_combout\,
	combout => \execute_block|zSelMUX|y[11]~33_combout\);

-- Location: LCCOMB_X20_Y12_N0
\execute_block|zSelMUX|y[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~34_combout\ = (!\execute_block|zSeldff|d_out~q\ & ((\execute_block|ALUFuncreg|sig\(1) & ((\execute_block|zSelMUX|y[11]~33_combout\))) # (!\execute_block|ALUFuncreg|sig\(1) & (\execute_block|ALUblock|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUFuncreg|sig\(1),
	datab => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|ALUblock|Add0~36_combout\,
	datad => \execute_block|zSelMUX|y[11]~33_combout\,
	combout => \execute_block|zSelMUX|y[11]~34_combout\);

-- Location: LCCOMB_X20_Y12_N14
\execute_block|zSelMUX|y[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~35_combout\ = (\execute_block|zSelMUX|y[11]~34_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \execute_block|zSelMUX|y[11]~34_combout\,
	combout => \execute_block|zSelMUX|y[11]~35_combout\);

-- Location: FF_X20_Y12_N15
\writeback_block|zreg|sig[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[11]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(11));

-- Location: LCCOMB_X17_Y10_N6
\decode_block|reg_file|reg~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~19_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(11),
	combout => \decode_block|reg_file|reg~19_combout\);

-- Location: FF_X19_Y10_N5
\decode_block|reg_file|reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~19_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][11]~q\);

-- Location: LCCOMB_X18_Y10_N28
\decode_block|reg_file|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux4~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][11]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][11]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][11]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\decode_block|reg_file|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux4~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux4~0_combout\ & (\decode_block|reg_file|reg[7][11]~q\)) # (!\decode_block|reg_file|Mux4~0_combout\ & ((\decode_block|reg_file|reg[5][11]~q\))))) 
-- # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][11]~q\,
	datac => \decode_block|reg_file|reg[5][11]~q\,
	datad => \decode_block|reg_file|Mux4~0_combout\,
	combout => \decode_block|reg_file|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y9_N26
\decode_block|reg_file|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux4~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][11]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][11]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[1][11]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux4~2_combout\);

-- Location: LCCOMB_X16_Y9_N6
\decode_block|reg_file|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux4~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux4~2_combout\ & ((\decode_block|reg_file|reg[3][11]~q\))) # (!\decode_block|reg_file|Mux4~2_combout\ & (\decode_block|reg_file|reg[2][11]~q\)))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][11]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|Mux4~2_combout\,
	datad => \decode_block|reg_file|reg[3][11]~q\,
	combout => \decode_block|reg_file|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y10_N16
\decode_block|reg_file|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux4~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux4~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux4~1_combout\,
	datad => \decode_block|reg_file|Mux4~3_combout\,
	combout => \decode_block|reg_file|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y10_N24
\execute_block|xreg|sig[11]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|xreg|sig[11]~_Duplicate_1feeder_combout\ = \decode_block|reg_file|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|Mux4~4_combout\,
	combout => \execute_block|xreg|sig[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y10_N25
\execute_block|xreg|sig[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|xreg|sig[11]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y10_N26
\execute_block|ALUblock|ShiftLeft0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~37_combout\ = (\execute_block|yreg|sig[0]~_Duplicate_1_q\ & ((\execute_block|xreg|sig[10]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[11]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|xreg|sig[11]~_Duplicate_1_q\,
	datac => \execute_block|xreg|sig[10]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X22_Y10_N4
\execute_block|zSelMUX|y[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~42_combout\ = (\execute_block|zSelMUX|y[13]~37_combout\ & (((!\execute_block|zSelMUX|y[13]~36_combout\)))) # (!\execute_block|zSelMUX|y[13]~37_combout\ & ((\execute_block|zSelMUX|y[13]~36_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~34_combout\))) # (!\execute_block|zSelMUX|y[13]~36_combout\ & (\execute_block|ALUblock|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~40_combout\,
	datab => \execute_block|zSelMUX|y[13]~37_combout\,
	datac => \execute_block|zSelMUX|y[13]~36_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~34_combout\,
	combout => \execute_block|zSelMUX|y[13]~42_combout\);

-- Location: LCCOMB_X22_Y10_N0
\execute_block|ALUblock|ShiftLeft0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~23_combout\ = (\execute_block|yreg|sig[2]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~9_combout\ & (!\execute_block|yreg|sig[1]~_Duplicate_1_q\))) # (!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & 
-- (((\execute_block|ALUblock|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~9_combout\,
	datab => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~22_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X22_Y10_N18
\execute_block|zSelMUX|y[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~43_combout\ = (\execute_block|zSelMUX|y[13]~37_combout\ & ((\execute_block|zSelMUX|y[13]~42_combout\ & (\execute_block|ALUblock|ShiftLeft0~37_combout\)) # (!\execute_block|zSelMUX|y[13]~42_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~23_combout\))))) # (!\execute_block|zSelMUX|y[13]~37_combout\ & (((\execute_block|zSelMUX|y[13]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~37_combout\,
	datab => \execute_block|zSelMUX|y[13]~37_combout\,
	datac => \execute_block|zSelMUX|y[13]~42_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~23_combout\,
	combout => \execute_block|zSelMUX|y[13]~43_combout\);

-- Location: LCCOMB_X23_Y10_N28
\execute_block|zSelMUX|y[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~41_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & ((\execute_block|ALUblock|Add0~42_combout\)))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \execute_block|ALUblock|Add0~42_combout\,
	combout => \execute_block|zSelMUX|y[13]~41_combout\);

-- Location: LCCOMB_X22_Y12_N26
\execute_block|zSelMUX|y[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[13]~44_combout\ = (\execute_block|zSelMUX|y[13]~63_combout\ & ((\execute_block|zSelMUX|y[13]~41_combout\ & ((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\execute_block|zSelMUX|y[13]~41_combout\ & 
-- (\execute_block|zSelMUX|y[13]~43_combout\)))) # (!\execute_block|zSelMUX|y[13]~63_combout\ & (((\execute_block|zSelMUX|y[13]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[13]~43_combout\,
	datab => \execute_block|zSelMUX|y[13]~63_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \execute_block|zSelMUX|y[13]~41_combout\,
	combout => \execute_block|zSelMUX|y[13]~44_combout\);

-- Location: FF_X22_Y12_N27
\writeback_block|zreg|sig[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[13]~44_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(13));

-- Location: LCCOMB_X19_Y9_N12
\decode_block|reg_file|reg~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~21_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(13),
	combout => \decode_block|reg_file|reg~21_combout\);

-- Location: LCCOMB_X17_Y9_N4
\decode_block|reg_file|reg[3][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][13]~feeder_combout\ = \decode_block|reg_file|reg~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~21_combout\,
	combout => \decode_block|reg_file|reg[3][13]~feeder_combout\);

-- Location: FF_X17_Y9_N5
\decode_block|reg_file|reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][13]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][13]~q\);

-- Location: LCCOMB_X18_Y9_N30
\decode_block|reg_file|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux2~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][13]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[0][13]~q\,
	datac => \decode_block|reg_file|reg[1][13]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y9_N16
\decode_block|reg_file|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux2~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux2~2_combout\ & (\decode_block|reg_file|reg[3][13]~q\)) # (!\decode_block|reg_file|Mux2~2_combout\ & ((\decode_block|reg_file|reg[2][13]~q\))))) 
-- # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[3][13]~q\,
	datac => \decode_block|reg_file|reg[2][13]~q\,
	datad => \decode_block|reg_file|Mux2~2_combout\,
	combout => \decode_block|reg_file|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y10_N24
\decode_block|reg_file|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux2~0_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|reg[6][13]~q\) # (\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][13]~q\ 
-- & ((!\decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][13]~q\,
	datab => \decode_block|reg_file|reg[6][13]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y10_N2
\decode_block|reg_file|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux2~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux2~0_combout\ & (\decode_block|reg_file|reg[7][13]~q\)) # (!\decode_block|reg_file|Mux2~0_combout\ & ((\decode_block|reg_file|reg[5][13]~q\))))) 
-- # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][13]~q\,
	datac => \decode_block|reg_file|reg[5][13]~q\,
	datad => \decode_block|reg_file|Mux2~0_combout\,
	combout => \decode_block|reg_file|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y10_N28
\decode_block|reg_file|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux2~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux2~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux2~3_combout\,
	datad => \decode_block|reg_file|Mux2~1_combout\,
	combout => \decode_block|reg_file|Mux2~4_combout\);

-- Location: FF_X20_Y10_N29
\execute_block|xreg|sig[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux2~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y10_N20
\execute_block|zSelMUX|y[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~48_combout\ = (\execute_block|ALUblock|ShiftLeft0~10_combout\ & (\execute_block|ALUblock|ShiftLeft0~39_combout\ & ((!\execute_block|zSelMUX|y[15]~47_combout\)))) # (!\execute_block|ALUblock|ShiftLeft0~10_combout\ & 
-- (((\execute_block|xreg|sig[14]~_Duplicate_1_q\) # (\execute_block|zSelMUX|y[15]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~39_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~10_combout\,
	datac => \execute_block|xreg|sig[14]~_Duplicate_1_q\,
	datad => \execute_block|zSelMUX|y[15]~47_combout\,
	combout => \execute_block|zSelMUX|y[14]~48_combout\);

-- Location: LCCOMB_X22_Y10_N22
\execute_block|zSelMUX|y[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~49_combout\ = (\execute_block|zSelMUX|y[14]~48_combout\ & ((\execute_block|xreg|sig[13]~_Duplicate_1_q\) # ((!\execute_block|zSelMUX|y[15]~47_combout\)))) # (!\execute_block|zSelMUX|y[14]~48_combout\ & 
-- (((\execute_block|ALUblock|ShiftLeft0~36_combout\ & \execute_block|zSelMUX|y[15]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[13]~_Duplicate_1_q\,
	datab => \execute_block|zSelMUX|y[14]~48_combout\,
	datac => \execute_block|ALUblock|ShiftLeft0~36_combout\,
	datad => \execute_block|zSelMUX|y[15]~47_combout\,
	combout => \execute_block|zSelMUX|y[14]~49_combout\);

-- Location: LCCOMB_X23_Y12_N2
\execute_block|ALUblock|ShiftLeft0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~26_combout\ = (\execute_block|yreg|sig[2]~_Duplicate_1_q\ & ((\execute_block|ALUblock|ShiftLeft0~12_combout\))) # (!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & (\execute_block|ALUblock|ShiftLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~25_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~12_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X22_Y8_N30
\execute_block|zSelMUX|y[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~50_combout\ = (\execute_block|zSelMUX|y[15]~45_combout\ & (\execute_block|zSelMUX|y[15]~46_combout\ & ((\execute_block|ALUblock|ShiftLeft0~26_combout\)))) # (!\execute_block|zSelMUX|y[15]~45_combout\ & 
-- (((\execute_block|zSelMUX|y[14]~49_combout\)) # (!\execute_block|zSelMUX|y[15]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[15]~45_combout\,
	datab => \execute_block|zSelMUX|y[15]~46_combout\,
	datac => \execute_block|zSelMUX|y[14]~49_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~26_combout\,
	combout => \execute_block|zSelMUX|y[14]~50_combout\);

-- Location: LCCOMB_X22_Y8_N4
\execute_block|zSelMUX|y[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~53_combout\ = (\execute_block|zSelMUX|y[14]~62_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|zSelMUX|y[14]~62_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \execute_block|zSelMUX|y[14]~53_combout\);

-- Location: LCCOMB_X22_Y8_N20
\execute_block|zSelMUX|y[14]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~51_combout\ = (\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \execute_block|zSelMUX|y[14]~51_combout\);

-- Location: LCCOMB_X22_Y8_N10
\execute_block|zSelMUX|y[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~52_combout\ = (\execute_block|zSelMUX|y[14]~51_combout\) # ((\execute_block|zSelMUX|y[15]~46_combout\ & ((\execute_block|zSelMUX|y[14]~50_combout\))) # (!\execute_block|zSelMUX|y[15]~46_combout\ & 
-- (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\execute_block|zSelMUX|y[14]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \execute_block|zSelMUX|y[15]~46_combout\,
	datac => \execute_block|zSelMUX|y[14]~50_combout\,
	datad => \execute_block|zSelMUX|y[14]~51_combout\,
	combout => \execute_block|zSelMUX|y[14]~52_combout\);

-- Location: LCCOMB_X22_Y8_N14
\execute_block|zSelMUX|y[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[14]~54_combout\ = (\execute_block|zSelMUX|y[14]~53_combout\ & ((\execute_block|zSelMUX|y[14]~52_combout\) # ((\execute_block|zSelMUX|y[14]~50_combout\ & \execute_block|ALUblock|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[14]~50_combout\,
	datab => \execute_block|ALUblock|Add0~45_combout\,
	datac => \execute_block|zSelMUX|y[14]~53_combout\,
	datad => \execute_block|zSelMUX|y[14]~52_combout\,
	combout => \execute_block|zSelMUX|y[14]~54_combout\);

-- Location: FF_X22_Y8_N15
\writeback_block|zreg|sig[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[14]~54_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(14));

-- Location: LCCOMB_X15_Y9_N16
\decode_block|reg_file|reg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~22_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(14),
	combout => \decode_block|reg_file|reg~22_combout\);

-- Location: FF_X18_Y10_N25
\decode_block|reg_file|reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~22_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[6][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[6][14]~q\);

-- Location: LCCOMB_X18_Y10_N22
\decode_block|dataSelMux|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~3_combout\ = (\decode_block|IR|sig\(3) & (((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & ((\decode_block|IR|sig\(4) & (\decode_block|reg_file|reg[6][14]~q\)) # (!\decode_block|IR|sig\(4) & 
-- ((\decode_block|reg_file|reg[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[6][14]~q\,
	datab => \decode_block|IR|sig\(3),
	datac => \decode_block|reg_file|reg[4][14]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y12_N26
\decode_block|dataSelMux|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~4_combout\ = (\decode_block|dataSelMux|Mux1~3_combout\ & (((\decode_block|reg_file|reg[7][14]~q\) # (!\decode_block|IR|sig\(3))))) # (!\decode_block|dataSelMux|Mux1~3_combout\ & (\decode_block|reg_file|reg[5][14]~q\ & 
-- ((\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux1~3_combout\,
	datab => \decode_block|reg_file|reg[5][14]~q\,
	datac => \decode_block|reg_file|reg[7][14]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux1~4_combout\);

-- Location: LCCOMB_X17_Y11_N4
\decode_block|dataSelMux|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~0_combout\ = (\decode_block|IR|sig\(4) & (((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & ((\decode_block|IR|sig\(3) & (\decode_block|reg_file|reg[1][14]~q\)) # (!\decode_block|IR|sig\(3) & 
-- ((\decode_block|reg_file|reg[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[1][14]~q\,
	datac => \decode_block|IR|sig\(3),
	datad => \decode_block|reg_file|reg[0][14]~q\,
	combout => \decode_block|dataSelMux|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y9_N22
\decode_block|dataSelMux|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~1_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux1~0_combout\ & (\decode_block|reg_file|reg[3][14]~q\)) # (!\decode_block|dataSelMux|Mux1~0_combout\ & ((\decode_block|reg_file|reg[2][14]~q\))))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[3][14]~q\,
	datac => \decode_block|reg_file|reg[2][14]~q\,
	datad => \decode_block|dataSelMux|Mux1~0_combout\,
	combout => \decode_block|dataSelMux|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y9_N14
\decode_block|dataSelMux|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~2_combout\ = (!\control_block|Mux1~0_combout\ & ((\decode_block|IR|sig\(5)) # ((\decode_block|dataSelMux|Mux1~1_combout\ & \control_block|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_block|Mux1~0_combout\,
	datab => \decode_block|IR|sig\(5),
	datac => \decode_block|dataSelMux|Mux1~1_combout\,
	datad => \control_block|Mux2~0_combout\,
	combout => \decode_block|dataSelMux|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y9_N24
\decode_block|dataSelMux|Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux1~5_combout\ = (\decode_block|dataSelMux|Mux9~0_combout\ & ((\decode_block|dataSelMux|Mux1~2_combout\ & ((\decode_block|dataSelMux|Mux1~4_combout\))) # (!\decode_block|dataSelMux|Mux1~2_combout\ & (\decode_block|IR|sig\(8))))) 
-- # (!\decode_block|dataSelMux|Mux9~0_combout\ & (((\decode_block|dataSelMux|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux9~0_combout\,
	datab => \decode_block|IR|sig\(8),
	datac => \decode_block|dataSelMux|Mux1~4_combout\,
	datad => \decode_block|dataSelMux|Mux1~2_combout\,
	combout => \decode_block|dataSelMux|Mux1~5_combout\);

-- Location: FF_X20_Y9_N25
\execute_block|yreg|sig[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|dataSelMux|Mux1~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y10_N26
\execute_block|ALUblock|ShiftLeft0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~5_combout\ = (\execute_block|yreg|sig[14]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[15]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[13]~_Duplicate_1_q\) # (\execute_block|yreg|sig[12]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[14]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[15]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[13]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[12]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X20_Y10_N30
\execute_block|ALUblock|ShiftLeft0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~6_combout\ = (\execute_block|yreg|sig[10]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[9]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[11]~_Duplicate_1_q\) # (\execute_block|yreg|sig[8]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[10]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[9]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[11]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[8]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X22_Y9_N30
\execute_block|ALUblock|ShiftLeft0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~7_combout\ = (\execute_block|yreg|sig[5]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[4]~_Duplicate_1_q\) # ((\execute_block|yreg|sig[6]~_Duplicate_1_q\) # (\execute_block|yreg|sig[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[5]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[4]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[6]~_Duplicate_1_q\,
	datad => \execute_block|yreg|sig[7]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X20_Y10_N24
\execute_block|ALUblock|ShiftLeft0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~8_combout\ = (\execute_block|ALUblock|ShiftLeft0~5_combout\) # ((\execute_block|ALUblock|ShiftLeft0~6_combout\) # (\execute_block|ALUblock|ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~5_combout\,
	datac => \execute_block|ALUblock|ShiftLeft0~6_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~7_combout\,
	combout => \execute_block|ALUblock|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X20_Y12_N18
\execute_block|zSelMUX|y[11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[11]~17_combout\ = ((\execute_block|yreg|sig[3]~_Duplicate_1_q\) # (\execute_block|ALUblock|ShiftLeft0~8_combout\)) # (!\execute_block|ALUFuncreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUFuncreg|sig\(0),
	datab => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	datad => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	combout => \execute_block|zSelMUX|y[11]~17_combout\);

-- Location: LCCOMB_X22_Y12_N8
\execute_block|ALUblock|ShiftLeft0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~41_combout\ = (!\execute_block|ALUblock|ShiftLeft0~10_combout\ & ((\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (\execute_block|xreg|sig[0]~_Duplicate_1_q\)) # (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & 
-- ((\execute_block|xreg|sig[1]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datac => \execute_block|ALUblock|ShiftLeft0~10_combout\,
	datad => \execute_block|xreg|sig[1]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X22_Y12_N2
\execute_block|zSelMUX|y[9]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[9]~24_combout\ = (\execute_block|zSelMUX|y[11]~18_combout\ & ((\execute_block|zSelMUX|y[11]~19_combout\ & (!\execute_block|ALUblock|ShiftLeft0~41_combout\)) # (!\execute_block|zSelMUX|y[11]~19_combout\ & 
-- ((!\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT9\))))) # (!\execute_block|zSelMUX|y[11]~18_combout\ & (((\execute_block|zSelMUX|y[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[11]~18_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~41_combout\,
	datac => \execute_block|zSelMUX|y[11]~19_combout\,
	datad => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \execute_block|zSelMUX|y[9]~24_combout\);

-- Location: LCCOMB_X22_Y12_N16
\execute_block|zSelMUX|y[9]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[9]~25_combout\ = (\execute_block|zSelMUX|y[11]~17_combout\ & (((!\execute_block|zSelMUX|y[9]~24_combout\)))) # (!\execute_block|zSelMUX|y[11]~17_combout\ & ((\execute_block|zSelMUX|y[9]~24_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~22_combout\)) # (!\execute_block|zSelMUX|y[9]~24_combout\ & ((\execute_block|ALUblock|ShiftLeft0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|ShiftLeft0~22_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~34_combout\,
	datac => \execute_block|zSelMUX|y[11]~17_combout\,
	datad => \execute_block|zSelMUX|y[9]~24_combout\,
	combout => \execute_block|zSelMUX|y[9]~25_combout\);

-- Location: LCCOMB_X22_Y12_N30
\execute_block|zSelMUX|y[9]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[9]~26_combout\ = (!\execute_block|zSeldff|d_out~q\ & ((\execute_block|ALUFuncreg|sig\(1) & ((\execute_block|zSelMUX|y[9]~25_combout\))) # (!\execute_block|ALUFuncreg|sig\(1) & (\execute_block|ALUblock|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|ALUFuncreg|sig\(1),
	datac => \execute_block|ALUblock|Add0~30_combout\,
	datad => \execute_block|zSelMUX|y[9]~25_combout\,
	combout => \execute_block|zSelMUX|y[9]~26_combout\);

-- Location: LCCOMB_X22_Y12_N20
\execute_block|zSelMUX|y[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[9]~27_combout\ = (\execute_block|zSelMUX|y[9]~26_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|zSelMUX|y[9]~26_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \execute_block|zSelMUX|y[9]~27_combout\);

-- Location: FF_X22_Y12_N21
\writeback_block|zreg|sig[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[9]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(9));

-- Location: LCCOMB_X17_Y9_N28
\decode_block|reg_file|reg~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~17_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(9),
	combout => \decode_block|reg_file|reg~17_combout\);

-- Location: FF_X19_Y12_N23
\decode_block|reg_file|reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~17_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][9]~q\);

-- Location: LCCOMB_X18_Y12_N8
\decode_block|reg_file|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux6~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][9]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][9]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][9]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\decode_block|reg_file|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux6~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux6~0_combout\ & (\decode_block|reg_file|reg[7][9]~q\)) # (!\decode_block|reg_file|Mux6~0_combout\ & ((\decode_block|reg_file|reg[5][9]~q\))))) # 
-- (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][9]~q\,
	datac => \decode_block|reg_file|reg[5][9]~q\,
	datad => \decode_block|reg_file|Mux6~0_combout\,
	combout => \decode_block|reg_file|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y9_N18
\decode_block|reg_file|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux6~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][9]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][9]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[1][9]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y9_N2
\decode_block|reg_file|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux6~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux6~2_combout\ & (\decode_block|reg_file|reg[3][9]~q\)) # (!\decode_block|reg_file|Mux6~2_combout\ & ((\decode_block|reg_file|reg[2][9]~q\))))) # 
-- (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][9]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[2][9]~q\,
	datad => \decode_block|reg_file|Mux6~2_combout\,
	combout => \decode_block|reg_file|Mux6~3_combout\);

-- Location: LCCOMB_X20_Y11_N24
\decode_block|reg_file|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux6~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux6~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datab => \decode_block|reg_file|Mux6~1_combout\,
	datad => \decode_block|reg_file|Mux6~3_combout\,
	combout => \decode_block|reg_file|Mux6~4_combout\);

-- Location: FF_X20_Y11_N25
\execute_block|xreg|sig[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux6~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y12_N28
\execute_block|ALUblock|ShiftLeft0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|ALUblock|ShiftLeft0~4_combout\ = (!\execute_block|yreg|sig[0]~_Duplicate_1_q\ & (!\execute_block|yreg|sig[2]~_Duplicate_1_q\ & (!\execute_block|yreg|sig[1]~_Duplicate_1_q\ & \execute_block|xreg|sig[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[0]~_Duplicate_1_q\,
	datab => \execute_block|yreg|sig[2]~_Duplicate_1_q\,
	datac => \execute_block|yreg|sig[1]~_Duplicate_1_q\,
	datad => \execute_block|xreg|sig[0]~_Duplicate_1_q\,
	combout => \execute_block|ALUblock|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X22_Y12_N22
\execute_block|zSelMUX|y[8]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[8]~20_combout\ = (\execute_block|zSelMUX|y[11]~18_combout\ & ((\execute_block|zSelMUX|y[11]~19_combout\ & (!\execute_block|ALUblock|ShiftLeft0~4_combout\)) # (!\execute_block|zSelMUX|y[11]~19_combout\ & 
-- ((!\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT8\))))) # (!\execute_block|zSelMUX|y[11]~18_combout\ & (((\execute_block|zSelMUX|y[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[11]~18_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~4_combout\,
	datac => \execute_block|zSelMUX|y[11]~19_combout\,
	datad => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \execute_block|zSelMUX|y[8]~20_combout\);

-- Location: LCCOMB_X22_Y12_N24
\execute_block|zSelMUX|y[8]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[8]~21_combout\ = (\execute_block|zSelMUX|y[11]~17_combout\ & (((!\execute_block|zSelMUX|y[8]~20_combout\)))) # (!\execute_block|zSelMUX|y[11]~17_combout\ & ((\execute_block|zSelMUX|y[8]~20_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~19_combout\)) # (!\execute_block|zSelMUX|y[8]~20_combout\ & ((\execute_block|ALUblock|ShiftLeft0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[11]~17_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~19_combout\,
	datac => \execute_block|zSelMUX|y[8]~20_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~32_combout\,
	combout => \execute_block|zSelMUX|y[8]~21_combout\);

-- Location: LCCOMB_X22_Y12_N10
\execute_block|zSelMUX|y[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[8]~22_combout\ = (!\execute_block|zSeldff|d_out~q\ & ((\execute_block|ALUFuncreg|sig\(1) & ((\execute_block|zSelMUX|y[8]~21_combout\))) # (!\execute_block|ALUFuncreg|sig\(1) & (\execute_block|ALUblock|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datab => \execute_block|ALUFuncreg|sig\(1),
	datac => \execute_block|ALUblock|Add0~27_combout\,
	datad => \execute_block|zSelMUX|y[8]~21_combout\,
	combout => \execute_block|zSelMUX|y[8]~22_combout\);

-- Location: LCCOMB_X22_Y12_N4
\execute_block|zSelMUX|y[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[8]~23_combout\ = (\execute_block|zSelMUX|y[8]~22_combout\) # ((\execute_block|zSeldff|d_out~q\ & \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSeldff|d_out~q\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \execute_block|zSelMUX|y[8]~22_combout\,
	combout => \execute_block|zSelMUX|y[8]~23_combout\);

-- Location: FF_X22_Y12_N5
\writeback_block|zreg|sig[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y[8]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(8));

-- Location: LCCOMB_X17_Y11_N22
\decode_block|reg_file|reg~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~16_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(8),
	combout => \decode_block|reg_file|reg~16_combout\);

-- Location: FF_X15_Y9_N17
\decode_block|reg_file|reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~16_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][8]~q\);

-- Location: LCCOMB_X18_Y11_N10
\decode_block|reg_file|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux7~2_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|reg[1][8]~q\) # (\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][8]~q\ & 
-- ((!\decode_block|regSelMux|y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][8]~q\,
	datab => \decode_block|reg_file|reg[1][8]~q\,
	datac => \decode_block|regSelMux|y[0]~0_combout\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y11_N8
\decode_block|reg_file|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux7~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux7~2_combout\ & ((\decode_block|reg_file|reg[3][8]~q\))) # (!\decode_block|reg_file|Mux7~2_combout\ & (\decode_block|reg_file|reg[2][8]~q\)))) # 
-- (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][8]~q\,
	datab => \decode_block|reg_file|reg[3][8]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux7~2_combout\,
	combout => \decode_block|reg_file|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y10_N6
\decode_block|reg_file|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux7~0_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|reg[6][8]~q\) # (\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][8]~q\ & 
-- ((!\decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][8]~q\,
	datab => \decode_block|reg_file|reg[6][8]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\decode_block|reg_file|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux7~1_combout\ = (\decode_block|reg_file|Mux7~0_combout\ & ((\decode_block|reg_file|reg[7][8]~q\) # ((!\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|reg_file|Mux7~0_combout\ & (((\decode_block|reg_file|reg[5][8]~q\ 
-- & \decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|Mux7~0_combout\,
	datab => \decode_block|reg_file|reg[7][8]~q\,
	datac => \decode_block|reg_file|reg[5][8]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux7~1_combout\);

-- Location: LCCOMB_X20_Y11_N14
\decode_block|reg_file|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux7~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux7~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux7~3_combout\,
	datad => \decode_block|reg_file|Mux7~1_combout\,
	combout => \decode_block|reg_file|Mux7~4_combout\);

-- Location: LCCOMB_X22_Y11_N26
\execute_block|zSelMUX|y[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[7]~16_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & (\execute_block|ALUblock|Add0~24_combout\))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|ALUblock|Add0~24_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \execute_block|zSelMUX|y[7]~16_combout\);

-- Location: LCCOMB_X22_Y11_N20
\execute_block|zSelMUX|y[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(7) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[7]~16_combout\ & (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\execute_block|zSelMUX|y[7]~16_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~30_combout\))))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (((\execute_block|zSelMUX|y[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~8_combout\,
	datab => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \execute_block|zSelMUX|y[7]~16_combout\,
	datad => \execute_block|ALUblock|ShiftLeft0~30_combout\,
	combout => \execute_block|zSelMUX|y\(7));

-- Location: FF_X22_Y11_N21
\writeback_block|zreg|sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(7));

-- Location: LCCOMB_X19_Y11_N14
\decode_block|reg_file|reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~15_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(7),
	combout => \decode_block|reg_file|reg~15_combout\);

-- Location: FF_X19_Y12_N25
\decode_block|reg_file|reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~15_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][7]~q\);

-- Location: LCCOMB_X18_Y10_N0
\decode_block|reg_file|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux8~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][7]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][7]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][7]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\decode_block|reg_file|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux8~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux8~0_combout\ & ((\decode_block|reg_file|reg[7][7]~q\))) # (!\decode_block|reg_file|Mux8~0_combout\ & (\decode_block|reg_file|reg[5][7]~q\)))) # 
-- (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[5][7]~q\,
	datac => \decode_block|reg_file|reg[7][7]~q\,
	datad => \decode_block|reg_file|Mux8~0_combout\,
	combout => \decode_block|reg_file|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y9_N12
\decode_block|reg_file|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux8~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][7]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[0][7]~q\,
	datac => \decode_block|reg_file|reg[1][7]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux8~2_combout\);

-- Location: LCCOMB_X18_Y9_N0
\decode_block|reg_file|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux8~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux8~2_combout\ & (\decode_block|reg_file|reg[3][7]~q\)) # (!\decode_block|reg_file|Mux8~2_combout\ & ((\decode_block|reg_file|reg[2][7]~q\))))) # 
-- (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][7]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[2][7]~q\,
	datad => \decode_block|reg_file|Mux8~2_combout\,
	combout => \decode_block|reg_file|Mux8~3_combout\);

-- Location: LCCOMB_X20_Y11_N8
\decode_block|reg_file|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux8~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux8~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux8~1_combout\,
	datad => \decode_block|reg_file|Mux8~3_combout\,
	combout => \decode_block|reg_file|Mux8~4_combout\);

-- Location: FF_X20_Y11_N11
\execute_block|xreg|sig[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|Mux8~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y11_N18
\execute_block|zSelMUX|y[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[6]~15_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & (\execute_block|ALUblock|Add0~21_combout\))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|ALUblock|Add0~21_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \execute_block|zSelMUX|y[6]~15_combout\);

-- Location: LCCOMB_X22_Y11_N28
\execute_block|zSelMUX|y[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(6) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[6]~15_combout\ & (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\execute_block|zSelMUX|y[6]~15_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~26_combout\))))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (\execute_block|zSelMUX|y[6]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~8_combout\,
	datab => \execute_block|zSelMUX|y[6]~15_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \execute_block|ALUblock|ShiftLeft0~26_combout\,
	combout => \execute_block|zSelMUX|y\(6));

-- Location: FF_X22_Y11_N29
\writeback_block|zreg|sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(6),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(6));

-- Location: LCCOMB_X15_Y9_N0
\decode_block|reg_file|reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~14_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(6),
	combout => \decode_block|reg_file|reg~14_combout\);

-- Location: FF_X19_Y12_N19
\decode_block|reg_file|reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~14_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[7][15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[7][6]~q\);

-- Location: LCCOMB_X18_Y12_N12
\decode_block|reg_file|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux9~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][6]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][6]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][6]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\decode_block|reg_file|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux9~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux9~0_combout\ & (\decode_block|reg_file|reg[7][6]~q\)) # (!\decode_block|reg_file|Mux9~0_combout\ & ((\decode_block|reg_file|reg[5][6]~q\))))) # 
-- (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][6]~q\,
	datac => \decode_block|reg_file|reg[5][6]~q\,
	datad => \decode_block|reg_file|Mux9~0_combout\,
	combout => \decode_block|reg_file|Mux9~1_combout\);

-- Location: LCCOMB_X16_Y9_N12
\decode_block|reg_file|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux9~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][6]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][6]~q\,
	datab => \decode_block|regSelMux|y[1]~1_combout\,
	datac => \decode_block|reg_file|reg[1][6]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux9~2_combout\);

-- Location: LCCOMB_X16_Y9_N20
\decode_block|reg_file|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux9~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux9~2_combout\ & (\decode_block|reg_file|reg[3][6]~q\)) # (!\decode_block|reg_file|Mux9~2_combout\ & ((\decode_block|reg_file|reg[2][6]~q\))))) # 
-- (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][6]~q\,
	datab => \decode_block|reg_file|reg[2][6]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux9~2_combout\,
	combout => \decode_block|reg_file|Mux9~3_combout\);

-- Location: LCCOMB_X20_Y11_N6
\decode_block|reg_file|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux9~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux9~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux9~1_combout\,
	datad => \decode_block|reg_file|Mux9~3_combout\,
	combout => \decode_block|reg_file|Mux9~4_combout\);

-- Location: LCCOMB_X22_Y11_N6
\execute_block|zSelMUX|y[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[5]~14_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & ((\execute_block|ALUblock|Add0~18_combout\)))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \execute_block|ALUblock|Add0~18_combout\,
	combout => \execute_block|zSelMUX|y[5]~14_combout\);

-- Location: LCCOMB_X22_Y11_N16
\execute_block|zSelMUX|y[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(5) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[5]~14_combout\ & (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\execute_block|zSelMUX|y[5]~14_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~23_combout\))))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (((\execute_block|zSelMUX|y[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~8_combout\,
	datab => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \execute_block|ALUblock|ShiftLeft0~23_combout\,
	datad => \execute_block|zSelMUX|y[5]~14_combout\,
	combout => \execute_block|zSelMUX|y\(5));

-- Location: FF_X22_Y11_N17
\writeback_block|zreg|sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(5));

-- Location: LCCOMB_X18_Y11_N2
\decode_block|reg_file|reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~13_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(5),
	combout => \decode_block|reg_file|reg~13_combout\);

-- Location: FF_X18_Y9_N7
\decode_block|reg_file|reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~13_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[0][12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[0][5]~q\);

-- Location: LCCOMB_X19_Y9_N18
\decode_block|reg_file|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux10~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][5]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][5]~q\,
	datab => \decode_block|reg_file|reg[1][5]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux10~2_combout\);

-- Location: LCCOMB_X19_Y11_N0
\decode_block|reg_file|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux10~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux10~2_combout\ & (\decode_block|reg_file|reg[3][5]~q\)) # (!\decode_block|reg_file|Mux10~2_combout\ & 
-- ((\decode_block|reg_file|reg[2][5]~q\))))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|Mux10~2_combout\,
	datac => \decode_block|reg_file|reg[3][5]~q\,
	datad => \decode_block|reg_file|reg[2][5]~q\,
	combout => \decode_block|reg_file|Mux10~3_combout\);

-- Location: LCCOMB_X18_Y12_N24
\decode_block|reg_file|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux10~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][5]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][5]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][5]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\decode_block|reg_file|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux10~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux10~0_combout\ & ((\decode_block|reg_file|reg[7][5]~q\))) # (!\decode_block|reg_file|Mux10~0_combout\ & 
-- (\decode_block|reg_file|reg[5][5]~q\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[5][5]~q\,
	datac => \decode_block|reg_file|reg[7][5]~q\,
	datad => \decode_block|reg_file|Mux10~0_combout\,
	combout => \decode_block|reg_file|Mux10~1_combout\);

-- Location: LCCOMB_X20_Y11_N12
\decode_block|reg_file|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux10~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux10~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux10~3_combout\,
	datad => \decode_block|reg_file|Mux10~1_combout\,
	combout => \decode_block|reg_file|Mux10~4_combout\);

-- Location: LCCOMB_X23_Y11_N10
\execute_block|zSelMUX|y[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[4]~13_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & (\execute_block|ALUblock|Add0~15_combout\))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|ALUblock|Add0~15_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \execute_block|zSelMUX|y[4]~13_combout\);

-- Location: LCCOMB_X22_Y11_N0
\execute_block|zSelMUX|y[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(4) = (\execute_block|zSelMUX|y[4]~13_combout\ & ((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT4\) # ((!\execute_block|zSelMUX|y[0]~8_combout\)))) # (!\execute_block|zSelMUX|y[4]~13_combout\ & 
-- (((\execute_block|ALUblock|ShiftLeft0~20_combout\ & \execute_block|zSelMUX|y[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \execute_block|ALUblock|ShiftLeft0~20_combout\,
	datac => \execute_block|zSelMUX|y[4]~13_combout\,
	datad => \execute_block|zSelMUX|y[0]~8_combout\,
	combout => \execute_block|zSelMUX|y\(4));

-- Location: FF_X22_Y11_N1
\writeback_block|zreg|sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(4),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(4));

-- Location: LCCOMB_X22_Y11_N24
\decode_block|reg_file|reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~12_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(4),
	combout => \decode_block|reg_file|reg~12_combout\);

-- Location: FF_X19_Y11_N11
\decode_block|reg_file|reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~12_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][4]~q\);

-- Location: LCCOMB_X19_Y11_N16
\decode_block|reg_file|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux11~2_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\) # (\decode_block|reg_file|reg[1][4]~q\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][4]~q\ 
-- & (!\decode_block|regSelMux|y[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[0][4]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|reg[1][4]~q\,
	combout => \decode_block|reg_file|Mux11~2_combout\);

-- Location: LCCOMB_X19_Y11_N6
\decode_block|reg_file|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux11~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux11~2_combout\ & ((\decode_block|reg_file|reg[3][4]~q\))) # (!\decode_block|reg_file|Mux11~2_combout\ & 
-- (\decode_block|reg_file|reg[2][4]~q\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][4]~q\,
	datab => \decode_block|reg_file|reg[3][4]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux11~2_combout\,
	combout => \decode_block|reg_file|Mux11~3_combout\);

-- Location: LCCOMB_X18_Y12_N22
\decode_block|reg_file|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux11~0_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|reg[6][4]~q\) # ((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & 
-- (((\decode_block|reg_file|reg[4][4]~q\ & !\decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[6][4]~q\,
	datac => \decode_block|reg_file|reg[4][4]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y10_N0
\decode_block|reg_file|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux11~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux11~0_combout\ & (\decode_block|reg_file|reg[7][4]~q\)) # (!\decode_block|reg_file|Mux11~0_combout\ & 
-- ((\decode_block|reg_file|reg[5][4]~q\))))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[7][4]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[5][4]~q\,
	datad => \decode_block|reg_file|Mux11~0_combout\,
	combout => \decode_block|reg_file|Mux11~1_combout\);

-- Location: LCCOMB_X20_Y11_N22
\decode_block|reg_file|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux11~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux11~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux11~3_combout\,
	datad => \decode_block|reg_file|Mux11~1_combout\,
	combout => \decode_block|reg_file|Mux11~4_combout\);

-- Location: FF_X20_Y11_N23
\execute_block|xreg|sig[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux11~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y11_N4
\execute_block|zSelMUX|y[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[2]~11_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & ((\execute_block|ALUblock|Add0~9_combout\)))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \execute_block|ALUblock|Add0~9_combout\,
	combout => \execute_block|zSelMUX|y[2]~11_combout\);

-- Location: LCCOMB_X22_Y11_N2
\execute_block|zSelMUX|y[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(2) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[2]~11_combout\ & ((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\execute_block|zSelMUX|y[2]~11_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~13_combout\)))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (((\execute_block|zSelMUX|y[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~8_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~13_combout\,
	datac => \execute_block|zSelMUX|y[2]~11_combout\,
	datad => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \execute_block|zSelMUX|y\(2));

-- Location: FF_X22_Y11_N3
\writeback_block|zreg|sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(2));

-- Location: LCCOMB_X22_Y11_N30
\decode_block|reg_file|reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~10_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(2),
	combout => \decode_block|reg_file|reg~10_combout\);

-- Location: FF_X17_Y10_N5
\decode_block|reg_file|reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~10_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[2][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[2][2]~q\);

-- Location: LCCOMB_X18_Y11_N30
\decode_block|reg_file|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux13~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|regSelMux|y[0]~0_combout\)) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- (\decode_block|reg_file|reg[1][2]~q\)) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|reg[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[1][2]~q\,
	datad => \decode_block|reg_file|reg[0][2]~q\,
	combout => \decode_block|reg_file|Mux13~2_combout\);

-- Location: LCCOMB_X19_Y11_N30
\decode_block|reg_file|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux13~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux13~2_combout\ & ((\decode_block|reg_file|reg[3][2]~q\))) # (!\decode_block|reg_file|Mux13~2_combout\ & 
-- (\decode_block|reg_file|reg[2][2]~q\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[2][2]~q\,
	datab => \decode_block|reg_file|reg[3][2]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux13~2_combout\,
	combout => \decode_block|reg_file|Mux13~3_combout\);

-- Location: LCCOMB_X18_Y12_N20
\decode_block|reg_file|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux13~0_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|reg[6][2]~q\) # (\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][2]~q\ 
-- & ((!\decode_block|regSelMux|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[4][2]~q\,
	datac => \decode_block|reg_file|reg[6][2]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\decode_block|reg_file|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux13~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux13~0_combout\ & (\decode_block|reg_file|reg[7][2]~q\)) # (!\decode_block|reg_file|Mux13~0_combout\ & 
-- ((\decode_block|reg_file|reg[5][2]~q\))))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|reg[7][2]~q\,
	datac => \decode_block|reg_file|reg[5][2]~q\,
	datad => \decode_block|reg_file|Mux13~0_combout\,
	combout => \decode_block|reg_file|Mux13~1_combout\);

-- Location: LCCOMB_X20_Y11_N4
\decode_block|reg_file|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux13~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux13~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[2]~2_combout\,
	datab => \decode_block|reg_file|Mux13~3_combout\,
	datad => \decode_block|reg_file|Mux13~1_combout\,
	combout => \decode_block|reg_file|Mux13~4_combout\);

-- Location: LCCOMB_X20_Y12_N6
\execute_block|zSelMUX|y[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[3]~12_combout\ = (\execute_block|zSelMUX|y[0]~6_combout\ & (!\execute_block|zSelMUX|y[0]~7_combout\)) # (!\execute_block|zSelMUX|y[0]~6_combout\ & ((\execute_block|zSelMUX|y[0]~7_combout\ & 
-- (\execute_block|ALUblock|Add0~12_combout\)) # (!\execute_block|zSelMUX|y[0]~7_combout\ & ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~6_combout\,
	datab => \execute_block|zSelMUX|y[0]~7_combout\,
	datac => \execute_block|ALUblock|Add0~12_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \execute_block|zSelMUX|y[3]~12_combout\);

-- Location: LCCOMB_X20_Y12_N8
\execute_block|zSelMUX|y[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(3) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[3]~12_combout\ & (\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\execute_block|zSelMUX|y[3]~12_combout\ & 
-- ((\execute_block|ALUblock|ShiftLeft0~15_combout\))))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (((\execute_block|zSelMUX|y[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \execute_block|ALUblock|ShiftLeft0~15_combout\,
	datac => \execute_block|zSelMUX|y[0]~8_combout\,
	datad => \execute_block|zSelMUX|y[3]~12_combout\,
	combout => \execute_block|zSelMUX|y\(3));

-- Location: FF_X20_Y12_N9
\writeback_block|zreg|sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(3));

-- Location: LCCOMB_X18_Y11_N26
\decode_block|reg_file|reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~11_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(3),
	combout => \decode_block|reg_file|reg~11_combout\);

-- Location: FF_X20_Y11_N19
\decode_block|reg_file|reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~11_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[5][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[5][3]~q\);

-- Location: LCCOMB_X18_Y12_N10
\decode_block|dataSelMux|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~0_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|reg_file|reg[6][3]~q\) # ((\decode_block|IR|sig\(3))))) # (!\decode_block|IR|sig\(4) & (((\decode_block|reg_file|reg[4][3]~q\ & !\decode_block|IR|sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[6][3]~q\,
	datac => \decode_block|reg_file|reg[4][3]~q\,
	datad => \decode_block|IR|sig\(3),
	combout => \decode_block|dataSelMux|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\decode_block|dataSelMux|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~1_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|dataSelMux|Mux12~0_combout\ & ((\decode_block|reg_file|reg[7][3]~q\))) # (!\decode_block|dataSelMux|Mux12~0_combout\ & (\decode_block|reg_file|reg[5][3]~q\)))) # 
-- (!\decode_block|IR|sig\(3) & (((\decode_block|dataSelMux|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[5][3]~q\,
	datac => \decode_block|reg_file|reg[7][3]~q\,
	datad => \decode_block|dataSelMux|Mux12~0_combout\,
	combout => \decode_block|dataSelMux|Mux12~1_combout\);

-- Location: LCCOMB_X18_Y11_N12
\decode_block|dataSelMux|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~2_combout\ = (\decode_block|IR|sig\(3) & ((\decode_block|reg_file|reg[1][3]~q\) # ((\decode_block|IR|sig\(4))))) # (!\decode_block|IR|sig\(3) & (((\decode_block|reg_file|reg[0][3]~q\ & !\decode_block|IR|sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(3),
	datab => \decode_block|reg_file|reg[1][3]~q\,
	datac => \decode_block|reg_file|reg[0][3]~q\,
	datad => \decode_block|IR|sig\(4),
	combout => \decode_block|dataSelMux|Mux12~2_combout\);

-- Location: LCCOMB_X19_Y11_N22
\decode_block|dataSelMux|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~3_combout\ = (\decode_block|IR|sig\(4) & ((\decode_block|dataSelMux|Mux12~2_combout\ & (\decode_block|reg_file|reg[3][3]~q\)) # (!\decode_block|dataSelMux|Mux12~2_combout\ & ((\decode_block|reg_file|reg[2][3]~q\))))) # 
-- (!\decode_block|IR|sig\(4) & (((\decode_block|dataSelMux|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|IR|sig\(4),
	datab => \decode_block|reg_file|reg[3][3]~q\,
	datac => \decode_block|reg_file|reg[2][3]~q\,
	datad => \decode_block|dataSelMux|Mux12~2_combout\,
	combout => \decode_block|dataSelMux|Mux12~3_combout\);

-- Location: LCCOMB_X19_Y8_N28
\decode_block|dataSelMux|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~4_combout\ = (!\decode_block|dataSelMux|Mux15~4_combout\ & ((\decode_block|IR|sig\(5) & (\decode_block|dataSelMux|Mux12~1_combout\)) # (!\decode_block|IR|sig\(5) & ((\decode_block|dataSelMux|Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|dataSelMux|Mux15~4_combout\,
	datab => \decode_block|dataSelMux|Mux12~1_combout\,
	datac => \decode_block|IR|sig\(5),
	datad => \decode_block|dataSelMux|Mux12~3_combout\,
	combout => \decode_block|dataSelMux|Mux12~4_combout\);

-- Location: LCCOMB_X20_Y8_N24
\decode_block|dataSelMux|Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|dataSelMux|Mux12~5_combout\ = (\decode_block|dataSelMux|Mux12~4_combout\) # ((\decode_block|dataSelMux|Mux15~4_combout\ & \decode_block|IR|sig\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|dataSelMux|Mux15~4_combout\,
	datac => \decode_block|IR|sig\(3),
	datad => \decode_block|dataSelMux|Mux12~4_combout\,
	combout => \decode_block|dataSelMux|Mux12~5_combout\);

-- Location: LCCOMB_X20_Y8_N14
\execute_block|yreg|sig[3]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|yreg|sig[3]~_Duplicate_1feeder_combout\ = \decode_block|dataSelMux|Mux12~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|dataSelMux|Mux12~5_combout\,
	combout => \execute_block|yreg|sig[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y8_N15
\execute_block|yreg|sig[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|yreg|sig[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|yreg|sig[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y12_N30
\execute_block|zSelMUX|y[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[0]~8_combout\ = (\execute_block|zSelMUX|y[0]~6_combout\ & (((!\execute_block|yreg|sig[3]~_Duplicate_1_q\ & !\execute_block|ALUblock|ShiftLeft0~8_combout\)) # (!\execute_block|zSelMUX|y[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|yreg|sig[3]~_Duplicate_1_q\,
	datab => \execute_block|ALUblock|ShiftLeft0~8_combout\,
	datac => \execute_block|zSelMUX|y[0]~6_combout\,
	datad => \execute_block|zSelMUX|y[0]~7_combout\,
	combout => \execute_block|zSelMUX|y[0]~8_combout\);

-- Location: LCCOMB_X22_Y11_N8
\execute_block|zSelMUX|y[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[1]~10_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (!\execute_block|zSelMUX|y[0]~6_combout\ & (\execute_block|ALUblock|Add0~6_combout\))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- ((\execute_block|zSelMUX|y[0]~6_combout\) # ((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|zSelMUX|y[0]~6_combout\,
	datac => \execute_block|ALUblock|Add0~6_combout\,
	datad => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \execute_block|zSelMUX|y[1]~10_combout\);

-- Location: LCCOMB_X22_Y11_N22
\execute_block|zSelMUX|y[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(1) = (\execute_block|zSelMUX|y[0]~8_combout\ & ((\execute_block|zSelMUX|y[1]~10_combout\ & ((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\execute_block|zSelMUX|y[1]~10_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~41_combout\)))) # (!\execute_block|zSelMUX|y[0]~8_combout\ & (((\execute_block|zSelMUX|y[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~8_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~41_combout\,
	datac => \execute_block|zSelMUX|y[1]~10_combout\,
	datad => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \execute_block|zSelMUX|y\(1));

-- Location: FF_X22_Y11_N23
\writeback_block|zreg|sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(1));

-- Location: LCCOMB_X19_Y11_N10
\decode_block|reg_file|reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~9_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(1),
	combout => \decode_block|reg_file|reg~9_combout\);

-- Location: LCCOMB_X16_Y11_N28
\decode_block|reg_file|reg[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg[3][1]~feeder_combout\ = \decode_block|reg_file|reg~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decode_block|reg_file|reg~9_combout\,
	combout => \decode_block|reg_file|reg[3][1]~feeder_combout\);

-- Location: FF_X16_Y11_N29
\decode_block|reg_file|reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|reg[3][1]~feeder_combout\,
	ena => \decode_block|reg_file|reg[3][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[3][1]~q\);

-- Location: LCCOMB_X19_Y11_N2
\decode_block|reg_file|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux14~2_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|regSelMux|y[0]~0_combout\)))) # (!\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|regSelMux|y[0]~0_combout\ & 
-- ((\decode_block|reg_file|reg[1][1]~q\))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[0][1]~q\,
	datac => \decode_block|reg_file|reg[1][1]~q\,
	datad => \decode_block|regSelMux|y[0]~0_combout\,
	combout => \decode_block|reg_file|Mux14~2_combout\);

-- Location: LCCOMB_X19_Y11_N24
\decode_block|reg_file|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux14~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux14~2_combout\ & (\decode_block|reg_file|reg[3][1]~q\)) # (!\decode_block|reg_file|Mux14~2_combout\ & 
-- ((\decode_block|reg_file|reg[2][1]~q\))))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[1]~1_combout\,
	datab => \decode_block|reg_file|reg[3][1]~q\,
	datac => \decode_block|reg_file|reg[2][1]~q\,
	datad => \decode_block|reg_file|Mux14~2_combout\,
	combout => \decode_block|reg_file|Mux14~3_combout\);

-- Location: LCCOMB_X18_Y12_N4
\decode_block|reg_file|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux14~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][1]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][1]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][1]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y12_N28
\decode_block|reg_file|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux14~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux14~0_combout\ & ((\decode_block|reg_file|reg[7][1]~q\))) # (!\decode_block|reg_file|Mux14~0_combout\ & 
-- (\decode_block|reg_file|reg[5][1]~q\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|Mux14~0_combout\,
	datac => \decode_block|reg_file|reg[5][1]~q\,
	datad => \decode_block|reg_file|reg[7][1]~q\,
	combout => \decode_block|reg_file|Mux14~1_combout\);

-- Location: LCCOMB_X20_Y12_N22
\decode_block|reg_file|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux14~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux14~1_combout\))) # (!\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datac => \decode_block|reg_file|Mux14~3_combout\,
	datad => \decode_block|reg_file|Mux14~1_combout\,
	combout => \decode_block|reg_file|Mux14~4_combout\);

-- Location: FF_X20_Y12_N23
\execute_block|xreg|sig[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decode_block|reg_file|Mux14~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \execute_block|xreg|sig[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y11_N12
\execute_block|zSelMUX|y[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y[0]~9_combout\ = (\execute_block|zSelMUX|y[0]~7_combout\ & (\execute_block|ALUblock|Add0~3_combout\ & ((!\execute_block|zSelMUX|y[0]~6_combout\)))) # (!\execute_block|zSelMUX|y[0]~7_combout\ & 
-- (((\execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\) # (\execute_block|zSelMUX|y[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~7_combout\,
	datab => \execute_block|ALUblock|Add0~3_combout\,
	datac => \execute_block|DMEM|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \execute_block|zSelMUX|y[0]~6_combout\,
	combout => \execute_block|zSelMUX|y[0]~9_combout\);

-- Location: LCCOMB_X22_Y11_N10
\execute_block|zSelMUX|y[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \execute_block|zSelMUX|y\(0) = (\execute_block|zSelMUX|y[0]~9_combout\ & (((\execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~dataout\) # (!\execute_block|zSelMUX|y[0]~8_combout\)))) # (!\execute_block|zSelMUX|y[0]~9_combout\ & 
-- (\execute_block|ALUblock|ShiftLeft0~4_combout\ & ((\execute_block|zSelMUX|y[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \execute_block|zSelMUX|y[0]~9_combout\,
	datab => \execute_block|ALUblock|ShiftLeft0~4_combout\,
	datac => \execute_block|ALUblock|inst|Mult0|auto_generated|mac_out2~dataout\,
	datad => \execute_block|zSelMUX|y[0]~8_combout\,
	combout => \execute_block|zSelMUX|y\(0));

-- Location: FF_X22_Y11_N11
\writeback_block|zreg|sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \execute_block|zSelMUX|y\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeback_block|zreg|sig\(0));

-- Location: LCCOMB_X17_Y11_N6
\decode_block|reg_file|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|reg~0_combout\ = (!\rst~input_o\ & \writeback_block|zreg|sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \writeback_block|zreg|sig\(0),
	combout => \decode_block|reg_file|reg~0_combout\);

-- Location: FF_X18_Y12_N7
\decode_block|reg_file|reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decode_block|reg_file|reg~0_combout\,
	sload => VCC,
	ena => \decode_block|reg_file|reg[4][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decode_block|reg_file|reg[4][0]~q\);

-- Location: LCCOMB_X18_Y12_N28
\decode_block|reg_file|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux15~0_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|regSelMux|y[1]~1_combout\ & 
-- ((\decode_block|reg_file|reg[6][0]~q\))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (\decode_block|reg_file|reg[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[4][0]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[6][0]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y12_N12
\decode_block|reg_file|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux15~1_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & ((\decode_block|reg_file|Mux15~0_combout\ & ((\decode_block|reg_file|reg[7][0]~q\))) # (!\decode_block|reg_file|Mux15~0_combout\ & 
-- (\decode_block|reg_file|reg[5][0]~q\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|regSelMux|y[0]~0_combout\,
	datab => \decode_block|reg_file|Mux15~0_combout\,
	datac => \decode_block|reg_file|reg[5][0]~q\,
	datad => \decode_block|reg_file|reg[7][0]~q\,
	combout => \decode_block|reg_file|Mux15~1_combout\);

-- Location: LCCOMB_X18_Y11_N4
\decode_block|reg_file|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux15~2_combout\ = (\decode_block|regSelMux|y[0]~0_combout\ & (((\decode_block|reg_file|reg[1][0]~q\) # (\decode_block|regSelMux|y[1]~1_combout\)))) # (!\decode_block|regSelMux|y[0]~0_combout\ & (\decode_block|reg_file|reg[0][0]~q\ 
-- & ((!\decode_block|regSelMux|y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[0][0]~q\,
	datab => \decode_block|regSelMux|y[0]~0_combout\,
	datac => \decode_block|reg_file|reg[1][0]~q\,
	datad => \decode_block|regSelMux|y[1]~1_combout\,
	combout => \decode_block|reg_file|Mux15~2_combout\);

-- Location: LCCOMB_X18_Y11_N0
\decode_block|reg_file|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux15~3_combout\ = (\decode_block|regSelMux|y[1]~1_combout\ & ((\decode_block|reg_file|Mux15~2_combout\ & (\decode_block|reg_file|reg[3][0]~q\)) # (!\decode_block|reg_file|Mux15~2_combout\ & 
-- ((\decode_block|reg_file|reg[2][0]~q\))))) # (!\decode_block|regSelMux|y[1]~1_combout\ & (((\decode_block|reg_file|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|reg[3][0]~q\,
	datab => \decode_block|reg_file|reg[2][0]~q\,
	datac => \decode_block|regSelMux|y[1]~1_combout\,
	datad => \decode_block|reg_file|Mux15~2_combout\,
	combout => \decode_block|reg_file|Mux15~3_combout\);

-- Location: LCCOMB_X20_Y12_N4
\decode_block|reg_file|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decode_block|reg_file|Mux15~4_combout\ = (\decode_block|regSelMux|y[2]~2_combout\ & (\decode_block|reg_file|Mux15~1_combout\)) # (!\decode_block|regSelMux|y[2]~2_combout\ & ((\decode_block|reg_file|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decode_block|reg_file|Mux15~1_combout\,
	datab => \decode_block|regSelMux|y[2]~2_combout\,
	datad => \decode_block|reg_file|Mux15~3_combout\,
	combout => \decode_block|reg_file|Mux15~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;

ww_PC_out(9) <= \PC_out[9]~output_o\;

ww_PC_out(10) <= \PC_out[10]~output_o\;

ww_PC_out(11) <= \PC_out[11]~output_o\;

ww_PC_out(12) <= \PC_out[12]~output_o\;

ww_PC_out(13) <= \PC_out[13]~output_o\;

ww_PC_out(14) <= \PC_out[14]~output_o\;

ww_PC_out(15) <= \PC_out[15]~output_o\;

ww_IR_out(0) <= \IR_out[0]~output_o\;

ww_IR_out(1) <= \IR_out[1]~output_o\;

ww_IR_out(2) <= \IR_out[2]~output_o\;

ww_IR_out(3) <= \IR_out[3]~output_o\;

ww_IR_out(4) <= \IR_out[4]~output_o\;

ww_IR_out(5) <= \IR_out[5]~output_o\;

ww_IR_out(6) <= \IR_out[6]~output_o\;

ww_IR_out(7) <= \IR_out[7]~output_o\;

ww_IR_out(8) <= \IR_out[8]~output_o\;

ww_IR_out(9) <= \IR_out[9]~output_o\;

ww_IR_out(10) <= \IR_out[10]~output_o\;

ww_IR_out(11) <= \IR_out[11]~output_o\;

ww_IR_out(12) <= \IR_out[12]~output_o\;

ww_IR_out(13) <= \IR_out[13]~output_o\;

ww_IR_out(14) <= \IR_out[14]~output_o\;

ww_IR_out(15) <= \IR_out[15]~output_o\;

ww_x_out(0) <= \x_out[0]~output_o\;

ww_x_out(1) <= \x_out[1]~output_o\;

ww_x_out(2) <= \x_out[2]~output_o\;

ww_x_out(3) <= \x_out[3]~output_o\;

ww_x_out(4) <= \x_out[4]~output_o\;

ww_x_out(5) <= \x_out[5]~output_o\;

ww_x_out(6) <= \x_out[6]~output_o\;

ww_x_out(7) <= \x_out[7]~output_o\;

ww_x_out(8) <= \x_out[8]~output_o\;

ww_x_out(9) <= \x_out[9]~output_o\;

ww_x_out(10) <= \x_out[10]~output_o\;

ww_x_out(11) <= \x_out[11]~output_o\;

ww_x_out(12) <= \x_out[12]~output_o\;

ww_x_out(13) <= \x_out[13]~output_o\;

ww_x_out(14) <= \x_out[14]~output_o\;

ww_x_out(15) <= \x_out[15]~output_o\;

ww_y_out(0) <= \y_out[0]~output_o\;

ww_y_out(1) <= \y_out[1]~output_o\;

ww_y_out(2) <= \y_out[2]~output_o\;

ww_y_out(3) <= \y_out[3]~output_o\;

ww_y_out(4) <= \y_out[4]~output_o\;

ww_y_out(5) <= \y_out[5]~output_o\;

ww_y_out(6) <= \y_out[6]~output_o\;

ww_y_out(7) <= \y_out[7]~output_o\;

ww_y_out(8) <= \y_out[8]~output_o\;

ww_y_out(9) <= \y_out[9]~output_o\;

ww_y_out(10) <= \y_out[10]~output_o\;

ww_y_out(11) <= \y_out[11]~output_o\;

ww_y_out(12) <= \y_out[12]~output_o\;

ww_y_out(13) <= \y_out[13]~output_o\;

ww_y_out(14) <= \y_out[14]~output_o\;

ww_y_out(15) <= \y_out[15]~output_o\;

ww_z_out(0) <= \z_out[0]~output_o\;

ww_z_out(1) <= \z_out[1]~output_o\;

ww_z_out(2) <= \z_out[2]~output_o\;

ww_z_out(3) <= \z_out[3]~output_o\;

ww_z_out(4) <= \z_out[4]~output_o\;

ww_z_out(5) <= \z_out[5]~output_o\;

ww_z_out(6) <= \z_out[6]~output_o\;

ww_z_out(7) <= \z_out[7]~output_o\;

ww_z_out(8) <= \z_out[8]~output_o\;

ww_z_out(9) <= \z_out[9]~output_o\;

ww_z_out(10) <= \z_out[10]~output_o\;

ww_z_out(11) <= \z_out[11]~output_o\;

ww_z_out(12) <= \z_out[12]~output_o\;

ww_z_out(13) <= \z_out[13]~output_o\;

ww_z_out(14) <= \z_out[14]~output_o\;

ww_z_out(15) <= \z_out[15]~output_o\;

ww_d3_out(0) <= \d3_out[0]~output_o\;

ww_d3_out(1) <= \d3_out[1]~output_o\;

ww_d3_out(2) <= \d3_out[2]~output_o\;

ww_d3_out(3) <= \d3_out[3]~output_o\;

ww_d3_out(4) <= \d3_out[4]~output_o\;

ww_d3_out(5) <= \d3_out[5]~output_o\;

ww_d3_out(6) <= \d3_out[6]~output_o\;

ww_d3_out(7) <= \d3_out[7]~output_o\;

ww_d3_out(8) <= \d3_out[8]~output_o\;

ww_d3_out(9) <= \d3_out[9]~output_o\;

ww_d3_out(10) <= \d3_out[10]~output_o\;

ww_d3_out(11) <= \d3_out[11]~output_o\;

ww_d3_out(12) <= \d3_out[12]~output_o\;

ww_d3_out(13) <= \d3_out[13]~output_o\;

ww_d3_out(14) <= \d3_out[14]~output_o\;

ww_d3_out(15) <= \d3_out[15]~output_o\;

ww_dest0_out(0) <= \dest0_out[0]~output_o\;

ww_dest0_out(1) <= \dest0_out[1]~output_o\;

ww_dest0_out(2) <= \dest0_out[2]~output_o\;

ww_dest_out(0) <= \dest_out[0]~output_o\;

ww_dest_out(1) <= \dest_out[1]~output_o\;

ww_dest_out(2) <= \dest_out[2]~output_o\;

ww_a3_out(0) <= \a3_out[0]~output_o\;

ww_a3_out(1) <= \a3_out[1]~output_o\;

ww_a3_out(2) <= \a3_out[2]~output_o\;
END structure;


