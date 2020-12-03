onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Max_Selector_tb/clk
add wave -noupdate /Max_Selector_tb/GlobalReset
add wave -noupdate /Max_Selector_tb/i
add wave -noupdate -divider Result
add wave -noupdate /Max_Selector_tb/ActualNumber
add wave -noupdate /Max_Selector_tb/Out
add wave -noupdate -radix decimal /Max_Selector_tb/Out_0
add wave -noupdate -radix decimal /Max_Selector_tb/Out_1
add wave -noupdate -radix decimal /Max_Selector_tb/Out_2
add wave -noupdate -radix decimal /Max_Selector_tb/Out_3
add wave -noupdate -radix decimal /Max_Selector_tb/Out_4
add wave -noupdate -radix decimal /Max_Selector_tb/Out_5
add wave -noupdate -radix decimal /Max_Selector_tb/Out_6
add wave -noupdate -radix decimal /Max_Selector_tb/Out_7
add wave -noupdate -radix decimal /Max_Selector_tb/Out_8
add wave -noupdate -radix decimal /Max_Selector_tb/Out_9
add wave -noupdate -divider Max_Sel
add wave -noupdate -divider 1st_Level
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_01
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_23
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_45
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_67
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_89
add wave -noupdate -divider 2nd_Level
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_02
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_46
add wave -noupdate -radix decimal -childformat {{{/Max_Selector_tb/Max_Sel/Out_04[25]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[24]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[23]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[22]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[21]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[20]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[19]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[18]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[17]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[16]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[15]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[14]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[13]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[12]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[11]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[10]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[9]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[8]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[7]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[6]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[5]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[4]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[3]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[2]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[1]} -radix decimal} {{/Max_Selector_tb/Max_Sel/Out_04[0]} -radix decimal}} -subitemconfig {{/Max_Selector_tb/Max_Sel/Out_04[25]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[24]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[23]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[22]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[21]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[20]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[19]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[18]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[17]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[16]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[15]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[14]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[13]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[12]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[11]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[10]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[9]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[8]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[7]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[6]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[5]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[4]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[3]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[2]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[1]} {-height 15 -radix decimal} {/Max_Selector_tb/Max_Sel/Out_04[0]} {-height 15 -radix decimal}} /Max_Selector_tb/Max_Sel/Out_04
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out_Int
add wave -noupdate -radix decimal /Max_Selector_tb/Max_Sel/Out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1702000 ps} 0}
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
