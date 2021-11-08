`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2021 02:16:06 PM
// Design Name: 
// Module Name: adc_spi_buff_wrapper
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


module adc_spi_buff_wrapper(
    output ps_sclk_i,
    input ps_sclk_o,
    input ps_sclk_t,
    output ps_mosi_i,
    input ps_mosi_o,
    input ps_mosi_t,
    output ps_miso_i,
    input ps_miso_o,
    input ps_miso_t,
    output ps_ss_i,
    input [2:0] ps_ss,
    input ps_ss_t,

    output o_ss,
    output o_sclk,
    output o_mosi,
    input i_miso

    );

    assign ps_sclk_i = 1'b0;
    assign ps_mosi_i = 1'b0;
    assign ps_ss_i = 1'b1;
    assign o_mosi = ps_mosi_o;
    assign ps_miso_i = i_miso;

    assign o_sclk = ps_sclk_o;
    assign o_ss = ps_ss[0];

endmodule
