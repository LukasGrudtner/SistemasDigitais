library IEEE;
use IEEE.std_logic_1164.all;

entity decod7seg is
	port (
			inpt : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
			);
end entity;

architecture decodificador of decod7seg is

begin
	
	HEX <= "1000000" when inpt = "0000" else -- 0
			 "1111001" when inpt = "0001" else -- 1
			 "0100100" when inpt = "0010" else -- 2
			 "0110000" when inpt = "0011" else -- 3
		 	 "0011001" when inpt = "0100" else -- 4
			 "0010010" when inpt = "0101" else -- 5
			 "0000010" when inpt = "0110" else -- 6
			 "1111000" when inpt = "0111" else -- 7
			 "0000000" when inpt = "1000" else -- 8
			 "0010000" when inpt = "1001" else -- 9
			 "0001000" when inpt = "1010" else -- A
			 "0000011" when inpt = "1011" else -- B
			 "1000110" when inpt = "1100" else -- C
			 "0100001" when inpt = "1101" else -- D
			 "0000110" when inpt = "1110" else -- E
			 "0001110" when inpt = "1111";     -- F
			 
end architecture;