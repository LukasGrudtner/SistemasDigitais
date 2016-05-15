library verilog;
use verilog.vl_types.all;
entity contador_p3 is
    port(
        clock           : in     vl_logic;
        outp            : out    vl_logic_vector(6 downto 0)
    );
end contador_p3;
