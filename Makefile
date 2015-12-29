SHELL = /bin/sh
PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin

all: emacspipe

update:
	git pull

install:
	cp emacspipe ${BINDIR}/emacspipe

uninstall:
	rm -f ${BINDIR}/emacspipe

.PHONY: update install uninstall
