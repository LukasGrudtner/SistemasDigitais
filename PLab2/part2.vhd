library IEEE;
use IEEE.std_logic_1164.all;

entity part2 is
	generic(size: natural := 16);
	port(
			KEY : in std_logic_vector(1 downto 0);
			SW : in std_logic_vector(1 downto 0);
			HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
			);
end entity;

architecture hardware of part2 is

	component contador
		generic(size: natural := 16);
		port(
			clk, enable, reset : in std_logic;
			outp : out std_logic_vector(size-1 downto 0)
			);
	end component;
	
	component decod7seg
		port(
			inpt : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
			);
	end component;
	
	signal outp_counter : std_logic_vector(size-1 downto 0);
	
begin

	L0 : contador port map (KEY(1), SW(1), SW(0), outp_counter);
	L1 : decod7seg port map (outp_counter(15 downto 12), HEX3);
	L2 : decod7seg port map (outp_counter(11 downto 8), HEX2);
	L3 : decod7seg port map (outp_counter(7 downto 4), HEX1);
	L4 : decod7seg port map (outp_counter(3 downto 0), HEX0);

end architecture;