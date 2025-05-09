library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftLeft2 is
  port( 
        input  : in std_logic_vector(25 downto 0);
        output : out std_logic_vector(27 downto 0) );
end ShiftLeft2;
architecture Behavioral of ShiftLeft2 is
begin
  output <= input & "00";
end Behavioral;
