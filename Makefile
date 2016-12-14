CC = gcc
CFLAGS = -O0 -std=gnu99 -Wall
EXECUTABLE = \
	clz

default: clz.o
	$(CC) $(CFLAGS) clz.o main.c -o clz_test
	$(CC) $(CFLAGS) clz.o test.c -o test

.PHONY: clean default

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@ 

check:	default
	./test

gencsv: default
	for i in `seq 1000000 100 5000000`; do \
		printf "%d," $$i;\
		./clz_test $$i; \
		done > result_clz.csv

plot: gencsv
	gnuplot plot.gp 
compare: default
	gnuplot compare.gp
clean:
	$(RM) $(EXEC) *.o result_clz.csv clz_test test ilteration.png binary-shift.png binary-search.png recursive.png harley.png
