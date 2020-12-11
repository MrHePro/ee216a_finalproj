//TESTED
/* 
Problem: 7_230: 222*524285 = 67,108,198 should be 116,391,270
Problem: 7_240: 198*524287 = 
*/
module Mult_Stage(
    input clk,
    input GlobalReset,
    input [531:0] WeightX,
    input [279:0] PixelX,
    output[26*28-1:0] Output_syn
);

    wire [531:0]    WeightPort;
    wire [279:0]    PixelPort;

    //pipelined reg
    FF #(28*19) FF_Weight(clk, GlobalReset, WeightX, WeightPort);
    FF #(28*10) FF_Pixel(clk, GlobalReset, PixelX, PixelPort);

    //28 multiplier
    genvar k;
    generate for (k = 0; k <= 27; k = k + 1) begin: multiplier_28
        FixedPointMultiplier Mult(clk, GlobalReset, WeightPort[19*k+18:19*k], PixelPort[10*k+9:10*k], Output_syn[26*k+25:26*k]);
    end
    endgenerate

    /*reg [18:0] WeightTest[0:27];
    generate for (k = 0; k <= 27; k = k + 1) begin
        assign WeightTest[k] = WeightPort[19*k+18:19*k];
    end
    endgenerate
    
    reg [18:0] PixelTest[0:27];
    generate for (k = 0; k <= 27; k = k + 1) begin
        assign PixelTest[k] = PixelPort[10*k+9:10*k];
    end
    endgenerate*/

endmodule
