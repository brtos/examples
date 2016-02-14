SOURCEDIR:= ../../brtos/brtos

all:
	cppcheck $(SOURCEDIR) 2>&1 | tee cppcheck.log
	cat cppcheck.log