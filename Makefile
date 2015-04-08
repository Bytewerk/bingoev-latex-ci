define pass_options =
make -C bingoev $@
make -C bingoevminutes $@
endef

all:
	${pass_options}

%:
	${pass_options}
