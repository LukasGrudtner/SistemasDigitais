library IEEE;
use IEEE.std_logic_1164.all;

entity decod7seg_p5 is
	port (
			inpt : in std_logic_vector(2 downto 0);
			HEX : out std_logic_vector(6 downto 0)
			);
end entity;

architecture hardware of decod7seg_p5 is
begin

	HEX <= "0001001" when inpt = "000" else -- H
			 "0000110" when inpt = "001" else -- E
			 "1000111" when inpt = "010" else -- L
			 "1000000" when inpt = "011" else -- O
			 "1111111";
			 
end architecture;