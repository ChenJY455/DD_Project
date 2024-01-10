set_property PACKAGE_PIN AC18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

# PS/2
set_property PACKAGE_PIN N18 [get_ports PS2_clk]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_clk]
set_property PACKAGE_PIN M19 [get_ports PS2_data]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_data]

# LED
set_property PACKAGE_PIN N26 [get_ports {LED_clk}]
set_property PACKAGE_PIN N24 [get_ports {LED_clrn}]
set_property PACKAGE_PIN M26 [get_ports {LED_sout}]
 set_property PACKAGE_PIN P18 [get_ports {LED_EN}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_clrn}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_sout}]
 set_property IOSTANDARD LVCMOS33 [get_ports {LED_EN}]
 
 # 7SEG
set_property PACKAGE_PIN M24 [get_ports {SD_clk}]
set_property PACKAGE_PIN M20 [get_ports {SD_clrn}]
set_property PACKAGE_PIN L24 [get_ports {SD_sout}]
set_property PACKAGE_PIN R18 [get_ports {SD_PEN}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clrn}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_sout}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_PEN}]

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

# set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {R[0]}]
# set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {R[1]}]
# set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {R[2]}]
# set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {R[3]}]

# set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {G[0]}]
# set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {G[1]}]
# set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {G[2]}]
# set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {G[3]}]

# set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {B[0]}]
# set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {B[1]}]
# set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {B[2]}]
# set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {B[3]}]

# set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
# set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
# */
# Switches as inputs
set_property PACKAGE_PIN AA10 [get_ports {SW[0]}]
set_property PACKAGE_PIN AB10 [get_ports {SW[1]}]
set_property PACKAGE_PIN AA13 [get_ports {SW[2]}]
set_property PACKAGE_PIN AA12 [get_ports {SW[3]}]
set_property PACKAGE_PIN Y13 [get_ports {SW[4]}]
set_property PACKAGE_PIN Y12 [get_ports {SW[5]}]
set_property PACKAGE_PIN AD11 [get_ports {SW[6]}]
set_property PACKAGE_PIN AD10 [get_ports {SW[7]}]
set_property PACKAGE_PIN AE10 [get_ports {SW[8]}]
set_property PACKAGE_PIN AE12 [get_ports {SW[9]}]
set_property PACKAGE_PIN AF12 [get_ports {SW[10]}]
set_property PACKAGE_PIN AE8 [get_ports {SW[11]}]
set_property PACKAGE_PIN AF8 [get_ports {SW[12]}]
set_property PACKAGE_PIN AE13 [get_ports {SW[13]}]
set_property PACKAGE_PIN AF13 [get_ports {SW[14]}]
set_property PACKAGE_PIN AF10 [get_ports {SW[15]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[4]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[5]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[6]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[7]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[8]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[9]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[10]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[11]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[12]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[13]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[14]}]
set_property IOSTANDARD LVCMOS15 [get_ports {SW[15]}]

# VGA
set_property PACKAGE_PIN T20 [get_ports B[0]]
set_property IOSTANDARD LVCMOS33 [get_ports B[0]]
set_property PACKAGE_PIN R20 [get_ports B[1]]
set_property IOSTANDARD LVCMOS33 [get_ports B[1]]
set_property PACKAGE_PIN T22 [get_ports B[2]]
set_property IOSTANDARD LVCMOS33 [get_ports B[2]]
set_property PACKAGE_PIN T23 [get_ports B[3]]
set_property IOSTANDARD LVCMOS33 [get_ports B[3]]
set_property PACKAGE_PIN R22 [get_ports G[0]]
set_property IOSTANDARD LVCMOS33 [get_ports G[0]]
set_property PACKAGE_PIN R23 [get_ports G[1]]
set_property IOSTANDARD LVCMOS33 [get_ports G[1]]
set_property PACKAGE_PIN T24 [get_ports G[2]]
set_property IOSTANDARD LVCMOS33 [get_ports G[2]]
set_property PACKAGE_PIN T25 [get_ports G[3]]
set_property IOSTANDARD LVCMOS33 [get_ports G[3]]
set_property PACKAGE_PIN N21 [get_ports R[0]]
set_property IOSTANDARD LVCMOS33 [get_ports R[0]]
set_property PACKAGE_PIN N22 [get_ports R[1]]
set_property IOSTANDARD LVCMOS33 [get_ports R[1]]
set_property PACKAGE_PIN R21 [get_ports R[2]]
set_property IOSTANDARD LVCMOS33 [get_ports R[2]]
set_property PACKAGE_PIN P21 [get_ports R[3]]
set_property IOSTANDARD LVCMOS33 [get_ports R[3]]
set_property PACKAGE_PIN M22 [get_ports HS]
set_property IOSTANDARD LVCMOS33 [get_ports HS]
set_property PACKAGE_PIN M21 [get_ports VS]
set_property IOSTANDARD LVCMOS33 [get_ports VS]
<<<<<<< HEAD

# 7SEG
set_property PACKAGE_PIN M24 [get_ports {SD_clk}]
set_property PACKAGE_PIN M20 [get_ports {SD_clrn}]
set_property PACKAGE_PIN L24 [get_ports {SD_sout}]
set_property PACKAGE_PIN R18 [get_ports {SD_PEN}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_clrn}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_sout}]
set_property IOSTANDARD LVCMOS33 [get_ports {SD_PEN}]

# # LED
# set_property PACKAGE_PIN N26 [get_ports {LED_clk}]
# set_property PACKAGE_PIN N24 [get_ports {LED_clrn}]
# set_property PACKAGE_PIN M26 [get_ports {LED_sout}]
#  set_property PACKAGE_PIN P18 [get_ports {LED_EN}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED_clk}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED_clrn}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED_sout}]
#  set_property IOSTANDARD LVCMOS33 [get_ports {LED_EN}]
=======
>>>>>>> 75ff47407d718d4852cad3640683c5e3b7153821
