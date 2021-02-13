onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dds_pw32_ow24 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L dds_compiler_v6_0_19 -L xil_defaultlib -L secureip -O5 xil_defaultlib.dds_pw32_ow24

do {wave.do}

view wave
view structure

do {dds_pw32_ow24.udo}

run -all

endsim

quit -force
