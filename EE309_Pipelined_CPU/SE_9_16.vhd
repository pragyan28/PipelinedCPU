library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE_9_16 is
    port (
        inp: in std_logic_vector(8 downto 0);  
        outp: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of SE_9_16 is
signal outp1: std_logic_vector(15 downto 0);
begin
    process(inp)
    begin
        if inp(8) = '1' then
            outp1 <= "1111111" & inp;  
        else
            outp1 <= "0000000" & inp;  
        end if;
		  outp <= outp1(14 downto 0) & '0';
    end process;
end architecture;