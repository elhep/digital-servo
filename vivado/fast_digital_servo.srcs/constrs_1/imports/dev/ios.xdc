set_property PACKAGE_PIN J22 [get_ports {AD9117_D_0[13]}]
set_property PACKAGE_PIN T16 [get_ports {AD9117_D_0[12]}]
set_property PACKAGE_PIN M21 [get_ports {AD9117_D_0[11]}]
set_property PACKAGE_PIN J20 [get_ports {AD9117_D_0[10]}]
set_property PACKAGE_PIN R20 [get_ports {AD9117_D_0[9]}]
set_property PACKAGE_PIN J21 [get_ports {AD9117_D_0[8]}]
set_property PACKAGE_PIN K21 [get_ports {AD9117_D_0[7]}]
set_property PACKAGE_PIN T17 [get_ports {AD9117_D_0[6]}]
set_property PACKAGE_PIN M22 [get_ports {AD9117_D_0[5]}]
set_property PACKAGE_PIN R21 [get_ports {AD9117_D_0[4]}]
set_property PACKAGE_PIN T18 [get_ports {AD9117_D_0[3]}]
set_property PACKAGE_PIN R18 [get_ports {AD9117_D_0[2]}]
set_property PACKAGE_PIN N19 [get_ports {AD9117_D_0[1]}]
set_property PACKAGE_PIN R19 [get_ports {AD9117_D_0[0]}]
set_property PACKAGE_PIN N22 [get_ports AD9117_DCLKIO_0]
set_property PACKAGE_PIN T19 [get_ports AD9117_RESET_0]

# LTC2195 CH0 Pins
set_property PACKAGE_PIN AB10 [get_ports {LTC2195_D0_P_0[0]}]
set_property PACKAGE_PIN AA11 [get_ports {LTC2195_D0_P_0[1]}]
set_property PACKAGE_PIN AA12 [get_ports {LTC2195_D0_P_0[2]}]
set_property PACKAGE_PIN U12 [get_ports {LTC2195_D0_P_0[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D0_P_0[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D0_P_0[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D0_P_0[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D0_P_0[3]}]

# LTC2195 CH1 Pins
set_property PACKAGE_PIN V10 [get_ports {LTC2195_D1_P_0[0]}]
set_property PACKAGE_PIN Y6 [get_ports {LTC2195_D1_P_0[1]}]
set_property PACKAGE_PIN V12 [get_ports {LTC2195_D1_P_0[2]}]
set_property PACKAGE_PIN W11 [get_ports {LTC2195_D1_P_0[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D1_P_0[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D1_P_0[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D1_P_0[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {LTC2195_D1_P_0[3]}]

set_property PACKAGE_PIN Y9 [get_ports LTC2195_DCO_P_0]
set_property IOSTANDARD LVDS_25 [get_ports LTC2195_DCO_P_0]
set_property PACKAGE_PIN U10 [get_ports LTC2195_FR_P_0]
set_property IOSTANDARD LVDS_25 [get_ports LTC2195_FR_P_0]

# ADC CLK
set_property PACKAGE_PIN AA9 [get_ports FPGA_CLK2_P_0]
set_property IOSTANDARD LVDS_25 [get_ports FPGA_CLK2_P_0]

# DAC CLK
set_property PACKAGE_PIN W17 [get_ports FPGA_CLK1_P_0]
set_property IOSTANDARD LVDS_25 [get_ports FPGA_CLK1_P_0]

# Si5340 I2C
set_property PACKAGE_PIN W20 [get_ports IIC_0_0_scl_io]
set_property PACKAGE_PIN W21 [get_ports IIC_0_0_sda_io]

set_property PACKAGE_PIN B19 [get_ports CLK_100_0]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_100_0]

# LEDS
set_property PACKAGE_PIN D16 [get_ports {FP_LEDS_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {FP_LEDS_0[0]}]
set_property PACKAGE_PIN A21 [get_ports {FP_LEDS_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {FP_LEDS_0[1]}]
set_property PACKAGE_PIN B15 [get_ports {FP_LEDS_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {FP_LEDS_0[2]}]
set_property PACKAGE_PIN A16 [get_ports {FP_LEDS_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {FP_LEDS_0[3]}]
set_property PACKAGE_PIN G16 [get_ports {LEDS_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS_0[0]}]
set_property PACKAGE_PIN D20 [get_ports {LEDS_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS_0[1]}]
set_property PACKAGE_PIN C20 [get_ports {LEDS_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS_0[2]}]

# DIO
set_property PACKAGE_PIN A18 [get_ports {DIO_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIO_0[0]}]
set_property PACKAGE_PIN G22 [get_ports {DIO_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DIO_0[1]}]

# LTC2195 SPI
set_property PACKAGE_PIN AB17 [get_ports SPI_0_0_sck_io]
set_property PACKAGE_PIN AA16 [get_ports SPI_0_0_io0_io]
set_property PACKAGE_PIN AB16 [get_ports SPI_0_0_io1_io]
set_property PACKAGE_PIN AA17 [get_ports SPI_0_0_ss_io]

# AD9117 SPI
set_property PACKAGE_PIN AA19 [get_ports SPI_1_0_sck_io]
set_property PACKAGE_PIN AB22 [get_ports SPI_1_0_io0_io]
set_property PACKAGE_PIN AA22 [get_ports SPI_1_0_ss_io]

# Si5340 CTRL: LOS, INTR, LOL, nRST,
set_property PACKAGE_PIN AA21 [get_ports {GPIO_0_0_tri_io[0]}]
set_property PACKAGE_PIN Y19 [get_ports {GPIO_0_0_tri_io[1]}]
set_property PACKAGE_PIN AB21 [get_ports {GPIO_0_0_tri_io[2]}]
set_property PACKAGE_PIN W16 [get_ports {GPIO_0_0_tri_io[3]}]

# ADC0_AFE: TERM0, nSHDN, X10GAIN
set_property PACKAGE_PIN W8 [get_ports {GPIO_0_0_tri_io[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_0_0_tri_io[4]}]
set_property PACKAGE_PIN U5 [get_ports {GPIO_0_0_tri_io[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_0_0_tri_io[5]}]
set_property PACKAGE_PIN D17 [get_ports {GPIO_0_0_tri_io[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[6]}]
#ADC1_AFE: TERM1, nSHDN, X10GAIN
set_property PACKAGE_PIN V8 [get_ports {GPIO_0_0_tri_io[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_0_0_tri_io[7]}]
set_property PACKAGE_PIN U6 [get_ports {GPIO_0_0_tri_io[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {GPIO_0_0_tri_io[8]}]
set_property PACKAGE_PIN C15 [get_ports {GPIO_0_0_tri_io[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_0_tri_io[9]}]
#DAC AFE: CH1_nPD, CH2_nPD
set_property PACKAGE_PIN Y18 [get_ports {GPIO_0_0_tri_io[10]}]
set_property PACKAGE_PIN AA18 [get_ports {GPIO_0_0_tri_io[11]}]

create_clock -period 10.000 -name CLK_100_0 -waveform {0.000 5.000} [get_ports CLK_100_0]
create_clock -period 10.000 -name FPGA_CLK1_P_0 -waveform {0.000 5.000} [get_ports FPGA_CLK1_P_0]
create_clock -period 10.000 -name FPGA_CLK2_P_0 -waveform {0.000 5.000} [get_ports FPGA_CLK2_P_0]
create_clock -period 5.000 -name LTC2195_DCO_P_0 -waveform {0.000 2.500} [get_ports LTC2195_DCO_P_0]
create_generated_clock -name AD9117_DCLKIO_0 -source [get_pins main_i/FastServoTop_0/inst/DAC_inst/ODDR_dclkio_inst/C] -divide_by 1 [get_ports AD9117_DCLKIO_0]

