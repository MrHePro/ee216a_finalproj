//TESTED
module Ctrl_Unit(
    input clk,
    input GlobalReset,
    input Input_Valid,
    output [4:0] WeightX_Select,
    output [4:0] PixelX_Select,
    output [27:0] ENX_Int,
    output ENX,
    output Output_Valid 
);

//cntr for cycles
reg [6:0] cnt;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1) cnt <= 0;
    else if (Input_Valid == 1) cnt <= 0;
    else cnt <= cnt+1;
end

//FF for weight select and pixel select
reg    [4:0]   WeightX_Select_FF, PixelX_Select_FF;
//wire    W_INC_IN, P_INC_IN;
reg     W_INC, P_INC;
//assign W_INC_IN = W_INC;
//assign P_INC_IN = P_INC;
assign WeightX_Select = WeightX_Select_FF;
assign PixelX_Select  = PixelX_Select_FF;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1 || Input_Valid == 1) WeightX_Select_FF <= 5'd0;
    else if(W_INC) WeightX_Select_FF <= WeightX_Select + 1;
end
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1 || Input_Valid == 1) PixelX_Select_FF  <= 5'd0;
    else if(W_INC) PixelX_Select_FF  <= PixelX_Select  + 1;
end
//FF_EN #(5) w_flop(clk, GlobalReset, WeightX_Select_FF, WeightX_Select, W_INC_IN);
//FF_EN #(5) p_flop(clk, GlobalReset, PixelX_Select_FF,  PixelX_Select,  P_INC_IN);

//FF for ENX_Int
reg     [27:0]   ENX_Int_FF;
reg     E_SHFT;
assign ENX_Int = ENX_Int_FF;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1 || Input_Valid == 1) ENX_Int_FF <= 28'b0000000000000000000000000001;
    else if(E_SHFT) ENX_Int_FF <= ENX_Int << 1;
end

//reg for ENX OutValid
reg ENX_R,Output_Valid_R;
assign ENX = ENX_R;
assign Output_Valid = Output_Valid_R;

always @(cnt) begin
    W_INC = 1'b0;
    P_INC = 1'b0;
    E_SHFT = 1'b0;
    case(cnt)
        default: begin
            W_INC = 1'b0;
            P_INC = 1'b0;
            E_SHFT = 1'b0;
            ENX_R = 1'b0;
            Output_Valid_R = 1'b0;
        end
        7'd1:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd2:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd3:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd4:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd5:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd6:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd7:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd8:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd9:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd10: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd11: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd12: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd13: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd14: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd15: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd16: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd17: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd18: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd19: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd20: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd21: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd22: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd23: begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd24: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd25: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd26: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd27: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd28: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd29: begin E_SHFT = 1'b1; end
        7'd30: begin E_SHFT = 1'b1; end
        7'd31: begin E_SHFT = 1'b1; end
        7'd32: begin E_SHFT = 1'b1; end
        7'd33: begin E_SHFT = 1'b1; end
        7'd34: begin E_SHFT = 1'b1; end
        7'd35: begin E_SHFT = 1'b1; end
        7'd36: begin E_SHFT = 1'b1; end
        7'd37: begin E_SHFT = 1'b1; end
        7'd38: begin E_SHFT = 1'b1; end
        7'd39: begin E_SHFT = 1'b1; end
        7'd40: begin E_SHFT = 1'b1; end
        7'd41: begin E_SHFT = 1'b1; end
        7'd42: begin E_SHFT = 1'b1; end
        7'd43: begin E_SHFT = 1'b1; end
        7'd44: begin E_SHFT = 1'b1; end
        7'd45: begin E_SHFT = 1'b1; end
        7'd46: begin E_SHFT = 1'b1; end
        7'd47: begin E_SHFT = 1'b1; end
        7'd48: begin E_SHFT = 1'b1; end
        7'd49: begin E_SHFT = 1'b1; end
        7'd50: begin E_SHFT = 1'b1; end
        7'd51: begin E_SHFT = 1'b1; end
        7'd64: begin ENX_R = 1'b1; end
        7'd65: begin Output_Valid_R = 1'b1; end
    endcase
end



endmodule