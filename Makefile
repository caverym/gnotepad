CFLAGS+=-Wall -Wextra
CFLAGS+=`pkg-config --cflags gtk+-3.0`
LIBS+=`pkg-config --libs gtk+-3.0`
PROG=gnotepad

build:
	$(CC) $(CFLAGS) -o $(PROG) src/*.c $(LIBS)

clean:
	rm -f $(PROG)
