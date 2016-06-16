library IEEE;
use IEEE.std_logic_1164.all;

entity FSM is
	port(
			w, clock, reset : in std_logic;
			z : out std_logic;
			LEDR : out std_logic_vector(8 downto 0)
	);
end entity;

architecture hardware of FSM is

	type State_type is (A, B, C, D, E, F, G, H, I);
	signal EA, PE : State_type;

begin

process (w, EA)
	begin

		case EA IS
			when A =>	if (w = '0') then PE <= B;
							else PE <= F;
							end if;
				
			
			when B =>	if (w = '0') then PE <= C;
							else PE <= F;
							end if;
				
			
			when C =>	if (w = '0') then PE <= D;
							else PE <= F;
							end if;
				
			
			when D =>	if (w = '0') then PE <= E;
							else PE <= F;
							end if;
			
			when E =>	if (w = '0') then PE <= E;
							else PE <= F;
							end if;
			
			when F => 	if (w = '1') then PE <= G;
							else PE <= B;
							end if;
				
			when G => 	if (w = '1') then PE <= H;
							else PE <= B;
							end if;
							
			when H =>	if (w = '1') then PE <= I;
							else PE <= B;
							end if;
							
			when I =>	if (w = '1') then PE <= I;
							else PE <= B;
							end if;
				
			when others => PE <= A;
		end case;
	end process;
	
	process (clock)
	begin
	
		if(clock'event and clock = '1') then 
			if reset = '0' then 
				EA <= A;
			else
				EA <= PE;
			end if;
		end if;
	end process;
	
	z <= '1' when (EA = E) or (EA = I) else '0';
	
	process(EA)
	begin
	
		LEDR <= "000000000";
	
		case EA is
			when A => LEDR <= "000000001";
			when B => LEDR <= "000000010";
			when C => LEDR <= "000000100";
			when D => LEDR <= "000001000";
			when E => LEDR <= "000010000";
			when F => LEDR <= "000100000";
			when G => LEDR <= "001000000";
			when H => LEDR <= "010000000";
			when I => LEDR <= "100000000";
		end case;
		
	end process;
end architecture;