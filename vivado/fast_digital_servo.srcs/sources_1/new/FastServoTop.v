`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2021 11:13:42 AM
// Design Name: 
// Module Name: FastServoTop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FastServoTop(
    input wire rst_in,
    input wire FPGA_CLK1_P,     // to DAC 
    input wire FPGA_CLK1_N,
    input wire FPGA_CLK2_P,     // to ADC
    input wire FPGA_CLK2_N,

    input wire LTC2195_DCO_P,           // Data Clock Out from ADC 2x faster than FPGA_CLK2
    input wire LTC2195_DCO_N,

    input wire CLK_100,         // Oscillator clock 100 MHz
    input wire AT_EVENT,

	input  wire			 LTC2195_FR_P,
	input  wire			 LTC2195_FR_N,
	input  wire  [3:0] LTC2195_D0_P,
	input  wire  [3:0] LTC2195_D0_N,
	input  wire  [3:0] LTC2195_D1_P,
	input  wire  [3:0] LTC2195_D1_N,

    output wire  [13:0] AD9117_D,
    output wire  AD9117_DCLKIO,
    output wire  AD9117_RESET,

    output wire [3:0] FP_LEDS,
    output wire [2:0] LEDS,
    output wire [1:0] DIO,
    
    output wire [1:0] ETH_LEDS

    );

    wire adc_clk, dac_clk, clk_100m, dco_clk, dcob_clk, dco_2d_clk, dco_2x_clk;
    ClockMGMT clocks (
        .rst_in(rst_in),
        .FPGA_CLK1_P(FPGA_CLK1_P),
        .FPGA_CLK1_N(FPGA_CLK1_N),
        .FPGA_CLK2_P(FPGA_CLK2_P),
        .FPGA_CLK2_N(FPGA_CLK2_N),

        .DCO_P(LTC2195_DCO_P),
        .DCO_N(LTC2195_DCO_N),
        .CLK_100(CLK_100),

        .ADC_CLK(adc_clk),
        .DAC_CLK(dac_clk),
        .DCO(dco_clk),
        .DCOB(dcob_clk),
        .DCO_2D(dco_2d_clk),
        .DCO_2X(dco_2x_clk),
        .CLK_100M(clk_100m)
    );
    wire [15:0]				ADCraw[0:1];		// out of the LTC2195
    wire [3:0] s_frame;

    LTC2195 ADC_inst(
        .rst_in(rst_in),
        .DCO(dco_clk),
        .DCO_2D(dco_2d_clk),
        .DCOB(dcob_clk),
        .D0_in_p(LTC2195_D0_P),
        .D0_in_n(LTC2195_D0_N),
        .D1_in_p(LTC2195_D1_P),
        .D1_in_n(LTC2195_D1_N),
        .ADC0_out(ADCraw[0]),
        .ADC1_out(ADCraw[1]),
        .FR_in_p(LTC2195_FR_P),
        .FR_in_n(LTC2195_FR_N),
        .FR_out(s_frame)
    );

    wire [15:0] DACin[0:1];

    AD9117 DAC_inst(
        .clk_in(dco_2d_clk),
        .rst_in(rst_in),
        .DAC0_in(DACin[0]),
        .DAC1_in(DACin[1]),
        .D_out(AD9117_D),
        .rst_out(AD9117_RESET),
        .DCLKIO(AD9117_DCLKIO)
    );

    assign DACin[0] = ADCraw[0];
    assign DACin[1] = ADCraw[1];

//    IIR #(
//    .ADC_WIDTH(16),
//    .DATA_WIDTH(25),
//    .COEFF_WIDTH(18),
//    .ORDER(3)
//    ) IIR_inst (
//        .clk_in(dco_2d_clk),
//        .clk_in4x(dco_2x_clk),
//        .rst_in(rst_in),
//        .i_data(ADCraw[0]),
//        .i_offset('b0),
//        .o_data(DACin[0])
//        );

    // counters for ADC and DAC clock so Vivado it won't misoptimise
    // assuming ADC and DAC clk configured to 100 MHz - output will
    // blink with freq of 1 Hz
    wire counter_adc_done, counter_dac_done, counter_100m_done;
    
    clk_counter adc_inst (
        .clk_in(adc_clk),
        .count_done(counter_adc_done)
    );
    clk_counter dac_inst (
        .clk_in(dac_clk),
        .count_done(counter_dac_done)
    );
    clk_counter clk10m_inst (
        .clk_in(clk_100m),
        .count_done(counter_100m_done)
    );

    assign FP_LEDS = {4{counter_adc_done}};
    assign LEDS = {3{counter_dac_done}};
    assign DIO = {counter_100m_done, ~counter_100m_done};
    assign ETH_LEDS = {AT_EVENT, ~AT_EVENT};

endmodule
