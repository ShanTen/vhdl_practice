library ieee;
use ieee.std_logic_1164.ALL;

entity AND_GATE is 
    Port(
        A : in std_logic;
        B : in std_logic;
        C : out std_logic
    );
end AND_GATE;

architecture Dataflow of AND_GATE is 
begin
        Y <= A and B;
end Dataflow;

architecture Behavioral of AND_GATE is 
begin
    process(A, B)
    begin
        if(A = '1' and B = '1') then
            Y <= 1;
        else
            Y <= 0;
        end if;
    end process;
end Behavioral;