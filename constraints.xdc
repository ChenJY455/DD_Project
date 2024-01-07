set_property PACKAGE_PIN AC18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

# PS/2
set_property PACKAGE_PIN N18 [get_ports PS2_clk]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_clk]
set_property PACKAGE_PIN M19 [get_ports PS2_data]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_data]

# 7SEG
set_property PACKAGE_PIN M24 [get_ports {SD_clk}]
set_property PACKAGE_PIN M20 [get_ports {SD_clrn}]
set_property PACKAGE_PIN L24 [get_ports {SD_sout}]
set_property PACKAGE_PIN R18 [get_ports {SD_PEN}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clrn}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_sout}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_PEN}]