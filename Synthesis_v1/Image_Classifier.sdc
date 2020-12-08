###################################################################

# Created by write_sdc on Tue Dec  8 00:12:57 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions -max ss0p95v125c -max_library saed32rvt_ss0p95v125c\
                         -min ff1p16vn40c -min_library saed32rvt_ff1p16vn40c
set_max_area 0
