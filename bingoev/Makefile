TC = pdflatex
TCFLAGS = -halt-on-error -interaction nonstopmode
TCTARGET = pdf
PKG = bingoev

all: ${PKG}.sty ${PKG}.pdf

%.sty: %.ins %.dtx
	${TC} ${TCFLAGS} $<

%.${TCTARGET}: %.dtx %.sty
	${TC} ${TCFLAGS} $<

.PHONY: clean

clean:
	-rm -f ${PKG}.{aux,glo,idx,log,pdf,sty}
