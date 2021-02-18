`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2021 05:50:16 PM
// Design Name: 
// Module Name: AD7266
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


module AD7266(
    input wire clk_in, 
    input wire rst_in,
    output wire SCLK,
    output wire CSn,
    output wire SGL,
    output wire RANGE,
    inout wire SDIO_N,
    inout wire SDIO_P,

    output reg [11:0] s_data_A,
    output reg [11:0] s_data_B,
    output wire A0_out,
    output wire A1_out,
    output wire A2_out
    
    );
    
// SPI state machine

wire [31:0] adc_data;
reg			spi_trigger;
reg  [31:0]	spi_data;
wire			spi_ready;
wire    spi_sdi;
wire    spi_sdo;
wire spi_out_en;
 
 
 IOBUFDS #(
      .DIFF_TERM("FALSE"),     // Differential Termination ("TRUE"/"FALSE")
      .IBUF_LOW_PWR("TRUE"),   // Low Power - "TRUE", High Performance = "FALSE" 
      .IOSTANDARD("LVDS_25"), // Specify the I/O standard
      .SLEW("SLOW")            // Specify the output slew rate
   ) IOBUFDS_inst (
      .O(spi_sdo),     // Buffer output
      .IO(SDIO_P),   // Diff_p inout (connect directly to top-level port)
      .IOB(SDIP_N), // Diff_n inout (connect directly to top-level port)
      .I(spi_sdi),     // Buffer input
      .T(spi_out_en)      // 3-state enable input, high=input, low=output
   );

SPI #(
	.TRANSFER_SIZE(32),
	.SPI_CLK_DIV(8'h05) // run the SPI clock at 10 MHz
)
AD7266_SPI_inst(
	.clk_in(clk_in),
	.rst_in(rst_in),
	.trigger_in(spi_trigger),
	.data_in(spi_data),
	.data_out(adc_data),
	.ready_out(spi_ready),
	.spi_scs_out(CSn),
	.spi_sck_out(spi_sck_out),
	.spi_sdo_out(spi_sdo),
	.spi_sdi_in(spi_sdi),
	.spi_out_en(spi_out_en)
);    

assign A0 = 0;
assign A1 = 0;
assign A2 = 0;
assign SGL = 0;

always @(posedge clk_in or posedge rst_in) begin
	if (rst_in) begin
		spi_trigger <= 1'b0;
		s_data_A <= 12'b0;
		s_data_B <= 12'b0;
	end
	else begin
	   if (spi_ready) begin
	       s_data_A <= adc_data[29:18];
	       s_data_B <= adc_data[15:2];
	       spi_trigger <= 1'b0;
       end else begin
            spi_trigger <= 1'b1;
        end
	end
end

endmodule
