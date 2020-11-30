//UNTESTED
module FF_EN(clk, GlobalReset, D, Q, EN);

parameter IN_SIZE = 10;
input                     EN, clk, GlobalReset;
input       [IN_SIZE-1:0] D;
output  reg [IN_SIZE-1:0] Q;

always@(posedge clk) begin
    if(GlobalReset) Q <= 0;
    else if(EN)     Q <= D;
    else            Q <= Q;
end

endmodule;
