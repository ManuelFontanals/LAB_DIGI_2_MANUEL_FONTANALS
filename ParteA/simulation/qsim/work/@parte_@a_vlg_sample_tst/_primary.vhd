library verilog;
use verilog.vl_types.all;
entity Parte_A_vlg_sample_tst is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Parte_A_vlg_sample_tst;
