onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Ctrl_Unit_tb/clk
add wave -noupdate /Ctrl_Unit_tb/GlobalReset
add wave -noupdate /Ctrl_Unit_tb/Input_Valid
add wave -noupdate /Ctrl_Unit_tb/Output_Valid
add wave -noupdate /Ctrl_Unit_tb/WeightX_Select
add wave -noupdate /Ctrl_Unit_tb/PixelX_Select
add wave -noupdate /Ctrl_Unit_tb/ENX_Int
add wave -noupdate /Ctrl_Unit_tb/ENX
add wave -noupdate -divider Result
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_0
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_1
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_2
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_3
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_4
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_5
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_6
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_7
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_8
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/Out_9
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/ActualNumber
add wave -noupdate -radix decimal -radixshowbase 0 /Ctrl_Unit_tb/i
add wave -noupdate -divider Ctrl
add wave -noupdate -radix unsigned /Ctrl_Unit_tb/CTRL/WeightX_Select
add wave -noupdate -radix unsigned /Ctrl_Unit_tb/CTRL/PixelX_Select
add wave -noupdate /Ctrl_Unit_tb/CTRL/ENX_Int
add wave -noupdate /Ctrl_Unit_tb/CTRL/ENX
add wave -noupdate /Ctrl_Unit_tb/CTRL/W_INC
add wave -noupdate /Ctrl_Unit_tb/CTRL/P_INC
add wave -noupdate /Ctrl_Unit_tb/CTRL/E_SHFT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {546030 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 235
configure wave -valuecolwidth 83
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1809150 ps}
