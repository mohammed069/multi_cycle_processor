

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity InstructionRegister is
  port( 
        CLK : in std_logic;
        reset : in std_logic;
        IRWrite : in std_logic;
        input_IR : in std_logic_vector(31 downto 0);

        output_IR : out std_logic_vector(31 downto 0) );
end entity;

architecture Behavioral of InstructionRegister is
  signal instruction_reg: std_logic_vector(31 downto 0) := (others => '0');

begin
  process(CLK)
  begin
    if reset = '1' then 
      instruction_reg <= (others => '0');
    else if rising_edge(CLK) and IRWrite = '1' then
      instruction_reg <= input_IR;
    end if;
    end if;
  end process;

  output_IR <= instruction_reg;  

end architecture;