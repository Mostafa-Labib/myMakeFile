#debuger var and parameter
#-g put debuging symbols during compilation
CXX_DEBUG_FLAGS := -g
#don't let optimization change the program so we can debug it 
CXX_DEBUG_FLAGS += -Og
CXX_DEBUG_FLAGS += -Wall
EXC_DEBUG_NAME := testDebug.exe
#compiler parameters
# -O iS the optimization level
#level 0 - 1- 2- 3 - s(size) - g(debugging) - fast
# 0 for don't do anything
# 1 2 3 rise level of optimization
#s for optimize only size
CXXFLAG := -Os
#errors and warngings
#error level -w -Wall -Werror
#-w shows no warnings
#-Wall shows all warnings
#Werror makes warning produce error  
CXXFLAG += -w
#how to write variable
# variableName := value
#Compiler variable
CC := g++
#source file list
SRC_LST := ./test.cpp
SRC_LST += ./help.cpp
#excutable name
EXC_NAME := test.exe
print_msg:
	@echo "--------build------------"
#comment: build your code
build: print_msg
#@g++ test.c help.c -o test.exe
	@$(CC) $(CXXFLAG) $(SRC_LST) -o $(EXC_NAME)
	@size $(EXC_NAME)
#clean you code
clean:
	@echo "---------clean-----------"
	@rm *.exe
run: clean build
	@echo "---------run-------------"
	@./$(EXC_NAME)
debug:
	@$(CC) $(CXX_DEBUG_FLAGS) $(SRC_LST) -o $(EXC_DEBUG_NAME)
	@size $(EXC_DEBUG_NAME) 
#size --format=sysv test.exe
#gdb : gdb testDebug.exe run step continue
