onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib multiplier35x35_opt

do {wave.do}

view wave
view structure
view signals

do {multiplier35x35.udo}

run -all

quit -force
