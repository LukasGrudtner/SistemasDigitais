library IEEE;
use IEEE.std_logic_1164.all;

entity registrador is
	port(
			R : in std_logic_vector(6 downto 0);
			clock, reset : in std_logic;
			Q : out std_logic_vector(6 downto 0)
	);
end entity;

architecture hardware of registrador is
begin

	process(clock)
	begin
	
		if(clock'event and clock = '1') then
			if(reset = '0') then
				Q <= (others => '1');
			else
				Q <= R;
			end if;
		end if;
	end process;
end architecture;