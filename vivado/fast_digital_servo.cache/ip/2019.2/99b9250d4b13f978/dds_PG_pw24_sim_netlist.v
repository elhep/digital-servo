// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 12 18:23:29 2021
// Host        : sadok running 64-bit KDE neon User Edition 5.20
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_PG_pw24_sim_netlist.v
// Design      : dds_PG_pw24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_PG_pw24,dds_compiler_v6_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_19,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [23:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [23:0]m_axis_phase_tdata;

  wire aclk;
  wire [23:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [23:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [23:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [23:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [23:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "24" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "0" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "0" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "1" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "24" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "1" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "3" *) 
  (* C_PHASE_ANGLE_WIDTH = "3" *) 
  (* C_PHASE_INCREMENT = "3" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "24" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_19 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[23:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[23:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[23:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(NLW_U0_m_axis_data_tdata_UNCONNECTED[0]),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(NLW_U0_m_axis_data_tvalid_UNCONNECTED),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "24" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "0" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "0" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "1" *) (* C_MEM_TYPE = "2" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "1" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "24" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "1" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "3" *) 
(* C_PHASE_ANGLE_WIDTH = "3" *) (* C_PHASE_INCREMENT = "3" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "24" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_19
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [23:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [0:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [23:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [23:0]debug_axi_pinc_in;
  output [23:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [23:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire event_s_phase_tlast_missing;
  wire [23:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [23:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [23:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [23:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [23:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[0] = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "24" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "0" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "0" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "1" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "24" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "1" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "3" *) 
  (* C_PHASE_ANGLE_WIDTH = "3" *) 
  (* C_PHASE_INCREMENT = "3" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "24" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_19_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[23:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[23:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[23:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(NLW_i_synth_m_axis_data_tdata_UNCONNECTED[0]),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(NLW_i_synth_m_axis_data_tvalid_UNCONNECTED),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
GChCViBDvBmAdEhOubfL25GMXfGxkXRdRqHGmAYIfuDlTr17bmWtS+GhikUinfgaTyxkmMH8CseP
gnd/2HW10g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MrlvIibpKEfGGLF89ZYa/MxSWreV1ceGqUI6m07gM/kuMQZAYp2a++EIZlP+UjNP51wFBhQ3c3zS
QdkFbBqG6uYLZzwSlk6gLqBqvuZE/svIDiGBQbqYiXvUtpsADkdJijHyEXCWIIfA2OybpwP9q9td
K8W1ihFrAkZes3XwNzA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S/HhZNGAOnVSjBaHp2/iJ+uhoS21MUt/ylKAWbdawBFCF9FkUaRlu5dlJRkeM7EFSLvmm6AdQ7tl
PFLc6nUqRxmcsib+JZVada3nOm2+ZzWt2pBGxOUWy1KlB3WROt2liUGfjrxKGEXvt9xlbj7bdIUb
2m+T4LI1aaXqhlGKjy/KpKUf1QOkJCRs0Ku5aotmezBo5GKTFGyZJ3MYO4GKMIfK9iu8sq6VaYMo
k1HNwS1FdJIkAS9xVgsyFkDCzQWeJzTkIZvZQmiwZL9HosMCrHwO2bB0MMldcTYqO/p/dWEFOMhj
t/a4spWmGP9HmOzdM3HjnWh6sHlnCzfHQSkgTA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Casey7LdMe+nZ1xDjbqn5ljtI3LEVuHmV02n1dKqHlXDDy8DngD/F/sT3eZKKWGTYI9OYA8xmK96
NDm7hPSP0ZbcSw2tiWAvyCZWlna3Dzb0oLOsECWeQTM9trjqnrFG881fwCtgX9vmTRQDy7PCg4mn
qaXt4R91tVE0xabKcbKkG3xbZWQa6qcQ1h11pI3DqCvtBoftQdeMm5iU3cfBpqJqka9rRftnPdqV
2HoyzByDV6pDJ1J8/KIiRxyv5NnLSS2sGS/CBn4pn75rlQww9RJEI6qSkYVBdTDgR6hlIRpCam7s
v6LGO0DaEGEJx4a29MQt1LmwETzoV0LC+Kto1g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Szmb9fARj7tLQ/kYcmela18wgMQOHuePfCjZoqT9rm2JaDsVv6W01aCED76msRM59qYJACEIkk+J
bcP8tgMPR2C/v734MT1slRro6En1Rh7JRymnQdCTkPfY0Gd+bBpKeCUjSHsEnypR3ANNLS7D3Wty
cqDCpd89/zwR4nU3fXm0CrN8SiZCmRUVpBfj7XWaBj7Yk+zSc5O3QSer4ary7oM/p77ZLrcUqPp4
rT+zRAzIxYRIx2Fwr4iC+RlgSveUS6anXWdYJCMvpvkqie/R1LODvRdI2STZ7+asbTdD3e3bEmUa
m0pCwPbzt7/lifwYfvlhF10n0yGIMhRwRY5peg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pL5q36kJfJC6ewp2x/1i7eeZBloaj/U5eYbGB9YTbBMi0l/bcSRiH+sqvmrNgzRd6nhqY8TvdSQx
+I7q+SxwYfHb7B6C5dIE2rOVpaRsOwRr9vEoe80+N3I+sArQRhW9gncruvIXEARrDzBmi6t0LD4T
S/NQ8qA26Znqzg7N6nE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XTdbHsxPlZvkQD0a/DK11HearLdHYvEKXjUg6uCX53UHblSKrvghRsCpGpo2P57LEqbC/O1sQefR
r+zkBI6qS66DFQTDwXUo5OXor8HluwZ2IM5iK90Im25PwSNoCgukNXIjcl+Du88CoEwH6KbHIt+V
ovklGLLjypbhfR0fjBexk6I+uBdRnUwsz1qjiXHfSPs+kiQpxLXUlNH6u9M1V1c+JvBpmMjLDs97
BLeZ0IQn8XeC0vmC/ga5xruNFULQ0L1x/bz7ogrEiNURm8YRyckk3MPZ5Ue2qe9rS6aFR5+BfbZs
aG8dmpJNqTItn6C4p5bVoGz/1SprAiE1UdTIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
euuuXgiCv1wOPpltLLnsWcSA5ILR7Z9Z2nZqW2W1SZ0RHMADeZd3r0Fm8aepgwBRrF47ZDKxcwIE
h/ogQEP/9UPuixzatre2Jg1RR3/B+0uPX/mOhoGz/iCwZBV3iHP+HLTWk6V09RT9mIl/txLdSARG
A5pL3qU+bwua/mqlHBBoh7SUZNlhRhXQjlQPAm9Ho6BR3uS0w6hvEFblGSN7YBoptM6X0/yX2m9y
bAvAkdyn+k1BbHMI9k6txj+oPWeymozWZ0b/R4Oe7mFFihDE4Z507yP9ZQFqWM5KfrPfrs0zHbbv
4mZRLDyxiI2J5Da7s1aCvIx8UzQ/XBIUH1eiVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b9IVl9NOAfjNczd0aszECmY8eMdGSwD5Aod4RYTSOsn450vlfgisFX5JnxBuKHqq3oGLHcPPn0XO
Pcm3ZW12CRaK0OE+JYn5wTumIYkXzrMNLaSqp4/WWnEtWlXidqCGmZyVYCwpS28tpfxlHr9wRGmF
Z1g1PHu54f0TmeHdzCyoN25bd68cnmeirIxRJwzTvfv4T1wpijg7B93WvO0UR38iLovIi41gPTxe
2GwfiR6eoBvchftUErgYTkQ5TY0UqB/pg2AabmZWKfPzZ3JnvbXCt+JmOKzeUSzeFHRY7yb3F6Dd
idET0DSmqH+EyO0x84Y6x1tzAJc8l/i3Fsa/zw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uDXce6xwvmYW/Bv8BtdJPidU5JLX5Kle7Aygdk3XITAD1SEO9AS0IAAlowmElAcwpn3LribDAGYK
ri3oAuhZsCVI6zm5a8o17Ws/yUlBLYr+jzBMLYyRRrDGPM+K0Bdv7UpekYCvEXVLGjKeGrJXAYX5
LjzplZdHaIji3UYnUj9iZFyQWDuKodGKny0pWG64qPwY3jG3uMRt25+ZYz+zvO6Z7hC1TKrApu9P
Kwx4gQVcFaX4jrXaa199D8iduaRIs5x0g1weCrTlNeJzs4MoiWO/VLTAIjPkGmrPicU+1oPLHfIA
5WSUGn/uGh0ibux+hfPM4MepZR/XfjJzOF3Npg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39520)
`pragma protect data_block
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
Yj/e6qjJ/XAxpyuTPj7dIduWDA==
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
