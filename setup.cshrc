#!/bin/csh -f
set prog=$0:t
if ("$prog" == "setup.cshrc") then
   setenv DQR_HOME `realpath $0:h`
else 
   setenv DQR_HOME `pwd`
endif

set path = ($DQR_HOME/bin $path)
setenv DQR_PLUGIN $DQR_HOME/plugin

if ($?DOP_HOME == 0) then
   setenv DOP_HOME $DQR_HOME:h
endif

if ($?DVC_HOME == 0) then
   setenv DVC_HOME `realpath $DOP_HOME/dvc`
   set path = ($DVC_HOME/bin $path)
endif
echo "DOP_HOME = $DOP_HOME"
echo "DVC_HOME = $DVC_HOME"
echo "DQR_HOME = $DQR_HOME"
