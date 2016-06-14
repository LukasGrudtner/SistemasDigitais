library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;

entity decod7seg is
	port(
			input : in std_logic_vector(3 downto 0);
			display : out std_logic_vector(6 downto 0)
		);
end entity;

architecture hardware of decod7seg is
begin

	 display <= "1000000" when input = "0000" else -- 0
					"1111001" when input = "0001" else -- 1
					"0100100" when input = "0010" else -- 2
					"0110000" when input = "0011" else -- 3
					"0011001" when input = "0100" else -- 4
					"0010010" when input = "0101" else -- 5
					"0000010" when input = "0110" else -- 6
					"1111000" when input = "0111" else -- 7
					"0000000" when input = "1000" else -- 8
					"0010000" when input = "1001";     -- 9
					
end architecture;