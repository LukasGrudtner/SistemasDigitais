library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity contador_p2 is
	generic(size: natural := 16);
	port (
		clk, enable, reset : in std_logic;
		outp : out std_logic_vector(size-1 downto 0)
		);
end entity;

architecture hardware of contador_p2 is

signal count : std_logic_vector(size-1 downto 0) := (others => '0');
signal max : std_logic_vector(size-1 downto 0) := (others => '1');

begin

	outp <= count;
	
process(clk, reset)
	begin
	
	if reset = '1' then 
		count <= (others => '0');
	
	elsif (clk'event and clk = '1') then
	
		if(enable = '1') then
			count <= count + 1;
		end if;
		
		if(count = max) then
			count <= (others => '0');
		end if;
		
	end if;
end process;
end architecture;