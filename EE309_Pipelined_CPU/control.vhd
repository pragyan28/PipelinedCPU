library ieee;
use ieee.std_logic_1164.all;

entity control is
	port (
		op : in std_logic_vector(3 downto 0);
		ySel, ALUFunc : out std_logic_vector(1 downto 0);
		xSel, WrEnD, RdEnD, zSel, RegWrEn : out std_logic
	);
end entity;

architecture beh of control is
begin
	ctrl_proc : process(op)
	begin
		case op is
		
			-- lw
			when "0000" =>
				xSel<='X';
				ySel<="XX";
				ALUFunc<="XX";
				WrEnD<='0';
				RdEnD<='1';
				zSel<='1';
				RegWrEn<='1';
				
			-- sw
			when "0001" =>
				xSel<='1';
				ySel<="XX";
				ALUFunc<="XX";
				WrEnD<='1';
				RdEnD<='0';
				zSel<='X';
				RegWrEn<='0';
				
			-- add
			when "0010" =>
				xSel<='0';
				ySel<="00";
				ALUFunc<="00";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='0';
				RegWrEn<='1';
				
			-- sub
			when "0011" =>
				xSel<='0';
				ySel<="00";
				ALUFunc<="01";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='0';
				RegWrEn<='1';
				
			-- mul
			when "0100" =>
				xSel<='0';
				ySel<="00";
				ALUFunc<="10";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='0';
				RegWrEn<='1';
				
			-- addi
			when "0101" =>
				xSel<='0';
				ySel<="01";
				ALUFunc<="00";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='0';
				RegWrEn<='1';
				
			-- sll
			when "0110" =>
				xSel<='0';
				ySel<="00";
				ALUFunc<="11";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='0';
				RegWrEn<='1';
				
			-- jri
			when "0111" =>
				xSel<='1';
				ySel<="10";
				ALUFunc<="00";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='X';
				RegWrEn<='0';
				
			--default
			when others =>
				xSel<='X';
				ySel<="XX";
				ALUFunc<="XX";
				WrEnD<='0';
				RdEnD<='0';
				zSel<='X';
				RegWrEn<='0';
				
		end case;
	end process;
end architecture;