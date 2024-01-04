set_property PACKAGE_PIN AC18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

# PS/2
set_property PACKAGE_PIN N18 [get_ports PS2_clk]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_clk]
set_property PACKAGE_PIN M19 [get_ports PS2_data]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_data]

# /*
#  NET "B[0]"  LOC = T20       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET "B[1]"  LOC = R20       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET "B[2]"  LOC = T22       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “B[3]"  LOC = T23       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “G[0]"  LOC = R22       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “G[1]"  LOC = R23       | IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “G[2]"  LOC = T24	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “G[3]"  LOC = T25 	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “R[0]"  LOC = N21	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “R[1]"  LOC = N22	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “R[2]"  LOC = R21	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “R[3]"  LOC = P21	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “HS"    LOC = M22	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;
#  NET “VS"    LOC = M21	| IOSTANDARD = LVCMOS33 | SLEW = FAST ;

# set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {vga_r[0]}]
# set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {vga_r[1]}]
# set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {vga_r[2]}]
# set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {vga_r[3]}]

# set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {vga_g[0]}]
# set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {vga_g[1]}]
# set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {vga_g[2]}]
# set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {vga_g[3]}]

# set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {vga_b[0]}]
# set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {vga_b[1]}]
# set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {vga_b[2]}]
# set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {vga_b[3]}]

# set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
# set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
# */
# VGA
set_property PACKAGE_PIN T20 [get_ports vga_b[0]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_b[0]]
set_property PACKAGE_PIN R20 [get_ports vga_b[1]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_b[1]]
set_property PACKAGE_PIN T22 [get_ports vga_b[2]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_b[2]]
set_property PACKAGE_PIN T23 [get_ports vga_b[3]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_b[3]]
set_property PACKAGE_PIN R22 [get_ports vga_g[0]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_g[0]]
set_property PACKAGE_PIN R23 [get_ports vga_g[1]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_g[1]]
set_property PACKAGE_PIN T24 [get_ports vga_g[2]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_g[2]]
set_property PACKAGE_PIN T25 [get_ports vga_g[3]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_g[3]]
set_property PACKAGE_PIN N21 [get_ports vga_r[0]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_r[0]]
set_property PACKAGE_PIN N22 [get_ports vga_r[1]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_r[1]]
set_property PACKAGE_PIN R21 [get_ports vga_r[2]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_r[2]]
set_property PACKAGE_PIN P21 [get_ports vga_r[3]]
set_property IOSTANDARD LVCMOS33 [get_ports vga_r[3]]
set_property PACKAGE_PIN M22 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property PACKAGE_PIN M21 [get_ports vga_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]

