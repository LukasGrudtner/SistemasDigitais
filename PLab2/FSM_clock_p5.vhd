library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FSM_clock is
	port(
			clock : in std_logic;
			C : out std_logic
		 );
end entity;

architecture hardware of FSM_clock is
	type states is (S0, S1);
	signal contador : std_logic_vector(27 downto 0);
	signal EA, PE : states;
	
begin
	
P1: process(clock)
	begin
	
	if(clock'event and clock = '1') then
		EA <= PE;
	end if;
end process;

P2: process(clock)
	begin
	
	if(clock'event and clock = '1') then
		
		case EA is
		
			when S0 =>
				contador <= x"0000000";
				PE <= S1;
				
			when S1 =>
				contador <= contador + 1;
				
				if(contador = x"0000001") then --"2FAF07F"
					C <= '1';
					PE <= S0;
				else
					C <= '0';
					PE <= S1;
				end if;
			end case;
		end if;
	end process;
end architecture;
	