

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALUout is
  port(
        CLK : in std_logic;
        reset : in std_logic;
        input : in std_logic_vector (31 downto 0);

        output : out std_logic_vector(31 downto 0)
         );
end entity;

architecture Behavioral of ALUout is
  signal s : std_logic_vector(31 downto 0) := (others => '0');

begin
  process(CLK)
  begin
    if reset = '1' then -- reset
      s <=  (others => '0');
    else if rising_edge(CLK) then
      s <= input;
    end if;
    end if;
  end process;

  output   <= s;
  

end  architecture;