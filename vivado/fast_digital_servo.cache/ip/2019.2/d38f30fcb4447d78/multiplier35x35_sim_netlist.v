// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 12 17:47:10 2021
// Host        : sadok running 64-bit KDE neon User Edition 5.20
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multiplier35x35_sim_netlist.v
// Design      : multiplier35x35
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier35x35,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [34:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [34:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [69:0]P;

  wire [34:0]A;
  wire [34:0]B;
  wire [69:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "35" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "69" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "35" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "35" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "69" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [34:0]A;
  input [34:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [69:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [34:0]A;
  wire [34:0]B;
  wire [69:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "35" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "69" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZV8eEA2HY7+jBA8K0KC1xviNWVUcSydajBEzOuPb7Y0QGKME+bPvz8p+AVphBuaR1rPiAsZ332hr
CA+c0229FX37Dt4qNNaIbCsukzrHvKoia/4atRgB3VcoQbI2zrxg8irpACJaoisPH9QxcSS6ncaq
CeZR1ydu8GmRHM4A5BQbxC3A+Zv43Rc47jO5CgmGoHLq13IYTToiuryVj6FrEbAeNiyd0Z4kg75f
bgtN0Q2cMeisrMA0enFTD+Zc25BtN7NXoOVpStxsImEwtVPf9Y8X8vtFbvHLbM1NpKEZF6VipqNU
dniFU8cyBqrtEfwLaTNbPu8VDTKWHy5N8xIb6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
17TFNABb4wu/cz4sNstpSiPNkSu1agRiMEicCyRyZJEHHfmOAJUCUS9BWV/cuJaDaQafNzbYF9yD
7KP676x+Pwb1J74tMvJ/X8sjzKf2WrUrOg4DLIfs93UkdxRRO25gK7s2hsQUiWHiVZ7fG4gFCGFj
OmWtsBF4ZMwgFzMerhH9+lUy07sH0XBn9prJ2VWRjKaXj8euOMs/t/bkw7calW6C8N9ZyUD2JHiy
VyrhEPcz1wY7GGr0lx79W9it9jzFlcVz7nLNkFH+nynrFY/mgRg8gSnCse3hT81yZ956Vnn7sxDV
Jn8iQr0bcFdq9zBpSF8Ze1sI/ewmdDEDTf3UGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28656)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
