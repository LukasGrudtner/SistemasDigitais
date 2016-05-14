-- 
-- 07.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2x1 is
port
	(
		V : in std_logic_vector(3 downto 0);
		A : in std_logic_vector(2 downto 0);
		Z : in std_logic;
		M : out std_logic_vector(3 downto 0)
	);
	
end entity;

architecture hardware of mux2x1 is
begin

	M(0) <=  A(0) when Z = '1' else 
				V(0);
	M(1) <=  A(1) when Z = '1' else 
				V(1);
	M(2) <=  A(2) when Z = '1' else 
				V(2);
	M(3) <= '0' when Z = '1' else 
				V(3);
	
end hardware;