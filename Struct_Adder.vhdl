-- Equations Sum = A xor B xor C
-- Carry = AB + BC + AC

library ieee;
use ieee.std_logic_1164.all;

------------------------------

entity AND_GATE is 
    port(
        A : in std_logic;
        B : in std_logic;
        Y : in std_logic
    );
end AND_GATE;

architecture behavioral of AND_GATE is
    begin
        process(A, B, C)
        begin
            Y <= A and B;
        end process;
end behavioral;

------------------------------

entity XOR_GATE3 is 
    port(
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        Y : in std_logic
    );
end XOR_GATE3;

architecture behavioral of XOR_GATE3 is
    begin
        process(A, B, C)
        begin
            Y <= A xor B xor C ;
        end process;
end behavioral;

------------------------------

entity OR_GATE3 is 
    port(
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        Y : in std_logic
    );
end OR_GATE3;

architecture behavioral of OR_GATE is
    begin
        process(A, B, C)
        begin
            Y <= A or B or C
        end process;
end behavioral;

------------------------------

entity adder is 
    port(
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end adder;

architecture structural of adder is

    component XOR_GATE3 is 
        port(
            A : in std_logic;
            B : in std_logic;
            C : in std_logic;
            Y : in std_logic
        );
    end component;

    component AND_GATE is 
        port(
            A : in std_logic;
            B : in std_logic;
            Y : in std_logic
        );
    end component;

    component OR_GATE3 is 
        port(
            A : in std_logic;
            B : in std_logic;
            C : in std_logic;
            Y : in std_logic
        );        
    end component;

    signal and1, and2, and3 : STD_LOGIC;

    begin
        -- XOR Gate for Sum
        XOR1: XOR3_Gate port map(A, B, Cin, Sum);
        -- <var name> : type port map(A,B,C, Out)

        -- AND Gates for Intermediate Carry Terms
        AND1: AND2_Gate port map(A, B, and1);
        AND2: AND2_Gate port map(B, Cin, and2);
        AND3: AND2_Gate port map(A, Cin, and3);

        -- OR Gate for Final Carry
        OR1: OR3_Gate port map(and1, and2, and3, Cout);
end structural;
