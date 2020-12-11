

------------------------------------------------------------------------------
---Stage 1--------------------------------------------------------------------
------------------------------------------------------------------------------

1. Sim success: 280 multipliers 560 adders with pipeline reg
	Verilog_sim_v1

------------------------------------------------------------------------------
Large Data: success rate: (10000-1420)/10000 = 85.8%



2. Sim Failed: 70 multipliers
	Verilog_sim_v2_failed

3. Synthesis original:
	Synthesis_v0

4. Synthesis Failed:
	Synthesis_v1
	Verilog_syn_v1

5. Synthesis Success:
	Synthesis_v2
	Verilog_syn_v2

	tcl script updated: include synclib.v and define.h
	.v file updated: change order of async reset (Input_Valid)

-----------------------------------------------------------------------------
Result:
Area: 2,881,170.484110 um^2
Power: 3.73e+06 uW





------------------------------------------------------------------------------
---Stage 2--------------------------------------------------------------------
------------------------------------------------------------------------------

6. Sim: 280 mult and 560 add without pipeline reg
	Verilog_sim_v3

------------------------------------------------------------------------------
Large Data: success rate: (10000-1419)/10000 = 85.8%



7. Synthesis success:
	Verilog_syn_v3_final
	Final_Turnin

	Area: 2,380,370.123667 um^2
	Power: 3,010,000 uW
	



