

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Registers is
  port(
        CLK : in std_logic;
        reset : in std_logic;
        read_reg_1 : in std_logic_vector(4 downto 0);
        read_reg_2 : in std_logic_vector(4 downto 0);
        write_reg : in std_logic_vector(4 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        RegWrite : in std_logic; 

        read_data_1 : out std_logic_vector(31 downto 0);
        read_data_2 : out std_logic_vector(31 downto 0) );
end entity;

architecture Behavioral of Registers is
  type   registers_type is array (0 to 31) of std_logic_vector(31 downto 0);
  signal reg : registers_type := (others => (others => '0'));

begin

  process(CLK)
  begin
    if reset = '1' then 
      reg(to_integer(unsigned(write_reg))) <= (others => '0');
      else if rising_edge(CLK) and RegWrite = '1' then
        reg(to_integer(unsigned(write_reg))) <= write_data;
      end if;
    end if;
  end process;

  read_data_1 <= reg(to_integer(unsigned(read_reg_1))); 
  read_data_2 <= reg(to_integer(unsigned(read_reg_2))); 

end Behavioral;