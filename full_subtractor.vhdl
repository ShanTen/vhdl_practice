library ieee;
use library.std_logic_1164.all;

entity fullSub is
    Port(
        A:  in std_logic;
        B:  in std_logic;
        C:  in std_logic;
        Diff:  out std_logic;
        Borr:  out std_logic
    );
end fullSub;

architecture DataFlow of fullSub is
begin
    Diff <= A xor B xor C;
    Borr <= (A and (B or C)) or (B and C);
end DataFlow;

architecture Behavioral of fullSub is
    begin
        process(A,B,C)
        begin
            Diff <= A xor B xor C;
            Borr <= ((not A) and (B or C)) or (B and C);
        end process;
end Behavioral;