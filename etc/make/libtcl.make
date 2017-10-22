#
# publish $(PACKAGE_LIB) to $(MAIN_LIB)
publish: 
	cp $(LIB_DIR)/$(PACKAGE_LIB) $(MAIN_LIB)/$(PACKAGE_LIB)

# merge tcl script to $(LIB_DIR)/$(PACKAGE_LIB)
merge:
	$(MAIN_ETC)/tcl/merge_lib.tcl -cfg merge_lib.cfg -o $(LIB_DIR)/$(PACKAGE_LIB) 

# split $(PACKAGE_LIB) to individual tcl file
split:
	$(MAIN_ETC)/tcl/split_lib.tcl $(MAIN_LIB)/$(PACKAGE_LIB) -o $(SRC_DIR)


