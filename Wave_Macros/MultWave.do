onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FixedPointMultiplier_tb/clk
add wave -noupdate /FixedPointMultiplier_tb/rst
add wave -noupdate -radix unsigned /FixedPointMultiplier_tb/in1
add wave -noupdate -radix unsigned /FixedPointMultiplier_tb/in2
add wave -noupdate -radix binary /FixedPointMultiplier_tb/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {154 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {389 ns}
