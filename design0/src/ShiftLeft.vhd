library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftLeft is
  port( 
        input  : in std_logic_vector(31 downto 0);
        output : out std_logic_vector(31 downto 0) );
end ShiftLeft;

architecture Behavioral of ShiftLeft is
begin
  output <= std_logic_vector(unsigned(input) sll 2);
end Behavioral;
