###############################################################################
# Created by write_sdc
# Fri Nov  3 17:34:47 2023
###############################################################################
current_design pes_vedic_mul
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 
set_clock_uncertainty 0.2500 clk
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {a[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {b[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {prod[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {prod[15]}]
set_load -pin_load 0.0334 [get_ports {prod[14]}]
set_load -pin_load 0.0334 [get_ports {prod[13]}]
set_load -pin_load 0.0334 [get_ports {prod[12]}]
set_load -pin_load 0.0334 [get_ports {prod[11]}]
set_load -pin_load 0.0334 [get_ports {prod[10]}]
set_load -pin_load 0.0334 [get_ports {prod[9]}]
set_load -pin_load 0.0334 [get_ports {prod[8]}]
set_load -pin_load 0.0334 [get_ports {prod[7]}]
set_load -pin_load 0.0334 [get_ports {prod[6]}]
set_load -pin_load 0.0334 [get_ports {prod[5]}]
set_load -pin_load 0.0334 [get_ports {prod[4]}]
set_load -pin_load 0.0334 [get_ports {prod[3]}]
set_load -pin_load 0.0334 [get_ports {prod[2]}]
set_load -pin_load 0.0334 [get_ports {prod[1]}]
set_load -pin_load 0.0334 [get_ports {prod[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
