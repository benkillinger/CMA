AUTOMAKE_OPTIONS = foreign

bin_PROGRAMS=ma test

ma_SOURCES=ma.c
ma_LDADD=libcma.la
ma_LDFLAGS=

test_SOURCES=testprog.c
test_LDADD=libcma.la
test_LDFLAGS=

include_HEADERS=cma.h

lib_LTLIBRARIES=libcma.la
libcma_la_SOURCES=cma.c
libcma_la_LDFLAGS=-version-info 0:0:0
