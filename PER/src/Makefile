# Variable
CC = gcc

# Paths
INCLUDE=-I ../include

# Usual compilation flags
CFLAGS = -std=c99 -W -Wall -g
CPPFLAGS =$(INCLUDE)

# Special rules and targets
.PHONY : all clean help

# Rules and targets

all : testbed

testbed : testbed.o
	$(CC) -o testbed testbed.o

testbed.o : testbed.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c testbed.c 

clean :
	rm -f testbed
	rm -f *~
	rm -f *.o
help :
	@echo  "Usage:"
	@echo  "	make all\t\t Launch compilation of testbed"
	@echo  "	make sudoku\t\t Compilation of testbed"
	@echo  "	make clean\t\t Remove all file generate by make"
	@echo  "	make help\t\t Display this help"
