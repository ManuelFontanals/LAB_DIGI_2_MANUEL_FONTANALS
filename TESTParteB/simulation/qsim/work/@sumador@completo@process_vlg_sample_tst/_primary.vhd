library verilog;
use verilog.vl_types.all;
entity SumadorCompletoProcess_vlg_sample_tst is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_cin          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SumadorCompletoProcess_vlg_sample_tst;
