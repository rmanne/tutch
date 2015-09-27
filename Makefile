# tutch Makefile for Standard ML of New Jersey 110.45 and higher
# uses the new Compilation Manager
#
# Copyright (C) Andreas Abel, 2001, 2004

# ---------------------------------------------------------------
# Please edit the following lines
# ---------------------------------------------------------------

# Where are the sml command to be found?  
#
# If they are not in the PATH, the following two variables have to
# be changed to point to the right command.

sml = sml
ml-build = ml-build

# ---------------------------------------------------------------
# Do not edit the following lines
# ---------------------------------------------------------------

all : bin/.heap tutch

bin/.heap :
	mkdir bin/.heap

tutch :
	@echo "Compiling tutch..."

	$(ml-build) src/tutch-new-cm.cm Top.top bin/.heap/tutch

	sed -e "s#%TUTCHDIR#"`pwd`"#g" \
	    -e "s#%SML#$(sml)#g" bin/.tutch \
	> bin/tutch ;
	chmod a+x bin/tutch ;
