flow	:= plugin/520-sta

help: plugin
	make -f xxplugin/Makefile help

design:
	dvc_init_server --root svn_root -mode file
	dvc_create_project 06-plugin _
	dvc_create_design P1-trial/block/520-sta/170914-ww38
	dvc_checkout_design

run import check dqi save html view:
	make -f $flow/Makefile $@

checkin:
	dvc_checkin_design

clean:
	rm -fr _ .dop
	rm -f :phase :block :stage :version :container 
	rm -f DQI.csv DESIGN_FILES

