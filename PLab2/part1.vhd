library IEEE;
use IEEE.std_logic_1164.all;

entity part1 is
	port(
			KEY : in std_logic_vector(1 downto 0);
			SW : in std_logic_vector(1 downto 0);
			HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
			);
end entity;

architecture hardware of part1 is

	component typeT_FF
		port(
			enable, clk, clear : in std_logic;
			Q : out std_logic
			);
	end component;
	
	component decod7seg
		port(
			inpt : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
			);
	end component;
	
	signal saida: std_logic_vector(15 downto 0);
	signal auxiliar : std_logic_vector(15 downto 0);
	
begin

	L0 : typeT_FF port map (SW(1), KEY(1), SW(0), saida(0));
	auxiliar(0) <= (saida(0) and SW(1));
	
	L : for I in 1 to 15 generate 
			L1 : typeT_FF port map (auxiliar(I-1), KEY(1), SW(0), saida(I));
			auxiliar(I) <= (saida(I) and auxiliar(I-1));
	end generate;
	
	L2 : decod7seg port map (saida(15 downto 12), HEX3);
	L3 : decod7seg port map (saida(11 downto 8), HEX2);
	L4 : decod7seg port map (saida(7 downto 4), HEX1);
	L5 : decod7seg port map (saida(3 downto 0), HEX0);

end architecture;