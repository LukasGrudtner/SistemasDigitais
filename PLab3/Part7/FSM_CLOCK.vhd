library IEEE;
use IEEE.std_logic_1164.all;

entity FSM_CLOCK is
	port(
			fast, slow, clock, reset : in std_logic;
			velocidade : out std_logic_vector(27 downto 0)
		);
end entity;

architecture hardware of FSM_CLOCK is
type State_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
signal EA, PE : State_type;
signal second : std_logic_vector(27 downto 0) := "10111110101111000010000000";

begin

	process(clock)
	begin
	
		if(clock'event and clock = '1') then
			if(reset = '0') then
				EA <= S0;
			else
				EA <= PE;
			end if;
		end if;
	end process;
	
	process(EA)
	begin
	
		case EA is
			when S0 =>
				if (fast = '1' and slow = '0') then PE <= S1;
				elsif (fast = '0' and slow = '1') then PE <= S5;
				else PE <= S0;
				end if;
			when S1 => 
				if (fast = '1' and slow = '0') then PE <= S2;
				elsif (fast = '0' and slow = '1') then PE <= S0;
				else PE <= S1;
				end if;
			when S2 =>
				if (fast = '1' and slow = '0') then PE <= S3;
				elsif (fast = '0' and slow = '1') then PE <= S1;
				else PE <= S2;
				end if;
			when S3 => 
				if (fast = '1' and slow = '0') then PE <= S4;
				elsif (fast = '0' and slow = '1') then PE <= S2;
				else PE <= S3;
				end if;
			when S4 => 
				if (fast = '1' and slow = '0') then PE <= S4;
				elsif (fast = '0' and slow = '1') then PE <= S3;
				else PE <= S4;
				end if;
			when S5 =>
				if (fast = '1' and slow = '0') then PE <= S0;
				elsif (fast = '0' and slow = '1') then PE <= S6;
				else PE <= S5;
				end if;
			when S6 =>
				if (fast = '1' and slow = '0') then PE <= S5;
				elsif (fast = '0' and slow = '1') then PE <= S7;
				else PE <= S6;
				end if;
			when S7 =>
				if (fast = '1' and slow = '0') then PE <= S6;
				elsif (fast = '0' and slow = '1') then PE <= S8;
				else PE <= S7;
				end if;
			when S8 =>
				if (fast = '1' and slow = '0') then PE <= S7;
				elsif (fast = '0' and slow = '1') then PE <= S8;
				else PE <= S8;
				end if;
		end case;
	end process;
	
	process(EA)
	begin
	
		case EA is
			when S0 =>
				velocidade(27 downto 0) <= second(27 downto 0);
			when S1 => 
				velocidade(27) <= '0';
				velocidade(26 downto 0) <= second(27 downto 1);
			when S2 => 
				velocidade(27 downto 26) <= "00";
				velocidade(25 downto 0) <= second(27 downto 2);
			when S3 => 
				velocidade(27 downto 25) <= "000";
				velocidade(24 downto 0) <= second(27 downto 3);
			when S4 => 
				velocidade(27 downto 24) <= "0000";
				velocidade(23 downto 0) <= second(27 downto 4);
			when S5 =>
				velocidade(27 downto 1) <= second(26 downto 0);
				velocidade(0) <= "0";
			when S6 =>
				velocidade(27 downto 2) <= second(25 downto 0);
				velocidade(1 downto 0) <= "00";
			when S7 =>
				velocidade(27 downto 3) <= second(24 downto 0);
				velocidade(2 downto 0) <= "000";
			when S8 =>
				velocidade(27 downto 4) <= second(23 downto 0);
				velocidade(3 downto 0) <= "0000";
		end case;
	end process;
end architecture;