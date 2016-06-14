library IEEE;
use IEEE.std_logic_1164.all;

entity contador is
	port(
			clock : in std_logic;
			C : out std_logic
	);
end entity;

architecture hardware of contador is
begin

	process(clock)
		variable contador : integer range 0 to 50000000;
	
	begin
	
		if(clock'event and clock = '1') then
			contador := contador + 1;
			
			if(contador = 50000000) then
				contador := 0;
				C <= '1';
			else
				C <= '0';
			end if;
			
		end if;
	end process;
end architecture;