

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity A is
  port(
        CLK : in std_logic;
        reset : in std_logic;
        input_A : in std_logic_vector (31 downto 0);

        output_A   : out std_logic_vector(31 downto 0)
         );
end entity;

architecture Behavioral of A is
  signal signal_A : std_logic_vector(31 downto 0) := (others => '0');

begin
  process(CLK)
  begin
    if reset = '1' then -- reset
      signal_A <= (others => '0');
    else if rising_edge(CLK) then
      signal_A <= input_A;
    end if;
    end if;
  end process;

  output_A <= signal_A;
  

end  architecture;