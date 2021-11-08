`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2021 06:51:11 PM
// Design Name: 
// Module Name: iir
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


module IIR #(
    parameter ADC_WIDTH = 16,
    parameter DATA_WIDTH = 25,
    parameter COEFF_WIDTH = 18,
    parameter NORM_SHIFT = 11,
    parameter ORDER = 3
)
(
    input wire clk_in,
    input wire clk_in4x,
    input wire rst_in,
    input wire signed [ADC_WIDTH-1:0] i_offset,
    input wire signed [ADC_WIDTH-1:0] i_data,
    output wire signed [ADC_WIDTH-1:0] o_data

);

wire signed [ADC_WIDTH-1:0] s_adc_data, s_offset;
wire signed [DATA_WIDTH-1:0] s_fir_out;
wire signed [DATA_WIDTH-1:0] s_iir_in, s_feedback;
wire signed [47:0] s_p;
wire s_underflow, s_overflow;
wire [1:0] sel;

assign sel = {s_underflow, s_overflow};

assign s_adc_data =i_data;
assign s_offset = i_offset;

 assign s_iir_in = {{5{s_fir_out[DATA_WIDTH-1]}}, s_fir_out};
// assign s_feedback = s_p[9+DATA_WIDTH-1:9];

//assign s_iir_in = s_fir_out;
//assign s_feedback = s_p[25-1:0];

FIR #(
    .ADC_WIDTH(ADC_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .NORM_SHIFT(NORM_SHIFT),
    .COEFF_WIDTH(COEFF_WIDTH),
    .ORDER(ORDER)
) FIR (
    .clk_in4x(clk_in4x),
    .clk_in(clk_in),
    .rst_in(rst_in),
    .i_offset(s_offset),
    .i_data(s_adc_data),
    .o_data(),
    .o_extended_data(s_fir_out)
);

DSP48E1_wrapper #(
    .A_SOURCE("DIRECT")
    // .FBCK("TRUE")
)
D0 (
    .i_clk(clk_in4x),
    .i_rst(rst_in),
    .i_d(s_feedback),
     .i_b((18'b1<<(DATA_WIDTH-ADC_WIDTH))),
//    .i_a({{5{s_iir_in[DATA_WIDTH-1]}}, s_iir_in}),
    .i_a(s_iir_in),
//   .i_b(18'b1),
    .i_c('b0),
//    .i_c({{23{s_iir_in[DATA_WIDTH-1]}}, (s_iir_in<<(DATA_WIDTH-ADC_WIDTH))}),
//    .i_a({{5{s_feedback[DATA_WIDTH-1]}}, s_feedback}),
    .i_pcin('b0),
    .o_p(s_p),
    .i_acin('d0),
    .o_acout(),
    .o_pcout(),
     .o_overflow(s_overflow),
    .o_underflow(s_underflow)
);


assign s_feedback = (sel==2'b11) ?  'b0:
    (sel == 2'b01) ? 'h7fff:
    (sel == 2'b10) ? 'h8000:
//    s_p[DATA_WIDTH-1:0];
//    s_p[47-5:47-5-25+1];
    s_p[9+DATA_WIDTH-1:9];    

 assign o_data = s_feedback[ADC_WIDTH-1:0];
   
//assign o_data = s_p[47-5+1:47-5-25+1];
//assign o_data = s_feedback[DATA_WIDTH-1:0];
endmodule
