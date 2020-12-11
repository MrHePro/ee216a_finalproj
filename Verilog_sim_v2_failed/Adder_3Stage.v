//TESTED
module Adder_3Stage(
    input clk,
    input GlobalReset,
    input[26*7-1:0] Result_7,
    input[25:0] Beta,
    output[25:0] Result_1
);



    //4////////////////////////////////////////////////
    //pipelined reg
    wire    [26*4-1:0]  Result_7_FF1, Result_7_FF2, Result_4;
    FF #(26*4) FF_Port1_4(clk, GlobalReset, Result_7[26*4-1:0],    Result_7_FF1);
    FF #(26*4) FF_Port2_4(clk, GlobalReset, {Beta,Result_7[26*7-1:26*4]}, Result_7_FF2);

    //4 adder
    genvar k;
    generate for (k = 0; k <= 3; k = k + 1) begin
        FixedPointAdder Add_4(clk, GlobalReset, Result_7_FF2[26*k+25:26*k], Result_7_FF1[26*k+25:26*k], Result_4[26*k+25:26*k]);
    end
    endgenerate



    //2////////////////////////////////////////////////
    //pipelined reg
    wire    [26*2-1:0]  Result_4_FF1, Result_4_FF2, Result_2;
    FF #(26*2) FF_Port1_2(clk, GlobalReset, Result_4[26*2-1:0],    Result_4_FF1);
    FF #(26*2) FF_Port2_2(clk, GlobalReset, Result_4[26*4-1:26*2], Result_4_FF2);

    //2 adder
    generate for (k = 0; k <= 1; k = k + 1) begin
        FixedPointAdder Add_2(clk, GlobalReset, Result_4_FF2[26*k+25:26*k], Result_4_FF1[26*k+25:26*k], Result_2[26*k+25:26*k]);
    end
    endgenerate



    //1////////////////////////////////////////////////
    //pipelined reg
    wire    [26*1-1:0]  Result_2_FF1, Result_2_FF2;
    FF #(26*1) FF_Port1_1(clk, GlobalReset, Result_2[26*1-1:0],    Result_2_FF1);
    FF #(26*1) FF_Port2_1(clk, GlobalReset, Result_2[26*2-1:26*1], Result_2_FF2);

    //1 adder
    FixedPointAdder Add_1(clk, GlobalReset, Result_2_FF2[26*0+25:26*0], Result_2_FF1[26*0+25:26*0], Result_1[26*0+25:26*0]);


endmodule