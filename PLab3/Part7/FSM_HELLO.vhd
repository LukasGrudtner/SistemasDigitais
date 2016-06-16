library IEEE;
use IEEE.std_logic_1164.all;

entity FSM_HELLO is
	port(
			clock, reset : in std_logic;
			pipe_select : out std_logic;
			FSM_char : out std_logic_vector(6 downto 0)
		);
end entity;

architecture hardware of FSM_HELLO is

	type State_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
	signal EA, PE : State_type;

	constant H : std_logic_vector(6 downto 0):= "0001001";
	constant E : std_logic_vector(6 downto 0):= "0000110";
	constant L : std_logic_vector(6 downto 0):= "1000111";
	constant O : std_logic_vector(6 downto 0):= "1000000";
	constant Espaco : std_logic_vector(6 downto 0):= "1111111";
	
begin

	process(clock) -- elemento de memória
	begin
	
		if(clock'event and clock = '1') then
			if(reset = '0') then
				EA <= S0;
			else
				EA <= PE;
			end if;
		end if;
	end process;

	process(EA) -- lógica de próximo estado
	begin
	
		case EA is
			when S0 => PE <= S1;
			when S1 => PE <= S2;
			when S2 => PE <= S3;
			when S3 => PE <= S4;
			when S4 => PE <= S5;
			when S5 => PE <= S6;
			when S6 => PE <= S7;
			when S7 => PE <= S8;
			when S8 => PE <= S8;
		end case;
	end process;
	
	process(EA) -- lógica de saída
	begin
		
		pipe_select <= '0';
		FSM_char <= "-------";
		
		case EA is
			when S0 => FSM_char <= H;
			when S1 => FSM_char <= E;
			when S2 => FSM_char <= L;
			when S3 => FSM_char <= L;
			when S4 => FSM_char <= O;
			when S5 => FSM_char <= Espaco;
			when S6 => FSM_char <= Espaco;
			when S7 => FSM_char <= Espaco;
			when S8 => pipe_select <= '1';
		end case;
	end process;
end architecture;