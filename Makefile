CC=gcc
CFLAGS=-shared -g -Wall -Wextra -ggdb
TARGET:gdll.a

gdll.a:glthread.o
	${CC} ${CFLAGS} glthread.o -o gdll.so

glthread.o:glthread.c
	${CC} ${CFLAGS} -c glthread.c -o glthread.o

