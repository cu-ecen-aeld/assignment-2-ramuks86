ifdef CROSS_COMPILE
	#CC=aarch64-none-linux-gnu-gcc
	#CROSS_COMPILE=aarch64-none-linux-gnu-gcc
	CC:=$(CROSS_COMPILE)gcc
else
	CC:=gcc
endif

all : clean writer

writer : writer.o
	$(CC) -g -Wall -I/ writer.o -o writer
#	@echo CROSS_COMPILE is $(CROSS_COMPILE)

writer.o : writer.c
	$(CC) -g -Wall -c -o writer.o writer.c
#	@echo CROSS_COMPILE is $(CROSS_COMPILE)

clean :
	rm -f *.o writer *.elf *.map
#	@echo CROSS_COMPILE is $(CROSS_COMPILE)