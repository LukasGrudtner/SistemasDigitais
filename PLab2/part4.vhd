library IEEE;
use IEEE.std_logic_1164.all;

entity part4 is
	port(
			CLOCK_50 : in std_logic;
			HEX0 : out std_logic_vector(6 downto 0)
			);
end entity;

architecture hardware of part4 is

	component contador_p4
		port(
				clock : in std_logic;
				outp : out std_logic_vector(6 downto 0)
			);
	end component;
	
	component FSM_clock
		port(
				clock : in std_logic;
				C : out std_logic
			);
	end component;
	
	signal C : std_logic;
	
begin

	L0 : FSM_clock port map (CLOCK_50, C);
	L1 : contador_p4 port map (C, HEX0);

end architecture;