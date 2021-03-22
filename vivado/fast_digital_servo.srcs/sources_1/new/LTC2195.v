///////////////////////////////////////////////////////////////////////////////
// LTC2195.v
//
// 8/03/21
// Jakub Matyas
//
//	LTC2195 controller.
//
// 
///////////////////////////////////////////////////////////////////////////////

// `include "timescale.v"
`timescale 1ns/1ps // this was in the SelectIO design

module LTC2195(
	input	 						   rst_in,
	input  DCO,
	input  DCO_2D,
	input  DCOB,
	input  		 					FR_in_p,
	input  							FR_in_n,
	input  		 			[3:0]	D0_in_p,
	input  		 			[3:0]	D0_in_n,
	input  		 			[3:0]	D1_in_p,
	input  		 			[3:0]	D1_in_n,
	
	output reg	  [15:0] ADC0_out,
	output reg	  [15:0] ADC1_out,
	output reg					[3:0] FR_out
);

// ///////////////////////////////////////////////////////////////////////////////
// // LVDS inputs

localparam N_BITS = 4;
localparam  N_LANES = 9;	// for each channel 4 lanes + 1 lane for FRAME
wire [N_LANES-1:0] data_in_p, data_in_n, data_in_from_pins, data_in_from_pins_delay;
assign data_in_p = {FR_in_p, D1_in_p, D0_in_p};
assign data_in_n = {FR_in_n, D1_in_n, D0_in_n};


wire [N_LANES*4 -1:0] data_out;

always @(posedge DCO_2D) begin
	ADC0_out <= {
		data_out[12], data_out[8], data_out[4], data_out[0],
		data_out[13], data_out[9], data_out[5], data_out[1],
		data_out[14], data_out[10], data_out[6], data_out[2],
		data_out[15], data_out[11], data_out[7], data_out[3]
	};

	ADC1_out <= {
		data_out[16 + 12], data_out[16 + 8], data_out[16 + 4], data_out[16 + 0],
		data_out[16 + 13], data_out[16 + 9], data_out[16 + 5], data_out[16 + 1],
		data_out[16 + 14], data_out[16 + 10], data_out[16 + 6], data_out[16 + 2],
		data_out[16 + 15], data_out[16 + 11], data_out[16 + 7], data_out[16 + 3]
	};
	FR_out <= data_out[35:32];
end


IDELAYCTRL IDELAYCTRL_inst (
	.RDY(),       // 1-bit output: Ready output
	.REFCLK(DCO), // 1-bit input: Reference clock input
	.RST(rst_in)        // 1-bit input: Active high reset input
);

// for each lane create Differential input buffer, IDELAYE instance (fixed delay for now),
// and deserializer working in a DDR mode.
//  Each Deserializer receives its input from IDELAYE and works with 
// CLK = DCO (assumed 200 MHz returning clock from LTC2195, with data valid in a DDR manner)
// and CLK_DIV = DCO/2 (freq) - two times slower clock to fabric with deserilized data valid
genvar lane;
generate for (lane=0; lane<N_LANES; lane=lane+1) begin
	IBUFDS #(
		.DIFF_TERM("TRUE")
	)
	ibufds_inst (
		.I(data_in_p[lane]),
		.IB(data_in_n[lane]),
		.O(data_in_from_pins[lane])
	);
    IDELAYE2 #(
        .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
        .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
        .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
        .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
        .IDELAY_VALUE(20),                // Input delay tap setting (0-31)
        .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
        .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
        .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
    )
	IDELAYE2_inst (
		.DATAOUT(data_in_from_pins_delay[lane]),         // 1-bit output: Delayed data output
		.IDATAIN(data_in_from_pins[lane])         // 1-bit input: Data input from the I/O
	);

	ISERDESE2 #(
		.DATA_RATE("DDR"),
		.DATA_WIDTH(3'd4),
		.INTERFACE_TYPE("NETWORKING"),
		.NUM_CE(1'd1),
		.IOBDELAY("BOTH"),
		.SERDES_MODE("MASTER")
	)
	iserdes_inst (
		.CE1(1'd1),
		.CE2(1'd1),
		.CLK(DCO),
		.CLKB(DCOB),
		.CLKDIV(DCO_2D),
		.DDLY(data_in_from_pins_delay[lane]),
		.RST(rst_in),
		.BITSLIP(1'b0),
		.Q1(data_out[lane*N_BITS + 3]),
		.Q2(data_out[lane*N_BITS + 2]),
		.Q3(data_out[lane*N_BITS + 1]),
		.Q4(data_out[lane*N_BITS + 0])
	);
end
endgenerate
endmodule