--
-- 13.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comparador is
port
	(
		SW : in std_logic_vector(7 downto 0);
		S : in std_logic_vector(4 downto 0);
		Z : out std_logic;
		Y : out std_logic
	);
	
end entity;

architecture hardware of comparador is
begin

	Z <= '1' when unsigned(SW(7 downto 4)) > "1001" else
		  '1' when unsigned(SW(3 downto 0)) > "1001" else
		  '0';
		  
	Y <= '1' when unsigned(S) > "01001" else
	     '0';
		  
end hardware;