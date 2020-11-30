module FixedPointMultiplier_tb();

reg clk, rst;
reg [18:0]  in1;
reg [9:0]   in2;
wire[25:0]  out;

FixedPointMultiplier MULT_DUT(.clk(clk),.GlobalReset(rst),.WeightPort(in1),.PixelPort(in2),.Output_syn(out));

always #5 clk = ~clk;

initial begin
    
    clk = 1'b0;
    rst = 1'b0;

    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0;

    @(negedge clk);
    in1 = 19'd0;
    in2 = 10'd0;
    @(negedge clk);
    in1 = 19'd10;
    in2 = 10'd5;
    @(negedge clk);
    in1 = 19'd50;
    in2 = 10'd8;
    @(negedge clk);
    in1 = 19'd100;
    in2 = 10'd20;
    @(negedge clk);

    repeat(10) @(negedge clk);

    $stop();

end





endmodule;