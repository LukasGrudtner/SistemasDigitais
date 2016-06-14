library IEEE;
use IEEE.std_logic_1164.all;

entity shift_1s is
	port(
			clock, reset, w : in std_logic;
			shift1 : out std_logic_vector(3 downto 0)
		);
end entity;

architecture hardware of shift_1s is

	signal desloc_1 : std_logic_vector(3 downto 0) := "0000";
	
begin

	process(clock)
	begin
		if(clock'event and clock = '1') then
		
			if(reset = '0') then
				desloc_1 <= "0000";
			else
				desloc_1(0) <= w;
				desloc_1(3 downto 1) <= desloc_1(2 downto 0);
				
			end if;
		end if;
	end process;
	
end architecture;