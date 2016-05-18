library IEEE;
use IEEE.std_logic_1164.all;

entity part5 is
	port(
			CLOCK_50 : in std_logic;
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
		 );
end entity;

architecture hardware of part5 is

	component FSM_clock
		port(
				clock : in std_logic;
				C : out std_logic
			  );
	end component;
	
	component FSM_hello
		port(
				clock : in std_logic;
				outp0, outp1, outp2, outp3, outp4, outp5, outp6, outp7 : out std_logic_vector(2 downto 0)
			  );
	end component;
	
	component decod7seg_p5
		port(
				inpt : in std_logic_vector(2 downto 0);
				HEX : out std_logic_vector(6 downto 0)
				);
	end component;
	
	signal C : std_logic;
	signal outp0, outp1, outp2, outp3, outp4, outp5, outp6, outp7 : std_logic_vector(2 downto 0);
	
	begin
	
	L0 : FSM_clock port map (CLOCK_50, C);
	L1 : FSM_hello port map (C, outp0, outp1, outp2, outp3, outp4, outp5, outp6, outp7);
	L2 : decod7seg_p5 port map (outp0, HEX0);
	L3 : decod7seg_p5 port map (outp1, HEX1);
	L4 : decod7seg_p5 port map (outp2, HEX2);
	L5 : decod7seg_p5 port map (outp3, HEX3);
	L6 : decod7seg_p5 port map (outp4, HEX4);
	L7 : decod7seg_p5 port map (outp5, HEX5);
	L8 : decod7seg_p5 port map (outp6, HEX6);
	L9 : decod7seg_p5 port map (outp7, HEX7);
	
end architecture;