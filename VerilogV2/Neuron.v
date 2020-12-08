//TESTED
module Neuron(
 input clk, 
 input GlobalReset,
 input [14914:0] WX,
 input [7849:0] PIXEL,
 input [4:0] WeightX_Select,
 input [4:0] PixelX_Select,
 input [27:0] ENX_Int,
 input ENX,
 output [25:0] Out_X
);

    wire    [531:0] WeightX;
    wire    [18:0]  BetaX;
    wire    [279:0] PixelX;


    //Select Beta for this Neuron
    //assign BetaX = WX[14914:14896];
    assign BetaX = WX[18:0];

    //Mux to select WeightX
    //Mux_Weight WeightX_MUX(WX[14895:0], WeightX_Select, WeightX);
    Mux_Weight WeightX_MUX(WX[14914:19], WeightX_Select, WeightX);

    //Mux to select Pixel
    //Mux_Pixel Pixel_MUX(PIXEL[7839:0], PixelX_Select, PixelX);
    Mux_Pixel Pixel_MUX(PIXEL[7849:10], PixelX_Select, PixelX);

    //Mult Stage
    wire    [26*28-1:0] Result_28;
    Mult_Stage mult_56_28(clk, GlobalReset, WeightX, PixelX, Result_28);

    //Adder 5 stage
    wire    [25:0]      Result_1;
    Adder_5Stage add_28_1(clk, GlobalReset, Result_28, 26'd0, Result_1);

    //Reg Stage
    wire    [26*28-1:0] NX_28;
    Reg_Stage reg_1_28(clk, GlobalReset, Result_1, ENX_Int, NX_28);

    //Adder 5 stage
    wire    [25:0]      Result_Final;
    Adder_5Stage add_29_1(clk, GlobalReset, NX_28, {{7{BetaX[18]}},BetaX}, Result_Final);

    //Final Flop for pipeline
    FF_EN #(26) reg_ff_28(clk, GlobalReset, Result_Final, Out_X, ENX);



endmodule

/*always@(WeightX_Select)begin
    case(WeightX_Select)
        default:    WeightX = WX[531:0];
        5'd1:       WeightX = WX[1063:532];
        5'd2:       WeightX = WX[1595:1064];
        5'd3:       WeightX = WX[2127:1596];
        5'd4:       WeightX = WX[2659:2128];
        5'd5:       WeightX = WX[3191:2660];
        5'd6:       WeightX = WX[3723:3192];
        5'd7:       WeightX = WX[4255:3724];
        5'd8:       WeightX = WX[4787:4256];
        5'd9:       WeightX = WX[5319:4788];
        5'd10:      WeightX = WX[5851:5320];
        5'd11:      WeightX = WX[6383:5852];
        5'd12:      WeightX = WX[6915:6384];
        5'd13:      WeightX = WX[7447:6916];
        5'd14:      WeightX = WX[7979:7448];
        5'd15:      WeightX = WX[8511:7980];
        5'd16:      WeightX = WX[9043:8512];
        5'd17:      WeightX = WX[9575:9044];
        5'd18:      WeightX = WX[10107:9576];
        5'd19:      WeightX = WX[10639:10108];
        5'd20:      WeightX = WX[11171:10640];
        5'd21:      WeightX = WX[11703:11172];
        5'd22:      WeightX = WX[12235:11704];
        5'd23:      WeightX = WX[12767:12236];
        5'd24:      WeightX = WX[13299:12768];
        5'd25:      WeightX = WX[13831:13300];
        5'd26:      WeightX = WX[14363:13832];
        5'd27:      WeightX = WX[14895:14364];
    endcase
end*/

/*always@(PixelX_Select)begin
    case(PixelX_Select)
        default:    PixelX = PIXEL[280*1-1:280*0];
        5'd1:       PixelX = PIXEL[280*2-1:280*1];
        5'd2:       PixelX = PIXEL[280*3-1:280*2];
        5'd3:       PixelX = PIXEL[280*4-1:280*3];
        5'd4:       PixelX = PIXEL[280*5-1:280*4];
        5'd5:       PixelX = PIXEL[280*6-1:280*5];
        5'd6:       PixelX = PIXEL[280*7-1:280*6];
        5'd7:       PixelX = PIXEL[280*8-1:280*7];
        5'd8:       PixelX = PIXEL[280*9-1:280*8];
        5'd9:       PixelX = PIXEL[280*10-1:280*9];
        5'd10:      PixelX = PIXEL[280*11-1:280*10];
        5'd11:      PixelX = PIXEL[280*12-1:280*11];
        5'd12:      PixelX = PIXEL[280*13-1:280*12];
        5'd13:      PixelX = PIXEL[280*14-1:280*13];
        5'd14:      PixelX = PIXEL[280*15-1:280*14];
        5'd15:      PixelX = PIXEL[280*16-1:280*15];
        5'd16:      PixelX = PIXEL[280*17-1:280*16];
        5'd17:      PixelX = PIXEL[280*18-1:280*17];
        5'd18:      PixelX = PIXEL[280*19-1:280*18];
        5'd19:      PixelX = PIXEL[280*20-1:280*19];
        5'd20:      PixelX = PIXEL[280*21-1:280*20];
        5'd21:      PixelX = PIXEL[280*22-1:280*21];
        5'd22:      PixelX = PIXEL[280*23-1:280*22];
        5'd23:      PixelX = PIXEL[280*24-1:280*23];
        5'd24:      PixelX = PIXEL[280*25-1:280*24];
        5'd25:      PixelX = PIXEL[280*26-1:280*25];
        5'd26:      PixelX = PIXEL[280*27-1:280*26];
        5'd27:      PixelX = PIXEL[280*28-1:280*27];
    endcase
end*/
/*always@(PixelX_Select)begin
    case(PixelX_Select)
        default:    PixelX = PIXEL[279:0];
        5'd1:       PixelX = PIXEL[559:280];
        5'd2:       PixelX = PIXEL[839:560];
        5'd3:       PixelX = PIXEL[1119:840];
        5'd4:       PixelX = PIXEL[1399:1120];
        5'd5:       PixelX = PIXEL[1679:1400];
        5'd6:       PixelX = PIXEL[1959:1680];
        5'd7:       PixelX = PIXEL[2239:1960];
        5'd8:       PixelX = PIXEL[2519:2240];
        5'd9:       PixelX = PIXEL[2799:2520];
        5'd10:      PixelX = PIXEL[3079:2800];
        5'd11:      PixelX = PIXEL[3359:3080];
        5'd12:      PixelX = PIXEL[3639:3360];
        5'd13:      PixelX = PIXEL[3919:3640];
        5'd14:      PixelX = PIXEL[4199:3920];
        5'd15:      PixelX = PIXEL[4479:4200];
        5'd16:      PixelX = PIXEL[4759:4480];
        5'd17:      PixelX = PIXEL[5039:4760];
        5'd18:      PixelX = PIXEL[5319:5040];
        5'd19:      PixelX = PIXEL[5599:5320];
        5'd20:      PixelX = PIXEL[5879:5600];
        5'd21:      PixelX = PIXEL[6159:5880];
        5'd22:      PixelX = PIXEL[6439:6160];
        5'd23:      PixelX = PIXEL[6719:6440];
        5'd24:      PixelX = PIXEL[6999:6720];
        5'd25:      PixelX = PIXEL[7279:7000];
        5'd26:      PixelX = PIXEL[7559:7280];
        5'd27:      PixelX = PIXEL[7839:7560];
    endcase
end*/