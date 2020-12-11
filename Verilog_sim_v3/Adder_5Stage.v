//TESTED
//-5 stage to get result
module Adder_5Stage(
    input clk,
    input GlobalReset,
    input[26*28-1:0] Result_28,
    input[25:0] Beta,
    output[25:0] Result_1
);


    //14///////////////////////////////////////////////
    //pipelined reg
    wire    [26*14-1:0] Result_28_FF1, Result_28_FF2, Result_14;
    assign Result_28_FF1 = Result_28[26*14-1:0];
    assign Result_28_FF2 = Result_28[26*28-1:26*14];
    //FF #(26*14) FF_Port1_14(clk, GlobalReset, Result_28[26*14-1:0],     Result_28_FF1);
    //FF #(26*14) FF_Port2_14(clk, GlobalReset, Result_28[26*28-1:26*14], Result_28_FF2);

    //Flop Beta 3 times to consistant with pipeline
    wire    [26-1:0] Beta_28_FF, Beta_28_FF1, Beta_28_FF2;
    assign Beta_28_FF1 = Beta;
    //FF #(26) FF_Beta_14_0(clk, GlobalReset, Beta, Beta_28_FF1);
    FF #(26) FF_Beta_14_1(clk, GlobalReset, Beta_28_FF1, Beta_28_FF2);
    FF #(26) FF_Beta_14_2(clk, GlobalReset, Beta_28_FF2, Beta_28_FF);

    //14 adder
    genvar k;
    generate for (k = 0; k <= 13; k = k + 1) begin:adder_14
        FixedPointAdder Add_14(clk, GlobalReset, Result_28_FF2[26*k+25:26*k], Result_28_FF1[26*k+25:26*k], Result_14[26*k+25:26*k]);
    end
    endgenerate



    //7////////////////////////////////////////////////
    //pipelined reg
    wire    [26*7-1:0]  Result_14_FF1, Result_14_FF2, Result_7;
    assign Result_14_FF1 = Result_14[26*7-1:0];
    assign Result_14_FF2 = Result_14[26*14-1:26*7];
    //FF #(26*7) FF_Port1_7(clk, GlobalReset, Result_14[26*7-1:0],     Result_14_FF1);
    //FF #(26*7) FF_Port2_7(clk, GlobalReset, Result_14[26*14-1:26*7], Result_14_FF2);

    //Flop Beta 3 times to consistant with pipeline
    wire    [26-1:0] Beta_14_FF, Beta_14_FF1, Beta_14_FF2;
    assign Beta_14_FF1 = Beta_28_FF;
    //FF #(26) FF_Beta_7_0(clk, GlobalReset, Beta_28_FF, Beta_14_FF1);
    FF #(26) FF_Beta_7_1(clk, GlobalReset, Beta_14_FF1, Beta_14_FF2);
    FF #(26) FF_Beta_7_2(clk, GlobalReset, Beta_14_FF2, Beta_14_FF);

    //7 adder
    generate for (k = 0; k <= 6; k = k + 1) begin:adder_7
        FixedPointAdder Add_7(clk, GlobalReset, Result_14_FF2[26*k+25:26*k], Result_14_FF1[26*k+25:26*k], Result_7[26*k+25:26*k]);
    end
    endgenerate



    //4////////////////////////////////////////////////
    //pipelined reg
    wire    [26*4-1:0]  Result_7_FF1, Result_7_FF2, Result_4;
    assign Result_7_FF1 = Result_7[26*4-1:0];
    assign Result_7_FF2 = {Beta_14_FF,Result_7[26*7-1:26*4]};
    //FF #(26*4) FF_Port1_4(clk, GlobalReset, Result_7[26*4-1:0],    Result_7_FF1);
    //FF #(26*4) FF_Port2_4(clk, GlobalReset, {Beta_14_FF,Result_7[26*7-1:26*4]}, Result_7_FF2);

    //4 adder
    generate for (k = 0; k <= 3; k = k + 1) begin:adder_4
        FixedPointAdder Add_4(clk, GlobalReset, Result_7_FF2[26*k+25:26*k], Result_7_FF1[26*k+25:26*k], Result_4[26*k+25:26*k]);
    end
    endgenerate



    //2////////////////////////////////////////////////
    //pipelined reg
    wire    [26*2-1:0]  Result_4_FF1, Result_4_FF2, Result_2;
    assign Result_4_FF1 = Result_4[26*2-1:0];
    assign Result_4_FF2 = Result_4[26*4-1:26*2];
    //FF #(26*2) FF_Port1_2(clk, GlobalReset, Result_4[26*2-1:0],    Result_4_FF1);
    //FF #(26*2) FF_Port2_2(clk, GlobalReset, Result_4[26*4-1:26*2], Result_4_FF2);

    //2 adder
    generate for (k = 0; k <= 1; k = k + 1) begin:adder_2
        FixedPointAdder Add_2(clk, GlobalReset, Result_4_FF2[26*k+25:26*k], Result_4_FF1[26*k+25:26*k], Result_2[26*k+25:26*k]);
    end
    endgenerate



    //1////////////////////////////////////////////////
    //pipelined reg
    wire    [26*1-1:0]  Result_2_FF1, Result_2_FF2;
    assign Result_2_FF1 = Result_2[26*1-1:0];
    assign Result_2_FF2 = Result_2[26*2-1:26*1];
    //FF #(26*1) FF_Port1_1(clk, GlobalReset, Result_2[26*1-1:0],    Result_2_FF1);
    //FF #(26*1) FF_Port2_1(clk, GlobalReset, Result_2[26*2-1:26*1], Result_2_FF2);

    //1 adder
    FixedPointAdder Add_1(clk, GlobalReset, Result_2_FF2[26*0+25:26*0], Result_2_FF1[26*0+25:26*0], Result_1[26*0+25:26*0]);


endmodule