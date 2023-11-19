MENUPROG = xsndiomenu
ICONPROG = xsndioicon

PREFIX ?= /usr/local
BINDIR = $(DESTDIR)$(PREFIX)/bin
SHAREDIR = $(DESTDIR)$(PREFIX)/share
PIXMAPDIR = $(SHAREDIR)/pixmaps/$(MENUPROG)

install:
	mkdir -p $(BINDIR)
	install -m 755 bin/$(MENUPROG) $(BINDIR)
	install -m 755 bin/$(ICONPROG) $(BINDIR)
	mkdir -p $(PIXMAPDIR)
	cp -R pixmap/* $(PIXMAPDIR)/
	sed -i 's@pixmap/@$(PIXMAPDIR)/@g' $(BINDIR)/$(ICONPROG)

uninstall:
	rm $(BINDIR)/$(MENUPROG)
	rm $(BINDIR)/$(ICONPROG)
	rm -r $(PIXMAPDIR)
