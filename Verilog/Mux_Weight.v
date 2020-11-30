//UNTESTED
module Mux_Weight(In, Select, Out);

parameter OUT_SIZE = 532;
parameter SEL_SIZE = 28;
parameter SEL_BIT  = 5;

input       [OUT_SIZE*SEL_SIZE-1:0]     In;
input       [SEL_BIT-1:0]               Select;
output  reg [OUT_SIZE-1:0]              Out;

always@(Select) begin
    case(Select)
        default:    Out = In[OUT_SIZE*1-1:OUT_SIZE*0];
        5'd1:       Out = In[OUT_SIZE*2-1:OUT_SIZE*1];
        5'd2:       Out = In[OUT_SIZE*3-1:OUT_SIZE*2];
        5'd3:       Out = In[OUT_SIZE*4-1:OUT_SIZE*3];
        5'd4:       Out = In[OUT_SIZE*5-1:OUT_SIZE*4];
        5'd5:       Out = In[OUT_SIZE*6-1:OUT_SIZE*5];
        5'd6:       Out = In[OUT_SIZE*7-1:OUT_SIZE*6];
        5'd7:       Out = In[OUT_SIZE*8-1:OUT_SIZE*7];
        5'd8:       Out = In[OUT_SIZE*9-1:OUT_SIZE*8];
        5'd9:       Out = In[OUT_SIZE*10-1:OUT_SIZE*9];
        5'd10:      Out = In[OUT_SIZE*11-1:OUT_SIZE*10];
        5'd11:      Out = In[OUT_SIZE*12-1:OUT_SIZE*11];
        5'd12:      Out = In[OUT_SIZE*13-1:OUT_SIZE*12];
        5'd13:      Out = In[OUT_SIZE*14-1:OUT_SIZE*13];
        5'd14:      Out = In[OUT_SIZE*15-1:OUT_SIZE*14];
        5'd15:      Out = In[OUT_SIZE*16-1:OUT_SIZE*15];
        5'd16:      Out = In[OUT_SIZE*17-1:OUT_SIZE*16];
        5'd17:      Out = In[OUT_SIZE*18-1:OUT_SIZE*17];
        5'd18:      Out = In[OUT_SIZE*19-1:OUT_SIZE*18];
        5'd19:      Out = In[OUT_SIZE*20-1:OUT_SIZE*19];
        5'd20:      Out = In[OUT_SIZE*21-1:OUT_SIZE*20];
        5'd21:      Out = In[OUT_SIZE*22-1:OUT_SIZE*21];
        5'd22:      Out = In[OUT_SIZE*23-1:OUT_SIZE*22];
        5'd23:      Out = In[OUT_SIZE*24-1:OUT_SIZE*23];
        5'd24:      Out = In[OUT_SIZE*25-1:OUT_SIZE*24];
        5'd25:      Out = In[OUT_SIZE*26-1:OUT_SIZE*25];
        5'd26:      Out = In[OUT_SIZE*27-1:OUT_SIZE*26];
        5'd27:      Out = In[OUT_SIZE*28-1:OUT_SIZE*27];
    endcase
end

endmodule;
