
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
SRC_LST := ./test.c
SRC_LST += ./help.c
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

