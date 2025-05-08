

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MDR is
  port( 
        CLK : in std_logic;
        reset : in std_logic;
        input_MDR : in std_logic_vector(31 downto 0);

        output_MDR : out std_logic_vector(31 downto 0) ); 
end entity;

architecture Behavioral of MDR is
  signal signal_MDR: std_logic_vector(31 downto 0) := (others => '0');


begin
  process(CLK)
  begin
    if reset = '1' then
      signal_MDR <= (others => '0');
    else if rising_edge(CLK) then
      signal_MDR <= input_MDR;
    end if;
    end if;
  end process;

  output_MDR <= signal_MDR;

end architecture;