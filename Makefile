SRCS := $(wildcard src/*.m4)
HTML := $(patsubst src/%.m4,html/%.htm,$(SRCS))
MAN  := $(patsubst src/%.m4,man/%.3,$(SRCS))
XREF := $(patsubst src/%.m4,%,$(SRCS))

all: $(HTML) $(MAN)

html man:
	mkdir $@

html/%.htm: template/common.m4 template/config.m4 template/html.m4 src/%.m4 | html
	m4 -DXREF="$(XREF)" $^ > $@

man/%.3: template/common.m4 template/config.m4 template/man.m4 src/%.m4 | man
	m4 -DXREF="$(XREF)" $^ > $@

clean:
	$(RM) -r html man

.PHONY: all clean
