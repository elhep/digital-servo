vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/processing_system7_vip_v1_0_10
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 activehdl/processing_system7_vip_v1_0_10
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/ec67/hdl" "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/34f8/hdl" "+incdir+/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/ec67/hdl" "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/34f8/hdl" "+incdir+/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/ec67/hdl" "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/34f8/hdl" "+incdir+/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/ec67/hdl" "+incdir+../../../../fast_digital_servo.srcs/sources_1/bd/main/ipshared/34f8/hdl" "+incdir+/opt/Xilinx/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/main/ip/main_processing_system7_0_0/sim/main_processing_system7_0_0.v" \
"../../../bd/main/ip/main_FastServoTop_0_0/sim/main_FastServoTop_0_0.v" \
"../../../bd/main/sim/main.v" \

vlog -work xil_defaultlib \
"glbl.v"

