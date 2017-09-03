HEADER   = HEADER
PKGS_LIB = $(PKG_NAME).a
PKGS_INC = $(PKG_NAME).h

help:
	@echo "make publish  ; copy lib.a & lib.inc to central dir"
	@echo "make package  ; compile lib.a & lib.inc, check dependecy"
	@echo "make compiler ; compile utility obj"
	@echo "make clean    ; clean up output file"

publish: $(LIB_DIR)/$(PKGS_LIB) $(LIB_DIR)/$(PKGS_INC)
	$(CP) $(LIB_DIR)/$(PKGS_LIB) $(MAIN_LIB)/
	$(CP) $(LIB_DIR)/$(PKGS_INC) $(MAIN_INC)/

package: depend publish

depend:
	@for dir in $(PKG_DEPS); do \
	(cd ../$$dir; echo "*** Entering [$$dir]..."; make package); \
	done;

compile: $(UTIL_OBJS)

$(HEADER): $(UTIL_HEAD) $(UTIL_OBJS)
	@echo "/*" > $(HEADER)
	@echo " *">> $(HEADER)
	@echo " * Package : GenCAD Utility Header" >> $(HEADER)
	@echo " * Date    : `date +%D`" >> $(HEADER)
	@echo " *">> $(HEADER)
	@echo " */" >> $(HEADER)

$(LIB_DIR)/$(PKGS_INC): $(HEADER) $(UTIL_INCS)
	$(MKDIR) $(LIB_DIR)
	$(CAT) $(HEADER) $(UTIL_HEAD) $(UTIL_INCS) > $(LIB_DIR)/$(PKGS_INC)

$(LIB_DIR)/$(PKGS_LIB): $(UTIL_OBJS)
	$(MKDIR) $(LIB_DIR)
	$(AR) $(LIB_DIR)/$(PKGS_LIB) $(UTIL_OBJS)
	$(RANLIB) $(LIB_DIR)/$(PKGS_LIB)

clean:
	rm -f $(HEADER) core *.o *.log *~ 


