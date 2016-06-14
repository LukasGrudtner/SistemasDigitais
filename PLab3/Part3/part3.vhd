library IEEE;
use IEEE.std_logic_1164.all;

entity part3 is
	port (
			SW : in std_logic_vector(1 downto 0);
			KEY : in std_logic_vector(0 downto 0);
			LEDG : out std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(7 downto 0)
		);
end entity;

architecture hardware of part3 is

	component shift_0s
		port(
				clock, reset, w : in std_logic;
				shift0 : out std_logic_vector(3 downto 0)
			);
	end component;
	
	component shift_1s
		port(
				clock, reset, w : in std_logic;
				shift1 : out std_logic_vector(3 downto 0)
			);
	end component;
	
	signal shift0, shift1 : std_logic_vector(3 downto 0);
	signal z : std_logic;
	
begin

	L0 : shift_0s port map (KEY(0), SW(0), SW(1), shift0);
	L1 : shift_1s port map (KEY(0), SW(0), SW(1), shift1);
	
	z <= '1' when (shift0 = "0000") or (shift1 = "1111") else '0';
	
	LEDG(0) <= z;
	LEDR(7 downto 4) <= shift1;
	LEDR(3 downto 0) <= shift0;
	
end architecture;