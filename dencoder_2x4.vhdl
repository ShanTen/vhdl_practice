library ieee;
use ieee.std_logic_1164.all;

---------------------

entity and_gate is 
    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end and_gate;

architecture dataflow of and_gate is
    begin
    Y <= A and B;
end dataflow;

---------------------

---------------------

entity not_gate is 
    port(
        A : in std_logic;
        Y : out std_logic
    );
end not_gate;

architecture dataflow of not_gate is
    begin
    Y <= not A;
end dataflow;

---------------------

entity decoder is
    Port(
        D : std_logic_vector(1 downto 0);
        Y : std_logic_vector(3 downto 0)
    );
end decoder;

architecture structural of decoder is

    component not_gate is 
        port(
            A : in std_logic;
            Y : out std_logic
        );
    end component;

    component and_gate is 
        port(
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

    signal d0Not, d1Not : std_logic;

begin
    not0 : not_gate port map(D(0), d0Not);
    not1 : not_gate port map(D(1), d1Not);

    and_gate0: and_gate port map(d0Not, d1Not, Y(0));
    and_gate1: and_gate port map(D(0), d1Not , Y(1));
    and_gate2: and_gate port map(d0Not, D(1) , Y(2));
    and_gate3: and_gate port map(D(0), D(1)  , Y(3));

end structural;