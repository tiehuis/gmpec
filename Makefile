PROG  := calc
FLAGS := -I src -use-menhir

all:
	corebuild $(FLAGS) $(PROG).native

clean:
	rm -rf _build $(PROG).native

.PHONY: clean
