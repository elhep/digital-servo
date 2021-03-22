`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2021 12:19:48 PM
// Design Name: 
// Module Name: AD9117_tb
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


module AD9117_tb;
    reg tb_clk;
    reg tb_rst;

    wire [15:0] tb_DAC0_data, tb_DAC1_data;
    wire [13:0] tb_DAC_OUT;
    wire tb_DCLKIO, tb_rst_out;
    reg [15:0] tb_dac0_vec, tb_dac1_vec;

    localparam sys_period = 10;
    AD9117 UUT (
        .clk_in(tb_clk),
        .rst_in(tb_rst),
        .rst_out(tb_rst_out),
        .DAC0_in(tb_DAC0_data),
        .DAC1_in(tb_DAC1_data),
        .DCLKIO(tb_DCLKIO),
        .D_out(tb_DAC_OUT)
    );

    always begin
        #(sys_period/2);
        tb_clk = 1'b1;
        #(sys_period/2);
        tb_clk = 0'b0;
    end

    initial begin
        tb_dac0_vec = 16'b1111_1100_0000_1000;
        tb_dac1_vec = 16'b0001_1001_1111_0011;

        tb_rst = 1'b1;
        #(sys_period*5);
        tb_rst= 1'b0;
    end
    assign tb_DAC0_data = tb_dac0_vec;
    assign tb_DAC1_data = tb_dac1_vec;

    always @(posedge tb_clk) begin
         if (~tb_rst) begin
            tb_dac0_vec = {tb_dac0_vec[11:0], tb_dac0_vec[15:12]};
            tb_dac1_vec = {tb_dac1_vec[11:0], tb_dac1_vec[15:12]};
        end    
    end

endmodule
