///////////////////////////////////////////////////////////////////////////////
// AD8251x2.v
//
// 7/19/11
// David Leibrandt
//
//	AD8251 controller.
//
///////////////////////////////////////////////////////////////////////////////

`include "timescale.v"

module ADC_AFE(
   	input  wire				clk_in,
	input  wire				rst_in,
	input  wire [1:0]		gain0_in,
	input  wire [1:0]		gain1_in,
	input  wire [1:0]		i_power_down,
	output reg [1:0]		s_term_state,

	output reg 			o_gainx10_0,
	output reg 			o_gainx10_1,
	output reg 			nSHDN0,
	output reg 			nSHDN1,
	input wire 			i_term0,
	input wire 			i_term1
	// output reg				A0_out,
	// output reg				A1_out,
	// output reg				WR0_out,
	// output reg				WR1_out
);

// Parameters
parameter CLK_DIV    = 8'h19; // run the clock at 2 MHz

// FSM clock divider
reg       fsm_clk;
reg [7:0] clk_counter;

always @(posedge clk_in or posedge rst_in) begin
	if (rst_in) begin
		clk_counter <= 8'b0;
		fsm_clk <= 1'b0;
	end
	else if (clk_counter == (CLK_DIV - 8'b1)) begin
		clk_counter <= 8'b0;
		fsm_clk <= 1'b1;
	end
	else begin
		clk_counter <= clk_counter + 8'b1;
		fsm_clk <= 1'b0;
	end
end

// State machine definitions
localparam IDLE 	= 3'h0;
localparam RST 	= 3'h1;
localparam SET_X10_0	= 3'h2;
localparam PWR_DWN	= 3'h3;
localparam SET_X10_1	= 3'h4;
localparam GET_TERM	= 3'h5;

// State
// The next line makes synthesis happy
// synthesis attribute INIT of state_f is "R"
reg   			    [2:0] state_f;
reg  				    [7:0] counter_f;
reg					 [2:0] gain0_f;
reg					 [2:0] gain1_f;
reg [1:0] 	power_down_f;
reg [1:0]	term_state_f;

// State machine - combinatorial part
function [2:0] next_state;
	input   				   [2:0] state;
	input   				   [7:0] counter;
	input						[1:0] gain0_in;
	input						[1:0] gain1_in;
	input						[2:0] gain0;
	input						[2:0] gain1;
	input						[1:0] i_power_down;
	input						i_term0;
	input						i_term1;
	
	begin
		case (state)
			IDLE: 
				if ({1'b0, gain0_in} != gain0)
					next_state = SET_X10_0;
				else if ({1'b0, gain1_in} != gain1)
					next_state = SET_X10_1;
				else if (i_power_down != power_down)
					next_state = PWR_DWN;
				else
					next_state = IDLE;
			RST: 
				if (counter == 8'b1)
					next_state = IDLE;
				else
					next_state = RST;
			SET_X10_0:
					next_state = GET_TERM;
			PWR_DWN:
					next_state = IDLE;
			SET_X10_1:
					next_state = GET_TERM;
			GET_TERM:
					next_state = IDLE;
			default:
					next_state = IDLE;
		endcase
	end
endfunction

// State machine - sequential part
always @(posedge fsm_clk or posedge rst_in) begin
	if (rst_in) begin
		state_f <= RST;
		counter_f <= 8'hFF;
		gain0_f <= 3'b100;
		gain1_f <= 3'b100;
		power_down_f <= 2'b00;
		term_state_f <= 2'b00;
		o_gainx10_0 <= 1'b0;
		o_gainx10_1 <= 1'b0;
		nSHDN0 <= 1'b0;
		nSHDN1 <= 1'b0;
	end
	else begin
		state_f <= next_state(state_f, counter_f, gain0_in, gain1_in, gain0_f, gain1_f, power_down_f, term_state_f);
		case (state_f)
			IDLE: begin
				o_gainx10_0 <= 1'b0;
				o_gainx10_1 <= 1'b0;
				s_term_state <= term_state_f;
			end
			RST: begin
				counter_f <= counter_f - 8'b1;
			end
			SET_X10_0: begin
				gain0_f <= gain0_in;
				o_gainx10_0 <= gain0_in[0];
				// A1_out <= gain0_in[1];
				nSHDN0 <= 1'b1;
			end
			PWR_DWN: begin
				power_down_f <= i_power_down;
				nSHDN0 <= i_power_down[0];
				nSHDN1 <= i_power_down[1];
			end
			SET_X10_1: begin
				gain1_f <= gain1_in;
				o_gainx10_1 <= gain1_in[0];
				// A1_out <= gain1_in[1];
				nSHDN1 <= 1'b1;
			end
			GET_TERM: begin
				term_state_f <= {i_term1, i_term0};
			end
			default: begin
				o_gainx10_0 <= 1'b0;
				o_gainx10_1 <= 1'b0;
				nSHDN0 <= 1'b0;
				nSHDN1 <= 1'b0;
			end
			endcase
	end
end

endmodule
