
`timescale  1ns/1ps

module LTC2195_tb;
    reg tb_dco_n, tb_dco_p;
    reg serdes_rst;
    reg tb_rst_in, tb_FR_P, tb_FR_N;
    wire [3:0] tb_D0_P, tb_D0_N, tb_D1_P, tb_D1_N;

    wire [15:0] tb_ADC1_out;
    wire [15:0] tb_ADC0_out;
    wire [3:0] tb_frame;

    wire s_dco, s_dco_2d, s_dcob, dco_locked;
    reg [3:0] dco_2d_cnt;

    reg [15:0] tb_adc0_vec;
    reg [15:0] tb_adc1_vec;

    reg [31:0] stop_condition;
    
    localparam DCO_period = 5;      // same as CLK in ISERDES; assumming DCO=200MHz => T=5ns
    localparam DCO_2D_period = 10;  // same as CLK_DIV in ISERDES

    // clock generation from incoming external DCO signal - it produces clocks with MMCME
    // and syncs fpga clocks with DCO
    DCO_CLK dco_clk_inst (
        .clk_out1(s_dco_2d),
        .clk_out2(s_dco),
        .clk_out3(s_dcob),
        .reset(tb_rst_in),
        .locked(dco_locked),

        .clk_in1_p(tb_dco_p),
        .clk_in1_n(tb_dco_n)
    );

    LTC2195 UUT(
        .rst_in(serdes_rst),
        .DCO(s_dco),
        .DCO_2D(s_dco_2d),
        .DCOB(s_dcob),
        .D0_in_p(tb_D0_P),
        .D0_in_n(tb_D0_N),
        .D1_in_p(tb_D1_P),
        .D1_in_n(tb_D1_N),
        .ADC0_out(tb_ADC0_out),
        .ADC1_out(tb_ADC1_out),
        .FR_in_p(tb_FR_P),
        .FR_in_n(tb_FR_N),
        .FR_out(tb_frame)
    );

    // generate external DCO signal that is fed to MMCME
    always begin
        tb_dco_p = 1'b1;
        tb_dco_n = 1'b0;
        #2.5;   // dco high for 2.5 ns
        tb_dco_p = 1'b0;
        tb_dco_n = 1'b1;
        #2.5;    // dco low for 2.5 ns period: 5 ns, f_dco=200 MHz
    end

    // create artifial FRAME sigal
    always@(posedge s_dco) begin
        #1.25
        tb_FR_P = !tb_FR_P;
        tb_FR_N = !tb_FR_N;
    end

    initial begin
        tb_FR_P = 1'b0;
        tb_FR_N = 1'b1;
        tb_adc0_vec = 16'b1111_1100_0000_1000;
        tb_adc1_vec = 16'b0001_1001_1111_0011;

        tb_rst_in = 1'b1;
        serdes_rst = 1'b0;
        #(DCO_2D_period*5);
        tb_rst_in = 1'b0;
        dco_2d_cnt = 4'd9;
    end

    // create ISERDESE signal reset 
    always @(posedge s_dco_2d) begin
        if (dco_locked) begin
            if (dco_2d_cnt != 0) begin
                if (dco_2d_cnt > 0) begin
                    serdes_rst = 1'b1;
                end 
                dco_2d_cnt = dco_2d_cnt - 1;
            end else if (dco_2d_cnt == 0)
            begin   
                    serdes_rst = 1'b0;
                end
        end
    end
    
    // lanes from LTC2195
    assign tb_D1_P = tb_adc1_vec[15:12];
    assign tb_D1_N = ~tb_adc1_vec[15:12];

    assign tb_D0_P = tb_adc0_vec[15:12];
    assign tb_D0_N = ~tb_adc0_vec[15:12];
    
    always @(posedge s_dco, negedge s_dco) begin
 
        if (~tb_rst_in && !dco_2d_cnt && !serdes_rst) begin
            tb_adc0_vec = {tb_adc0_vec[11:0], tb_adc0_vec[15:12]};
            tb_adc1_vec = {tb_adc1_vec[11:0], tb_adc1_vec[15:12]};

             case (tb_frame)
                4'h6 : stop_condition = {32'h319f, 32'h8fc0};
                4'h3 : stop_condition = {32'hf319, 32'h08fc};
                4'h9 : stop_condition = {32'h9f31, 32'hc08f};
                default : stop_condition = {32'h19f3, 32'hfc08}; // frame = 4'hc
            endcase

             if (tb_ADC0_out == stop_condition[15:0] || tb_ADC1_out == stop_condition[31:16])
                 $stop;
        end
    end

endmodule

