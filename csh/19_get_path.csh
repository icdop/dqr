#!/bin/csh -f
#set verbose = 1
set prog = $0:t
if (($1 == "-h") || ($1 == "--help")) then
   echo "Usage: $prog [--dop|--dvc|--dqr|--dcm|--dfa|--dvs]"
   exit -1
endif

switch($1)
case "--dop":
   set dop_mode=1
   shift argv
   echo $DOP_HOME
   breaksw
case "--dvc":
   set dvc_mode=1
   shift argv
   echo $DVC_HOME
   breaksw
case "--dqr":
   set dqr_mode=1
   shift argv
   echo $DQR_HOME
   breaksw
case "--dvs":
   set dvs_mode=1
   shift argv
   echo $DVS_HOME
   breaksw
case "--dcm":
   set dcm_mode=1
   shift argv
   echo $DCM_HOME
   breaksw
case "--dfa":
   set dfa_mode=1
   shift argv
   echo $DFA_HOME
   breaksw
endsw
