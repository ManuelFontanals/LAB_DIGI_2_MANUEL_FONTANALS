library verilog;
use verilog.vl_types.all;
entity SumadorDefBloq_vlg_check_tst is
    port(
        Cout1           : in     vl_logic;
        Cout2           : in     vl_logic;
        Cout3           : in     vl_logic;
        Cout4           : in     vl_logic;
        res1            : in     vl_logic;
        res2            : in     vl_logic;
        res3            : in     vl_logic;
        res4            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end SumadorDefBloq_vlg_check_tst;
