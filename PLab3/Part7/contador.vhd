library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity contador is
	port(
			clock : in std_logic;
			velocidade : in std_logic_vector(27 downto 0);
			C : out std_logic
	);
end entity;

architecture hardware of contador is
	signal contador : std_logic_vector(27 downto 0);
begin

	process(clock)
	
	begin
	
		if(clock'event and clock = '1') then
			contador <= contador + "0000000000000000000000000001";
			
			if(contador(27 downto 0) = velocidade(27 downto 0)) then
				contador <= "0000000000000000000000000000";
				C <= '1';
			else
				C <= '0';
			end if;
			
		end if;
	end process;
end architecture;