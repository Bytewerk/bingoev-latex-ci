include ../common.mk
CLS = bingoevminutes
USERINSTALLDIR = ${TEXMFDIR}/${CLS}
TEXINPUTS = .:..//: #add the top level directory to the search path of LaTeX

all: ${CLS}.cls ${CLS}.pdf

%.cls: %.ins %.dtx ../bingoev/bingoev.sty
	TEXINPUTS=${TEXINPUTS} ${TC} ${TCFLAGS} $<

%.${TCTARGET}: %.dtx %.cls
	TEXINPUTS=${TEXINPUTS} ${TC} ${TCFLAGS} $<

.PHONY: clean

clean:
	-rm -f ${CLS}.{aux,glo,idx,log,pdf,cls}

userinstall: all ${USERINSTALLDIR}/${CLS}.cls

${USERINSTALLDIR}/${CLS}.cls: ${CLS}.cls
	-mkdir -p $(dir $@)
	cp $< $@
