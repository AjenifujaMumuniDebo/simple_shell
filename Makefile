CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic
LIBS=
EXENAME=hsh

CFILES=\
	alias1.c\
	alias2.c\
	inventory.c\
	builtin_1.c\
	builtin_2.c\
	cd.c\	
	env1.c\
	env2.c\
	execute.c\
	file_io.c\
	free.c\
	getline.c\
	helper1.c\
	helper2.c\
	history.c\
	mem.c\
	parser_1.c\
	parser_2.c\
GLOBAL_HEADERS=\
	shell.h

# Make goals
all: $(GLOBAL_HEADERS) $(CFILES) main.c
	$(CC) $(CFLAGS) $(CFILES) main.c -o $(EXENAME) $(LIBS)

debug: $(GLOBAL_HEADERS) $(CFILES) main.c
	$(CC) $(CFLAGS) $(CFILES) main.c -o $(EXENAME) $(LIBS) -g

clean:
	rm -f $(EXENAME)
