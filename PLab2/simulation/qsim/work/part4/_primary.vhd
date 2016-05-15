library verilog;
use verilog.vl_types.all;
entity part4 is
    port(
        CLOCK_50        : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
end part4;
