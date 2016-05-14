--
-- 07.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity decod7seg is
port (
			M : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
	  );
end entity;

architecture decodificador of decod7seg is

begin
	
	HEX <= "1000000" when M = "0000" else -- 0
			 "1111001" when M = "0001" else -- 1
			 "0100100" when M = "0010" else -- 2
			 "0110000" when M = "0011" else -- 3
			 "0011001" when M = "0100" else -- 4
			 "0010010" when M = "0101" else -- 5
			 "0000010" when M = "0110" else -- 6
			 "1111000" when M = "0111" else -- 7
			 "0000000" when M = "1000" else -- 8
			 "0010000" when M = "1001" else -- 9
			 "1111111";

end decodificador;