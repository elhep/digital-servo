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
	input wire DCOB,
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

localparam N_LVDS = 8;
localparam N_LANES = 4;

wire   [N_LVDS-1:0] data_in_p, data_in_n;
assign data_in_p = {D1_in_p, D0_in_p};
assign data_in_n = {D1_in_n, D0_in_n};

wire [N_LANES*N_LVDS-1:0] data_out;

always @(posedge DCO_2D) begin
	ADC0_out <= {
		data_out[ 3], data_out[ 7], data_out[ 2], data_out[ 6],
		data_out[ 1], data_out[ 5], data_out[ 0], data_out[ 4],
		data_out[11], data_out[15], data_out[10], data_out[14],
		data_out[ 9], data_out[13], data_out[ 8], data_out[12]
	};
	ADC1_out <= {
		data_out[16+ 3], data_out[16+ 7], data_out[16+ 2], data_out[16+ 6],
		data_out[16+ 1], data_out[16+ 5], data_out[16+ 0], data_out[16+ 4],
		data_out[16+11], data_out[16+15], data_out[16+10], data_out[16+14],
		data_out[16+ 9], data_out[16+13], data_out[16+ 8], data_out[16+12]
	};

// //	ADC0_out <= data_out[15:0];
// //	ADC1_out <= data_out[31:16];
	
end

// // We have multiple bits - step over every bit, instantiating the required elements

wire [N_LVDS-1:0] data_in_from_pins; // between the input buffer and the delay
wire [N_LVDS-1:0] data_in_from_pins_delay; // between the delay and the deserializer
genvar lane;
generate for (lane=0; lane<N_LVDS; lane=lane+1) begin
	//Input buffer
	IBUFDS #(
		.DIFF_TERM("TRUE"),
		.IOSTANDARD("LVDS25")
	)
	ibufds_adc_inst (
		.I(data_in_p[lane]),
		.IB(data_in_n[lane]),
		.O(data_in_from_pins[lane])
	);

	//  (* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(25),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   IDELAYE2_inst (
    //   .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
      .DATAOUT(data_in_from_pins_delay[lane]),         // 1-bit output: Delayed data output
    //   .C(C),                     // 1-bit input: Clock input
    //   .CE(CE),                   // 1-bit input: Active high enable increment/decrement input
    //   .CINVCTRL(CINVCTRL),       // 1-bit input: Dynamic clock inversion input
    //   .CNTVALUEIN(CNTVALUEIN),   // 5-bit input: Counter value input
    //   .DATAIN(DATAIN),           // 1-bit input: Internal delay data input
      .IDATAIN(data_in_from_pins[lane])         // 1-bit input: Data input from the I/O
    //   .INC(INC),                 // 1-bit input: Increment / Decrement tap delay input
    //   .LD(LD),                   // 1-bit input: Load IDELAY_VALUE input
    //   .LDPIPEEN(LDPIPEEN),       // 1-bit input: Enable PIPELINE register to load data input
    //   .REGRST(REGRST)            // 1-bit input: Active-high reset tap-delay input
   );
	// (* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL

   IDELAYCTRL IDELAYCTRL_inst (
      .RDY(),       // 1-bit output: Ready output
      .REFCLK(DCO), // 1-bit input: Reference clock input
      .RST(rst_in)        // 1-bit input: Active high reset input
   );
	ISERDESE2 #(
		.DATA_RATE("DDR"),           // DDR, SDR
		.DATA_WIDTH(4),              // Parallel data width (2-8,10,14)
		// .DYN_CLKDIV_INV_EN("FALSE"), // Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
		// .DYN_DCO_2DV_EN("FALSE"),    // Enable DYNCLKINVSEL inversion (FALSE, TRUE)
		// INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
		.INIT_Q1(1'b0),
		.INIT_Q2(1'b0),
		.INIT_Q3(1'b0),
		.INIT_Q4(1'b0),
		.INTERFACE_TYPE("NETWORKING"),   // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
		.IOBDELAY("BOTH"),           // NONE, BOTH, IBUF, IFD
		.NUM_CE(1),                  // Number of clock enables (1,2)
		.OFB_USED("FALSE"),          // Select OFB path (FALSE, TRUE)
		.SERDES_MODE("MASTER"),      // MASTER, SLAVE
		// SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
		.SRVAL_Q1(1'b0),
		.SRVAL_Q2(1'b0),
		.SRVAL_Q3(1'b0),
		.SRVAL_Q4(1'b0)
	)
	ISERDESE2_inst (
		// .O(O),                       // 1-bit output: Combinatorial output
		// Q1 - Q8: 1-bit (each) output: Registered data outputs
		.Q1(data_out[lane*N_LANES + 3]),
		.Q2(data_out[lane*N_LANES + 2]),
		.Q3(data_out[lane*N_LANES + 1]),
		.Q4(data_out[lane*N_LANES + 0]),
		// SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
		// .SHIFTOUT1(SHIFTOUT1),
		// .SHIFTOUT2(SHIFTOUT2),
		// .BITSLIP(BITSLIP),           // 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
									// CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
									// to Q8 output ports will shift, as in a barrel-shifter operation, one
									// position every time Bitslip is invoked (DDR operation is different from
									// SDR).

		// CE1, CE2: 1-bit (each) input: Data register clock enable inputs
		.CE1(1'b1),
		// .CE2(CE2),
		// .CLKDIVP(CLKDIVP),           // 1-bit input: TBD
		// Clocks: 1-bit (each) input: ISERDESE2 clock input ports
		.CLK(DCO),                   // 1-bit input: High-speed clock
		.CLKB(DCOB),                 // 1-bit input: High-speed secondary clock
		.CLKDIV(DCO_2D),             // 1-bit input: Divided clock
		// .OCLK(OCLK),                 // 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
		// Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
		// .DYNCLKDIVSEL(DYNCLKDIVSEL), // 1-bit input: Dynamic CLKDIV inversion
		// .DYNCLKSEL(DYNCLKSEL),       // 1-bit input: Dynamic CLK/CLKB inversion
		// Input Data: 1-bit (each) input: ISERDESE2 data input ports
		.D(0),                       // 1-bit input: Data input
		.DDLY(data_in_from_pins_delay[lane]),                 // 1-bit input: Serial data from IDELAYE2
		// .OFB(OFB),                   // 1-bit input: Data feedback from OSERDESE2
		// .OCLKB(OCLKB),               // 1-bit input: High speed negative edge output clock
		.RST(rst_in)                   // 1-bit input: Active high asynchronous reset
		// SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
		// .SHIFTIN1(SHIFTIN1),
		// .SHIFTIN2(SHIFTIN2)
	);
end
endgenerate

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
// 		.DATA_WIDTH(N_LANES),
// 		.INTERFACE_TYPE("RETIMED"), // NETWORKING and NETWORKING_PIPELINED don't work - glitches, RETIMED works
// 		.SERDES_MODE("NONE")
// 	)
// 	iserdes2_inst(
// 		.Q1(data_out[N_LANES*pin_count+3]),
// 		.Q2(data_out[N_LANES*pin_count+2]),
// 		.Q3(data_out[N_LANES*pin_count+1]),
// 		.Q4(data_out[N_LANES*pin_count+0]),
// 		.BITSLIP(1'b0),
// 		.CE0(1'b1),											// clock enable input
// 		.CLK0(clk4x),										// serial clock input
// 		.CLKDIV(DCO_2D),									// parallel clock input
// 		.D(data_in_from_pins_delay[pin_count]),	// serial data input
// 		.IOCE(desstrobe),									// this fails at place and route if I input 1'b0 here.  is this ok?
// 		.RST(rst_in)
// 	);
//end
// endgenerate



endmodule