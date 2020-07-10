#compiler variable 
CC := g++
#source files list 
SRC_FILE_LIST := test.cpp
SRC_FILE_LIST += help.cpp
#excutable file variable
EXC_FILE := test.exe


#build code 
build:
	@$(CC) $(SRC_FILE_LIST) -o $(EXC_FILE)
#clean code
clean:
	@rm -d $(EXC_FILE)
#run code
run:
	@./$(EXC_FILE)
#debug code
debug:
