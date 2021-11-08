`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2021 01:39:08 PM
// Design Name: 
// Module Name: spi_buff_wrapper
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


module spi_buff_wrapper(
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
    inout sdio

    );

    assign ps_sclk_i = 1'b0;
    assign ps_mosi_i = 1'b0;
    assign ps_ss_i = 1'b1;

    IOBUF #(
      .DRIVE(12), // Specify the output drive strength
      .SLEW("SLOW") // Specify the output slew rate
   ) IOBUF_inst (
      .O(ps_miso_i),     // Buffer output
      .IO(sdio),   // Buffer inout port (connect directly to top-level port)
      .I(ps_mosi_o),     // Buffer input
      .T(ps_mosi_t)      // 3-state enable input, high=input, low=output
   );

   assign o_sclk = ps_sclk_o;
   assign o_ss = ps_ss[0];

endmodule
