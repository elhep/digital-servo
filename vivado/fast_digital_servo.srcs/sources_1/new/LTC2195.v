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
`timescale 1ps/1ps // this was in the SelectIO design

module LTC2195(
	input	 wire						   rst_in,
	input wire DCO,
	input wire DCO_2D,
	input wire DCO_2X,
	// input  wire		 					FR_in_p,
	// input  wire							FR_in_n,
	input  wire		 			[3:0]	D0_in_p,
	input  wire		 			[3:0]	D0_in_n,
	input  wire		 			[3:0]	D1_in_p,
	input  wire		 			[3:0]	D1_in_n,
	
	output reg	signed	  [15:0] ADC0_out,
	output reg	signed	  [15:0] ADC1_out,
	output reg					[3:0] FR_out
);

// // Parameters
// parameter SMP_DLY	= 8'h0;

// ///////////////////////////////////////////////////////////////////////////////
// // LVDS inputs

// localparam N_LVDS = 9;
// localparam N_SERIAL = 4;

// wire   [N_LVDS-1:0] data_in_p, data_in_n;
// assign data_in_p = {FR_in_p, D1_in_p, D0_in_p};
// assign data_in_n = {FR_in_n, D1_in_n, D0_in_n};

// wire [N_SERIAL*N_LVDS-1:0] data_out;

// always @(posedge clk_in) begin
// 	ADC0_out <= {
// 		data_out[ 3], data_out[ 7], data_out[ 2], data_out[ 6],
// 		data_out[ 1], data_out[ 5], data_out[ 0], data_out[ 4],
// 		data_out[11], data_out[15], data_out[10], data_out[14],
// 		data_out[ 9], data_out[13], data_out[ 8], data_out[12]
// 	};
// 	ADC1_out <= {
// 		data_out[16+ 3], data_out[16+ 7], data_out[16+ 2], data_out[16+ 6],
// 		data_out[16+ 1], data_out[16+ 5], data_out[16+ 0], data_out[16+ 4],
// 		data_out[16+11], data_out[16+15], data_out[16+10], data_out[16+14],
// 		data_out[16+ 9], data_out[16+13], data_out[16+ 8], data_out[16+12]
// 	};

// //	ADC0_out <= data_out[15:0];
// //	ADC1_out <= data_out[31:16];
	
// 	FR_out <= data_out[35:32];
// end

// // We have multiple bits - step over every bit, instantiating the required elements

// wire [N_LVDS-1:0] data_in_from_pins; // between the input buffer and the delay
// wire [N_LVDS-1:0] data_in_from_pins_delay; // between the delay and the deserializer

// // I added 50 to all the values here because I couldn't reach the middle of the eye with the encode phase shifter (it had hit the end of its range)
// function integer delay_value;
// 	input i;
// 	begin
// 		case (i)
// 			0:	delay_value = 50;
// 			1:	delay_value = 52;
// 			2:	delay_value = 55;
// 			3:	delay_value = 58;
// 			4:	delay_value = 59;
// 			5:	delay_value = 59;
// 			6:	delay_value = 59;
// 			7:	delay_value = 58;
// 			8:	delay_value = 60;
// 			default:
// 				delay_value = 50;
// 		endcase
// 	end
// endfunction

// genvar pin_count;
// generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins
// 	// Input buffer
// 	IBUFDS #(
// 		.DIFF_TERM("TRUE"),
// 		.IOSTANDARD("LVDS_33")
// 	)
// 	ibufds_inst(
// 		.I(data_in_p[pin_count]),
// 		.IB(data_in_n[pin_count]),
// 		.O(data_in_from_pins[pin_count])
// 	);

// 	// Delay
// 	IODELAY2 #(
// 		.DATA_RATE("SDR"),
// 		.IDELAY_VALUE(delay_value(pin_count)),
// 		.IDELAY_TYPE("FIXED"),
// 		.COUNTER_WRAPAROUND("STAY_AT_LIMIT"),
// 		.DELAY_SRC("IDATAIN"),
// 		.SERDES_MODE("NONE"),
// 		.SIM_TAPDELAY_VALUE(75)
// 	)
// 	iodelay2_inst(
// 		.IDATAIN(data_in_from_pins[pin_count]),	// datapath
// 		.DATAOUT(data_in_from_pins_delay[pin_count]),
// 		.T(1'b1),
// 		.DATAOUT2(),										// inactive data connections
// 		.DOUT(),
// 		.ODATAIN(1'b0),
// 		.TOUT(),
// 		.IOCLK0(1'b0),										// calibration clocks
// 		.IOCLK1(1'b0),
// 		.CLK(1'b0),											// variable delay programming
// 		.CAL(1'b0),
// 		.INC(1'b0),
// 		.CE(1'b0),
// 		.BUSY(),
// 		.RST(1'b0)
// 	);
	
// 	// Deserializer
// 	ISERDES2 #(
// 		.BITSLIP_ENABLE("FALSE"),
// 		.DATA_RATE("SDR"),
// 		.DATA_WIDTH(N_SERIAL),
// 		.INTERFACE_TYPE("RETIMED"), // NETWORKING and NETWORKING_PIPELINED don't work - glitches, RETIMED works
// 		.SERDES_MODE("NONE")
// 	)
// 	iserdes2_inst(
// 		.Q1(data_out[N_SERIAL*pin_count+3]),
// 		.Q2(data_out[N_SERIAL*pin_count+2]),
// 		.Q3(data_out[N_SERIAL*pin_count+1]),
// 		.Q4(data_out[N_SERIAL*pin_count+0]),
// 		.BITSLIP(1'b0),
// 		.CE0(1'b1),											// clock enable input
// 		.CLK0(clk4x),										// serial clock input
// 		.CLKDIV(clk_in),									// parallel clock input
// 		.D(data_in_from_pins_delay[pin_count]),	// serial data input
// 		.IOCE(desstrobe),									// this fails at place and route if I input 1'b0 here.  is this ok?
// 		.RST(rst_in)
// 	);
//end
// endgenerate



endmodule