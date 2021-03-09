`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2021 08:30:13 PM
// Design Name: 
// Module Name: DCO_CLK
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


module DCO_CLK(
        // Clock out ports
        output        clk_out1,
        output        clk_out2,
        output        clk_out3,
        // Status and control signals
        input         reset,
        output        locked,
        // Clock in ports
        input         clk_in1_p,
        input         clk_in1_n
    );

    wire    clk_in1_DCO_CLK;
    wire    clk_out1_DCO2D_CLK;
    wire    clk_out2_DCO_CLK;
    wire    clk_out3_DCOB_CLK;

    wire clkfbout_DCO_CLK, clkfbout_buf_DCO_CLK;

    IBUFDS clkin1_ibufgds
        (.O  (clk_in1_DCO_CLK),
        .I  (clk_in1_p),
        .IB (clk_in1_n)
        );


    MMCME2_BASE #(
    // VCO freq 1GHz
        .CLKFBOUT_MULT_F(5.0),    
        .CLKFBOUT_PHASE(0.0),
        .CLKIN1_PERIOD(5.0),  // 5 ns if 200 MHz, 4 ns if 250 MHz
        
        .CLKOUT0_DIVIDE_F(10.0),    // DCO (frequency)
        .CLKOUT1_DIVIDE(5.0),       // DCO/2  

        .CLKOUT1_DUTY_CYCLE(0.5),
        
        .CLKOUT0_PHASE(0.0),
        .CLKOUT1_PHASE(0.0),

        .DIVCLK_DIVIDE(1)   
    )
    DCO_MMCME(
        .CLKFBOUT (clkfbout_DCO_CLK),
        .CLKOUT0(clk_out1_DCO2D_CLK),
        .CLKOUT1(clk_out2_DCO_CLK),
        .CLKOUT1B(clk_out3_DCOB_CLK),
        
        // Input clock 
        .CLKFBIN(clkfbout_buf_DCO_CLK),
        .CLKIN1(clk_in1_DCO_CLK),
        .LOCKED(locked),
        .RST(reset)
    );

BUFG clkf_buf (
    .O(clkfbout_buf_DCO_CLK),
    .I(clkfbout_DCO_CLK)
);

BUFG clkout1_buf (
    .O (clk_out1),
    .I (clk_out1_DCO2D_CLK)
);

BUFG clkout2_buf (
    .O(clk_out2),
    .I(clk_out2_DCO_CLK)
);

BUFG clkout3_buf (
    .O(clk_out3),
    .I(clk_out3_DCOB_CLK)
);

endmodule

