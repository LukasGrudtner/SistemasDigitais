
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comparador_soma is
port
	(
		S : in std_logic_vector(3 downto 0);
		Y : out std_logic
	);
	
end entity;

architecture hardware of comparador_soma is
begin

	Y <= '1' when unsigned(S(3 downto 0)) > "1001" else
		  '0';
		  
end hardware;