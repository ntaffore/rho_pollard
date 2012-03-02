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

all : testbed multi

testbed : testbed.o
	$(CC) -o testbed testbed.o

# old version
#parallele : parallelisation_rho.o
#	$(CC) -o parallele parallelisation_rho.o

multi : mutli_parallele.o
	$(CC) -o multi mutli_parallele.o

%.o : %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c mutli_parallele.c testbed.c 

clean :
	rm -f testbed
	rm -f parallele
	rm -f multi
	rm -f *~
	rm -f *.o

help :
	@echo  "Usage:"
	@echo  "	make all\t\t Launch compilation of testbed"
	@echo  "	make testbed\t\t Compilation of testbed"
	@echo  "	make paralle\t\t Compilation of parallele prog"
	@echo  "	make mutli\t\t Compilation of multi_parallele prog"
	@echo  "	make clean\t\t Remove all file generate by make"
	@echo  "	make help\t\t Display this help"
