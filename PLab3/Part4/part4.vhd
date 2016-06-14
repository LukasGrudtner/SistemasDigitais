library IEEE;
use IEEE.std_logic_1164.all;

entity part4 is
	port(
			SW : in std_logic_vector(2 downto 0);
			KEY : in std_logic_vector(0 downto 0);
			HEX0 : out std_logic_vector(6 downto 0)
		);
end entity;

architecture hardware of part4 is

	component FSM
		port(
			clock, reset : in std_logic;
			w : in std_logic_vector(1 downto 0);
			count : out std_logic_vector(3 downto 0)
		);
	end component;

	component decod7seg
		port(
				input : in std_logic_vector(3 downto 0);
				display : out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal count : std_logic_vector(3 downto 0);
	
begin

	L0 : FSM port map (KEY(0), SW(0), SW(2 downto 1), count);
	L1 : decod7seg port map (count, HEX0);
	
end architecture;
