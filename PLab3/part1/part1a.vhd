library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity part1a is
	generic (
		NUM_CYCLES: natural := 4
	);

	port(
		clk, reset, w: in std_logic;
		z: out std_logic
	);

end entity;

architecture rtl of part1a is
	signal state: unsigned(NUM_CYCLES downto 0);
	signal next_state: unsigned(NUM_CYCLES downto 0) := (0 => '1', others => '0');
	signal last_w: std_logic := w;

	component FLIP_FLOP
		port(
				D, clk: in std_logic;
				Q: out std_logic
		);
	end component;

begin

	--State register

	STATE_CODE: for I in 0 to NUM_CYCLES generate
		CODEX: FLIP_FLOP port map (next_state(I), clk, state(I));
	end generate;


	--Next state logic

	process (state, reset, w)
	begin

		last_w <= w;

		if reset = '1' then

			next_state <= (0 => '1', others => '0');

		elsif state(0) = '1' or w /= last_w then

				next_state <= (1 => '1', others => '0');

		elsif state(NUM_CYCLES) /= '1' then

			next_state <= shift_left(state, 1);

		end if;

	end process;


	--Output logic

	z <= '1' when state(NUM_CYCLES) = '1' else '0';

end rtl;
