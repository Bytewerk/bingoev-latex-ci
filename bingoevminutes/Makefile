include ../common.mk
CLS = bingoevminutes
USERINSTALLDIR = ${TEXMFDIR}/${CLS}
TEXINPUTS = .:..//: #add the top level directory to the search path of LaTeX
COMPILETEX = TEXINPUTS=${TEXINPUTS} ${TC} ${TCFLAGS} $<

all: ${CLS}.cls ${CLS}.${TCTARGET}

%.idx: %.dtx
	${COMPILETEX}

%.ind: %.idx
	makeindex -s gind.ist -o $@ $<

%.cls: %.ins %.dtx %.ind ../bingoev/bingoev.sty
	${COMPILETEX}

%.${TCTARGET}: %.dtx %.cls
	${COMPILETEX}

.PHONY: clean

clean:
	-rm -f ${CLS}.{aux,glo,idx,ind,ilg,log,pdf,cls}

userinstall: all ${USERINSTALLDIR}/${CLS}.cls

${USERINSTALLDIR}/${CLS}.cls: ${CLS}.cls
	-mkdir -p $(dir $@)
	cp $< $@
