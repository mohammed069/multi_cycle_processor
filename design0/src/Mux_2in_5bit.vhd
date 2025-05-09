library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Mux2to1_5bit is
  port( 
        in_1    : in std_logic_vector(4 downto 0);
        in_2    : in std_logic_vector(4 downto 0);
        mux_sel : in std_logic;
        output  : out std_logic_vector(4 downto 0) );
end entity;

architecture arc of Mux2to1_5bit is
begin
  with mux_sel select
    output <= in_1 when '0', in_2 when others;

end architecture;