
library IEEE;
use IEEE.std_logic_1164.all;

entity decod_soma is
port (
			SW : in std_logic_vector(3 downto 0);
			HEX_soma : out std_logic_vector(6 downto 0)
	  );
end entity;

architecture decodificador of decod_soma is

begin
	
	HEX_soma <= "0000010" when SW = "0000" else -- 16
					"1111000" when SW = "0001" else -- 17
					"0000000" when SW = "0010" else -- 18
					"0010000" when SW = "0011" else -- 19
					"1000000" when SW = "1010" else -- 10
					"1111001" when SW = "1011" else -- 11
					"0100100" when SW = "1100" else -- 12
					"0110000" when SW = "1101" else -- 13
					"0011001" when SW = "1110" else -- 14
					"0010010" when SW = "1111" else -- 15
					"1111111";
	
end decodificador;