TC = pdflatex
TCFLAGS = -halt-on-error -interaction nonstopmode
TCTARGET = pdf
CLS = bingoevminutes
TEXINPUTS = .:..//: #add the top level directory to the search path of LaTeX

all: ${CLS}.cls ${CLS}.pdf

%.cls: %.ins %.dtx
	TEXINPUTS=${TEXINPUTS} ${TC} ${TCFLAGS} $<

%.${TCTARGET}: %.dtx %.cls
	TEXINPUTS=${TEXINPUTS} ${TC} ${TCFLAGS} $<

.PHONY: clean

clean:
	-rm -f ${CLS}.{aux,glo,idx,log,pdf,cls}
