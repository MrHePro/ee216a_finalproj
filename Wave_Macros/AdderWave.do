onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FixedPointAdder_tb/clk
add wave -noupdate /FixedPointAdder_tb/rst
add wave -noupdate -radix decimal -radixshowbase 0 /FixedPointAdder_tb/in1
add wave -noupdate -radix decimal -radixshowbase 0 /FixedPointAdder_tb/in2
add wave -noupdate -radix decimal -radixshowbase 0 /FixedPointAdder_tb/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15540 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {178500 ps}
