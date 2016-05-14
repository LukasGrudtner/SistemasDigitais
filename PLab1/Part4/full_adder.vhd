--
-- 08.04.2016
--

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
port
	(
		A, B, Ci : in std_logic;
		S, Co : out std_logic
	);
end entity;

architecture hardware of full_adder is

signal AB : std_logic;

begin

	AB <= A xor B;
	S <= AB xor Ci;
	Co <= B when AB = '0' else Ci;
	
end hardware;