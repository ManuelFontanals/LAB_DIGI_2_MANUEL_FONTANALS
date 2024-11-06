library verilog;
use verilog.vl_types.all;
entity MaquinaEst2 is
    port(
        clk             : in     vl_logic;
        x               : in     vl_logic;
        reset           : in     vl_logic;
        z               : out    vl_logic
    );
end MaquinaEst2;
