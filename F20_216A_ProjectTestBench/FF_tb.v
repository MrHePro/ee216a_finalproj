//time sclae for simulation perposes
`timescale 1 ns/10 ps

module FF_tb();

reg clk, rst;
reg [25:0] D1;
reg [18:0] D2;
wire [25:0] Q1;
wire [18:0] Q2;


FF #(26) FF_DUT1(clk, rst, D1, Q1);
FF #(19) FF_DUT2(clk, rst, D2, Q2);

always #5 clk=~clk;

initial begin
    
    clk = 0;
    rst = 0;

    @(negedge clk);
    rst = 1;
    @(negedge clk);
    rst = 0;

    @(negedge clk);
    D1 = 26'h3ffffff;
    D2 = 19'h7ffff;

    @(negedge clk);
    D1 = 26'hffffff;
    D2 = 19'hffff;

    @(negedge clk);
    D1 = 26'h3ffffff;
    D2 = 19'h7ffff;

    
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    rst = 1;
    @(negedge clk);
    rst = 0;

    $stop();

end

endmodule