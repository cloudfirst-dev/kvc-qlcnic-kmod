ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 qlcnic-kmod-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 qlcnic-kmod.conf $(CONFDIR)/kvc/
	install -v -m 755 qlcnic-kmod-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/qlcnic-kmod-wrapper.sh $(DESTDIR)/bin/spkut
