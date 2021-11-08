//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Nov  8 13:39:25 2021
//Host        : whooper running 64-bit Manjaro Linux
//Command     : generate_target main_wrapper.bd
//Design      : main_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module main_wrapper
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
    GPIO_0_0_tri_io,
    IIC_0_0_scl_io,
    IIC_0_0_sda_io,
    LEDS_0,
    LTC2195_D0_N_0,
    LTC2195_D0_P_0,
    LTC2195_D1_N_0,
    LTC2195_D1_P_0,
    LTC2195_DCO_N_0,
    LTC2195_DCO_P_0,
    LTC2195_FR_N_0,
    LTC2195_FR_P_0,
    adc_miso,
    adc_mosi,
    adc_sclk,
    adc_ss,
    dac_sclk,
    dac_sdio,
    dac_ss);
  output AD9117_DCLKIO_0;
  output [13:0]AD9117_D_0;
  output AD9117_RESET_0;
  input AT_EVENT_0;
  input CLK_100_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output [1:0]DIO_0;
  output [1:0]ETH_LEDS_0;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  input FPGA_CLK1_N_0;
  input FPGA_CLK1_P_0;
  input FPGA_CLK2_N_0;
  input FPGA_CLK2_P_0;
  output [3:0]FP_LEDS_0;
  inout [43:0]GPIO_0_0_tri_io;
  inout IIC_0_0_scl_io;
  inout IIC_0_0_sda_io;
  output [2:0]LEDS_0;
  input [3:0]LTC2195_D0_N_0;
  input [3:0]LTC2195_D0_P_0;
  input [3:0]LTC2195_D1_N_0;
  input [3:0]LTC2195_D1_P_0;
  input LTC2195_DCO_N_0;
  input LTC2195_DCO_P_0;
  input LTC2195_FR_N_0;
  input LTC2195_FR_P_0;
  input adc_miso;
  output adc_mosi;
  output adc_sclk;
  output adc_ss;
  output dac_sclk;
  inout dac_sdio;
  output dac_ss;

  wire AD9117_DCLKIO_0;
  wire [13:0]AD9117_D_0;
  wire AD9117_RESET_0;
  wire AT_EVENT_0;
  wire CLK_100_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire [1:0]DIO_0;
  wire [1:0]ETH_LEDS_0;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire FPGA_CLK1_N_0;
  wire FPGA_CLK1_P_0;
  wire FPGA_CLK2_N_0;
  wire FPGA_CLK2_P_0;
  wire [3:0]FP_LEDS_0;
  wire [0:0]GPIO_0_0_tri_i_0;
  wire [1:1]GPIO_0_0_tri_i_1;
  wire [10:10]GPIO_0_0_tri_i_10;
  wire [11:11]GPIO_0_0_tri_i_11;
  wire [12:12]GPIO_0_0_tri_i_12;
  wire [13:13]GPIO_0_0_tri_i_13;
  wire [14:14]GPIO_0_0_tri_i_14;
  wire [15:15]GPIO_0_0_tri_i_15;
  wire [16:16]GPIO_0_0_tri_i_16;
  wire [17:17]GPIO_0_0_tri_i_17;
  wire [18:18]GPIO_0_0_tri_i_18;
  wire [19:19]GPIO_0_0_tri_i_19;
  wire [2:2]GPIO_0_0_tri_i_2;
  wire [20:20]GPIO_0_0_tri_i_20;
  wire [21:21]GPIO_0_0_tri_i_21;
  wire [22:22]GPIO_0_0_tri_i_22;
  wire [23:23]GPIO_0_0_tri_i_23;
  wire [24:24]GPIO_0_0_tri_i_24;
  wire [25:25]GPIO_0_0_tri_i_25;
  wire [26:26]GPIO_0_0_tri_i_26;
  wire [27:27]GPIO_0_0_tri_i_27;
  wire [28:28]GPIO_0_0_tri_i_28;
  wire [29:29]GPIO_0_0_tri_i_29;
  wire [3:3]GPIO_0_0_tri_i_3;
  wire [30:30]GPIO_0_0_tri_i_30;
  wire [31:31]GPIO_0_0_tri_i_31;
  wire [32:32]GPIO_0_0_tri_i_32;
  wire [33:33]GPIO_0_0_tri_i_33;
  wire [34:34]GPIO_0_0_tri_i_34;
  wire [35:35]GPIO_0_0_tri_i_35;
  wire [36:36]GPIO_0_0_tri_i_36;
  wire [37:37]GPIO_0_0_tri_i_37;
  wire [38:38]GPIO_0_0_tri_i_38;
  wire [39:39]GPIO_0_0_tri_i_39;
  wire [4:4]GPIO_0_0_tri_i_4;
  wire [40:40]GPIO_0_0_tri_i_40;
  wire [41:41]GPIO_0_0_tri_i_41;
  wire [42:42]GPIO_0_0_tri_i_42;
  wire [43:43]GPIO_0_0_tri_i_43;
  wire [5:5]GPIO_0_0_tri_i_5;
  wire [6:6]GPIO_0_0_tri_i_6;
  wire [7:7]GPIO_0_0_tri_i_7;
  wire [8:8]GPIO_0_0_tri_i_8;
  wire [9:9]GPIO_0_0_tri_i_9;
  wire [0:0]GPIO_0_0_tri_io_0;
  wire [1:1]GPIO_0_0_tri_io_1;
  wire [10:10]GPIO_0_0_tri_io_10;
  wire [11:11]GPIO_0_0_tri_io_11;
  wire [12:12]GPIO_0_0_tri_io_12;
  wire [13:13]GPIO_0_0_tri_io_13;
  wire [14:14]GPIO_0_0_tri_io_14;
  wire [15:15]GPIO_0_0_tri_io_15;
  wire [16:16]GPIO_0_0_tri_io_16;
  wire [17:17]GPIO_0_0_tri_io_17;
  wire [18:18]GPIO_0_0_tri_io_18;
  wire [19:19]GPIO_0_0_tri_io_19;
  wire [2:2]GPIO_0_0_tri_io_2;
  wire [20:20]GPIO_0_0_tri_io_20;
  wire [21:21]GPIO_0_0_tri_io_21;
  wire [22:22]GPIO_0_0_tri_io_22;
  wire [23:23]GPIO_0_0_tri_io_23;
  wire [24:24]GPIO_0_0_tri_io_24;
  wire [25:25]GPIO_0_0_tri_io_25;
  wire [26:26]GPIO_0_0_tri_io_26;
  wire [27:27]GPIO_0_0_tri_io_27;
  wire [28:28]GPIO_0_0_tri_io_28;
  wire [29:29]GPIO_0_0_tri_io_29;
  wire [3:3]GPIO_0_0_tri_io_3;
  wire [30:30]GPIO_0_0_tri_io_30;
  wire [31:31]GPIO_0_0_tri_io_31;
  wire [32:32]GPIO_0_0_tri_io_32;
  wire [33:33]GPIO_0_0_tri_io_33;
  wire [34:34]GPIO_0_0_tri_io_34;
  wire [35:35]GPIO_0_0_tri_io_35;
  wire [36:36]GPIO_0_0_tri_io_36;
  wire [37:37]GPIO_0_0_tri_io_37;
  wire [38:38]GPIO_0_0_tri_io_38;
  wire [39:39]GPIO_0_0_tri_io_39;
  wire [4:4]GPIO_0_0_tri_io_4;
  wire [40:40]GPIO_0_0_tri_io_40;
  wire [41:41]GPIO_0_0_tri_io_41;
  wire [42:42]GPIO_0_0_tri_io_42;
  wire [43:43]GPIO_0_0_tri_io_43;
  wire [5:5]GPIO_0_0_tri_io_5;
  wire [6:6]GPIO_0_0_tri_io_6;
  wire [7:7]GPIO_0_0_tri_io_7;
  wire [8:8]GPIO_0_0_tri_io_8;
  wire [9:9]GPIO_0_0_tri_io_9;
  wire [0:0]GPIO_0_0_tri_o_0;
  wire [1:1]GPIO_0_0_tri_o_1;
  wire [10:10]GPIO_0_0_tri_o_10;
  wire [11:11]GPIO_0_0_tri_o_11;
  wire [12:12]GPIO_0_0_tri_o_12;
  wire [13:13]GPIO_0_0_tri_o_13;
  wire [14:14]GPIO_0_0_tri_o_14;
  wire [15:15]GPIO_0_0_tri_o_15;
  wire [16:16]GPIO_0_0_tri_o_16;
  wire [17:17]GPIO_0_0_tri_o_17;
  wire [18:18]GPIO_0_0_tri_o_18;
  wire [19:19]GPIO_0_0_tri_o_19;
  wire [2:2]GPIO_0_0_tri_o_2;
  wire [20:20]GPIO_0_0_tri_o_20;
  wire [21:21]GPIO_0_0_tri_o_21;
  wire [22:22]GPIO_0_0_tri_o_22;
  wire [23:23]GPIO_0_0_tri_o_23;
  wire [24:24]GPIO_0_0_tri_o_24;
  wire [25:25]GPIO_0_0_tri_o_25;
  wire [26:26]GPIO_0_0_tri_o_26;
  wire [27:27]GPIO_0_0_tri_o_27;
  wire [28:28]GPIO_0_0_tri_o_28;
  wire [29:29]GPIO_0_0_tri_o_29;
  wire [3:3]GPIO_0_0_tri_o_3;
  wire [30:30]GPIO_0_0_tri_o_30;
  wire [31:31]GPIO_0_0_tri_o_31;
  wire [32:32]GPIO_0_0_tri_o_32;
  wire [33:33]GPIO_0_0_tri_o_33;
  wire [34:34]GPIO_0_0_tri_o_34;
  wire [35:35]GPIO_0_0_tri_o_35;
  wire [36:36]GPIO_0_0_tri_o_36;
  wire [37:37]GPIO_0_0_tri_o_37;
  wire [38:38]GPIO_0_0_tri_o_38;
  wire [39:39]GPIO_0_0_tri_o_39;
  wire [4:4]GPIO_0_0_tri_o_4;
  wire [40:40]GPIO_0_0_tri_o_40;
  wire [41:41]GPIO_0_0_tri_o_41;
  wire [42:42]GPIO_0_0_tri_o_42;
  wire [43:43]GPIO_0_0_tri_o_43;
  wire [5:5]GPIO_0_0_tri_o_5;
  wire [6:6]GPIO_0_0_tri_o_6;
  wire [7:7]GPIO_0_0_tri_o_7;
  wire [8:8]GPIO_0_0_tri_o_8;
  wire [9:9]GPIO_0_0_tri_o_9;
  wire [0:0]GPIO_0_0_tri_t_0;
  wire [1:1]GPIO_0_0_tri_t_1;
  wire [10:10]GPIO_0_0_tri_t_10;
  wire [11:11]GPIO_0_0_tri_t_11;
  wire [12:12]GPIO_0_0_tri_t_12;
  wire [13:13]GPIO_0_0_tri_t_13;
  wire [14:14]GPIO_0_0_tri_t_14;
  wire [15:15]GPIO_0_0_tri_t_15;
  wire [16:16]GPIO_0_0_tri_t_16;
  wire [17:17]GPIO_0_0_tri_t_17;
  wire [18:18]GPIO_0_0_tri_t_18;
  wire [19:19]GPIO_0_0_tri_t_19;
  wire [2:2]GPIO_0_0_tri_t_2;
  wire [20:20]GPIO_0_0_tri_t_20;
  wire [21:21]GPIO_0_0_tri_t_21;
  wire [22:22]GPIO_0_0_tri_t_22;
  wire [23:23]GPIO_0_0_tri_t_23;
  wire [24:24]GPIO_0_0_tri_t_24;
  wire [25:25]GPIO_0_0_tri_t_25;
  wire [26:26]GPIO_0_0_tri_t_26;
  wire [27:27]GPIO_0_0_tri_t_27;
  wire [28:28]GPIO_0_0_tri_t_28;
  wire [29:29]GPIO_0_0_tri_t_29;
  wire [3:3]GPIO_0_0_tri_t_3;
  wire [30:30]GPIO_0_0_tri_t_30;
  wire [31:31]GPIO_0_0_tri_t_31;
  wire [32:32]GPIO_0_0_tri_t_32;
  wire [33:33]GPIO_0_0_tri_t_33;
  wire [34:34]GPIO_0_0_tri_t_34;
  wire [35:35]GPIO_0_0_tri_t_35;
  wire [36:36]GPIO_0_0_tri_t_36;
  wire [37:37]GPIO_0_0_tri_t_37;
  wire [38:38]GPIO_0_0_tri_t_38;
  wire [39:39]GPIO_0_0_tri_t_39;
  wire [4:4]GPIO_0_0_tri_t_4;
  wire [40:40]GPIO_0_0_tri_t_40;
  wire [41:41]GPIO_0_0_tri_t_41;
  wire [42:42]GPIO_0_0_tri_t_42;
  wire [43:43]GPIO_0_0_tri_t_43;
  wire [5:5]GPIO_0_0_tri_t_5;
  wire [6:6]GPIO_0_0_tri_t_6;
  wire [7:7]GPIO_0_0_tri_t_7;
  wire [8:8]GPIO_0_0_tri_t_8;
  wire [9:9]GPIO_0_0_tri_t_9;
  wire IIC_0_0_scl_i;
  wire IIC_0_0_scl_io;
  wire IIC_0_0_scl_o;
  wire IIC_0_0_scl_t;
  wire IIC_0_0_sda_i;
  wire IIC_0_0_sda_io;
  wire IIC_0_0_sda_o;
  wire IIC_0_0_sda_t;
  wire [2:0]LEDS_0;
  wire [3:0]LTC2195_D0_N_0;
  wire [3:0]LTC2195_D0_P_0;
  wire [3:0]LTC2195_D1_N_0;
  wire [3:0]LTC2195_D1_P_0;
  wire LTC2195_DCO_N_0;
  wire LTC2195_DCO_P_0;
  wire LTC2195_FR_N_0;
  wire LTC2195_FR_P_0;
  wire adc_miso;
  wire adc_mosi;
  wire adc_sclk;
  wire adc_ss;
  wire dac_sclk;
  wire dac_sdio;
  wire dac_ss;

  IOBUF GPIO_0_0_tri_iobuf_0
       (.I(GPIO_0_0_tri_o_0),
        .IO(GPIO_0_0_tri_io[0]),
        .O(GPIO_0_0_tri_i_0),
        .T(GPIO_0_0_tri_t_0));
  IOBUF GPIO_0_0_tri_iobuf_1
       (.I(GPIO_0_0_tri_o_1),
        .IO(GPIO_0_0_tri_io[1]),
        .O(GPIO_0_0_tri_i_1),
        .T(GPIO_0_0_tri_t_1));
  IOBUF GPIO_0_0_tri_iobuf_10
       (.I(GPIO_0_0_tri_o_10),
        .IO(GPIO_0_0_tri_io[10]),
        .O(GPIO_0_0_tri_i_10),
        .T(GPIO_0_0_tri_t_10));
  IOBUF GPIO_0_0_tri_iobuf_11
       (.I(GPIO_0_0_tri_o_11),
        .IO(GPIO_0_0_tri_io[11]),
        .O(GPIO_0_0_tri_i_11),
        .T(GPIO_0_0_tri_t_11));
  IOBUF GPIO_0_0_tri_iobuf_12
       (.I(GPIO_0_0_tri_o_12),
        .IO(GPIO_0_0_tri_io[12]),
        .O(GPIO_0_0_tri_i_12),
        .T(GPIO_0_0_tri_t_12));
  IOBUF GPIO_0_0_tri_iobuf_13
       (.I(GPIO_0_0_tri_o_13),
        .IO(GPIO_0_0_tri_io[13]),
        .O(GPIO_0_0_tri_i_13),
        .T(GPIO_0_0_tri_t_13));
  IOBUF GPIO_0_0_tri_iobuf_14
       (.I(GPIO_0_0_tri_o_14),
        .IO(GPIO_0_0_tri_io[14]),
        .O(GPIO_0_0_tri_i_14),
        .T(GPIO_0_0_tri_t_14));
  IOBUF GPIO_0_0_tri_iobuf_15
       (.I(GPIO_0_0_tri_o_15),
        .IO(GPIO_0_0_tri_io[15]),
        .O(GPIO_0_0_tri_i_15),
        .T(GPIO_0_0_tri_t_15));
  IOBUF GPIO_0_0_tri_iobuf_16
       (.I(GPIO_0_0_tri_o_16),
        .IO(GPIO_0_0_tri_io[16]),
        .O(GPIO_0_0_tri_i_16),
        .T(GPIO_0_0_tri_t_16));
  IOBUF GPIO_0_0_tri_iobuf_17
       (.I(GPIO_0_0_tri_o_17),
        .IO(GPIO_0_0_tri_io[17]),
        .O(GPIO_0_0_tri_i_17),
        .T(GPIO_0_0_tri_t_17));
  IOBUF GPIO_0_0_tri_iobuf_18
       (.I(GPIO_0_0_tri_o_18),
        .IO(GPIO_0_0_tri_io[18]),
        .O(GPIO_0_0_tri_i_18),
        .T(GPIO_0_0_tri_t_18));
  IOBUF GPIO_0_0_tri_iobuf_19
       (.I(GPIO_0_0_tri_o_19),
        .IO(GPIO_0_0_tri_io[19]),
        .O(GPIO_0_0_tri_i_19),
        .T(GPIO_0_0_tri_t_19));
  IOBUF GPIO_0_0_tri_iobuf_2
       (.I(GPIO_0_0_tri_o_2),
        .IO(GPIO_0_0_tri_io[2]),
        .O(GPIO_0_0_tri_i_2),
        .T(GPIO_0_0_tri_t_2));
  IOBUF GPIO_0_0_tri_iobuf_20
       (.I(GPIO_0_0_tri_o_20),
        .IO(GPIO_0_0_tri_io[20]),
        .O(GPIO_0_0_tri_i_20),
        .T(GPIO_0_0_tri_t_20));
  IOBUF GPIO_0_0_tri_iobuf_21
       (.I(GPIO_0_0_tri_o_21),
        .IO(GPIO_0_0_tri_io[21]),
        .O(GPIO_0_0_tri_i_21),
        .T(GPIO_0_0_tri_t_21));
  IOBUF GPIO_0_0_tri_iobuf_22
       (.I(GPIO_0_0_tri_o_22),
        .IO(GPIO_0_0_tri_io[22]),
        .O(GPIO_0_0_tri_i_22),
        .T(GPIO_0_0_tri_t_22));
  IOBUF GPIO_0_0_tri_iobuf_23
       (.I(GPIO_0_0_tri_o_23),
        .IO(GPIO_0_0_tri_io[23]),
        .O(GPIO_0_0_tri_i_23),
        .T(GPIO_0_0_tri_t_23));
  IOBUF GPIO_0_0_tri_iobuf_24
       (.I(GPIO_0_0_tri_o_24),
        .IO(GPIO_0_0_tri_io[24]),
        .O(GPIO_0_0_tri_i_24),
        .T(GPIO_0_0_tri_t_24));
  IOBUF GPIO_0_0_tri_iobuf_25
       (.I(GPIO_0_0_tri_o_25),
        .IO(GPIO_0_0_tri_io[25]),
        .O(GPIO_0_0_tri_i_25),
        .T(GPIO_0_0_tri_t_25));
  IOBUF GPIO_0_0_tri_iobuf_26
       (.I(GPIO_0_0_tri_o_26),
        .IO(GPIO_0_0_tri_io[26]),
        .O(GPIO_0_0_tri_i_26),
        .T(GPIO_0_0_tri_t_26));
  IOBUF GPIO_0_0_tri_iobuf_27
       (.I(GPIO_0_0_tri_o_27),
        .IO(GPIO_0_0_tri_io[27]),
        .O(GPIO_0_0_tri_i_27),
        .T(GPIO_0_0_tri_t_27));
  IOBUF GPIO_0_0_tri_iobuf_28
       (.I(GPIO_0_0_tri_o_28),
        .IO(GPIO_0_0_tri_io[28]),
        .O(GPIO_0_0_tri_i_28),
        .T(GPIO_0_0_tri_t_28));
  IOBUF GPIO_0_0_tri_iobuf_29
       (.I(GPIO_0_0_tri_o_29),
        .IO(GPIO_0_0_tri_io[29]),
        .O(GPIO_0_0_tri_i_29),
        .T(GPIO_0_0_tri_t_29));
  IOBUF GPIO_0_0_tri_iobuf_3
       (.I(GPIO_0_0_tri_o_3),
        .IO(GPIO_0_0_tri_io[3]),
        .O(GPIO_0_0_tri_i_3),
        .T(GPIO_0_0_tri_t_3));
  IOBUF GPIO_0_0_tri_iobuf_30
       (.I(GPIO_0_0_tri_o_30),
        .IO(GPIO_0_0_tri_io[30]),
        .O(GPIO_0_0_tri_i_30),
        .T(GPIO_0_0_tri_t_30));
  IOBUF GPIO_0_0_tri_iobuf_31
       (.I(GPIO_0_0_tri_o_31),
        .IO(GPIO_0_0_tri_io[31]),
        .O(GPIO_0_0_tri_i_31),
        .T(GPIO_0_0_tri_t_31));
  IOBUF GPIO_0_0_tri_iobuf_32
       (.I(GPIO_0_0_tri_o_32),
        .IO(GPIO_0_0_tri_io[32]),
        .O(GPIO_0_0_tri_i_32),
        .T(GPIO_0_0_tri_t_32));
  IOBUF GPIO_0_0_tri_iobuf_33
       (.I(GPIO_0_0_tri_o_33),
        .IO(GPIO_0_0_tri_io[33]),
        .O(GPIO_0_0_tri_i_33),
        .T(GPIO_0_0_tri_t_33));
  IOBUF GPIO_0_0_tri_iobuf_34
       (.I(GPIO_0_0_tri_o_34),
        .IO(GPIO_0_0_tri_io[34]),
        .O(GPIO_0_0_tri_i_34),
        .T(GPIO_0_0_tri_t_34));
  IOBUF GPIO_0_0_tri_iobuf_35
       (.I(GPIO_0_0_tri_o_35),
        .IO(GPIO_0_0_tri_io[35]),
        .O(GPIO_0_0_tri_i_35),
        .T(GPIO_0_0_tri_t_35));
  IOBUF GPIO_0_0_tri_iobuf_36
       (.I(GPIO_0_0_tri_o_36),
        .IO(GPIO_0_0_tri_io[36]),
        .O(GPIO_0_0_tri_i_36),
        .T(GPIO_0_0_tri_t_36));
  IOBUF GPIO_0_0_tri_iobuf_37
       (.I(GPIO_0_0_tri_o_37),
        .IO(GPIO_0_0_tri_io[37]),
        .O(GPIO_0_0_tri_i_37),
        .T(GPIO_0_0_tri_t_37));
  IOBUF GPIO_0_0_tri_iobuf_38
       (.I(GPIO_0_0_tri_o_38),
        .IO(GPIO_0_0_tri_io[38]),
        .O(GPIO_0_0_tri_i_38),
        .T(GPIO_0_0_tri_t_38));
  IOBUF GPIO_0_0_tri_iobuf_39
       (.I(GPIO_0_0_tri_o_39),
        .IO(GPIO_0_0_tri_io[39]),
        .O(GPIO_0_0_tri_i_39),
        .T(GPIO_0_0_tri_t_39));
  IOBUF GPIO_0_0_tri_iobuf_4
       (.I(GPIO_0_0_tri_o_4),
        .IO(GPIO_0_0_tri_io[4]),
        .O(GPIO_0_0_tri_i_4),
        .T(GPIO_0_0_tri_t_4));
  IOBUF GPIO_0_0_tri_iobuf_40
       (.I(GPIO_0_0_tri_o_40),
        .IO(GPIO_0_0_tri_io[40]),
        .O(GPIO_0_0_tri_i_40),
        .T(GPIO_0_0_tri_t_40));
  IOBUF GPIO_0_0_tri_iobuf_41
       (.I(GPIO_0_0_tri_o_41),
        .IO(GPIO_0_0_tri_io[41]),
        .O(GPIO_0_0_tri_i_41),
        .T(GPIO_0_0_tri_t_41));
  IOBUF GPIO_0_0_tri_iobuf_42
       (.I(GPIO_0_0_tri_o_42),
        .IO(GPIO_0_0_tri_io[42]),
        .O(GPIO_0_0_tri_i_42),
        .T(GPIO_0_0_tri_t_42));
  IOBUF GPIO_0_0_tri_iobuf_43
       (.I(GPIO_0_0_tri_o_43),
        .IO(GPIO_0_0_tri_io[43]),
        .O(GPIO_0_0_tri_i_43),
        .T(GPIO_0_0_tri_t_43));
  IOBUF GPIO_0_0_tri_iobuf_5
       (.I(GPIO_0_0_tri_o_5),
        .IO(GPIO_0_0_tri_io[5]),
        .O(GPIO_0_0_tri_i_5),
        .T(GPIO_0_0_tri_t_5));
  IOBUF GPIO_0_0_tri_iobuf_6
       (.I(GPIO_0_0_tri_o_6),
        .IO(GPIO_0_0_tri_io[6]),
        .O(GPIO_0_0_tri_i_6),
        .T(GPIO_0_0_tri_t_6));
  IOBUF GPIO_0_0_tri_iobuf_7
       (.I(GPIO_0_0_tri_o_7),
        .IO(GPIO_0_0_tri_io[7]),
        .O(GPIO_0_0_tri_i_7),
        .T(GPIO_0_0_tri_t_7));
  IOBUF GPIO_0_0_tri_iobuf_8
       (.I(GPIO_0_0_tri_o_8),
        .IO(GPIO_0_0_tri_io[8]),
        .O(GPIO_0_0_tri_i_8),
        .T(GPIO_0_0_tri_t_8));
  IOBUF GPIO_0_0_tri_iobuf_9
       (.I(GPIO_0_0_tri_o_9),
        .IO(GPIO_0_0_tri_io[9]),
        .O(GPIO_0_0_tri_i_9),
        .T(GPIO_0_0_tri_t_9));
  IOBUF IIC_0_0_scl_iobuf
       (.I(IIC_0_0_scl_o),
        .IO(IIC_0_0_scl_io),
        .O(IIC_0_0_scl_i),
        .T(IIC_0_0_scl_t));
  IOBUF IIC_0_0_sda_iobuf
       (.I(IIC_0_0_sda_o),
        .IO(IIC_0_0_sda_io),
        .O(IIC_0_0_sda_i),
        .T(IIC_0_0_sda_t));
  main main_i
       (.AD9117_DCLKIO_0(AD9117_DCLKIO_0),
        .AD9117_D_0(AD9117_D_0),
        .AD9117_RESET_0(AD9117_RESET_0),
        .AT_EVENT_0(AT_EVENT_0),
        .CLK_100_0(CLK_100_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .DIO_0(DIO_0),
        .ETH_LEDS_0(ETH_LEDS_0),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .FPGA_CLK1_N_0(FPGA_CLK1_N_0),
        .FPGA_CLK1_P_0(FPGA_CLK1_P_0),
        .FPGA_CLK2_N_0(FPGA_CLK2_N_0),
        .FPGA_CLK2_P_0(FPGA_CLK2_P_0),
        .FP_LEDS_0(FP_LEDS_0),
        .GPIO_0_0_tri_i({GPIO_0_0_tri_i_43,GPIO_0_0_tri_i_42,GPIO_0_0_tri_i_41,GPIO_0_0_tri_i_40,GPIO_0_0_tri_i_39,GPIO_0_0_tri_i_38,GPIO_0_0_tri_i_37,GPIO_0_0_tri_i_36,GPIO_0_0_tri_i_35,GPIO_0_0_tri_i_34,GPIO_0_0_tri_i_33,GPIO_0_0_tri_i_32,GPIO_0_0_tri_i_31,GPIO_0_0_tri_i_30,GPIO_0_0_tri_i_29,GPIO_0_0_tri_i_28,GPIO_0_0_tri_i_27,GPIO_0_0_tri_i_26,GPIO_0_0_tri_i_25,GPIO_0_0_tri_i_24,GPIO_0_0_tri_i_23,GPIO_0_0_tri_i_22,GPIO_0_0_tri_i_21,GPIO_0_0_tri_i_20,GPIO_0_0_tri_i_19,GPIO_0_0_tri_i_18,GPIO_0_0_tri_i_17,GPIO_0_0_tri_i_16,GPIO_0_0_tri_i_15,GPIO_0_0_tri_i_14,GPIO_0_0_tri_i_13,GPIO_0_0_tri_i_12,GPIO_0_0_tri_i_11,GPIO_0_0_tri_i_10,GPIO_0_0_tri_i_9,GPIO_0_0_tri_i_8,GPIO_0_0_tri_i_7,GPIO_0_0_tri_i_6,GPIO_0_0_tri_i_5,GPIO_0_0_tri_i_4,GPIO_0_0_tri_i_3,GPIO_0_0_tri_i_2,GPIO_0_0_tri_i_1,GPIO_0_0_tri_i_0}),
        .GPIO_0_0_tri_o({GPIO_0_0_tri_o_43,GPIO_0_0_tri_o_42,GPIO_0_0_tri_o_41,GPIO_0_0_tri_o_40,GPIO_0_0_tri_o_39,GPIO_0_0_tri_o_38,GPIO_0_0_tri_o_37,GPIO_0_0_tri_o_36,GPIO_0_0_tri_o_35,GPIO_0_0_tri_o_34,GPIO_0_0_tri_o_33,GPIO_0_0_tri_o_32,GPIO_0_0_tri_o_31,GPIO_0_0_tri_o_30,GPIO_0_0_tri_o_29,GPIO_0_0_tri_o_28,GPIO_0_0_tri_o_27,GPIO_0_0_tri_o_26,GPIO_0_0_tri_o_25,GPIO_0_0_tri_o_24,GPIO_0_0_tri_o_23,GPIO_0_0_tri_o_22,GPIO_0_0_tri_o_21,GPIO_0_0_tri_o_20,GPIO_0_0_tri_o_19,GPIO_0_0_tri_o_18,GPIO_0_0_tri_o_17,GPIO_0_0_tri_o_16,GPIO_0_0_tri_o_15,GPIO_0_0_tri_o_14,GPIO_0_0_tri_o_13,GPIO_0_0_tri_o_12,GPIO_0_0_tri_o_11,GPIO_0_0_tri_o_10,GPIO_0_0_tri_o_9,GPIO_0_0_tri_o_8,GPIO_0_0_tri_o_7,GPIO_0_0_tri_o_6,GPIO_0_0_tri_o_5,GPIO_0_0_tri_o_4,GPIO_0_0_tri_o_3,GPIO_0_0_tri_o_2,GPIO_0_0_tri_o_1,GPIO_0_0_tri_o_0}),
        .GPIO_0_0_tri_t({GPIO_0_0_tri_t_43,GPIO_0_0_tri_t_42,GPIO_0_0_tri_t_41,GPIO_0_0_tri_t_40,GPIO_0_0_tri_t_39,GPIO_0_0_tri_t_38,GPIO_0_0_tri_t_37,GPIO_0_0_tri_t_36,GPIO_0_0_tri_t_35,GPIO_0_0_tri_t_34,GPIO_0_0_tri_t_33,GPIO_0_0_tri_t_32,GPIO_0_0_tri_t_31,GPIO_0_0_tri_t_30,GPIO_0_0_tri_t_29,GPIO_0_0_tri_t_28,GPIO_0_0_tri_t_27,GPIO_0_0_tri_t_26,GPIO_0_0_tri_t_25,GPIO_0_0_tri_t_24,GPIO_0_0_tri_t_23,GPIO_0_0_tri_t_22,GPIO_0_0_tri_t_21,GPIO_0_0_tri_t_20,GPIO_0_0_tri_t_19,GPIO_0_0_tri_t_18,GPIO_0_0_tri_t_17,GPIO_0_0_tri_t_16,GPIO_0_0_tri_t_15,GPIO_0_0_tri_t_14,GPIO_0_0_tri_t_13,GPIO_0_0_tri_t_12,GPIO_0_0_tri_t_11,GPIO_0_0_tri_t_10,GPIO_0_0_tri_t_9,GPIO_0_0_tri_t_8,GPIO_0_0_tri_t_7,GPIO_0_0_tri_t_6,GPIO_0_0_tri_t_5,GPIO_0_0_tri_t_4,GPIO_0_0_tri_t_3,GPIO_0_0_tri_t_2,GPIO_0_0_tri_t_1,GPIO_0_0_tri_t_0}),
        .IIC_0_0_scl_i(IIC_0_0_scl_i),
        .IIC_0_0_scl_o(IIC_0_0_scl_o),
        .IIC_0_0_scl_t(IIC_0_0_scl_t),
        .IIC_0_0_sda_i(IIC_0_0_sda_i),
        .IIC_0_0_sda_o(IIC_0_0_sda_o),
        .IIC_0_0_sda_t(IIC_0_0_sda_t),
        .LEDS_0(LEDS_0),
        .LTC2195_D0_N_0(LTC2195_D0_N_0),
        .LTC2195_D0_P_0(LTC2195_D0_P_0),
        .LTC2195_D1_N_0(LTC2195_D1_N_0),
        .LTC2195_D1_P_0(LTC2195_D1_P_0),
        .LTC2195_DCO_N_0(LTC2195_DCO_N_0),
        .LTC2195_DCO_P_0(LTC2195_DCO_P_0),
        .LTC2195_FR_N_0(LTC2195_FR_N_0),
        .LTC2195_FR_P_0(LTC2195_FR_P_0),
        .adc_miso(adc_miso),
        .adc_mosi(adc_mosi),
        .adc_sclk(adc_sclk),
        .adc_ss(adc_ss),
        .dac_sclk(dac_sclk),
        .dac_sdio(dac_sdio),
        .dac_ss(dac_ss));
endmodule
