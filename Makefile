FORTH = forth > /dev/null
SRC = $(wildcard src/*.fth)

all: fmacs

fmacs: $(SRC)
	$(FORTH) < build.fth
	chmod a+x $@

clean:
	rm -f fmacs
