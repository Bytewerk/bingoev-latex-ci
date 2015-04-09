include ../common.mk
PKG = bingoev
GRAPHICSDIR = graphics
USERINSTALLDIR = ${TEXMFDIR}/${PKG}

all: ${PKG}.sty ${PKG}.pdf

%.sty: %.ins %.dtx
	${TC} ${TCFLAGS} $<

%.${TCTARGET}: %.dtx %.sty
	${TC} ${TCFLAGS} $<

.PHONY: clean

clean:
	-rm -f ${PKG}.{aux,glo,idx,log,pdf,sty}

userinstall: all ${USERINSTALLDIR}/${PKG}.sty ${USERINSTALLDIR}/${GRAPHICSDIR}

${USERINSTALLDIR}:
	-mkdir -p $@

${USERINSTALLDIR}/${PKG}.sty: ${PKG}.sty ${USERINSTALLDIR}
	cp $< $@

${USERINSTALLDIR}/${GRAPHICSDIR}: ${GRAPHICSDIR} ${USERINSTALLDIR}
	cp -r $< $@
