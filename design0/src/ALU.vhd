library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUControl is
  port( 
        ALUOp   : in std_logic_vector(1 downto 0);
        instr   : in std_logic_vector(5 downto 0);
        result  : out std_logic_vector(3 downto 0) );
end entity;

architecture arc of ALUControl is
  signal temp, operation : std_logic_vector(3 downto 0) := "1111";

begin

  with ALUOp select
    temp <= "0000"    when "00",    
            "0110"    when "01",    
            operation when "10",    
            "1111"    when others;  

  with instr select
    operation <= "0000" when "100000", 
                 "0001" when "100010", 
                 "0010" when "100100", 
                 "0011" when "100101", 
                 "0100" when "100111", 
                 "0101" when "100110", 
                 "0110" when "000000", 
                 "0111" when "000010", 
                 "1000" when "101010", 
                 "1001" when "001000", 
                 "1010" when "001100", 
                 "1011" when "001101", 
                 "1111" when others;

  result <= temp;

end architecture;