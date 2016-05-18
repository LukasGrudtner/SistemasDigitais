library verilog;
use verilog.vl_types.all;
entity part3_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        cnt_en          : in     vl_logic;
        sclr            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end part3_vlg_sample_tst;
