// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:adc_spi_buff_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module main_adc_spi_buff_wrapper_0_0 (
  ps_sclk_i,
  ps_sclk_o,
  ps_sclk_t,
  ps_mosi_i,
  ps_mosi_o,
  ps_mosi_t,
  ps_miso_i,
  ps_miso_o,
  ps_miso_t,
  ps_ss_i,
  ps_ss,
  ps_ss_t,
  o_ss,
  o_sclk,
  o_mosi,
  i_miso
);

output wire ps_sclk_i;
input wire ps_sclk_o;
input wire ps_sclk_t;
output wire ps_mosi_i;
input wire ps_mosi_o;
input wire ps_mosi_t;
output wire ps_miso_i;
input wire ps_miso_o;
input wire ps_miso_t;
output wire ps_ss_i;
input wire [2 : 0] ps_ss;
input wire ps_ss_t;
output wire o_ss;
output wire o_sclk;
output wire o_mosi;
input wire i_miso;

  adc_spi_buff_wrapper inst (
    .ps_sclk_i(ps_sclk_i),
    .ps_sclk_o(ps_sclk_o),
    .ps_sclk_t(ps_sclk_t),
    .ps_mosi_i(ps_mosi_i),
    .ps_mosi_o(ps_mosi_o),
    .ps_mosi_t(ps_mosi_t),
    .ps_miso_i(ps_miso_i),
    .ps_miso_o(ps_miso_o),
    .ps_miso_t(ps_miso_t),
    .ps_ss_i(ps_ss_i),
    .ps_ss(ps_ss),
    .ps_ss_t(ps_ss_t),
    .o_ss(o_ss),
    .o_sclk(o_sclk),
    .o_mosi(o_mosi),
    .i_miso(i_miso)
  );
endmodule
