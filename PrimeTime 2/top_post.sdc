################################################################################
#
# Design name:  top
#
# Created by icc2 write_sdc on Wed Dec 10 12:57:12 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: fast
# Scenario: func_fast

# /home/924320342/Engr852/HW/tmp38.sdc, line 9
create_clock -name ideal_clock1 -period 3.8 -waveform {0 1.9} [get_ports \
    {clock}]
set_propagated_clock [get_clocks {ideal_clock1}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin user
set_clock_latency -min 0.0156593 [get_clocks {ideal_clock1}]
# -origin user
set_clock_latency -max 0.0157356 [get_clocks {ideal_clock1}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clock}]
