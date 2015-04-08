include ../common.mk
PKG = bingoev
USERINSTALLDIR = ${TEXMFDIR}/${PKG}

all: ${PKG}.sty ${PKG}.pdf

%.sty: %.ins %.dtx
	${TC} ${TCFLAGS} $<

%.${TCTARGET}: %.dtx %.sty
	${TC} ${TCFLAGS} $<

.PHONY: clean

clean:
	-rm -f ${PKG}.{aux,glo,idx,log,pdf,sty}

userinstall: all ${USERINSTALLDIR}/${PKG}.sty

${USERINSTALLDIR}/${PKG}.sty: ${PKG}.sty
	-mkdir -p $(dir $@)
	cp $< $@
