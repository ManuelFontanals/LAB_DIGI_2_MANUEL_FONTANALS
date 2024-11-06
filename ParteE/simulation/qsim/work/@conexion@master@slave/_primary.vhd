library verilog;
use verilog.vl_types.all;
entity ConexionMasterSlave is
    port(
        reset           : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        fin_dir         : in     vl_logic;
        fin_dato        : in     vl_logic;
        soy             : in     vl_logic;
        Hab_dir         : out    vl_logic;
        Hab_Data        : out    vl_logic;
        ACK             : out    vl_logic
    );
end ConexionMasterSlave;
