library ieee;
use ieee.std_logic_1164.ALL;

entity OR_GATE is
    Port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end OR_GATE;

architecture Dataflow of OR_GATE is 
begin
    Y <= A or B;
end Dataflow;

architecture Behavioral of OR_GATE is
begin
    process (A,B)
    begin
        if (A = '1' or B = '1') then
            Y <= '1';
        else
            Y <= '0';
        end if;
    end process;
end Behavioral;