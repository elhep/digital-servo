`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2021 11:09:11 PM
// Design Name: 
// Module Name: get_config
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


module get_config(
    input wire clk_in,
    input wire rst_in,
    
    input wire [31:0] s_axis_tdata,
    output wire s_axis_tready,
    input wire s_axis_tvalid,
    output wire [12287:0] cfg
    );
    
    reg [8:0] word_counter;
    reg [12287:0] config_sr;
    reg s_ready;
    reg s_valid;
    reg [12287:0] s_cfg;
    
    assign s_axis_tready = s_ready;
    assign cfg = s_cfg;
    always @(posedge clk_in or negedge rst_in) begin
        if (rst_in) begin
            s_ready <= 1'b1;
            config_sr <= 12888'b0;
            word_counter <= 9'b0;
        end
        else if (s_axis_tvalid == 1'b1) begin
            config_sr <= {config_sr[12255:0], s_axis_tdata};
            if(word_counter == 9'd383) begin
                word_counter <= 9'b0;
                s_cfg <= config_sr;
            end
            else word_counter <= word_counter + 1;
        end
        end
endmodule
