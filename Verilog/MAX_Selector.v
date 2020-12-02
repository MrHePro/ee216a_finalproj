module MuxSelector (
  clk,
  GlobalReset,
  Out_0,
  Out_1,
  Out_2,
  Out_3,
  Out_4,
  Out_5,
  Out_6,
  Out_7,
  Out_8,
  Out_9,
  Out
);

//Inputs and Outputs  

input  clk;
input  GlobalReset;
input  [25:0] Out_0;
input  [25:0] Out_1;
input  [25:0] Out_2;
input  [25:0] Out_3,
input  [25:0] Out_4;
input  [25:0] Out_5;
input  [25:0] Out_6;
input  [25:0] Out_7;
input  [25:0] Out_8;
input  [25:0] Out_9;


output [3:0] Out;

	
//reg & wire declarations
reg  [25:0] out_0_r;
reg  [25:0] out_1_r;
reg  [25:0] out_2_r;
reg  [25:0] out_3_r;
reg  [25:0] out_4_r;
reg  [25:0] out_5_r;
reg  [25:0] out_6_r;
reg  [25:0] out_7_r;
reg  [25:0] out_8_r;
reg  [25:0] out_9_r;

reg  [3:0]  out_r;

always @(Out_0,Out_1,Out_2,Out_3,Out_4,Out_5,Out_6,Out_7,Out_8,Out_9) begin

  assign Out_01 = (Out_0 > Out_1)? Out_0:Out_1;
  assign Out_23 = (Out_2 > Out_3)? Out_2:Out_3;
  assign Out_45 = (Out_4 > Out_5)? Out_4:Out_5;
  assign Out_67 = (Out_6 > Out_7)? Out_6:Out_7;
  assign Out_89 = (Out_8 > Out_9)? Out_8:Out_9;

  assign Out_02 = (Out_01 > Out_23)? Out_01:Out_23;
  assign Out_46 = (Out_45 > Out_67)? Out_45:Out_67;

  assign Out_04 = (Out_02 > Out_46)? Out_02:Out_46;

  assign Out_Int = (Out_04 > Out_89)? Out_04:Out_89;


  case(Out_Int)
	Out_0:  Out=4'b0000;
	Out_1:  Out=4'b0001;
	Out_2:  Out=4'b0010
	Out_3:  Out=4'b0011;	
	Out_4:  Out=4'b0100;
	Out_5:  Out=4'b0101;
	Out_6:  Out=4'b0110;
	Out_7:  Out=4'b0111;
	Out_8:  Out=4'b1000;
	Out_9:  Out=4'b1001;	
    endcase
end


always @(posedge clk or negedge GlobalReset) begin
    if (GlobalReset == 1'b0) begin
	out_0  <= {(26){1'b0}};
	out_1  <= {(26){1'b0}};
	out_2  <= {(26){1'b0}};
	out_3  <= {(26){1'b0}};
	out_4  <= {(26){1'b0}};
	out_5  <= {(26){1'b0}};
	out_6  <= {(26){1'b0}};
	out_7  <= {(26){1'b0}};
	out_8  <= {(26){1'b0}};
	out_9  <= {(26){1'b0}};
    end
    else begin
	out_0_r  <= Out_0;
	out_1_r  <= Out_1;
	out_2_r  <= Out_2;
	out_3_r  <= Out_3;
	out_4_r  <= Out_4;
	out_5_r  <= Out_5;
	out_6_r  <= Out_6;
	out_7_r  <= Out_7;
	out_8_r  <= Out_8;
	out_9_r  <= Out_9;
	out_r    <= Out;
    end
end


endmodule
