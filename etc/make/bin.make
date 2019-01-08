BIN_PATH := bin
CSH_PATH := ../csh

bin: csh/* csh/
	mkdir -p $(BIN_PATH)
	rm -f $(BIN_PATH)/dqr_*
	ln -f -s $(CSH_PATH)/01_set_dqi.csh			$(BIN_PATH)/dqr_set_dqi
	ln -f -s $(CSH_PATH)/09_set_path.csh			$(BIN_PATH)/dqr_set_path
	ln -f -s $(CSH_PATH)/11_get_dqi.csh			$(BIN_PATH)/dqr_get_dqi
	ln -f -s $(CSH_PATH)/19_get_path.csh			$(BIN_PATH)/dqr_get_path
	ln -f -s $(CSH_PATH)/80_report_project.csh		$(BIN_PATH)/dqr_report_project
	ln -f -s $(CSH_PATH)/81_report_block.csh		$(BIN_PATH)/dqr_report_block
	ln -f -s $(CSH_PATH)/82_report_phase.csh		$(BIN_PATH)/dqr_report_phase
	ln -f -s $(CSH_PATH)/83_report_stage.csh		$(BIN_PATH)/dqr_report_stage
	ln -f -s $(CSH_PATH)/84_report_version.csh		$(BIN_PATH)/dqr_report_version
	ln -f -s $(CSH_PATH)/85_report_container.csh		$(BIN_PATH)/dqr_report_container
	ln -f -s $(CSH_PATH)/89_report_index.csh		$(BIN_PATH)/dqr_report_index

