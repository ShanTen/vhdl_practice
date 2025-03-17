library ieee;
use ieee.std_logic_1164.all;

------------------
entity OR4_gate is 
    port(
        A, B, C, D : in std_logic;
        Y : out std_logic
    );
end OR4_gate;

architecture dataflow of OR4_gate is 
begin
    Y <= A or B or C or D;
end dataflow;
------------------

entity encoder is
    port(
        D : in std_logic_vector(7 downto 0);
        Y : out std_logic_vector(7 downto 0)
    );
end encoder;

architecture structural of encoder is 

    component OR4_gate is 
        port(
            A, B, C, D : in std_logic;
            Y : out std_logic
        );
    end component;
begin

    -- Inputs : I0, I2... I7
    -- Outputs : Y0, Y1, Y2

    -- Y0 = I4 + I5 + I6 + I7
    -- Y1 = I2 + I3 + I6 + I7 
    -- Y2 = I1 + I3 + I5 + I7

    og0 : OR4_gate port map(D(4), D(5), D(6), D(7), Y(0) ); 
    og1 : OR4_gate port map(D(2), D(3), D(6), D(7), Y(1) ); 
    og2 : OR4_gate port map(D(1), D(3), D(5), D(7), Y(2) ); 

end structural;
