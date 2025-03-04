set moduleName run_PE
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run_PE}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_buf1 int 8 regular {array 8 { 1 3 } 1 1 }  }
	{ input_buf_12 int 8 regular {array 8 { 1 3 } 1 1 }  }
	{ weight_buf3 int 8 regular {array 8 { 1 3 } 1 1 }  }
	{ weight_buf_14 int 8 regular {array 8 { 1 3 } 1 1 }  }
	{ output_buf5 int 32 regular {array 4 { 0 3 } 0 1 }  }
	{ p_read int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_buf1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_12", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf_14", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_buf5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_buf1_address0 sc_out sc_lv 3 signal 0 } 
	{ input_buf1_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_buf1_q0 sc_in sc_lv 8 signal 0 } 
	{ input_buf_12_address0 sc_out sc_lv 3 signal 1 } 
	{ input_buf_12_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_12_q0 sc_in sc_lv 8 signal 1 } 
	{ weight_buf3_address0 sc_out sc_lv 3 signal 2 } 
	{ weight_buf3_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_buf3_q0 sc_in sc_lv 8 signal 2 } 
	{ weight_buf_14_address0 sc_out sc_lv 3 signal 3 } 
	{ weight_buf_14_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight_buf_14_q0 sc_in sc_lv 8 signal 3 } 
	{ output_buf5_address0 sc_out sc_lv 2 signal 4 } 
	{ output_buf5_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_buf5_we0 sc_out sc_logic 1 signal 4 } 
	{ output_buf5_d0 sc_out sc_lv 32 signal 4 } 
	{ p_read sc_in sc_lv 2 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_buf1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_buf1", "role": "address0" }} , 
 	{ "name": "input_buf1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf1", "role": "ce0" }} , 
 	{ "name": "input_buf1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_buf1", "role": "q0" }} , 
 	{ "name": "input_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_buf_12", "role": "address0" }} , 
 	{ "name": "input_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_12", "role": "ce0" }} , 
 	{ "name": "input_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_buf_12", "role": "q0" }} , 
 	{ "name": "weight_buf3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_buf3", "role": "address0" }} , 
 	{ "name": "weight_buf3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf3", "role": "ce0" }} , 
 	{ "name": "weight_buf3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_buf3", "role": "q0" }} , 
 	{ "name": "weight_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_buf_14", "role": "address0" }} , 
 	{ "name": "weight_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf_14", "role": "ce0" }} , 
 	{ "name": "weight_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_buf_14", "role": "q0" }} , 
 	{ "name": "output_buf5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_buf5", "role": "address0" }} , 
 	{ "name": "output_buf5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf5", "role": "ce0" }} , 
 	{ "name": "output_buf5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buf5", "role": "we0" }} , 
 	{ "name": "output_buf5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_buf5", "role": "d0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "run_PE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_buf1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "input_buf_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "weight_buf3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "weight_buf_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "output_buf5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_68_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_65_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_reg_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_temp_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_22_8_1_1_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_22_8_1_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U13", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_PE {
		input_buf1 {Type I LastRead 2 FirstWrite -1}
		input_buf_12 {Type I LastRead 2 FirstWrite -1}
		weight_buf3 {Type I LastRead 2 FirstWrite -1}
		weight_buf_14 {Type I LastRead 2 FirstWrite -1}
		output_buf5 {Type O LastRead -1 FirstWrite 4}
		p_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_buf1 { ap_memory {  { input_buf1_address0 mem_address 1 3 }  { input_buf1_ce0 mem_ce 1 1 }  { input_buf1_q0 in_data 0 8 } } }
	input_buf_12 { ap_memory {  { input_buf_12_address0 mem_address 1 3 }  { input_buf_12_ce0 mem_ce 1 1 }  { input_buf_12_q0 in_data 0 8 } } }
	weight_buf3 { ap_memory {  { weight_buf3_address0 mem_address 1 3 }  { weight_buf3_ce0 mem_ce 1 1 }  { weight_buf3_q0 in_data 0 8 } } }
	weight_buf_14 { ap_memory {  { weight_buf_14_address0 mem_address 1 3 }  { weight_buf_14_ce0 mem_ce 1 1 }  { weight_buf_14_q0 in_data 0 8 } } }
	output_buf5 { ap_memory {  { output_buf5_address0 mem_address 1 2 }  { output_buf5_ce0 mem_ce 1 1 }  { output_buf5_we0 mem_we 1 1 }  { output_buf5_d0 mem_din 1 32 } } }
	p_read { ap_none {  { p_read in_data 0 2 } } }
}
