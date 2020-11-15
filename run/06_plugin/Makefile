flow	:= plugin/520-sta

help: flow
	make -f flow/Makefile help

run: flow design import check dqi save html


design:
	dvc_init_server --root svn_root --mode file
	dvc_create_project 06-plugin _
	dvc_create_design P1-trial/block/520-sta/170914-ww38
	dvc_checkout_design

flow:
	rm -f flow
	ln -s $(flow) flow

import check dqi save html view:
	make -f flow/Makefile $@

checkin:
	dvc_checkin_design

clean:
	rm -fr _ .dop flow svn_root
	rm -f :phase :block :stage :version :container 
	rm -f DQI.csv DESIGN_FILES

