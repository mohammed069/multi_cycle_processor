

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity B is
  port( 
        CLK : in std_logic;
        reset : in std_logic;
        input_B : in std_logic_vector (31 downto 0);

        output_B : out std_logic_vector(31 downto 0)
         );
end entity;

architecture Behavioral of B is
  signal signal_B : std_logic_vector(31 downto 0) := (others => '0');

begin
  process(CLK)
  begin
    if reset = '1' then 
      signal_B <=  (others => '0');
    else if rising_edge(CLK) then
      signal_B <= input_B;
    end if;
    end if;
  end process;

  output_B <= signal_B;
  

end  architecture;