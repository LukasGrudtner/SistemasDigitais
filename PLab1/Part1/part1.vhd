--
-- 09.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity part1 is
port
	(
		SW : in std_logic_vector(15 downto 0);
		HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture hardware of part1 is

component decod7seg
port
	(
		SW : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector(6 downto 0)
	);
end component;

begin

	L0: decod7seg port map (SW(15 downto 12), HEX3);
	L1: decod7seg port map (SW(11 downto 8),  HEX2);
	L2: decod7seg port map (SW(7 downto 4),   HEX1);
	L3: decod7seg port map (SW(3 downto 0),   HEX0);
	
end hardware;