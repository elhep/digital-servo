onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_PG_pw24_opt

do {wave.do}

view wave
view structure
view signals

do {dds_PG_pw24.udo}

run -all

quit -force
