library verilog;
use verilog.vl_types.all;
entity Block2 is
    port(
        clk             : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        bin1            : in     vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        a4              : in     vl_logic;
        b4              : in     vl_logic;
        res1            : out    vl_logic;
        res2            : out    vl_logic;
        res3            : out    vl_logic;
        res4            : out    vl_logic;
        Bout            : out    vl_logic;
        Z               : out    vl_logic
    );
end Block2;
