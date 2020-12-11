//TESTED
module Reg_Stage(
    input clk,
    input GlobalReset,
    input [25:0] Result_1,
    input [7:0] ENX_Int,
    output [26*8-1:0] NX_8
);

genvar k;
generate for (k = 0; k <= 7; k = k + 1) begin: Register_8
    FF_EN #(26) reg_ff_8(clk, GlobalReset, Result_1, NX_8[26*k+25:26*k], ENX_Int[k]);
end
endgenerate

endmodule