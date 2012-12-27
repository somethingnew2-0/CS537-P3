libmem.so:	mem.c
		gcc -c -fpic mem.c -Wall -Werror
		gcc -shared -o libmem.so mem.o

mem:	mem.c
		rm -f mem.o
		gcc -g mem.c -o mem

clean:
		rm -f mem.o
		rm -f libmem.so
