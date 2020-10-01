.POSIX:
.PHONY: all clean
CC= gcc
OBJECTS= main.o euler.o
LDLIBS= -lm

run: euler 
	./euler

euler: $(OBJECTS)
	$(CC) -o euler $(OBJECTS) $(LDLIBS)

main.o: main.c euler.h
	$(CC) -c main.c

euler.o: euler.c euler.h
	$(CC) -c euler.c

clean:
	rm *.o
