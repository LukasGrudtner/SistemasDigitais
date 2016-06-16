library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity part7 is
	port(
			KEY : in std_logic_vector(2 downto 0);
			CLOCK_50 : in std_logic;
			HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0);
			LEDG : out std_logic_vector(3 downto 0)
		);
end entity;

architecture hardware of part7 is
	
	component FSM_CLOCK
		port(
			fast, slow, clock, reset : in std_logic;
			velocidade : out std_logic
		);
	end component;
	
	component contador
		port(
			clock : in std_logic;
			velocidade : in std_logic_vector(27 downto 0);
			C : out std_logic
		);
	end component;
	
	component FSM_HELLO
		port(
			clock, reset : in std_logic;
			pipe_select : out std_logic;
			FSM_char : out std_logic_vector(6 downto 0)
		);
	end component;
	
	component registrador
		port(
			R : in std_logic_vector(6 downto 0);
			clock, reset : in std_logic;
			Q : out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal velocidade : std_logic_vector(27 downto 0);
	signal pipe_input, FSM_char : std_logic_vector(6 downto 0);
	signal pipe_select, C : std_logic;
	signal saida0, saida1, saida2, saida3, saida4, saida5, saida6, saida7 : std_logic_vector(6 downto 0);
	
begin

	L0 : FSM_CLOCK port map(KEY(1), KEY(2), CLOCK_50, KEY(0), velocidade);
	L1 : contador port map(CLOCK_50, velocidade, C);
	L2 : FSM_HELLO port map(C, KEY(0), pipe_select, FSM_char);
	
	pipe_input <= FSM_char when (pipe_select = '0') else saida7;
	
	L3 : registrador port map (pipe_input, C, SW(0), saida0);
	L4 : registrador port map (saida0, C, SW(0), saida1);
	L5 : registrador port map (saida1, C, SW(0), saida2);
	L6 : registrador port map (saida2, C, SW(0), saida3);
	L7 : registrador port map (saida3, C, SW(0), saida4);
	L8 : registrador port map (saida4, C, SW(0), saida5);
	L9 : registrador port map (saida5, C, SW(0), saida6);
	L10 : registrador port map (saida6, C, SW(0), saida7);
	
	HEX0 <= saida0;
	HEX1 <= saida1;
	HEX2 <= saida2;
	HEX3 <= saida3;
	HEX4 <= saida4;
	HEX5 <= saida5;
	HEX6 <= saida6;
	HEX7 <= saida7;
	
end architecture;
				