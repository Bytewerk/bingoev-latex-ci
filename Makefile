define pass_options =
make -C bingoev $@
make -C bingoevminutes $@
make -C bingoevletter $@
endef

all:
	${pass_options}

userinstall:
	${pass_options}

clean:
	${pass_options}

.PHONY: all userinstall clean

%:
	${pass_options}
