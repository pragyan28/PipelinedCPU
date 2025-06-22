library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE_6_16 is
    port (
        inp: in std_logic_vector(5 downto 0);  
        outp: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of SE_6_16 is
begin
    process(inp)
    begin
        if inp(5) = '1' then
            outp <= "1111111111" & inp;  
        else
            outp <= "0000000000" & inp;  
        end if;
    end process;
end architecture;