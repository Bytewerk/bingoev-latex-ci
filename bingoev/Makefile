include ../common.mk
PKG = bingoev
GRAPHICSDIR = graphics
USERINSTALLDIR = ${TEXMFDIR}/${PKG}
COMPILETEX = ${TC} ${TCFLAGS} $<

all: ${PKG}.sty ${PKG}.pdf

%.sty: %.ins %.dtx
	${COMPILETEX}

%.idx: %.dtx
	${COMPILETEX}

%.ind: %.idx
	makeindex -s gind.ist -o $@ $<

%.${TCTARGET}: %.dtx %.sty %.ind
	${COMPILETEX}

.PHONY: clean

clean:
	-rm -f ${PKG}.{aux,glo,idx,ind,ilg,log,pdf,sty}

userinstall: all ${USERINSTALLDIR}/${PKG}.sty ${USERINSTALLDIR}/${GRAPHICSDIR}

${USERINSTALLDIR}:
	-mkdir -p $@

${USERINSTALLDIR}/${PKG}.sty: ${PKG}.sty ${USERINSTALLDIR}
	cp $< $@

${USERINSTALLDIR}/${GRAPHICSDIR}: ${GRAPHICSDIR} ${USERINSTALLDIR}
	cp -r $< $@
