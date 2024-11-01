library verilog;
use verilog.vl_types.all;
entity RestadorCompleto is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_bin          : in     vl_logic;
        clk             : in     vl_logic;
        o_res           : out    vl_logic;
        o_bout          : out    vl_logic
    );
end RestadorCompleto;
