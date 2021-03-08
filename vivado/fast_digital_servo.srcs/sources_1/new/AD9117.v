`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WUT
// Engineer: Jakub Matyas
// 
// Create Date: 02/15/2021 02:12:20 PM
// Design Name: 
// Module Name: AD9117
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  Based ond AD9783 by Davic Leibrandt
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//
// addr_in = 16'h20?? --- get 8 bit SPI register with address = ??
// addr_in = 16'h21?? --- set 8 bit SPI register with address = ??
//
///////////////////////////////////////////////////////////////////////////////

module AD9117(
	input	 wire							clk_in,
	input	 wire						   rst_in,

	
	output reg						 	rst_out,
	
	input  wire	signed	  [15:0] DAC0_in,
	input  wire	signed	  [15:0] DAC1_in,
	
	output wire				  DCLKIO,
	output wire				  [13:0] D_out
);

// // Parameters
// parameter SMP_DLY	= 8'h0;

wire signed [13:0] s_DAC0;
wire signed [13:0] s_DAC1;
wire [13:0] s_data_out;
assign D_out = s_data_out;
assign s_DAC0 = DAC0_in[15:2];
assign s_DAC1 = DAC1_in[15:2];
assign rst_out = rst_in;

genvar o_lane;
generate for(o_lane=0; o_lane<14; o_lane=o_lane+1) begin
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
	.INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
) ODDR_inst (
	.Q(s_data_out[o_lane]),   // 1-bit DDR output
	.C(clk_in),   // 1-bit clock input
	.CE(1'b1), // 1-bit clock enable input
	.D1(s_DAC0[o_lane]), // 1-bit data input (positive edge)
	.D2(s_DAC1[o_lane]), // 1-bit data input (negative edge)
	.R(rst_in),   // 1-bit reset
	.S(1'b0)    // 1-bit set
);
end;
endgenerate;

// clock forwarding
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
	.INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
) ODDR_dclkio_inst (
	.Q(DCLKIO),   // 1-bit DDR output
	.C(clk_in),   // 1-bit clock input
	.CE(1'b1), // 1-bit clock enable input
	.D1(1'b1), // 1-bit data input (positive edge)
	.D2(1'b0), // 1-bit data input (negative edge)
	.R(rst_in),   // 1-bit reset
	.S(1'b0)    // 1-bit set
);

endmodule
