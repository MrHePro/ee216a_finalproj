//TESTED
module Ctrl_Unit(
    input clk,
    input GlobalReset,
    input Input_Valid,
    output [6:0] WeightX_Select,
    output [6:0] PixelX_Select,
    output [7:0] ENX_Int,
    output [13:0] ENX_Int_2,
    output ENX,
    output Output_Valid 
);

//cntr for cycles
reg [9:0] cnt;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1) cnt <= 0;
    else if (Input_Valid == 1) cnt <= 0;
    else cnt <= cnt+1;
end

//FF for weight select and pixel select
reg    [6:0]   WeightX_Select_FF, PixelX_Select_FF;
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
reg     [7:0]   ENX_Int_FF;
reg     E_SHFT, ENX_Int_rst;
assign ENX_Int = ENX_Int_FF;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1 || Input_Valid == 1 || ENX_Int_rst == 1) ENX_Int_FF <= 8'b00000001;
    else if(E_SHFT) ENX_Int_FF <= ENX_Int << 1;
end

//FF for ENX_Int_2
reg     [13:0]   ENX_Int_FF_2;
reg     E_SHFT_2;
assign ENX_Int_2 = ENX_Int_FF_2;
always@(posedge clk, posedge Input_Valid) begin
    if(GlobalReset == 1 || Input_Valid == 1) ENX_Int_FF_2 <= 14'b00000000000001;
    else if(E_SHFT_2) ENX_Int_FF_2 <= ENX_Int_2 << 1;
end

//reg for ENX OutValid
reg ENX_R,Output_Valid_R;
assign ENX = ENX_R;
assign Output_Valid = Output_Valid_R;

always @(cnt) begin
    W_INC = 1'b0;
    P_INC = 1'b0;
    E_SHFT = 1'b0;
    E_SHFT_2 = 1'b0;
    case(cnt)
        default: begin
            W_INC = 1'b0;
            P_INC = 1'b0;
            E_SHFT = 1'b0;
            E_SHFT_2 = 1'b0;
            ENX_R = 1'b0;
            Output_Valid_R = 1'b0;
        end
        7'd1:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd2:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd3:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd4:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd5:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd6:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd7:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd8:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd9:   begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd10:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd11:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd12:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd13:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd14:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd15:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd16:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd17:  begin W_INC = 1'b1; P_INC = 1'b1; end
        7'd18:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd19:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd20:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd21:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd22:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd23:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd24:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd25:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd26:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd27:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd28:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd29:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd30:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd31:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd32:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd33:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd34:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd35:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd36:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd37:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd38:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd39:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd40:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd41:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd42:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd43:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd44:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd45:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd46:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd47:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd48:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd49:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end        
        7'd50:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd51:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd52:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd53:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd54:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd55:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd56:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd57:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd58:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd59:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd60:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd61:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd62:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd63:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd64:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd65:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd66:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd67:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd68:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd69:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd70:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd71:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd72:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd73:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd74:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd75:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd76:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd77:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd78:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd79:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd80:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd81:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd82:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd83:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd84:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd85:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd86:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd87:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd88:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd89:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd90:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd91:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd92:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd93:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd94:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd95:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd96:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd97:  begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd98:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd99:  begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd100: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd101: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd102: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd103: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd104: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd105: begin W_INC = 1'b1; P_INC = 1'b1; ENX_Int_rst = 1'b1; end
        7'd106: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd107: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd108: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd109: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd110: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd111: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd112: begin W_INC = 1'b1; P_INC = 1'b1; E_SHFT = 1'b1; end
        7'd113: begin ENX_Int_rst = 1'b1; end
        7'd114: begin E_SHFT = 1'b1; end
        7'd115: begin E_SHFT = 1'b1; end
        7'd116: begin E_SHFT = 1'b1; end
        7'd117: begin E_SHFT = 1'b1; end
        7'd118: begin E_SHFT = 1'b1; end
        7'd119: begin E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd120: begin E_SHFT = 1'b1; end
        7'd121: begin ENX_Int_rst = 1'b1; end
        7'd122: begin E_SHFT = 1'b1; end
        7'd123: begin E_SHFT = 1'b1; end
        7'd124: begin E_SHFT = 1'b1; end
        7'd125: begin E_SHFT = 1'b1; end
        7'd126: begin E_SHFT = 1'b1; end
        7'd127: begin E_SHFT = 1'b1; E_SHFT_2 = 1'b0; end
        7'd128: begin E_SHFT = 1'b1; end
        7'd129: begin ENX_Int_rst = 1'b1; end
        7'd130: begin end
        7'd131: begin end
        7'd132: begin end
        7'd133: begin end
        7'd134: begin end
        7'd135: begin E_SHFT_2 = 1'b0; end
        7'd136: begin end
        7'd137: begin end
        7'd138: begin end
        7'd139: begin end
        7'd140: begin end
        7'd141: begin end
        7'd142: begin end
        7'd143: begin end
        7'd144: begin end
        7'd145: begin end
        7'd146: begin ENX_R = 1'b1; end
        7'd147: begin Output_Valid_R = 1'b1; end
        7'd148: begin end
        7'd149: begin end
    endcase
end



endmodule