--
-- 13.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity part4 is
port
	(
		SW : in std_logic_vector(8 downto 0);
		LEDR : out std_logic_vector(8 downto 0);
		LEDG : out std_logic_vector(8 downto 0);
		HEX6, HEX4, HEX1, HEX0 : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture hardware of part4 is
	
	component full_adder
		port (
					A, B, Ci : in std_logic;
					S, Co    : out std_logic
			  );
	end component;
	
	component decod7seg
		port (
					M  : in std_logic_vector(4 downto 0);
					HEX : out std_logic_vector(6 downto 0)
				);
	end component;
	
	component comparador
		port (
					SW : in std_logic_vector(7 downto 0);
					S : in std_logic_vector(4 downto 0);
					Z : out std_logic;
					Y : out std_logic
				);
	end component;
	
	component mux2x1
		port (
					S : in std_logic_vector(3 downto 0);
					Z : in std_logic;
					M : out std_logic_vector(3 downto 0)
				);
	end component;
	
	signal Cout : std_logic_vector(4 downto 0);
	signal S, M : std_logic_vector(3 downto 0);
	signal C1, C2, C3, Co, Z, Y : std_logic;
	
begin
	
L0 : full_adder port map (SW(4), SW(0), SW(8), S(0), C1);
L1 : full_adder port map (SW(5), SW(1),    C1, S(1), C2);
L2 : full_adder port map (SW(6), SW(2),    C2, S(2), C3);
L3 : full_adder port map (SW(7), SW(3),    C3, S(3), Co);
L4 : comparador port map (SW(7 downto 0), Co & S, Z, Y);
L5 : mux2x1 port map (S, Z, M);

Cout <= "0000" & Y;
	
L6 : decod7seg port map ('0' & SW(7 downto 4), HEX6);
L7 : decod7seg port map ('0' & SW(3 downto 0), HEX4);
L8 : decod7seg  port map (Cout, HEX1);
L9 : decod7seg  port map (Co & M, HEX0);

LEDR(8 downto 0) <= SW(8 downto 0);

LEDG(8) <= Z;
LEDG(7 downto 5) <= "000";
LEDG(4) <= Co;
LEDG(3 downto 0) <= M(3 downto 0);
						  
end hardware;