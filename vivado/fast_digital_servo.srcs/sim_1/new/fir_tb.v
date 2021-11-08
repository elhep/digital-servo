`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2021 11:20:51 AM
// Design Name: 
// Module Name: fir_tb
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


module fir_tb;
    localparam N = 256;
    reg tb_clk,tb_clk4x, tb_rst;
    reg signed [15:0] tb_data_vec [0:N-1];
    reg signed [15:0] tb_adc;
    reg signed [15:0] tb_offset;
    wire signed [15:0] tb_dac;
    wire signed [24:0] tb_extended_dac;
    reg signed [15:0] tb_output;
    reg [9:0] i;
    integer f_data;
    
    initial
    begin
        $readmemb("/home/jmatyas/project_3/data_in.txt", tb_data_vec);
    end
        
    FIR #(
        .ORDER(3)
    )
    UUT (
        .clk_in4x(tb_clk4x),
        .clk_in(tb_clk),
        .rst_in(tb_rst),
        .i_data(tb_adc),
        .i_offset(tb_offset),
        .o_extended_data(tb_extended_dac),
        .o_data(tb_dac)
        );
        
    always 
    begin 
        tb_clk = 1'b1;
        #10;
        tb_clk = 1'b0;
        #10;
    end
    
    always
    begin
        tb_clk4x = 1'b1;
        #2.5;
        tb_clk4x = 1'b0;
        #2.5;
    end
    
    initial
    begin
        f_data = $fopen("/home/jmatyas/project_3/data.csv");
    end
    
    
// print the values on terminal and file
//    initial
//    begin
//        // write on terminal
////        $display("iter, input, output, time");
////        // monitors checks and print the transitions
////        $monitor("%d, %16b, %16b, %6d", i, tb_adc, tb_dac, $time);
        
//        // write on the file
////        $fdisplay(f_data, "iter, input, output, time");
//    end
        
   initial
   begin
        tb_rst = 1;
        #(30);
        tb_rst = 0;
   end
   
   always @(posedge tb_clk) 
    tb_output <= tb_dac;

   
   always @(posedge tb_clk) begin
   $fwrite(f_data,"%d, %d, %d, %6d\n", i, tb_adc, tb_extended_dac, $time);

    if (tb_rst) begin 
       tb_adc <= 16'b0;
       tb_offset <= 16'b0;
       i <= 10'b0;
    end else begin 
        tb_offset <= 'b0;
        if (i<N) begin
            tb_adc <= tb_data_vec[i];
            i <= i+1'b1;
        end else if (i >= N && i < 2*N) begin
            tb_adc <= 16'b0;
            i<=i+1'b1;
        end else begin
    	   $finish;
           $fclose(f_data);  // close the file

        end	
    end
end
   
endmodule
