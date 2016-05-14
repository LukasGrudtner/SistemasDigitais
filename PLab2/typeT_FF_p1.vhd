library IEEE;
use IEEE.std_logic_1164.all;

entity typeT_FF is
	port(
			enable, clk, clear : in std_logic;
			Q : out std_logic
			);
end entity;

architecture hardware of typeT_FF is
signal T : std_logic;
begin

	process(clk)
	begin
		
		if(clk'event and clk = '1') then
		
			if(clear = '1') then T <= '0';
			
			elsif(enable = '1') then T <= not T;
			
			end if;
		end if;
	end process;
				 
	Q <= T;

end architecture;	
	