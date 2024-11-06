library verilog;
use verilog.vl_types.all;
entity ConexionMasterSlave_vlg_sample_tst is
    port(
        fin_dato        : in     vl_logic;
        fin_dir         : in     vl_logic;
        reset           : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        soy             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ConexionMasterSlave_vlg_sample_tst;
