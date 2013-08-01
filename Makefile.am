AUTOMAKE_OPTIONS	= gnu no-dependencies
SUBDIRS			= examples .

PERL                    = perl

MAINTAINERCLEANFILES	= INSTALL Makefile.in aclocal.m4 autobook.html \
			  configure install-sh mdate-sh missing \
			  mkinstalldirs texinfo.tex

info_TEXINFOS		= autobook.texi
EXTRA_DIST		= autobook.m4 bootstrap \
			  part1.texi part2.texi part3.texi appendices.texi \
			  $(chapters)
BUILT_SOURCES		= autobook.texi $(MENUS)
MENUS			= part1.menu part2.menu part3.menu appendices.menu
SUFFIXES		= .m4 .texi .menu .html

chapters	= chapters/bootstrap.texi \
		chapters/complex-project.texi \
		chapters/cygwin.texi \
		chapters/dynamic-load.texi \
		chapters/foreword.texi \
		chapters/flow-diagrams.texi \
		chapters/intro-libtool.texi \
		chapters/large-project.texi \
		chapters/libltdl.texi \
		chapters/portable-sh.texi \
		chapters/small-project.texi \
		chapters/using-libtool.texi


M4			= @M4@
M4FLAGS			= -I$(srcdir) -P

.m4.texi:
	  $(M4) $(M4FLAGS) $<  > $@

.texi.menu:
	@echo 'm4_dnl DO NOT EDIT -- automatically generated from $<' > $@
	sed '1,/^@c %\*\*start of menu/d;/^@c %\*\*end of menu/,$$d' $< >> $@

.texi.html:
	$(PERL) $(srcdir)/texi2html -split section --subdir autobook -nomenu $<

all: autobook.info autobook.html macro-list
html: autobook.html

autobook.info: autobook.texi part1.texi part2.texi part3.texi appendices.texi version.texi AUTHORS COPYING PLATFORMS
autobook.texi: autobook.m4 $(MENUS) $(chapters)
autobook.html: autobook.texi


## FIXME: better would be exact dependencies.
macro-list:
	$(PERL) $(srcdir)/split.pl `find $(srcdir) -name '*.texi' -print` \
	  > $(srcdir)/macro-list

.PHONY: html
