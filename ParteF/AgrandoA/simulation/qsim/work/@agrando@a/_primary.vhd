library verilog;
use verilog.vl_types.all;
entity AgrandoA is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        a_out           : out    vl_logic_vector(15 downto 0)
    );
end AgrandoA;
