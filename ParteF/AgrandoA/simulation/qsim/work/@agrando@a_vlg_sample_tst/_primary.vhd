library verilog;
use verilog.vl_types.all;
entity AgrandoA_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end AgrandoA_vlg_sample_tst;
