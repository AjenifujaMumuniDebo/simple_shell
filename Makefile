CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic
LIBS=
EXENAME=hsh

CFILES=\
	alias1.c\
	alias2.c\

GLOBAL_HEADERS=\
	shell.h

# Make goals
all: $(GLOBAL_HEADERS) $(CFILES) main.c
	$(CC) $(CFLAGS) $(CFILES) main.c -o $(EXENAME) $(LIBS)

debug: $(GLOBAL_HEADERS) $(CFILES) main.c
	$(CC) $(CFLAGS) $(CFILES) main.c -o $(EXENAME) $(LIBS) -g

clean:
	rm -f $(EXENAME)
