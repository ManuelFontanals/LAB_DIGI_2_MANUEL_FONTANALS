library verilog;
use verilog.vl_types.all;
entity RestadorCompleto_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_bin          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RestadorCompleto_vlg_sample_tst;
