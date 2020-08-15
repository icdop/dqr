#!/usr/bin/tclsh
#
# DQR Libary Header
#
# By Albert Li 
# 2020/07/04
# 
namespace eval LIB_DQR {
  variable DQR_HOME  [file dirname [file dirname [file normalize [info script]]]]

  variable DQR_CFG_DIR ".dqr"

  proc init {} {
    global env
    global DQR_HOME

    set DQR_HOME [file dirname [file dirname [file normalize [info script]]]]
    puts "###########################################################"
    puts "# DQR LIBRARY ver.2020.07                                 #"
    puts "###########################################################"
    puts "INFO: DQR_HOME = $DQR_HOME"
  }

proc parse_argv { {argv ""} } {
  variable DQR_CFG_DIR

  puts $argv
  set argc [llength $argv]
  set i 0
  while {$i<$argc} {
    set arg [lindex $argv $i]
    case $arg in {
      -cfg_dir {
         incr i
         set DQR_CFG_DIR [lindex $argv $i]
         puts "DQR_CFG_DIR = $DQR_CFG_DIR"
      }
      default {
         lappend STA_MODE_LIST $arg
      }
    }
    incr i
  }
}

}

LIB_DQR::init
