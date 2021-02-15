onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_LUT_pw24_ow16_opt

do {wave.do}

view wave
view structure
view signals

do {dds_LUT_pw24_ow16.udo}

run -all

quit -force