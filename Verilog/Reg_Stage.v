//TESTED
module Reg_Stage(
    input clk,
    input GlobalReset,
    input [25:0] Result_1,
    input [27:0] ENX_Int,
    output [26*28-1:0] NX_28
);

genvar k;
generate for (k = 0; k <= 27; k = k + 1) begin
    FF_EN #(26) reg_ff_28(clk, GlobalReset, Result_1, NX_28[26*k+25:26*k], ENX_Int[k]);
end
endgenerate

endmodule