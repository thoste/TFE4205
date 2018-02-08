//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 DEVICE_FAMILY="Cyclone II" LPM_DIRECTION="ADD" LPM_REPRESENTATION="SIGNED" LPM_WIDTH=17 ONE_INPUT_IS_CONSTANT="NO" dataa datab result
//VERSION_BEGIN 9.1SP2 cbx_cycloneii 2010:03:24:20:38:24:SJ cbx_lpm_add_sub 2010:03:24:20:38:24:SJ cbx_mgl 2010:03:24:21:00:10:SJ cbx_stratix 2010:03:24:20:38:24:SJ cbx_stratixii 2010:03:24:20:38:24:SJ  VERSION_END
//CBXI_INSTANCE_NAME="Lab5_wb_audio_AdvInterface_inst5_wb_audio_BasicInterface_inst7_wb_audioStream_Interface_inst2_wb_audioStream_stereoToMono_inst4_wb_audioStream_channelAdder_inst1_lpm_add_sub_lpm_add_sub_component"
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2010 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = lut 17 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  wb_audioStream_channelAdder_add_sub
	( 
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [16:0]  dataa;
	input   [16:0]  datab;
	output   [16:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [16:0]  dataa;
	tri0   [16:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif


	assign
		result = dataa + datab;
endmodule //wb_audioStream_channelAdder_add_sub
//VALID FILE
