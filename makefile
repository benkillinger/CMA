SOURCES = cma.c ma.c testprog.c cma.h 
.PHONY: all
all: libcma.so ma.shared testprog.shared

libcma.so: cma.o
	gcc -shared -o libcma.so cma.o

cma.o: cma.c cma.h
	gcc -c cma.c

ma.shared: ma.o libcma.so
	gcc ma.o -o ma.shared -L. -lcma

ma.o: ma.c cma.h
	gcc -c ma.c

testprog.shared: testprog.o libcma.so
	gcc testprog.o -o testprog.shared -L. -lcma

testprog.o: testprog.c cma.h
	gcc -c testprog.c

test: ma.shared testprog.shared
	./ma.shared; ./testprog.shared 1000

dist: makefile $(SOURCES)
	tar -cvf $@ $^

clean:
	rm -f *.o libcma.so *.shared
