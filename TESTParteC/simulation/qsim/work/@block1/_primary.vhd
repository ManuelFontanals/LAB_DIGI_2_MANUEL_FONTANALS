library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        Cout1           : out    vl_logic;
        a1              : in     vl_logic;
        clk             : in     vl_logic;
        b1              : in     vl_logic;
        Cin1            : in     vl_logic;
        res1            : out    vl_logic;
        Cout2           : out    vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        Cin2            : in     vl_logic;
        res2            : out    vl_logic;
        res3            : out    vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        Cin3            : in     vl_logic;
        Cout3           : out    vl_logic;
        Cout4           : out    vl_logic;
        a4              : in     vl_logic;
        b4              : in     vl_logic;
        Cin4            : in     vl_logic;
        res4            : out    vl_logic
    );
end Block1;
