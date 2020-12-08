module Max_Sel_tb();

//Inputs
reg     clk;
reg     reset;
reg     [25:0] Out_0;
reg     [25:0] Out_1;
reg     [25:0] Out_2;
reg     [25:0] Out_3;
reg     [25:0] Out_4;
reg     [25:0] Out_5;
reg     [25:0] Out_6;
reg     [25:0] Out_7;
reg     [25:0] Out_8;
reg     [25:0] Out_9;

//Outputs
wire    [3:0] Out;


Max_Selector Max_Sel_DUT(
  .clk          (clk),
  .GlobalReset  (reset),
  .Out_0     (Out_0),
  .Out_1     (Out_1),
  .Out_2     (Out_2),
  .Out_3     (Out_3),
  .Out_4     (Out_4),
  .Out_5     (Out_5),
  .Out_6     (Out_6),
  .Out_7     (Out_7),
  .Out_8     (Out_8),
  .Out_9     (Out_9),
  .Out       (Out)
);


always #2 clk = ~clk;

initial begin
    outfile=$fopen("SumOutput.txt");
writing
    if(!outfile) begin
	$display("Cannot write file!");
	$finish;
    end

clk <=0;
GlobalReset <=0;



end

endmodule




















