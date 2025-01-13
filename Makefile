MENUPROG = xsndiomenu
#ICONPROG = xsndioicon

PREFIX ?= /usr/local
BINDIR = $(DESTDIR)$(PREFIX)/bin
SHAREDIR = $(DESTDIR)$(PREFIX)/share
PIXMAPDIR = $(SHAREDIR)/pixmaps/$(MENUPROG)
MLVWMRCDIR = $(HOME)/.mlvwm

install:
	mkdir -p $(BINDIR)
	install -m 755 bin/$(MENUPROG) $(BINDIR)
	#install -m 755 bin/$(ICONPROG) $(BINDIR)
	mkdir -p $(PIXMAPDIR)
	cp -R pixmap/* $(PIXMAPDIR)/
	#sed -i 's@pixmap/@$(PIXMAPDIR)/@g' $(BINDIR)/$(ICONPROG)

install-mlvwmrc-menuextra:
	mkdir -p $(MLVWMRCDIR)/MenuExtras
	install .mlvwm/MenuExtras/$(MENUPROG) $(MLVWMRCDIR)/MenuExtras
	sed -i 's@pixmap/@$(PIXMAPDIR)/@g' $(MLVWMRCDIR)/MenuExtras/$(MENUPROG)
	#install .mlvwm/MenuExtras/$(ICONPROG) $(MLVWMRCDIR)/MenuExtras
	#sed -i 's@pixmap/@$(PIXMAPDIR)/@g' $(MLVWMRCDIR)/MenuExtras/$(ICONPROG)

uninstall:
	rm $(BINDIR)/$(MENUPROG)
	#rm $(BINDIR)/$(ICONPROG)
	rm -r $(PIXMAPDIR)

uninstall-mlvwmrc-menuexra:
	rm $(MLVWMRCDIR)/MenuExtras/$(MENUPROG)
	#rm $(MLVWMRCDIR)/MenuExtras/$(ICONPROG)
