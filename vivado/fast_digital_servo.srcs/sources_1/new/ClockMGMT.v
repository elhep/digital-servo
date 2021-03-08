`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2021 10:31:38 AM
// Design Name: 
// Module Name: ClockMGMT
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


module ClockMGMT(
    input wire rst_in,
    input wire FPGA_CLK1_P,     // to DAC 
    input wire FPGA_CLK1_N,
    input wire FPGA_CLK2_P,     // to ADC
    input wire FPGA_CLK2_N,

    input wire DCO_P,           // Data Clock Out from ADC 2x faster than FPGA_CLK2
    input wire DCO_N,

    input wire CLK_100,         // Oscillator clock 100 MHz


    output wire ADC_CLK,
    output wire DAC_CLK,
    output wire CLK_100M,

    output wire DCO,
    output wire DCOB,     
    output wire DCO_2D     // 2 times slower than DCO



    );

    wire dco_locked, adc_locked, dac_locked;

    DCO_CLK dco_clk_inst (
        .clk_out1(DCO_2D),
        .clk_out2(DCO),
        .clk_out3(DCOB),
        .reset(rst_in),
        .locked(dco_locked),

        .clk_in1_p(DCO_P),
        .clk_in1_n(DCO_N)
    );

    ADC_CLK adc_clk_inst (
        .clk_out1(ADC_CLK),
        .reset(rst_in),
        .locked(adc_locked),
        
        .clk_in1_n(FPGA_CLK2_N),
        .clk_in1_p(FPGA_CLK2_P)
    );

    DAC_CLK dac_clk_inst(
        .clk_out1(DAC_CLK),
        .reset(rst_in),
        .locked(dac_locked),

        .clk_in1_n(FPGA_CLK1_N),
        .clk_in1_p(FPGA_CLK1_P)
    );

    BUFG CLK_100_inst (
      .O(CLK_100M), // 1-bit output: Clock output
      .I(CLK_100)  // 1-bit input: Clock input
   );
endmodule
