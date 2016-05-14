library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FSM_hello is
	port(
			clock : in std_logic;
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
		 );
end entity;

architecture hardware of FSM_hello is

type states is (S0, S1, S2, S3, S4, S5, S6, S7);
signal EA, PE : states;

begin

P1: process(clock)
	begin
	
		if(clock'event and clock = '1') then
			EA <= PE;
		end if;
	end process;

-- S0 : _ _ _ H E L L O           H : "0001001"
-- S1 : _ _ H E L L O _				 E : "0000110"
-- S2 : _ H E L L O _ _				 L : "1000111"
-- S3 : H E L L O _ _ _				 O : "1000000"
-- S4 : E L L O _ _ _ H
-- S5 : L L O _ _ _ H E
-- S6 : L O _ _ _ H E L
-- S7 : O _ _ _ H E L L
	
P2: process(EA)
	begin
			
			case EA is
			
				when S0 =>
					HEX7 <= "1111111"; HEX6 <= "1111111"; HEX5 <= "1111111"; HEX4 <= "0001001"; HEX3 <= "0000110"; HEX2 <= "1000111"; HEX1 <= "1000111"; HEX0 <= "1000000";
					PE <= S1;
				when S1 => 
					HEX7 <= "1111111"; HEX6 <= "1111111"; HEX5 <= "0001001"; HEX4 <= "0000110"; HEX3 <= "1000111"; HEX2 <= "1000111"; HEX1 <= "1000000"; HEX0 <= "1111111";
					PE <= S2;
				when S2 =>
					HEX7 <= "1111111"; HEX6 <= "0001001"; HEX5 <= "0000110"; HEX4 <= "1000111"; HEX3 <= "1000111"; HEX2 <= "1000000"; HEX1 <= "1111111"; HEX0 <= "1111111";
					PE <= S3;
				when S3 =>
					HEX7 <= "0001001"; HEX6 <= "0000110"; HEX5 <= "1000111"; HEX4 <= "1000111"; HEX3 <= "1000000"; HEX2 <= "1111111"; HEX1 <= "1111111"; HEX0 <= "1111111";
					PE <= S4;
				when S4 =>
					HEX7 <= "0000110"; HEX6 <= "1000111"; HEX5 <= "1000111"; HEX4 <= "1000000"; HEX3 <= "1111111"; HEX2 <= "1111111"; HEX1 <= "1111111"; HEX0 <= "0001001";
					PE <= S5;
				when S5 =>
					HEX7 <= "1000111"; HEX6 <= "1000111"; HEX5 <= "1000000"; HEX4 <= "1111111"; HEX3 <= "1111111"; HEX2 <= "1111111"; HEX1 <= "0001001"; HEX0 <= "0000110";
					PE <= S6;
				when S6 =>
					HEX7 <= "1000111"; HEX6 <= "1000000"; HEX5 <= "1111111"; HEX4 <= "1111111"; HEX3 <= "1111111"; HEX2 <= "0001001"; HEX1 <= "0000110"; HEX0 <= "1000111";
					PE <= S7;
				when S7 =>
					HEX7 <= "1000000"; HEX6 <= "1111111"; HEX5 <= "1111111"; HEX4 <= "1111111"; HEX3 <= "0001001"; HEX2 <= "0000110"; HEX1 <= "1000111"; HEX0 <= "1000111";
					PE <= S0;
			end case;
	end process;
end architecture;