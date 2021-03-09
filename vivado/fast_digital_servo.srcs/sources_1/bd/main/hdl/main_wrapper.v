//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Tue Mar  9 19:26:29 2021
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
    SPI_0_0_io0_io,
    SPI_0_0_io1_io,
    SPI_0_0_sck_io,
    SPI_0_0_ss1_o,
    SPI_0_0_ss2_o,
    SPI_0_0_ss_io,
    SPI_1_0_io0_io,
    SPI_1_0_io1_io,
    SPI_1_0_sck_io,
    SPI_1_0_ss1_o,
    SPI_1_0_ss2_o,
    SPI_1_0_ss_io);
  output AD9117_DCLKIO_0;
  output [13:0]AD9117_D_0;
  output AD9117_RESET_0;
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
  inout [11:0]GPIO_0_0_tri_io;
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
  inout SPI_0_0_io0_io;
  inout SPI_0_0_io1_io;
  inout SPI_0_0_sck_io;
  output SPI_0_0_ss1_o;
  output SPI_0_0_ss2_o;
  inout SPI_0_0_ss_io;
  inout SPI_1_0_io0_io;
  inout SPI_1_0_io1_io;
  inout SPI_1_0_sck_io;
  output SPI_1_0_ss1_o;
  output SPI_1_0_ss2_o;
  inout SPI_1_0_ss_io;

  wire AD9117_DCLKIO_0;
  wire [13:0]AD9117_D_0;
  wire AD9117_RESET_0;
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
  wire [2:2]GPIO_0_0_tri_i_2;
  wire [3:3]GPIO_0_0_tri_i_3;
  wire [4:4]GPIO_0_0_tri_i_4;
  wire [5:5]GPIO_0_0_tri_i_5;
  wire [6:6]GPIO_0_0_tri_i_6;
  wire [7:7]GPIO_0_0_tri_i_7;
  wire [8:8]GPIO_0_0_tri_i_8;
  wire [9:9]GPIO_0_0_tri_i_9;
  wire [0:0]GPIO_0_0_tri_io_0;
  wire [1:1]GPIO_0_0_tri_io_1;
  wire [10:10]GPIO_0_0_tri_io_10;
  wire [11:11]GPIO_0_0_tri_io_11;
  wire [2:2]GPIO_0_0_tri_io_2;
  wire [3:3]GPIO_0_0_tri_io_3;
  wire [4:4]GPIO_0_0_tri_io_4;
  wire [5:5]GPIO_0_0_tri_io_5;
  wire [6:6]GPIO_0_0_tri_io_6;
  wire [7:7]GPIO_0_0_tri_io_7;
  wire [8:8]GPIO_0_0_tri_io_8;
  wire [9:9]GPIO_0_0_tri_io_9;
  wire [0:0]GPIO_0_0_tri_o_0;
  wire [1:1]GPIO_0_0_tri_o_1;
  wire [10:10]GPIO_0_0_tri_o_10;
  wire [11:11]GPIO_0_0_tri_o_11;
  wire [2:2]GPIO_0_0_tri_o_2;
  wire [3:3]GPIO_0_0_tri_o_3;
  wire [4:4]GPIO_0_0_tri_o_4;
  wire [5:5]GPIO_0_0_tri_o_5;
  wire [6:6]GPIO_0_0_tri_o_6;
  wire [7:7]GPIO_0_0_tri_o_7;
  wire [8:8]GPIO_0_0_tri_o_8;
  wire [9:9]GPIO_0_0_tri_o_9;
  wire [0:0]GPIO_0_0_tri_t_0;
  wire [1:1]GPIO_0_0_tri_t_1;
  wire [10:10]GPIO_0_0_tri_t_10;
  wire [11:11]GPIO_0_0_tri_t_11;
  wire [2:2]GPIO_0_0_tri_t_2;
  wire [3:3]GPIO_0_0_tri_t_3;
  wire [4:4]GPIO_0_0_tri_t_4;
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
  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_io;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_io;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_sck_i;
  wire SPI_0_0_sck_io;
  wire SPI_0_0_sck_o;
  wire SPI_0_0_sck_t;
  wire SPI_0_0_ss1_o;
  wire SPI_0_0_ss2_o;
  wire SPI_0_0_ss_i;
  wire SPI_0_0_ss_io;
  wire SPI_0_0_ss_o;
  wire SPI_0_0_ss_t;
  wire SPI_1_0_io0_i;
  wire SPI_1_0_io0_io;
  wire SPI_1_0_io0_o;
  wire SPI_1_0_io0_t;
  wire SPI_1_0_io1_i;
  wire SPI_1_0_io1_io;
  wire SPI_1_0_io1_o;
  wire SPI_1_0_io1_t;
  wire SPI_1_0_sck_i;
  wire SPI_1_0_sck_io;
  wire SPI_1_0_sck_o;
  wire SPI_1_0_sck_t;
  wire SPI_1_0_ss1_o;
  wire SPI_1_0_ss2_o;
  wire SPI_1_0_ss_i;
  wire SPI_1_0_ss_io;
  wire SPI_1_0_ss_o;
  wire SPI_1_0_ss_t;

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
  IOBUF GPIO_0_0_tri_iobuf_2
       (.I(GPIO_0_0_tri_o_2),
        .IO(GPIO_0_0_tri_io[2]),
        .O(GPIO_0_0_tri_i_2),
        .T(GPIO_0_0_tri_t_2));
  IOBUF GPIO_0_0_tri_iobuf_3
       (.I(GPIO_0_0_tri_o_3),
        .IO(GPIO_0_0_tri_io[3]),
        .O(GPIO_0_0_tri_i_3),
        .T(GPIO_0_0_tri_t_3));
  IOBUF GPIO_0_0_tri_iobuf_4
       (.I(GPIO_0_0_tri_o_4),
        .IO(GPIO_0_0_tri_io[4]),
        .O(GPIO_0_0_tri_i_4),
        .T(GPIO_0_0_tri_t_4));
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
  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(SPI_0_0_io0_io),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(SPI_0_0_io1_io),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_sck_iobuf
       (.I(SPI_0_0_sck_o),
        .IO(SPI_0_0_sck_io),
        .O(SPI_0_0_sck_i),
        .T(SPI_0_0_sck_t));
  IOBUF SPI_0_0_ss_iobuf
       (.I(SPI_0_0_ss_o),
        .IO(SPI_0_0_ss_io),
        .O(SPI_0_0_ss_i),
        .T(SPI_0_0_ss_t));
  IOBUF SPI_1_0_io0_iobuf
       (.I(SPI_1_0_io0_o),
        .IO(SPI_1_0_io0_io),
        .O(SPI_1_0_io0_i),
        .T(SPI_1_0_io0_t));
  IOBUF SPI_1_0_io1_iobuf
       (.I(SPI_1_0_io1_o),
        .IO(SPI_1_0_io1_io),
        .O(SPI_1_0_io1_i),
        .T(SPI_1_0_io1_t));
  IOBUF SPI_1_0_sck_iobuf
       (.I(SPI_1_0_sck_o),
        .IO(SPI_1_0_sck_io),
        .O(SPI_1_0_sck_i),
        .T(SPI_1_0_sck_t));
  IOBUF SPI_1_0_ss_iobuf
       (.I(SPI_1_0_ss_o),
        .IO(SPI_1_0_ss_io),
        .O(SPI_1_0_ss_i),
        .T(SPI_1_0_ss_t));
  main main_i
       (.AD9117_DCLKIO_0(AD9117_DCLKIO_0),
        .AD9117_D_0(AD9117_D_0),
        .AD9117_RESET_0(AD9117_RESET_0),
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
        .GPIO_0_0_tri_i({GPIO_0_0_tri_i_11,GPIO_0_0_tri_i_10,GPIO_0_0_tri_i_9,GPIO_0_0_tri_i_8,GPIO_0_0_tri_i_7,GPIO_0_0_tri_i_6,GPIO_0_0_tri_i_5,GPIO_0_0_tri_i_4,GPIO_0_0_tri_i_3,GPIO_0_0_tri_i_2,GPIO_0_0_tri_i_1,GPIO_0_0_tri_i_0}),
        .GPIO_0_0_tri_o({GPIO_0_0_tri_o_11,GPIO_0_0_tri_o_10,GPIO_0_0_tri_o_9,GPIO_0_0_tri_o_8,GPIO_0_0_tri_o_7,GPIO_0_0_tri_o_6,GPIO_0_0_tri_o_5,GPIO_0_0_tri_o_4,GPIO_0_0_tri_o_3,GPIO_0_0_tri_o_2,GPIO_0_0_tri_o_1,GPIO_0_0_tri_o_0}),
        .GPIO_0_0_tri_t({GPIO_0_0_tri_t_11,GPIO_0_0_tri_t_10,GPIO_0_0_tri_t_9,GPIO_0_0_tri_t_8,GPIO_0_0_tri_t_7,GPIO_0_0_tri_t_6,GPIO_0_0_tri_t_5,GPIO_0_0_tri_t_4,GPIO_0_0_tri_t_3,GPIO_0_0_tri_t_2,GPIO_0_0_tri_t_1,GPIO_0_0_tri_t_0}),
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
        .SPI_0_0_io0_i(SPI_0_0_io0_i),
        .SPI_0_0_io0_o(SPI_0_0_io0_o),
        .SPI_0_0_io0_t(SPI_0_0_io0_t),
        .SPI_0_0_io1_i(SPI_0_0_io1_i),
        .SPI_0_0_io1_o(SPI_0_0_io1_o),
        .SPI_0_0_io1_t(SPI_0_0_io1_t),
        .SPI_0_0_sck_i(SPI_0_0_sck_i),
        .SPI_0_0_sck_o(SPI_0_0_sck_o),
        .SPI_0_0_sck_t(SPI_0_0_sck_t),
        .SPI_0_0_ss1_o(SPI_0_0_ss1_o),
        .SPI_0_0_ss2_o(SPI_0_0_ss2_o),
        .SPI_0_0_ss_i(SPI_0_0_ss_i),
        .SPI_0_0_ss_o(SPI_0_0_ss_o),
        .SPI_0_0_ss_t(SPI_0_0_ss_t),
        .SPI_1_0_io0_i(SPI_1_0_io0_i),
        .SPI_1_0_io0_o(SPI_1_0_io0_o),
        .SPI_1_0_io0_t(SPI_1_0_io0_t),
        .SPI_1_0_io1_i(SPI_1_0_io1_i),
        .SPI_1_0_io1_o(SPI_1_0_io1_o),
        .SPI_1_0_io1_t(SPI_1_0_io1_t),
        .SPI_1_0_sck_i(SPI_1_0_sck_i),
        .SPI_1_0_sck_o(SPI_1_0_sck_o),
        .SPI_1_0_sck_t(SPI_1_0_sck_t),
        .SPI_1_0_ss1_o(SPI_1_0_ss1_o),
        .SPI_1_0_ss2_o(SPI_1_0_ss2_o),
        .SPI_1_0_ss_i(SPI_1_0_ss_i),
        .SPI_1_0_ss_o(SPI_1_0_ss_o),
        .SPI_1_0_ss_t(SPI_1_0_ss_t));
endmodule
