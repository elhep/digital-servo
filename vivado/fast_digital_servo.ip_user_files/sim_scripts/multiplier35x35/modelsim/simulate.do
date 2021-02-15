onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.multiplier35x35

do {wave.do}

view wave
view structure
view signals

do {multiplier35x35.udo}

run -all

quit -force