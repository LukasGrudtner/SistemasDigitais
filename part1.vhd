library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity part1 is
  port(
    clk, reset, w: in std_logic;
    z: out std_logic
  );
end entity;

architecture hardware of part1 is
  signal next_state: std_logic_vector(4 downto 0) := "00001";
  signal state: std_logic_vector(4 downto 0);
  signal last_w: std_logic := w;
  
  component FLIP_FLOP
    port(
      D, clk: in std_logic;
      Q: out std_logic
    );
  end component;
  
begin

  -- Registrador de Estados
  
  -- O que é isso?
  STATE_CODE: for I in 0 to 4 generate
    CODEX: FLIP_FLOP port map (next_state(I), clk, state(I));
  end generate;
  
  -- Lógica de Próximo Estado
  
  process(state, reset, w)
  begin
    last_w <= w;
    
    if reset = '1' then
      next_state <= "00001";
    else
    
      if state "00001" or w /= last_w then -- O que é "/=" ??
        next_state <= "00010";
        
      elsif state /= "10000" then
      
        for I in 4 downto 1 loop
          next_state(I) <= state(I-1);
        end loop;
        
      end if;
    end if;
  end process;
  
  -- Lógica de Saída
  
  z <= '1' when state = "10000" else '0';

end architecture;
