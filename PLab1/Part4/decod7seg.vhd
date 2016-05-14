-- 
-- 07.04.2016
-- 

library IEEE;
use IEEE.std_logic_1164.all;

entity decod7seg is
port (
			M : in std_logic_vector(4 downto 0);
			HEX : out std_logic_vector(6 downto 0)
	  );
end entity;

architecture decodificador of decod7seg is

begin
	
	HEX <= "1000000" when M = "00000" else -- 0
			 "1111001" when M = "00001" else -- 1
			 "0100100" when M = "00010" else -- 2
			 "0110000" when M = "00011" else -- 3
		 	 "0011001" when M = "00100" else -- 4
			 "0010010" when M = "00101" else -- 5
			 "0000010" when M = "00110" else -- 6
			 "1111000" when M = "00111" else -- 7
			 "0000000" when M = "01000" else -- 8
			 "0010000" when M = "01001" else -- 9
			 "1000000" when M = "01010" else -- 10
			 "1111001" when M = "01011" else -- 11
			 "0100100" when M = "01100" else -- 12
			 "0110000" when M = "01101" else -- 13
			 "0011001" when M = "01110" else -- 14
			 "0010010" when M = "01111" else -- 15
			 "0000010" when M = "10000" else -- 16
			 "1111000" when M = "10001" else -- 17
			 "0000000" when M = "10010" else -- 18
			 "0010000" when M = "10011" else -- 19
			 "1111111";
	
end decodificador;