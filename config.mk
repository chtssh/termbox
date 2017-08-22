# termbox version
VERSION = 1.0.0

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_POSIX_C_SOURCE=2 -D_XOPEN_SOURCE
CFLAGS += -std=c99 -pedantic -Wall -Wextra -Wvariadic-macros -Os ${INCS} ${CPPFLAGS}

AR = ar
