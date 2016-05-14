--
-- 07.03.2016
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comparador is
port
	(
		V : in std_logic_vector(3 downto 0);
		Z : out std_logic
	);
	
end entity;

architecture hardware of comparador is
begin

	Z <= '1' when unsigned(V) > "1001" else
		  '0';

end hardware;