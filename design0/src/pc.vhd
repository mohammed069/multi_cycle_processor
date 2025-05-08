

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
port( 
      CLK : in  std_logic;
      reset : in  std_logic;
      input_PC : in  std_logic_vector(31 downto 0);
      PCcontrol : in  std_logic;

      
      output_PC : out std_logic_vector(31 downto 0) );
end entity;

architecture Behavioral of PC is

begin

  process(CLK)
  begin
    if reset = '1' then
      output_PC <= (others => '0' );
    elsif (rising_edge(CLK) and (PCcontrol = '1')) then
      output_PC <= input_PC;
    end if;
  end process;

end architecture;