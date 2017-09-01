#
# publish script to lib/
publish: 
	cp lib/dqi.tcl ../lib/dqi.tcl

# concat tcl script to lib/dqi.tcl
merge:
	bin/gendqi.tcl dc_tcl tcl

# split dqi.tcl to individual tcl file
split:
	bin/split.tcl lib/dqi.tcl


