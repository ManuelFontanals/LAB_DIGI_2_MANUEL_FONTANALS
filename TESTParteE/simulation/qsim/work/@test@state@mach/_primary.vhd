library verilog;
use verilog.vl_types.all;
entity TestStateMach is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        z               : out    vl_logic
    );
end TestStateMach;
