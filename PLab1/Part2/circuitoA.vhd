--
-- 07.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity circuitoA is
port
	(
		V : in std_logic_vector(3 downto 0);
		A : out std_logic_vector(2 downto 0)
	);
end entity;
	
architecture hardware of circuitoA is
begin

	A <= "000" when V = "1010" else
		  "001" when V = "1011" else
		  "010" when V = "1100" else
		  "011" when V = "1101" else
		  "100" when V = "1110" else
		  "101";
	
end hardware;