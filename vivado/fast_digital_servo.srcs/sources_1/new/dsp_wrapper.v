//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 05/18/2021 12:57:23 PM
//// Design Name: 
//// Module Name: top
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////

module DSP48E1_wrapper #(
    parameter A_SOURCE = "DIRECT",     // CASCADE
    parameter USE_D = "TRUE",
    parameter FBCK = "FALSE"

) (
    input wire i_clk,
    input wire i_rst,

    input wire signed [29:0] i_acin,
    input wire signed [29:0] i_a,
    input wire signed [24:0] i_d,
    input wire signed [17:0] i_b,
    input wire signed  [47:0] i_c,
    input wire signed [47:0] i_pcin,

    output wire signed [29:0] o_acout,
    output wire signed [47:0] o_pcout,
    output wire signed [47:0] o_p,
    output wire o_overflow,
    output wire o_underflow 

);

wire [17:0] s_bcout;
wire s_cascadeout, s_multisign, s_overflow, s_underflow, s_patterndetect1, s_patterndetect2, s_carryout;

assign o_underflow = s_underflow;
assign o_overflow = s_overflow;



localparam A_STAGES = 1;
localparam CREG_STAGES = 0;
localparam INMODE = 4'b0101;
localparam OPMODE = (FBCK=="TRUE")? 7'b0100101 : ((A_SOURCE=="DIRECT")? 7'b0000101 : 7'b0010101);
localparam P_STAGES = (FBCK=="TRUE")? 1'b1 : 1'b1;

localparam ALUMODE = (FBCK=="TRUE")? 4'b0000 : 4'b0000;


   DSP48E1 #(
      // Feature Control Attributes: Data Path Selection
      .A_INPUT(A_SOURCE),               // Selects A input source, "DIRECT" (A port) or "CASCADE" (ACIN port)
       .B_INPUT("DIRECT"),               // Selects B input source, "DIRECT" (B port) or "CASCADE" (BCIN port)
      .USE_DPORT(USE_D),              // Select D port usage (TRUE or FALSE)
    //   .USE_MULT("MULTIPLY"),            // Select multiplier usage ("MULTIPLY", "DYNAMIC", or "NONE")
    //   .USE_SIMD("ONE48"),               // SIMD selection ("ONE48", "TWO24", "FOUR12")
      // Pattern Detector Attributes: Pattern Detection Configuration
      .AUTORESET_PATDET("NO_RESET"),    // "NO_RESET", "RESET_MATCH", "RESET_NOT_MATCH" 
      .MASK({6'h00, 42'h3FFFFFFFFFF}),          // 48-bit mask value for pattern detect (1=ignore)
      .PATTERN(48'h000000000000),       // 48-bit pattern match for pattern detect
      .SEL_MASK("MASK"),                // "C", "MASK", "ROUNDING_MODE1", "ROUNDING_MODE2" 
      .SEL_PATTERN("PATTERN"),          // Select pattern value ("PATTERN" or "C")
      .USE_PATTERN_DETECT("PATDET"), // Enable pattern detect ("PATDET" or "NO_PATDET")
      // Register Control Attributes: Pipeline Register Configuration
      .ACASCREG(A_STAGES),                     // Number of pipeline stages between A/ACIN and ACOUT (0, 1 or 2)
      .ADREG(1),                        // Number of pipeline stages for pre-adder (0 or 1)
      .ALUMODEREG(1),                   // Number of pipeline stages for ALUMODE (0 or 1)
      .AREG(A_STAGES),                         // Number of pipeline stages for A (0, 1 or 2)
      .BCASCREG(1),                     // Number of pipeline stages between B/BCIN and BCOUT (0, 1 or 2)
      .BREG(1),                         // Number of pipeline stages for B (0, 1 or 2)
      .CARRYINREG(1),                   // Number of pipeline stages for CARRYIN (0 or 1)
      .CARRYINSELREG(1),                // Number of pipeline stages for CARRYINSEL (0 or 1)
      .CREG(CREG_STAGES),                         // Number of pipeline stages for C (0 or 1)
      .DREG(1),                         // Number of pipeline stages for D (0 or 1)
      .INMODEREG(1),                    // Number of pipeline stages for INMODE (0 or 1)
      .MREG(1),                         // Number of multiplier pipeline stages (0 or 1)
      .OPMODEREG(1),                    // Number of pipeline stages for OPMODE (0 or 1)
      .PREG(1)                          // Number of pipeline stages for P (0 or 1)
   )
   DSP48E1_inst (
      // Cascade: 30-bit (each) output: Cascade Ports
      .ACOUT(o_acout),                   // 30-bit output: A port cascade output
       .BCOUT(s_bcout),                   // 18-bit output: B port cascade output
       .CARRYCASCOUT(s_cascadeout),     // 1-bit output: Cascade carry output
       .MULTSIGNOUT(s_multisign),       // 1-bit output: Multiplier sign cascade output
      .PCOUT(o_pcout),                   // 48-bit output: Cascade output
      // Control: 1-bit (each) output: Control Inputs/Status Bits
       .OVERFLOW(s_overflow),             // 1-bit output: Overflow in add/acc output
       .PATTERNBDETECT(s_patterndetect1), // 1-bit output: Pattern bar detect output
       .PATTERNDETECT(s_patterndetect2),   // 1-bit output: Pattern detect output
       .UNDERFLOW(s_underflow),           // 1-bit output: Underflow in add/acc output
      // Data: 4-bit (each) output: Data Ports
       .CARRYOUT(s_carryout),             // 4-bit output: Carry output
      .P(o_p),                           // 48-bit output: Primary data output
      // Cascade: 30-bit (each) input: Cascade Ports
      .ACIN(i_acin),                     // 30-bit input: A cascade data input
       .BCIN('b0),                     // 18-bit input: B cascade input
       .CARRYCASCIN(1'b0),       // 1-bit input: Cascade carry input
       .MULTSIGNIN(1'b0),         // 1-bit input: Multiplier sign input
       .PCIN(i_pcin),                     // 48-bit input: P cascade input
      // Control: 4-bit (each) input: Control Inputs/Status Bits
       .ALUMODE(ALUMODE),               // 4-bit input: ALU control input
       .CARRYINSEL(3'b000),         // 3-bit input: Carry select input
      .CLK(i_clk),                       // 1-bit input: Clock input
       .INMODE(INMODE),                 // 5-bit input: INMODE control input
       .OPMODE(OPMODE),                 // 7-bit input: Operation mode input
      // Data: 30-bit (each) input: Data Ports
      .A(i_a),                           // 30-bit input: A data input
      .B(i_b),                           // 18-bit input: B data input
      .C(i_c),                           // 48-bit input: C data input
       .CARRYIN(1'b0),               // 1-bit input: Carry input signal
      .D(i_d),                           // 25-bit input: D data input
      // Reset/Clock Enable: 1-bit (each) input: Reset/Clock Enable Inputs
      .CEA1(1'b1),//CE_regs),                     // 1-bit input: Clock enable input for 1st stage AREG
      .CEA2(1'b1),//CE_regs),                     // 1-bit input: Clock enable input for 2nd stage AREG
      .CEAD(1'b1),                     // 1-bit input: Clock enable input for ADREG
      .CEALUMODE(1'b1),           // 1-bit input: Clock enable input for ALUMODE
      .CEB1(1'b1),                     // 1-bit input: Clock enable input for 1st stage BREG
      .CEB2(1'b1),                     // 1-bit input: Clock enable input for 2nd stage BREG
      .CEC(1'b1),//CE_regs),                       // 1-bit input: Clock enable input for CREG
      .CECARRYIN(1'b1),           // 1-bit input: Clock enable input for CARRYINREG
      .CECTRL(1'b1),                 // 1-bit input: Clock enable input for OPMODEREG and CARRYINSELREG
      .CED(1'b1),//CE_regs),                       // 1-bit input: Clock enable input for DREG
      .CEINMODE(1'b1),             // 1-bit input: Clock enable input for INMODEREG
      .CEM(1'b1),                       // 1-bit input: Clock enable input for MREG
      .CEP(1'b1),//CE_regs),                       // 1-bit input: Clock enable input for PREG
      .RSTA(i_rst),                     // 1-bit input: Reset input for AREG
      .RSTALLCARRYIN(i_rst),   // 1-bit input: Reset input for CARRYINREG
      .RSTALUMODE(i_rst),         // 1-bit input: Reset input for ALUMODEREG
      .RSTB(i_rst),                     // 1-bit input: Reset input for BREG
      .RSTC(i_rst),                     // 1-bit input: Reset input for CREG
      .RSTCTRL(i_rst),               // 1-bit input: Reset input for OPMODEREG and CARRYINSELREG
      .RSTD(i_rst),                     // 1-bit input: Reset input for DREG and ADREG
      .RSTINMODE(i_rst),           // 1-bit input: Reset input for INMODEREG
      .RSTM(i_rst),                     // 1-bit input: Reset input for MREG
      .RSTP(i_rst)                      // 1-bit input: Reset input for PREG
   );

   // End of DSP48E1_inst instantiation
				
endmodule