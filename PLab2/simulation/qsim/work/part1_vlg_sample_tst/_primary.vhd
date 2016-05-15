library verilog;
use verilog.vl_types.all;
entity part1_vlg_sample_tst is
    port(
        KEY0            : in     vl_logic;
        SW              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end part1_vlg_sample_tst;
