
#build code 
build:
	@$(CC) test.cpp help.cpp -o test.exe
#clean code
clean:
	@rm -d test.exe
#run code
run:
	@./test.exe
#debug code
debug:
