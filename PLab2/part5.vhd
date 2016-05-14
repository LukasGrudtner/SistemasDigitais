library IEEE;
use IEEE.std_logic_1164.all;

entity part5 is
	port(
			CLOCK_50 : in std_logic;
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
		 );
end entity;

architecture hardware of part5 is

	component FSM_clock
		port(
				clock : in std_logic;
				C : out std_logic
			  );
	end component;
	
	component FSM_hello
		port(
				clock : in std_logic;
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
			  );
	end component;
	
	signal C : std_logic;
	
	begin
	
	L0 : FSM_clock port map (CLOCK_50, C);
	L1 : FSM_hello port map (C, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
	
end architecture;