FORTH = forth
SRC = $(wildcard src/*.fth)

all: fmacs

fmacs: $(SRC)
	$(FORTH) < build.fth | grep Build-OK
	chmod a+x $@

check: fmacs
	printf '\030\003' | ./fmacs | grep scratch

clean:
	rm -f fmacs
