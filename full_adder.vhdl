library ieee;
use ieee.std_logic_1164.all;

entity Ent_fullAdder is
    Port(
        A : in std_logic; 
        B : in std_logic;
        C : in std_logic;
        Carry : out std_logic;
        Sum : out std_logic;
    );
end Ent_fullAdder;

architecture behavioral of Ent_fullAdder is 
begin
    process(A,B,C)
    begin
        Carry <= (A and B) or  (B and C) or (A and C);
        Sum <= (A xor B xor C);
    end process;
end behavioral;

architecture Dataflow of Ent_fullAdder is 
begin
    Carry <= (A and B) or  (B and C) or (A and C);
    Sum <= (A xor B xor C);
end Dataflow;
