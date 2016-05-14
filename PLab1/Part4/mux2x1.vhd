-- 
-- 28.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2x1 is
port
	(
		S : in std_logic_vector(3 downto 0);
		Z : in std_logic;
		M : out std_logic_vector(3 downto 0)
	);
	
end entity;

architecture hardware of mux2x1 is
begin

	M(3 downto 0) <= S(3 downto 0) when Z = '0' else
						  "1111";
	
end hardware;