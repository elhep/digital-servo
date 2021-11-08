//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Aug 16 18:48:06 2021
//Host        : whooper running 64-bit Manjaro Linux
//Command     : generate_target main.bd
//Design      : main
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=main,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_board_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "main.hwdef" *) 
module main
   (AD9117_DCLKIO_0,
    AD9117_D_0,
    AD9117_RESET_0,
    AT_EVENT_0,
    CLK_100_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    DIO_0,
    ETH_LEDS_0,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    FPGA_CLK1_N_0,
    FPGA_CLK1_P_0,
    FPGA_CLK2_N_0,
    FPGA_CLK2_P_0,
    FP_LEDS_0,
    GPIO_0_0_tri_i,
    GPIO_0_0_tri_o,
    GPIO_0_0_tri_t,
    IIC_0_0_scl_i,
    IIC_0_0_scl_o,
    IIC_0_0_scl_t,
    IIC_0_0_sda_i,
    IIC_0_0_sda_o,
    IIC_0_0_sda_t,
    LEDS_0,
    LTC2195_D0_N_0,
    LTC2195_D0_P_0,
    LTC2195_D1_N_0,
    LTC2195_D1_P_0,
    LTC2195_DCO_N_0,
    LTC2195_DCO_P_0,
    LTC2195_FR_N_0,
    LTC2195_FR_P_0,
    SPI_0_0_io0_i,
    SPI_0_0_io0_o,
    SPI_0_0_io0_t,
    SPI_0_0_io1_i,
    SPI_0_0_io1_o,
    SPI_0_0_io1_t,
    SPI_0_0_sck_i,
    SPI_0_0_sck_o,
    SPI_0_0_sck_t,
    SPI_0_0_ss1_o,
    SPI_0_0_ss2_o,
    SPI_0_0_ss_i,
    SPI_0_0_ss_o,
    SPI_0_0_ss_t,
    SPI_1_0_io0_i,
    SPI_1_0_io0_o,
    SPI_1_0_io0_t,
    SPI_1_0_io1_i,
    SPI_1_0_io1_o,
    SPI_1_0_io1_t,
    SPI_1_0_sck_i,
    SPI_1_0_sck_o,
    SPI_1_0_sck_t,
    SPI_1_0_ss1_o,
    SPI_1_0_ss2_o,
    SPI_1_0_ss_i,
    SPI_1_0_ss_o,
    SPI_1_0_ss_t);
  output AD9117_DCLKIO_0;
  output [13:0]AD9117_D_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AD9117_RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AD9117_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output AD9117_RESET_0;
  input AT_EVENT_0;
  input CLK_100_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  output [1:0]DIO_0;
  output [1:0]ETH_LEDS_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *) inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *) inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *) inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *) inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *) inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *) inout FIXED_IO_0_ps_srstb;
  input FPGA_CLK1_N_0;
  input FPGA_CLK1_P_0;
  input FPGA_CLK2_N_0;
  input FPGA_CLK2_P_0;
  output [3:0]FP_LEDS_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_I" *) input [43:0]GPIO_0_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_O" *) output [43:0]GPIO_0_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_T" *) output [43:0]GPIO_0_0_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_I" *) input IIC_0_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_O" *) output IIC_0_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SCL_T" *) output IIC_0_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_I" *) input IIC_0_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_O" *) output IIC_0_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0_0 SDA_T" *) output IIC_0_0_sda_t;
  output [2:0]LEDS_0;
  input [3:0]LTC2195_D0_N_0;
  input [3:0]LTC2195_D0_P_0;
  input [3:0]LTC2195_D1_N_0;
  input [3:0]LTC2195_D1_P_0;
  input LTC2195_DCO_N_0;
  input LTC2195_DCO_P_0;
  input LTC2195_FR_N_0;
  input LTC2195_FR_P_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *) input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *) output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *) output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *) input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *) output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *) output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_I" *) input SPI_0_0_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_O" *) output SPI_0_0_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_T" *) output SPI_0_0_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS1_O" *) output SPI_0_0_ss1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS2_O" *) output SPI_0_0_ss2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *) input SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *) output SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *) output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO0_I" *) input SPI_1_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO0_O" *) output SPI_1_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO0_T" *) output SPI_1_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO1_I" *) input SPI_1_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO1_O" *) output SPI_1_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 IO1_T" *) output SPI_1_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SCK_I" *) input SPI_1_0_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SCK_O" *) output SPI_1_0_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SCK_T" *) output SPI_1_0_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SS1_O" *) output SPI_1_0_ss1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SS2_O" *) output SPI_1_0_ss2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SS_I" *) input SPI_1_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SS_O" *) output SPI_1_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_1_0 SS_T" *) output SPI_1_0_ss_t;

  wire AT_EVENT_0_1;
  wire CLK_100_0_1;
  wire FPGA_CLK1_N_0_1;
  wire FPGA_CLK1_P_0_1;
  wire FPGA_CLK2_N_0_1;
  wire FPGA_CLK2_P_0_1;
  wire [13:0]FastServoTop_0_AD9117_D;
  wire FastServoTop_0_AD9117_DCLKIO;
  wire FastServoTop_0_AD9117_RESET;
  wire [1:0]FastServoTop_0_DIO;
  wire [1:0]FastServoTop_0_ETH_LEDS;
  wire [3:0]FastServoTop_0_FP_LEDS;
  wire [2:0]FastServoTop_0_LEDS;
  wire [3:0]LTC2195_D0_N_0_1;
  wire [3:0]LTC2195_D0_P_0_1;
  wire [3:0]LTC2195_D1_N_0_1;
  wire [3:0]LTC2195_D1_P_0_1;
  wire LTC2195_DCO_N_0_1;
  wire LTC2195_DCO_P_0_1;
  wire LTC2195_FR_N_0_1;
  wire LTC2195_FR_P_0_1;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [43:0]processing_system7_0_GPIO_0_TRI_I;
  wire [43:0]processing_system7_0_GPIO_0_TRI_O;
  wire [43:0]processing_system7_0_GPIO_0_TRI_T;
  wire processing_system7_0_IIC_0_SCL_I;
  wire processing_system7_0_IIC_0_SCL_O;
  wire processing_system7_0_IIC_0_SCL_T;
  wire processing_system7_0_IIC_0_SDA_I;
  wire processing_system7_0_IIC_0_SDA_O;
  wire processing_system7_0_IIC_0_SDA_T;
  wire processing_system7_0_SPI_0_IO0_I;
  wire processing_system7_0_SPI_0_IO0_O;
  wire processing_system7_0_SPI_0_IO0_T;
  wire processing_system7_0_SPI_0_IO1_I;
  wire processing_system7_0_SPI_0_IO1_O;
  wire processing_system7_0_SPI_0_IO1_T;
  wire processing_system7_0_SPI_0_SCK_I;
  wire processing_system7_0_SPI_0_SCK_O;
  wire processing_system7_0_SPI_0_SCK_T;
  wire processing_system7_0_SPI_0_SS1_O;
  wire processing_system7_0_SPI_0_SS2_O;
  wire processing_system7_0_SPI_0_SS_I;
  wire processing_system7_0_SPI_0_SS_O;
  wire processing_system7_0_SPI_0_SS_T;
  wire processing_system7_0_SPI_1_IO0_I;
  wire processing_system7_0_SPI_1_IO0_O;
  wire processing_system7_0_SPI_1_IO0_T;
  wire processing_system7_0_SPI_1_IO1_I;
  wire processing_system7_0_SPI_1_IO1_O;
  wire processing_system7_0_SPI_1_IO1_T;
  wire processing_system7_0_SPI_1_SCK_I;
  wire processing_system7_0_SPI_1_SCK_O;
  wire processing_system7_0_SPI_1_SCK_T;
  wire processing_system7_0_SPI_1_SS1_O;
  wire processing_system7_0_SPI_1_SS2_O;
  wire processing_system7_0_SPI_1_SS_I;
  wire processing_system7_0_SPI_1_SS_O;
  wire processing_system7_0_SPI_1_SS_T;

  assign AD9117_DCLKIO_0 = FastServoTop_0_AD9117_DCLKIO;
  assign AD9117_D_0[13:0] = FastServoTop_0_AD9117_D;
  assign AD9117_RESET_0 = FastServoTop_0_AD9117_RESET;
  assign AT_EVENT_0_1 = AT_EVENT_0;
  assign CLK_100_0_1 = CLK_100_0;
  assign DIO_0[1:0] = FastServoTop_0_DIO;
  assign ETH_LEDS_0[1:0] = FastServoTop_0_ETH_LEDS;
  assign FPGA_CLK1_N_0_1 = FPGA_CLK1_N_0;
  assign FPGA_CLK1_P_0_1 = FPGA_CLK1_P_0;
  assign FPGA_CLK2_N_0_1 = FPGA_CLK2_N_0;
  assign FPGA_CLK2_P_0_1 = FPGA_CLK2_P_0;
  assign FP_LEDS_0[3:0] = FastServoTop_0_FP_LEDS;
  assign GPIO_0_0_tri_o[43:0] = processing_system7_0_GPIO_0_TRI_O;
  assign GPIO_0_0_tri_t[43:0] = processing_system7_0_GPIO_0_TRI_T;
  assign IIC_0_0_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign IIC_0_0_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign IIC_0_0_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign IIC_0_0_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign LEDS_0[2:0] = FastServoTop_0_LEDS;
  assign LTC2195_D0_N_0_1 = LTC2195_D0_N_0[3:0];
  assign LTC2195_D0_P_0_1 = LTC2195_D0_P_0[3:0];
  assign LTC2195_D1_N_0_1 = LTC2195_D1_N_0[3:0];
  assign LTC2195_D1_P_0_1 = LTC2195_D1_P_0[3:0];
  assign LTC2195_DCO_N_0_1 = LTC2195_DCO_N_0;
  assign LTC2195_DCO_P_0_1 = LTC2195_DCO_P_0;
  assign LTC2195_FR_N_0_1 = LTC2195_FR_N_0;
  assign LTC2195_FR_P_0_1 = LTC2195_FR_P_0;
  assign SPI_0_0_io0_o = processing_system7_0_SPI_0_IO0_O;
  assign SPI_0_0_io0_t = processing_system7_0_SPI_0_IO0_T;
  assign SPI_0_0_io1_o = processing_system7_0_SPI_0_IO1_O;
  assign SPI_0_0_io1_t = processing_system7_0_SPI_0_IO1_T;
  assign SPI_0_0_sck_o = processing_system7_0_SPI_0_SCK_O;
  assign SPI_0_0_sck_t = processing_system7_0_SPI_0_SCK_T;
  assign SPI_0_0_ss1_o = processing_system7_0_SPI_0_SS1_O;
  assign SPI_0_0_ss2_o = processing_system7_0_SPI_0_SS2_O;
  assign SPI_0_0_ss_o = processing_system7_0_SPI_0_SS_O;
  assign SPI_0_0_ss_t = processing_system7_0_SPI_0_SS_T;
  assign SPI_1_0_io0_o = processing_system7_0_SPI_1_IO0_O;
  assign SPI_1_0_io0_t = processing_system7_0_SPI_1_IO0_T;
  assign SPI_1_0_io1_o = processing_system7_0_SPI_1_IO1_O;
  assign SPI_1_0_io1_t = processing_system7_0_SPI_1_IO1_T;
  assign SPI_1_0_sck_o = processing_system7_0_SPI_1_SCK_O;
  assign SPI_1_0_sck_t = processing_system7_0_SPI_1_SCK_T;
  assign SPI_1_0_ss1_o = processing_system7_0_SPI_1_SS1_O;
  assign SPI_1_0_ss2_o = processing_system7_0_SPI_1_SS2_O;
  assign SPI_1_0_ss_o = processing_system7_0_SPI_1_SS_O;
  assign SPI_1_0_ss_t = processing_system7_0_SPI_1_SS_T;
  assign processing_system7_0_GPIO_0_TRI_I = GPIO_0_0_tri_i[43:0];
  assign processing_system7_0_IIC_0_SCL_I = IIC_0_0_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = IIC_0_0_sda_i;
  assign processing_system7_0_SPI_0_IO0_I = SPI_0_0_io0_i;
  assign processing_system7_0_SPI_0_IO1_I = SPI_0_0_io1_i;
  assign processing_system7_0_SPI_0_SCK_I = SPI_0_0_sck_i;
  assign processing_system7_0_SPI_0_SS_I = SPI_0_0_ss_i;
  assign processing_system7_0_SPI_1_IO0_I = SPI_1_0_io0_i;
  assign processing_system7_0_SPI_1_IO1_I = SPI_1_0_io1_i;
  assign processing_system7_0_SPI_1_SCK_I = SPI_1_0_sck_i;
  assign processing_system7_0_SPI_1_SS_I = SPI_1_0_ss_i;
  main_FastServoTop_0_0 FastServoTop_0
       (.AD9117_D(FastServoTop_0_AD9117_D),
        .AD9117_DCLKIO(FastServoTop_0_AD9117_DCLKIO),
        .AD9117_RESET(FastServoTop_0_AD9117_RESET),
        .AT_EVENT(AT_EVENT_0_1),
        .CLK_100(CLK_100_0_1),
        .DIO(FastServoTop_0_DIO),
        .ETH_LEDS(FastServoTop_0_ETH_LEDS),
        .FPGA_CLK1_N(FPGA_CLK1_N_0_1),
        .FPGA_CLK1_P(FPGA_CLK1_P_0_1),
        .FPGA_CLK2_N(FPGA_CLK2_N_0_1),
        .FPGA_CLK2_P(FPGA_CLK2_P_0_1),
        .FP_LEDS(FastServoTop_0_FP_LEDS),
        .LEDS(FastServoTop_0_LEDS),
        .LTC2195_D0_N(LTC2195_D0_N_0_1),
        .LTC2195_D0_P(LTC2195_D0_P_0_1),
        .LTC2195_D1_N(LTC2195_D1_N_0_1),
        .LTC2195_D1_P(LTC2195_D1_P_0_1),
        .LTC2195_DCO_N(LTC2195_DCO_N_0_1),
        .LTC2195_DCO_P(LTC2195_DCO_P_0_1),
        .LTC2195_FR_N(LTC2195_FR_N_0_1),
        .LTC2195_FR_P(LTC2195_FR_P_0_1),
        .rst_in(processing_system7_0_FCLK_RESET0_N));
  main_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_0_ddr_vrn),
        .DDR_VRP(FIXED_IO_0_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(processing_system7_0_GPIO_0_TRI_I),
        .GPIO_O(processing_system7_0_GPIO_0_TRI_O),
        .GPIO_T(processing_system7_0_GPIO_0_TRI_T),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .MIO(FIXED_IO_0_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_0_ps_clk),
        .PS_PORB(FIXED_IO_0_ps_porb),
        .PS_SRSTB(FIXED_IO_0_ps_srstb),
        .SPI0_MISO_I(processing_system7_0_SPI_0_IO1_I),
        .SPI0_MISO_O(processing_system7_0_SPI_0_IO1_O),
        .SPI0_MISO_T(processing_system7_0_SPI_0_IO1_T),
        .SPI0_MOSI_I(processing_system7_0_SPI_0_IO0_I),
        .SPI0_MOSI_O(processing_system7_0_SPI_0_IO0_O),
        .SPI0_MOSI_T(processing_system7_0_SPI_0_IO0_T),
        .SPI0_SCLK_I(processing_system7_0_SPI_0_SCK_I),
        .SPI0_SCLK_O(processing_system7_0_SPI_0_SCK_O),
        .SPI0_SCLK_T(processing_system7_0_SPI_0_SCK_T),
        .SPI0_SS1_O(processing_system7_0_SPI_0_SS1_O),
        .SPI0_SS2_O(processing_system7_0_SPI_0_SS2_O),
        .SPI0_SS_I(processing_system7_0_SPI_0_SS_I),
        .SPI0_SS_O(processing_system7_0_SPI_0_SS_O),
        .SPI0_SS_T(processing_system7_0_SPI_0_SS_T),
        .SPI1_MISO_I(processing_system7_0_SPI_1_IO1_I),
        .SPI1_MISO_O(processing_system7_0_SPI_1_IO1_O),
        .SPI1_MISO_T(processing_system7_0_SPI_1_IO1_T),
        .SPI1_MOSI_I(processing_system7_0_SPI_1_IO0_I),
        .SPI1_MOSI_O(processing_system7_0_SPI_1_IO0_O),
        .SPI1_MOSI_T(processing_system7_0_SPI_1_IO0_T),
        .SPI1_SCLK_I(processing_system7_0_SPI_1_SCK_I),
        .SPI1_SCLK_O(processing_system7_0_SPI_1_SCK_O),
        .SPI1_SCLK_T(processing_system7_0_SPI_1_SCK_T),
        .SPI1_SS1_O(processing_system7_0_SPI_1_SS1_O),
        .SPI1_SS2_O(processing_system7_0_SPI_1_SS2_O),
        .SPI1_SS_I(processing_system7_0_SPI_1_SS_I),
        .SPI1_SS_O(processing_system7_0_SPI_1_SS_O),
        .SPI1_SS_T(processing_system7_0_SPI_1_SS_T),
        .USB0_VBUS_PWRFAULT(1'b0));
endmodule
