//TESTED
module Reg_Stage_14(
    input clk,
    input GlobalReset,
    input [25:0] Result_1,
    input [13:0] ENX_Int_2,
    output [26*14-1:0] NX_8
);

genvar k;
generate for (k = 0; k <= 13; k = k + 1) begin: Register_14
    FF_EN #(26) reg_ff_14(clk, GlobalReset, Result_1, NX_8[26*k+25:26*k], ENX_Int_2[k]);
end
endgenerate

endmodule