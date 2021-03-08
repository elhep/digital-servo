onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DCO_CLK_opt

do {wave.do}

view wave
view structure
view signals

do {DCO_CLK.udo}

run -all

quit -force
