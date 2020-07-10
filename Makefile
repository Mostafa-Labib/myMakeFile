#compiler variable 
CC := g++
#source files list 
SRC_FILE_LIST := test.cpp
SRC_FILE_LIST += help.cpp
#excutable file variable
EXC_FILE := test.exe
EXC_DEBUG_FILE := test_debug.exe
#compiler flags
#optimization options 0 - 1 - 2 - 3 - s - g - fast
CXX_COMBILER_FLAGS := -os
#warning options -w -Wall -Werror
CXX_COMBILER_FLAGS += -Wall
#debugging flag
# -g -og
CXX_DEBUGGER_FLAGS := -g
CXX_DEBUGGER_FLAGS += -og
CXX_DEBUGGER_FLAGS += -Wall

#build code 
build:
	@$(CC) $(CXX_COMBILER_FLAGS) $(SRC_FILE_LIST) -o $(EXC_FILE)
	@SiZE $(EXC_FILE)
#clean code
clean:
	@rm -d $(EXC_FILE)
#run code
run: build
	@./$(EXC_FILE)
	
#debug code
debug:
	@$(CC) $(CXX_DEBUGGER_FLAGS) $(SRC_FILE_LIST) -o $(EXC_DEBUG_FILE)
	@size $(EXC_DEBUG_FILE)
