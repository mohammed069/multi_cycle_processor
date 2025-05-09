library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux3to1_32bit is
  port( 
        in_1    : in std_logic_vector(31 downto 0);
        in_2    : in std_logic_vector(31 downto 0);
        in_3    : in std_logic_vector(31 downto 0);
        mux_sel : in std_logic_vector(1 downto 0);
        output  : out std_logic_vector(31 downto 0) );
end entity;

architecture bev of Mux3to1_32bit is

  signal mux_out : std_logic_vector(31 downto 0);
begin
  with mux_sel select
    mux_out <= in_1 when "00",
               in_2 when "01",
               in_3 when "10",
               "00000000000000000000000000000000" when others;
  output <= mux_out;
end architecture;