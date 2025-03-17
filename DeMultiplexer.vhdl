library ieee;
use ieee.std_logic_1164.all;

-- DataFlow, 1:4

entity DeMultiplexer is
    Port(
        Y0 : out std_logic;
        Y1 : out std_logic;
        Y2 : out std_logic;
        Y3 : out  std_logic; 
        BD : in  std_logic;
        S0 : in  std_logic;
        S1 : in   std_logic
    );
end DeMultiplexer;

architecture dataflow of DeMultiplexer is
begin
    Y0 <= not S0 and not S1 and BD;
    Y1 <= not S1 and S0 and BD;
    Y2 <= S1 and not S0 and BD;
    Y3 <= S1 and S0 and BD;
end dataflow;