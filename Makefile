include config.mk

SRC = src/termbox.c src/utf8.c
OBJ = ${SRC:.c=.o}

all: options libtermbox.a

options:
	@echo termbox build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} -o $@ $<

${OBJ}: config.mk

libtermbox.a: ${OBJ}
	@echo AR $@
	@${AR} rc $@ ${OBJ}

clean:
	@echo cleaning
	@rm -f libtermbox.a ${OBJ}

.PHONY: all options clean
