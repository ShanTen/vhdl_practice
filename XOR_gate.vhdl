library ieee;
use ieee.std_logic_1164;

entity XOR_gate is 
    Port(
        A : in  std_logic;
        B : in  std_logic;
        Y : out std_logic
    );
end XOR_gate;

architecture Dataflow of XOR_gate is  
begin
    Y <= A xor B;
end  Dataflow;

architecture Structural of XOR_gate is
begin
    process(A, B)
    begin
        if ((A = '1' and B = '1') or (A = '0' and B = '0')) then
            Y <= '1';
        else
            Y <= '0';
        end if;
    end process;
end Structural;