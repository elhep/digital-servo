vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_16
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 activehdl/mult_gen_v12_0_16
vmap xil_defaultlib activehdl/xil_defaultlib

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


