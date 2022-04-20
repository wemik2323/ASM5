all: lul.o
	gcc -Wall sus.c lul.o -o main -fno-pie -no-pie

lul.o: 
	nasm -felf64 lul.asm -o lul.o 

clean:
	rm *.o main
