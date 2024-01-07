onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cover_opt

do {wave.do}

view wave
view structure
view signals

do {cover.udo}

run -all

quit -force
