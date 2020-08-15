#!/usr/bin/tclsh
set DQR_HOME [file dirname [file dirname [file normalize [info script]]]]

source $DQR_HOME/tcl/LIB_DQR.tcl
source $DQR_HOME/tcl/LIB_HTML.tcl
source $DQR_HOME/tcl/LIB_STA.tcl
#source $DQR_HOME/tcl/STA_CORNER.tcl
#source $DQR_HOME/tcl/STA_WAIVE.tcl
#source $DQR_HOME/tcl/STA_PT.tcl

::LIB_DQR::parse_argv $argv
::LIB_STA::parse_argv $argv
::LIB_STA::read_config
::LIB_STA::read_corner_list
::LIB_STA::report_clock_end

puts "INFO: dqr_clock_end Done..."
