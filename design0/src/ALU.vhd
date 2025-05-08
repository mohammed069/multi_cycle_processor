
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  GENERIC(n : integer := 32);
  port( 
        op1   : in std_logic_vector(31 downto 0);
        op2   : in std_logic_vector(31 downto 0);
        ALU_control : in std_logic_vector(3 downto 0);  

        result      : out std_logic_vector(31 downto 0);
        zero        : out std_logic );
end entity;

architecture arc of ALU is
  signal temp : std_logic_vector(31 downto 0);

begin

  temp <=
   
    std_logic_vector(unsigned(op1) + unsigned(op2)) when ALU_control = "0000" else
 
    std_logic_vector(unsigned(op1) + unsigned(op2)) when ALU_control = "0001" else

    op1 AND  op2 when ALU_control = "0010" else
 
    op1 OR   op2 when ALU_control = "0011" else
  
    op1 NOR  op2 when ALU_control = "0100" else
   
    op1 NAND op2 when ALU_control = "0101" else

    op1 XOR  op2 when ALU_control = "0110" else

    std_logic_vector(shift_left(unsigned(op1), to_integer(unsigned(op2(10 downto 6))))) when ALU_control = "0111" else
		
    std_logic_vector(shift_right(unsigned(op1), to_integer(unsigned(op2(10 downto 6))))) when ALU_control = "1000" else
    (others => '0');
	
  zero <= '1' when temp <= "00000000000000000000000000000000" else '0';
  result <= temp;

end architecture;
