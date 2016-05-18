library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity contador_p4 is
	port(
			clock : in std_logic;
			outp : out std_logic_vector(6 downto 0)
		 );
end entity;

architecture hardware of contador_p4 is

begin

P1 : process(clock)

	variable counter : integer range 0 to 10;

	begin
		if clock'event and clock = '1' then
			
				counter := counter + 1;
				
			if counter = 10 then
				counter := 0;
			end if;
			
			case counter is
				when 0 => outp <= "1000000";
				when 1 => outp <= "1111001";
				when 2 => outp <= "0100100";
				when 3 => outp <= "0110000";
				when 4 => outp <= "0011001";
				when 5 => outp <= "0010010";
				when 6 => outp <= "0000010";
				when 7 => outp <= "1111000";
				when 8 => outp <= "0000000";
				when 9 => outp <= "0010000";
				when others => outp <= "1111111";
					
			end case;
			
		end if;
			
	end process;

end architecture;