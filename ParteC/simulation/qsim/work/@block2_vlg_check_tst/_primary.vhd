library verilog;
use verilog.vl_types.all;
entity Block2_vlg_check_tst is
    port(
        Bout            : in     vl_logic;
        res1            : in     vl_logic;
        res2            : in     vl_logic;
        res3            : in     vl_logic;
        res4            : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block2_vlg_check_tst;
