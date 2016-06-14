library IEEE;
use IEEE.std_logic_1164.all;

entity part6 is
	port(
			SW : in std_logic_vector(0 downto 0);
			CLOCK_50 : in std_logic;
			HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture hardware of part6 is

	component registrador
		port( R : in std_logic_vector(6 downto 0);
				clock, reset : in std_logic;
				Q : out std_logic_vector(6 downto 0)
			);
	end component;
	
	component FSM
		port(
			clock, reset : in std_logic;
			pipe_select : out std_logic;
			FSM_char : out std_logic_vector(6 downto 0)
		);
	end component;
	
	component contador
		port(
				clock : in std_logic;
				C : out std_logic
			);
	end component;
	
	signal pipe_input, FSM_char : std_logic_vector(6 downto 0);
	signal pipe_select, C : std_logic;
	signal saida0, saida1, saida2, saida3, saida4, saida5, saida6, saida7 : std_logic_vector(6 downto 0);
	
begin 

	L0 : contador port map(CLOCK_50, C);

	L1 : FSM port map(C, SW(0), pipe_select, FSM_char);
	
	pipe_input <= FSM_char when (pipe_select = '0') else saida7;
	
	-- registrador (R, clock, reset, Q)
	L2 : registrador port map (pipe_input, C, SW(0), saida0);
	L3 : registrador port map (saida0, C, SW(0), saida1);
	L4 : registrador port map (saida1, C, SW(0), saida2);
	L5 : registrador port map (saida2, C, SW(0), saida3);
	L6 : registrador port map (saida3, C, SW(0), saida4);
	L7 : registrador port map (saida4, C, SW(0), saida5);
	L8 : registrador port map (saida5, C, SW(0), saida6);
	L9 : registrador port map (saida6, C, SW(0), saida7);
	
	HEX0 <= saida0;
	HEX1 <= saida1;
	HEX2 <= saida2;
	HEX3 <= saida3;
	HEX4 <= saida4;
	HEX5 <= saida5;
	HEX6 <= saida6;
	HEX7 <= saida7;
	
end architecture;