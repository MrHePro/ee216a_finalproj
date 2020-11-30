module Mult_Stage_tb();

reg clk, GlobalReset;
reg [531:0] WeightX;
reg [279:0] PixelX;
wire [26*28-1:0] Output_syn;


reg [9:0] Pix_224;
reg [9:0] Pix_225;
reg [9:0] Pix_226;
reg [9:0] Pix_227;
reg [9:0] Pix_228;
reg [9:0] Pix_229;
reg [9:0] Pix_230;
reg [9:0] Pix_231;
reg [9:0] Pix_232;
reg [9:0] Pix_233;
reg [9:0] Pix_234;
reg [9:0] Pix_235;
reg [9:0] Pix_236;
reg [9:0] Pix_237;
reg [9:0] Pix_238;
reg [9:0] Pix_239;
reg [9:0] Pix_240;
reg [9:0] Pix_241;
reg [9:0] Pix_242;
reg [9:0] Pix_243;
reg [9:0] Pix_244;
reg [9:0] Pix_245;
reg [9:0] Pix_246;
reg [9:0] Pix_247;
reg [9:0] Pix_248;
reg [9:0] Pix_249;
reg [9:0] Pix_250;
reg [9:0] Pix_251;


reg [18:0] Wgt_7_224;
reg [18:0] Wgt_7_225;
reg [18:0] Wgt_7_226;
reg [18:0] Wgt_7_227;
reg [18:0] Wgt_7_228;
reg [18:0] Wgt_7_229;
reg [18:0] Wgt_7_230;
reg [18:0] Wgt_7_231;
reg [18:0] Wgt_7_232;
reg [18:0] Wgt_7_233;
reg [18:0] Wgt_7_234;
reg [18:0] Wgt_7_235;
reg [18:0] Wgt_7_236;
reg [18:0] Wgt_7_237;
reg [18:0] Wgt_7_238;
reg [18:0] Wgt_7_239;
reg [18:0] Wgt_7_240;
reg [18:0] Wgt_7_241;
reg [18:0] Wgt_7_242;
reg [18:0] Wgt_7_243;
reg [18:0] Wgt_7_244;
reg [18:0] Wgt_7_245;
reg [18:0] Wgt_7_246;
reg [18:0] Wgt_7_247;
reg [18:0] Wgt_7_248;
reg [18:0] Wgt_7_249;
reg [18:0] Wgt_7_250;
reg [18:0] Wgt_7_251;


wire [25:0] w_01,w_02,w_03,w_04,w_05,w_06,w_07,w_08,w_09,w_10,w_11,w_12,w_13,w_14,w_15,w_16,w_17,w_18,w_19,w_20,w_21,w_22,w_23,w_24,w_25,w_26,w_27,w_28;

assign {w_01,w_02,w_03,w_04,w_05,w_06,w_07,w_08,w_09,w_10,w_11,w_12,w_13,w_14,w_15,w_16,w_17,w_18,w_19,w_20,w_21,w_22,w_23,w_24,w_25,w_26,w_27,w_28} = Output_syn;


integer d_01,d_02,d_03,d_04,d_05,d_06,d_07,d_08,d_09,d_10,d_11,d_12,d_13,d_14,d_15,d_16,d_17,d_18,d_19,d_20,d_21,d_22,d_23,d_24,d_25,d_26,d_27,d_28;


Mult_Stage MS_DUT(clk, GlobalReset, WeightX, PixelX, Output_syn);

always #5 clk=~clk;

initial begin
    
    clk = 0;
    GlobalReset = 0;

    Pix_224 = 10'b0000000000;
    Pix_225 = 10'b0000000000;
    Pix_226 = 10'b0000000000;
    Pix_227 = 10'b0000000000;
    Pix_228 = 10'b0000000000;
    Pix_229 = 10'b0000000000;
    Pix_230 = 10'b0011011110;
    Pix_231 = 10'b0011111110;
    Pix_232 = 10'b0011111110;
    Pix_233 = 10'b0011111110;
    Pix_234 = 10'b0011111110;
    Pix_235 = 10'b0011110001;
    Pix_236 = 10'b0011000110;
    Pix_237 = 10'b0011000110;
    Pix_238 = 10'b0011000110;
    Pix_239 = 10'b0011000110;
    Pix_240 = 10'b0011000110;
    Pix_241 = 10'b0011000110;
    Pix_242 = 10'b0011000110;
    Pix_243 = 10'b0011000110;
    Pix_244 = 10'b0010101010;
    Pix_245 = 10'b0000110100;
    Pix_246 = 10'b0000000000;
    Pix_247 = 10'b0000000000;
    Pix_248 = 10'b0000000000;
    Pix_249 = 10'b0000000000;
    Pix_250 = 10'b0000000000;
    Pix_251 = 10'b0000000000;

    Wgt_7_224 = 19'b1111111101111001101;
    Wgt_7_225 = 19'b0000000000010111111;
    Wgt_7_226 = 19'b0000000000010101111;
    Wgt_7_227 = 19'b1111111111111100000;
    Wgt_7_228 = 19'b1111111111111101010;
    Wgt_7_229 = 19'b1111111111111100011;
    Wgt_7_230 = 19'b1111111111111111101;
    Wgt_7_231 = 19'b0000000000000101010;
    Wgt_7_232 = 19'b0000000000000010011;
    Wgt_7_233 = 19'b0000000000000001111;
    Wgt_7_234 = 19'b0000000000000011010;
    Wgt_7_235 = 19'b0000000000000011001;
    Wgt_7_236 = 19'b0000000000000001100;
    Wgt_7_237 = 19'b0000000000000000011;
    Wgt_7_238 = 19'b0000000000000000111;
    Wgt_7_239 = 19'b0000000000000000110;
    Wgt_7_240 = 19'b1111111111111111111;
    Wgt_7_241 = 19'b0000000000000000110;
    Wgt_7_242 = 19'b1111111111111111011;
    Wgt_7_243 = 19'b0000000000000000000;
    Wgt_7_244 = 19'b1111111111111111101;
    Wgt_7_245 = 19'b1111111111111111011;
    Wgt_7_246 = 19'b0000000000000001000;
    Wgt_7_247 = 19'b0000000000000010000;
    Wgt_7_248 = 19'b1111111111111101011;
    Wgt_7_249 = 19'b0000000000000000001;
    Wgt_7_250 = 19'b0000000000000001101;
    Wgt_7_251 = 19'b1111111111101110000;

    
    d_01 = Wgt_7_224 * Pix_224;
    d_02 = Wgt_7_225 * Pix_225;
    d_03 = Wgt_7_226 * Pix_226;
    d_04 = Wgt_7_227 * Pix_227;
    d_05 = Wgt_7_228 * Pix_228;
    d_06 = Wgt_7_229 * Pix_229;
    d_07 = Wgt_7_230 * Pix_230;
    d_08 = Wgt_7_231 * Pix_231;
    d_09 = Wgt_7_232 * Pix_232;
    d_10 = Wgt_7_233 * Pix_233;
    d_11 = Wgt_7_234 * Pix_234;
    d_12 = Wgt_7_235 * Pix_235;
    d_13 = Wgt_7_236 * Pix_236;
    d_14 = Wgt_7_237 * Pix_237;
    d_15 = Wgt_7_238 * Pix_238;
    d_16 = Wgt_7_239 * Pix_239;
    d_17 = Wgt_7_240 * Pix_240;
    d_18 = Wgt_7_241 * Pix_241;
    d_19 = Wgt_7_242 * Pix_242;
    d_20 = Wgt_7_243 * Pix_243;
    d_21 = Wgt_7_244 * Pix_244;
    d_22 = Wgt_7_245 * Pix_245;
    d_23 = Wgt_7_246 * Pix_246;
    d_24 = Wgt_7_247 * Pix_247;
    d_25 = Wgt_7_248 * Pix_248;
    d_26 = Wgt_7_249 * Pix_249;
    d_27 = Wgt_7_250 * Pix_250;
    d_28 = Wgt_7_251 * Pix_251;

    @(negedge clk);
    GlobalReset = 1;
    @(negedge clk);
    GlobalReset = 0;

    @(negedge clk);
    WeightX = {Wgt_7_224,Wgt_7_225,Wgt_7_226,Wgt_7_227,Wgt_7_228,Wgt_7_229,Wgt_7_230,Wgt_7_231,Wgt_7_232,Wgt_7_233,Wgt_7_234,Wgt_7_235,Wgt_7_236,Wgt_7_237,Wgt_7_238,Wgt_7_239,Wgt_7_240,Wgt_7_241,Wgt_7_242,Wgt_7_243,Wgt_7_244,Wgt_7_245,Wgt_7_246,Wgt_7_247,Wgt_7_248,Wgt_7_249,Wgt_7_250,Wgt_7_251};
    PixelX = {Pix_224,Pix_225,Pix_226,Pix_227,Pix_228,Pix_229,Pix_230,Pix_231,Pix_232,Pix_233,Pix_234,Pix_235,Pix_236,Pix_237,Pix_238,Pix_239,Pix_240,Pix_241,Pix_242,Pix_243,Pix_244,Pix_245,Pix_246,Pix_247,Pix_248,Pix_249,Pix_250,Pix_251};
    
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);



    @(negedge clk);
    GlobalReset = 1;
    @(negedge clk);
    GlobalReset = 0;

    $stop();

end


endmodule