library verilog;
use verilog.vl_types.all;
entity MaquinaEstado is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        Z               : out    vl_logic
    );
end MaquinaEstado;
