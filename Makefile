SHELL = /bin/sh
PREFIX = $(DESTDIR)/usr/local
BINDIR = $(PREFIX)/bin

all: emacspipe restore-dev-null

update:
	git pull

install:
	cp emacspipe ${BINDIR}/emacspipe
	cp restore-dev-null ${BINDIR}/restore-dev-null

uninstall:
	rm -f ${BINDIR}/emacspipe
	rm -f ${BINDIR}/restore-dev-null

.PHONY: update install uninstall
