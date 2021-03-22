`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 01:14:17 PM
// Design Name: 
// Module Name: FastServo_tb
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


module FastServo_tb;
    reg tb_rst, tb_FPGA_CLK1_P, tb_FPGA_CLK1_N, tb_FPGA_CLK2_P, tb_FPGA_CLK2_N;

    reg tb_LTC2195_DCO_P, tb_LTC2195_DCO_N;

    reg tb_CLK_100;         // Oscillator clock 100 MHz

	reg tb_LTC2195_FR_P, tb_LTC2195_FR_N;

	wire  [3:0] tb_LTC2195_D0_P;
	wire  [3:0] tb_LTC2195_D0_N;
	wire  [3:0] tb_LTC2195_D1_P;
	wire  [3:0] tb_LTC2195_D1_N;

    wire  [13:0] tb_AD9117_D;
    wire  tb_AD9117_DCLKIO;
    wire  tb_AD9117_RESET;

    wire [3:0] tb_FP_LEDS;
    wire [2:0] tb_LEDS;
    wire [1:0] tb_DIO;
    
    localparam DCO_period = 5;      // same as CLK in ISERDES; assumming DCO=200MHz => T=5ns
    localparam DCO_2D_period = 10;  // same as CLK_DIV in ISERDES

    reg [15:0] tb_adc0_vec;
    reg [15:0] tb_adc1_vec;


    FastServoTop UUT (
        .rst_in(tb_rst),
        .FPGA_CLK1_N(tb_FPGA_CLK1_N),
        .FPGA_CLK1_P(tb_FPGA_CLK1_P),
        .FPGA_CLK2_N(tb_FPGA_CLK2_N),
        .FPGA_CLK2_P(tb_FPGA_CLK2_P),
        .LTC2195_DCO_P(tb_LTC2195_DCO_P),
        .LTC2195_DCO_N(tb_LTC2195_DCO_N),
        .LTC2195_D0_P(tb_LTC2195_D0_P),
        .LTC2195_D0_N(tb_LTC2195_D0_N),
        .LTC2195_D1_P(tb_LTC2195_D1_P),
        .LTC2195_D1_N(tb_LTC2195_D1_N),
        .LTC2195_FR_P(tb_LTC2195_FR_P),
        .LTC2195_FR_N(tb_LTC2195_FR_N),
        .AD9117_D(tb_AD9117_D),
        .AD9117_DCLKIO(tb_AD9117_DCLKIO),
        .AD9117_RESET(tb_AD9117_RESET),
        .FP_LEDS(tb_FP_LEDS),
        .DIO(tb_DIO),
        .LEDS(tb_LEDS),
        .CLK_100(tb_CLK_100)
    );

    // generate external DCO signal that is fed to MMCME
    always begin
        tb_LTC2195_DCO_P = 1'b1;
        tb_LTC2195_DCO_N = 1'b0;
        #2.5;   // dco high for 2.5 ns
        tb_LTC2195_DCO_P = 1'b0;
        tb_LTC2195_DCO_N = 1'b1;
        #2.5;    // dco low for 2.5 ns period: 5 ns, f_dco=200 MHz
    end

    // generate FPGA clocks
    always begin
        tb_FPGA_CLK1_N = 1'b1;
        tb_FPGA_CLK1_P = 1'b0;
        tb_FPGA_CLK2_N = 1'b1;
        tb_FPGA_CLK2_P = 1'b0;
        tb_CLK_100 = 1'b1;
        #5;   // clock high for 5 ns
        tb_FPGA_CLK1_N = 1'b0;
        tb_FPGA_CLK1_P = 1'b1;
        tb_FPGA_CLK2_N = 1'b0;
        tb_FPGA_CLK2_P = 1'b1;
        tb_CLK_100 = 1'b0;
        #5;    // clock low for 5 ns period: 10 ns, f=100 MHz
    end


    // create artifial FRAME sigal
    always@(posedge tb_LTC2195_D0_P) begin
        #1.25
        tb_LTC2195_FR_P = !tb_LTC2195_FR_P;
        tb_LTC2195_FR_N = !tb_LTC2195_FR_N;
    end
    
    initial begin
        tb_LTC2195_FR_P = 1'b0;
        tb_LTC2195_FR_N = 1'b1;
        tb_adc0_vec = 16'b1111_1100_0000_1000;
        tb_adc1_vec = 16'b0001_1001_1111_0011;

        tb_rst = 1'b1;
        #(DCO_2D_period*5);
        tb_rst = 1'b0;
    end

    // lanes from LTC2195
    assign tb_LTC2195_D1_P = tb_adc1_vec[15:12];
    assign tb_LTC2195_D1_N = ~tb_adc1_vec[15:12];

    assign tb_LTC2195_D0_P = tb_adc0_vec[15:12];
    assign tb_LTC2195_D0_N = ~tb_adc0_vec[15:12];
    
    always @(posedge tb_LTC2195_DCO_P, negedge tb_LTC2195_DCO_P) begin
 
        if (~tb_rst) begin
            tb_adc0_vec = {tb_adc0_vec[11:0], tb_adc0_vec[15:12]};
            tb_adc1_vec = {tb_adc1_vec[11:0], tb_adc1_vec[15:12]};

            //  case (tb_frame)
            //     4'h6 : stop_condition = {32'h319f, 32'h8fc0};
            //     4'h3 : stop_condition = {32'hf319, 32'h08fc};
            //     4'h9 : stop_condition = {32'h9f31, 32'hc08f};
            //     default : stop_condition = {32'h19f3, 32'hfc08}; // frame = 4'hc
            // endcase

            //  if (tb_ADC0_out == stop_condition[15:0] || tb_ADC1_out == stop_condition[31:16])
            //      $stop;
        end
    end

endmodule
