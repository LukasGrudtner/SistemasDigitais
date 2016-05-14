
library IEEE;
use IEEE.std_logic_1164.all;

entity mux_soma is
port
	(
		HEX : in std_logic_vector(6 downto 0);
		HEX_soma : in std_logic_vector(6 downto 0);
		Z : in std_logic;
		Y : in std_logic;
		D : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture hardware of mux_soma is
begin

	D <= "1111111" when Z = '1' else
		  HEX_soma when Y = '1' else
		  HEX;
	
end hardware;