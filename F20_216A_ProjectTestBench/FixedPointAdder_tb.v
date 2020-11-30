//time sclae for simulation perposes
`timescale 1 ns/10 ps

module FixedPointAdder_tb();

reg clk, rst;
reg [25:0]  in1;
reg [25:0]  in2;
wire[25:0]  out;

FixedPointAdder ADD_DUT(.clk(clk),.GlobalReset(rst),.Port1(in1),.Port2(in2),.Output_syn(out));

always #5 clk = ~clk;

initial begin
    
    clk = 1'b0;
    rst = 1'b0;

    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0;

    @(negedge clk);
    in1 = 26'd0;
    in2 = 26'd0;
    @(negedge clk);
    in1 = 26'd100;
    in2 = 26'd300;
    @(negedge clk);
    in1 = 26'd500;
    in2 = 26'd800;
    @(negedge clk);
    in1 = 26'd1000;
    in2 = 26'd2000;
    @(negedge clk);

    repeat(10) @(negedge clk);
    
    $stop();

end




endmodule;