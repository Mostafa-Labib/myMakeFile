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
	@$(CC) $(SRC_LST) -o $(EXC_NAME)
	@size $(EXC_NAME)
#clean you code
clean:
	@echo "---------clean-----------"
	@rm *.exe
run: clean build
	@echo "---------run-------------"
	@./$(EXC_NAME)

