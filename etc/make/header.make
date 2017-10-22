PKGNAME  = dop
PKGVERN  = v2017.9

# Final Releae direcotry
MAIN_BIN = ../../bin
MAIN_INC = ../../include
MAIN_LIB = ../../lib
MAIN_ETC = ../../etc

# Local Compile directory
SRC_DIR   = src
OBJ_DIR   = obj
LIB_DIR   = lib
BIN_DIR   = bin

#
#
#
MKDIR   = mkdir -p
CP	= cp -f
CAT	= cat

#
# for cc
#
CC      = gcc -g  
CFLAGS	=   \
                -DPKGNAME=\"$(PKGNAME)\" \
                -DPKGVERN=\"$(PKGVERN)\" \
		-I$(MAIN_INC) \
		-L$(MAIN_LIB)
EXTFLAGS= 
LEX     = flex -l
LFLAGS  =
YACC    = bison -y
YFLAGS  = -d 
AR      = ar -cr
RANLIB	= ranlib

####
