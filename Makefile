PREFIX ?= /usr/local
BIN_NAME = pdf2remarkable

default:
	@echo "No default target."
	@echo "Use make install to install to $(PREFIX)"
	@echo "Set the PREFIX variable to change this path"
	@exit 2
.PHONY: default

install: $(PREFIX)/bin/$(BIN_NAME)
.PHONY: install

$(PREFIX)/bin/$(BIN_NAME): $(BIN_NAME) | $(PREFIX)/bin/
	install $(BIN_NAME) $(PREFIX)/bin/

$(PREFIX)/bin/:
	mkdir -p $@

$(BIN_NAME):
	$(error missing file "$@")
