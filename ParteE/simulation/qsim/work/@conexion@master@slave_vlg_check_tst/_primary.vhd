library verilog;
use verilog.vl_types.all;
entity ConexionMasterSlave_vlg_check_tst is
    port(
        ACK             : in     vl_logic;
        Hab_Data        : in     vl_logic;
        Hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ConexionMasterSlave_vlg_check_tst;
