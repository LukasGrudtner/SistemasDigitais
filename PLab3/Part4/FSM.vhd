library IEEE;
use IEEE.std_logic_1164.all;

entity FSM is
	port(
			clock, reset : in std_logic;
			w : in std_logic_vector(1 downto 0);
			count : out std_logic_vector(3 downto 0)
	);
end entity;

architecture hardware of FSM is

type State_type is (A, B, C, D, E, F, G, H, I, J);
signal EA, PE : State_type;

begin

	process(clock) -- elemento de memória
	begin
	
		if(clock'event and clock = '1') then
			if(reset = '0') then
				EA <= A;
			else
				EA <= PE;
			end if;
		end if;
	end process;

	process(w, EA) -- lógica de próximo estado
	begin
	
		case EA is
			when A => 
				case w is
					when "00" => PE <= A;
					when "01" => PE <= B;
					when "10" => PE <= C;
					when "11" => PE <= J;
				end case;
				
			when B =>
				case w is
					when "00" => PE <= B;
					when "01" => PE <= C;
					when "10" => PE <= D;
					when "11" => PE <= A;
				end case;
		
			when C =>
				case w is
					when "00" => PE <= C;
					when "01" => PE <= D;
					when "10" => PE <= E;
					when "11" => PE <= B;
				end case;
				
			when D =>
				case w is
					when "00" => PE <= D;
					when "01" => PE <= E;
					when "10" => PE <= F;
					when "11" => PE <= C;
				end case;
				
			when E =>
				case w is
					when "00" => PE <= E;
					when "01" => PE <= F;
					when "10" => PE <= G;
					when "11" => PE <= D;
				end case;
				
			when F =>
				case w is
					when "00" => PE <= F;
					when "01" => PE <= G;
					when "10" => PE <= H;
					when "11" => PE <= E;
				end case;
				
			when G =>
				case w is
					when "00" => PE <= G;
					when "01" => PE <= H;
					when "10" => PE <= I;
					when "11" => PE <= F;
				end case;
				
			when H =>
				case w is
					when "00" => PE <= H;
					when "01" => PE <= I;
					when "10" => PE <= J;
					when "11" => PE <= G;
				end case;
				
			when I =>
				case w is
					when "00" => PE <= I;
					when "01" => PE <= J;
					when "10" => PE <= A;
					when "11" => PE <= H;
				end case;
				
			when J =>
				case w is
					when "00" => PE <= J;
					when "01" => PE <= A;
					when "10" => PE <= B;
					when "11" => PE <= I;
				end case;
		end case;
	end process;
	
	process(EA) -- lógica de saída
	begin
	
		case EA is
			when A => count <= "0000";
			when B => count <= "0001";
			when C => count <= "0010";
			when D => count <= "0011";
			when E => count <= "0100";
			when F => count <= "0101";
			when G => count <= "0110";
			when H => count <= "0111";
			when I => count <= "1000";
			when J => count <= "1001";
		end case;
		
	end process;
end architecture;