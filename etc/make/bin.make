BIN_PATH := bin
CSH_PATH := ../csh

bin: csh/* csh/
	mkdir -p $(BIN_PATH)
	rm -f $(BIN_PATH)/dqr_*
	ln -f -s $(CSH_PATH)/00_set_env.csh			$(BIN_PATH)/dqr_set_env
	ln -f -s $(CSH_PATH)/01_set_dqi.csh			$(BIN_PATH)/dqr_set_dqi
	ln -f -s $(CSH_PATH)/02_set_server.csh			$(BIN_PATH)/dqr_set_server
	ln -f -s $(CSH_PATH)/03_set_project.csh			$(BIN_PATH)/dqr_set_project
	ln -f -s $(CSH_PATH)/04_set_design.csh			$(BIN_PATH)/dqr_set_design
	ln -f -s $(CSH_PATH)/05_set_container.csh		$(BIN_PATH)/dqr_set_container
	ln -f -s $(CSH_PATH)/10_get_env.csh			$(BIN_PATH)/dqr_get_env
	ln -f -s $(CSH_PATH)/11_get_dqi.csh			$(BIN_PATH)/dqr_get_dqi
	ln -f -s $(CSH_PATH)/12_get_server.csh			$(BIN_PATH)/dqr_get_server
	ln -f -s $(CSH_PATH)/13_get_project.csh			$(BIN_PATH)/dqr_get_project
	ln -f -s $(CSH_PATH)/14_get_design.csh			$(BIN_PATH)/dqr_get_design
	ln -f -s $(CSH_PATH)/80_report_project.csh		$(BIN_PATH)/dqr_report_project
	ln -f -s $(CSH_PATH)/81_report_phase.csh		$(BIN_PATH)/dqr_report_phase
	ln -f -s $(CSH_PATH)/82_report_block.csh		$(BIN_PATH)/dqr_report_block
	ln -f -s $(CSH_PATH)/83_report_stage.csh		$(BIN_PATH)/dqr_report_stage
	ln -f -s $(CSH_PATH)/84_report_version.csh		$(BIN_PATH)/dqr_report_version
	ln -f -s $(CSH_PATH)/85_report_container.csh		$(BIN_PATH)/dqr_report_container
	ln -f -s $(CSH_PATH)/89_report_index.csh		$(BIN_PATH)/dqr_report_index

