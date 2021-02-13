# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LED2green" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LED2off" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LED2orange" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LED2red" -parent ${Page_0}


}

proc update_PARAM_VALUE.LED2green { PARAM_VALUE.LED2green } {
	# Procedure called to update LED2green when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED2green { PARAM_VALUE.LED2green } {
	# Procedure called to validate LED2green
	return true
}

proc update_PARAM_VALUE.LED2off { PARAM_VALUE.LED2off } {
	# Procedure called to update LED2off when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED2off { PARAM_VALUE.LED2off } {
	# Procedure called to validate LED2off
	return true
}

proc update_PARAM_VALUE.LED2orange { PARAM_VALUE.LED2orange } {
	# Procedure called to update LED2orange when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED2orange { PARAM_VALUE.LED2orange } {
	# Procedure called to validate LED2orange
	return true
}

proc update_PARAM_VALUE.LED2red { PARAM_VALUE.LED2red } {
	# Procedure called to update LED2red when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LED2red { PARAM_VALUE.LED2red } {
	# Procedure called to validate LED2red
	return true
}


proc update_MODELPARAM_VALUE.LED2off { MODELPARAM_VALUE.LED2off PARAM_VALUE.LED2off } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED2off}] ${MODELPARAM_VALUE.LED2off}
}

proc update_MODELPARAM_VALUE.LED2red { MODELPARAM_VALUE.LED2red PARAM_VALUE.LED2red } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED2red}] ${MODELPARAM_VALUE.LED2red}
}

proc update_MODELPARAM_VALUE.LED2green { MODELPARAM_VALUE.LED2green PARAM_VALUE.LED2green } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED2green}] ${MODELPARAM_VALUE.LED2green}
}

proc update_MODELPARAM_VALUE.LED2orange { MODELPARAM_VALUE.LED2orange PARAM_VALUE.LED2orange } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LED2orange}] ${MODELPARAM_VALUE.LED2orange}
}

