`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 03:25:57 PM
// Design Name: 
// Module Name: fir
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


module FIR #(
    parameter ADC_WIDTH = 16,
    parameter COEFF_WIDTH = 18,
    parameter DATA_WIDTH = 25,
    parameter NORM_SHIFT = 11,
    parameter ORDER = 2
)
(
    input wire clk_in,
    input wire clk_in4x,
    input wire rst_in,
    input wire signed [ADC_WIDTH-1:0] i_offset,
    input wire signed [ADC_WIDTH-1:0] i_data,
    output wire signed [ADC_WIDTH-1:0] o_data,
    output wire signed [DATA_WIDTH-1:0] o_extended_data
);

wire signed [30-1:0] s_adc_data, s_offset;
wire signed [47:0] s_p [0:ORDER-1];

reg signed [ADC_WIDTH-1:0] SR_out1, SR_out2 [0:1]; 


 assign s_adc_data = {{5{i_data[ADC_WIDTH-1]}}, {i_data, {(DATA_WIDTH-ADC_WIDTH){1'b0}}}}; 
//assign s_adc_data = {{5{i_data[ADC_WIDTH-1]}}, (i_data<<<(DATA_WIDTH-ADC_WIDTH))};
// assign s_adc_data = {{14{i_data[ADC_WIDTH-1]}}, i_data};
assign s_offset = {{5{i_offset[ADC_WIDTH-1]}}, {i_offset, {(DATA_WIDTH-ADC_WIDTH){1'b0}}}};

genvar i;
for (i=0; i<ORDER; i = i+1) begin

    DSP48E1_wrapper #(
        .A_SOURCE("DIRECT")
    )
    D (
        .i_clk(clk_in4x),
        .i_rst(rst_in),
        .i_d(s_offset),
        .i_b(18'd2<<(DATA_WIDTH-ADC_WIDTH)),
    //    .i_b(18'd2),
        .i_a(s_adc_data),
        .i_c('b0),
        .i_pcin('b0),
        .o_p(s_p[i]),
        .i_acin('b0),
        .o_acout(),
        .o_pcout(),
         .o_overflow(),
        .o_underflow()
    );
end


always @(posedge clk_in) begin
    if (rst_in) begin
        SR_out1 <= 'b0;
        SR_out2[0] <= 'b0;
        SR_out2[1] <= 'b0;
    end else begin
        // SR_out1 <= s_p[1][DATA_WIDTH-1:0];
        // SR_out2[1] <= SR_out2[0];
        // SR_out2[0] <= s_p[2][DATA_WIDTH-1:0];
        SR_out1 <= s_p[1][47-5+1:47-5-25+1];  
        SR_out2[1] <= SR_out2[0];
        SR_out2[0] <= s_p[2][47-5+1:47-5-25+1];  
    end
end
assign o_extended_data = s_p[0][47-5:47-5-25+1] + SR_out1 + SR_out2[1];
// assign o_extended_data = s_p[0][DATA_WIDTH-1:0] + SR_out1 + SR_out2[1];
assign o_data = o_extended_data[DATA_WIDTH-1:DATA_WIDTH-ADC_WIDTH-1];
endmodule
