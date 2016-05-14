--
-- 07.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity circuitoB is 
port
	(
		Z : in std_logic;
		B : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture hardware of circuitoB is
begin

	B <= "1000000" when Z = '0' else
		  "1111001";
		  
end hardware;