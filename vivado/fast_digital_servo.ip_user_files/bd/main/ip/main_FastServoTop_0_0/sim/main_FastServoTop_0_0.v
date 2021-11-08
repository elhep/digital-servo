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


// IP VLNV: xilinx.com:module_ref:FastServoTop:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module main_FastServoTop_0_0 (
  rst_in,
  FPGA_CLK1_P,
  FPGA_CLK1_N,
  FPGA_CLK2_P,
  FPGA_CLK2_N,
  LTC2195_DCO_P,
  LTC2195_DCO_N,
  CLK_100,
  AT_EVENT,
  LTC2195_FR_P,
  LTC2195_FR_N,
  LTC2195_D0_P,
  LTC2195_D0_N,
  LTC2195_D1_P,
  LTC2195_D1_N,
  AD9117_D,
  AD9117_DCLKIO,
  AD9117_RESET,
  FP_LEDS,
  LEDS,
  DIO,
  ETH_LEDS
);

input wire rst_in;
input wire FPGA_CLK1_P;
input wire FPGA_CLK1_N;
input wire FPGA_CLK2_P;
input wire FPGA_CLK2_N;
input wire LTC2195_DCO_P;
input wire LTC2195_DCO_N;
input wire CLK_100;
input wire AT_EVENT;
input wire LTC2195_FR_P;
input wire LTC2195_FR_N;
input wire [3 : 0] LTC2195_D0_P;
input wire [3 : 0] LTC2195_D0_N;
input wire [3 : 0] LTC2195_D1_P;
input wire [3 : 0] LTC2195_D1_N;
output wire [13 : 0] AD9117_D;
output wire AD9117_DCLKIO;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AD9117_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AD9117_RESET RST" *)
output wire AD9117_RESET;
output wire [3 : 0] FP_LEDS;
output wire [2 : 0] LEDS;
output wire [1 : 0] DIO;
output wire [1 : 0] ETH_LEDS;

  FastServoTop inst (
    .rst_in(rst_in),
    .FPGA_CLK1_P(FPGA_CLK1_P),
    .FPGA_CLK1_N(FPGA_CLK1_N),
    .FPGA_CLK2_P(FPGA_CLK2_P),
    .FPGA_CLK2_N(FPGA_CLK2_N),
    .LTC2195_DCO_P(LTC2195_DCO_P),
    .LTC2195_DCO_N(LTC2195_DCO_N),
    .CLK_100(CLK_100),
    .AT_EVENT(AT_EVENT),
    .LTC2195_FR_P(LTC2195_FR_P),
    .LTC2195_FR_N(LTC2195_FR_N),
    .LTC2195_D0_P(LTC2195_D0_P),
    .LTC2195_D0_N(LTC2195_D0_N),
    .LTC2195_D1_P(LTC2195_D1_P),
    .LTC2195_D1_N(LTC2195_D1_N),
    .AD9117_D(AD9117_D),
    .AD9117_DCLKIO(AD9117_DCLKIO),
    .AD9117_RESET(AD9117_RESET),
    .FP_LEDS(FP_LEDS),
    .LEDS(LEDS),
    .DIO(DIO),
    .ETH_LEDS(ETH_LEDS)
  );
endmodule
