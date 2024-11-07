library verilog;
use verilog.vl_types.all;
entity AgrandoA_vlg_check_tst is
    port(
        a_out           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end AgrandoA_vlg_check_tst;
