CC = gcc
CFLAGS = -O0 -std=gnu99 -Wall
EXECUTABLE = \
	clz

default: clz.o
	$(CC) $(CFLAGS) clz.o main.c -o clz_test

.PHONY: clean default

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@ 

gencsv: default
	for i in `seq 1000000 100 5000000`; do \
		printf "%d," $$i;\
		./clz_test $$i; \
		done > result_clz.csv

plot: gencsv
	gnuplot plot.gp

clean:
	$(RM) $(EXEC) *.o result_clz.csv clz_test ilteration.png binary-shift.png binary-search.png
