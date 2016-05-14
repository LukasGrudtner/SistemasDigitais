--
-- 08.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity part3 is
port
	(
		SW : in std_logic_vector(8 downto 0);
		LEDR : out std_logic_vector(8 downto 0);
		LEDG : out std_logic_vector(4 downto 0)
	);
end entity;

architecture hardware of part3 is

component full_adder
	port(
			A, B, Ci : in std_logic;
			S, Co    : out std_logic
		);
		
end component;
	
	signal C1, C2, C3 : std_logic;
	
begin
	
	L0 : full_adder port map (SW(4), SW(0), SW(8), LEDG(0), C1);
	L1 : full_adder port map (SW(5), SW(1), C1, LEDG(1), C2);
	L2 : full_adder port map (SW(6), SW(2), C2, LEDG(2), C3);
	L3 : full_adder port map (SW(7), SW(3), C3, LEDG(3), LEDG(4));
	
	LEDR(8 downto 0) <= SW(8 downto 0);
	
	
end hardware;