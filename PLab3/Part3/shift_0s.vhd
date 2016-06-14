library IEEE;
use IEEE.std_logic_1164.all;

entity shift_0s is
	port(
			clock, reset, w : in std_logic;
			shift0 : out std_logic_vector(3 downto 0)
		);
end entity;

architecture hardware of shift_0s is

	signal desloc_0 : std_logic_vector(3 downto 0) := "1111";
	
begin
	
	process(clock)
	begin
		if(clock'event and clock = '1') then
		
			if(reset = '0') then
				desloc_0  <= "1111";
			else
				desloc_0 (0) <= w;
				desloc_0 (3 downto 1) <= desloc_0 (2 downto 0);
				
			end if;
		end if;
	end process;
end architecture;