#!/usr/bin/tclsh
set DQR_HOME [file dirname [file dirname [file normalize [info script]]]]

source $DQR_HOME/tcl/LIB_DQR.tcl
source $DQR_HOME/tcl/LIB_HTML.tcl
source $DQR_HOME/tcl/LIB_STA.tcl

::LIB_DQR::parse_argv $argv
::LIB_STA::parse_argv $argv
::LIB_STA::read_config
::LIB_STA::read_corner_list

::LIB_STA::report_index_mode
::LIB_STA::report_index_corner
::LIB_STA::report_index_main mode.htm

puts "INFO: dqr_sta_index Done..."
