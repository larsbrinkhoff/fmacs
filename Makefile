FORTH = forth
SRC = $(wildcard src/*.fth)

all: fmacs

fmacs: $(SRC)
	$(FORTH) < build.fth | grep Build-OK
	chmod a+x $@

clean:
	rm -f fmacs
