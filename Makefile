SUBDIRS := $(wildcard */*)

all: $(SUBDIRS)
$(SUBDIRS):
		$(MAKE) -C $@/jre
		$(MAKE) -C $@/jdk
		$(MAKE) -C $@/maven

.PHONY: all $(SUBDIRS)
