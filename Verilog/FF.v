//TESTED
module FF(clk, GlobalReset,D,Q);

parameter IN_SIZE = 10;
input                       clk, GlobalReset;
input       [IN_SIZE-1:0] D;
output  reg [IN_SIZE-1:0] Q;

always@(posedge clk) begin
    if(GlobalReset) Q <= 0;
    else            Q <= D;
end

endmodule;
