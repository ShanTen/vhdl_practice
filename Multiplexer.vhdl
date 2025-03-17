library ieee;
use ieee.std_logic_1164.all;

-- behavioral

entity multiplexer is
    Port(
        A : in std_logic;
        B : in std_logic;
        S : in std_logic;
        Y : out std_logic;
    );
end multiplexer;

architecture behavioral of multiplexer is
begin
    process(A, B, S)
    begin
        Y < = (not S and A) or (S and B)
    end process;
end architecture;