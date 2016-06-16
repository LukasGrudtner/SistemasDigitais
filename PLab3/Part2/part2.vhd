library IEEE;
use IEEE.std_logic_1164.all;

	entity part2 IS
		port (SW : in std_logic_vector(1 downto 0);
				KEY : in std_logic_vector(0 downto 0);
				LEDG : out std_logic_vector(0 downto 0);
				LEDR : out std_logic_vector(8 downto 0)
				);
	end part2;
	
architecture Behavior of part2 is

	component FSM
		port(
				w, clock, reset : in std_logic;
				z : out std_logic;
				LEDR : out std_logic_vector(8 downto 0)
			);
	end component;

begin

	L0 : FSM port map (SW(1), KEY(0), SW(0), LEDG(0), LEDR(8 downto 0));

end Behavior;