--
-- 07.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity part2 is
port
	(
		SW : in std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture topo_estrutural of part2 is

	component comparador
		port (
					V : in std_logic_vector(3 downto 0);
					Z : out std_logic
			   );
	end component;
	
	component circuitoA
		port (
					V : in std_logic_vector(3 downto 0);
					A : out std_logic_vector(2 downto 0)
				);
	end component;
				
	component mux2x1
		port (
					V : in std_logic_vector(3 downto 0);
					A : in std_logic_vector(2 downto 0);
					Z : in std_logic;
					M : out std_logic_vector(3 downto 0)
				);
	end component;
	
	component decod7seg
		port (
					M : in std_logic_vector(3 downto 0);
					HEX : out std_logic_vector(6 downto 0)
				);
	end component;
	
	component circuitoB
		port (
					Z : in std_logic;
					B : out std_logic_vector(6 downto 0)
				);
	end component;
	
	signal ZT : std_logic;
	signal AT : std_logic_vector(2 downto 0);
	signal MT : std_logic_vector(3 downto 0);
	
	begin
	
	L0 : comparador port map (SW(3 downto 0), ZT);
	L1 : circuitoA port map (SW(3 downto 0), AT);
	L2 : mux2x1 port map (SW(3 downto 0), AT, ZT, MT);
	L3 : decod7seg port map (MT, HEX0);
	L4 : circuitoB port map (ZT, HEX1);
	
	end topo_estrutural;