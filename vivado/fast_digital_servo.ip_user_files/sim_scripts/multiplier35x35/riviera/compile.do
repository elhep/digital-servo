vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93 \
"/home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/multiplier35x35/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"/home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/multiplier35x35/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"/home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/multiplier35x35/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"/home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/multiplier35x35/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"/home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/multiplier35x35/sim/multiplier35x35.vhd" \


