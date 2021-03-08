`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2021 08:17:38 PM
// Design Name: 
// Module Name: clk_counter
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


module clk_counter(
    input wire clk_in,
    output wire count_done
    );

reg [25:0] counter;

always @(posedge clk_in) begin
        if (counter == 26'b0) 
            counter <= 26'd50_000_000;
        else 
            counter <= counter - 1;
    end

    assign count_done = (counter == 0) ? 1'b1 : 1'b0;

endmodule
