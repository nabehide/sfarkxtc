all: sfarkxtc

INSTALL?=install

# Seems to be needed as clang doesn't appear to add this by default on
# OSX. Let me know if you know a better way.
LDFLAGS=-L/usr/local/lib

LDLIBS=-lsfark -lz

clean: 
	-rm sfarkxtc 2>/dev/null || true

install: sfarkxtc
	$(INSTALL) -d $(DESTDIR)/usr/local/bin/sfarkxtc
	$(INSTALL) sfarkxtc $(DESTDIR)/usr/local/bin/sfarkxtc
