library verilog;
use verilog.vl_types.all;
entity part4_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end part4_vlg_check_tst;
