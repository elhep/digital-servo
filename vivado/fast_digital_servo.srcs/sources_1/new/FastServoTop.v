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

	// input  wire			 LTC2195_FR_P,
	// input  wire			 LTC2195_FR_N,
	input  wire  [3:0] LTC2195_D0_P,
	input  wire  [3:0] LTC2195_D0_N,
	input  wire  [3:0] LTC2195_D1_P,
	input  wire  [3:0] LTC2195_D1_N,

    output wire  [13:0] AD9117_D,
    output wire  AD9117_DCLKIO,
    output wire  AD9117_RESET

    );

    wire adc_clk, dac_clk, clk_100m, dco_clk, dco_2x_clk, dco_2d_clk;
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
        .DCO_2X(dco_2x_clk),
        .DCO_2D(dco_2d_clk),
        .CLK_100M(clk_100m)
    );
    wire signed	[15:0]				ADCraw[0:1];		// out of the LTC2195

    LTC2195 ADC_inst(
        .rst_in(rst_in),
        .DCO(dco_clk),
        .DCO_2D(dco_2d_clk),
        .DCO_2X(dco_2x_clk),
        .D0_in_p(LTC2195_D0_P),
        .D0_in_n(LTC2195_D0_N),
        .D1_in_p(LTC2195_D1_P),
        .D1_in_n(LTC2195_D1_N),
        .ADC0_out(ADCraw[0]),
        .ADC1_out(ADCraw[1])
    );

    wire signed [15:0] DACin[0:1];

    AD9117 DAC_inst(
        .clk_in(dco_2d_clk),
        .rst_in(rst_in),
        .DAC0_in(DACin[0]),
        .DAC1_in(DACin[1]),
        .D_out(AD9117_D),
        .rst_out(AD9117_RESET),
        .DCLKIO(AD9117_DCLKIO)
    );


endmodule
