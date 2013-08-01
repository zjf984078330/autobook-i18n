\input texinfo   @c -*-texinfo-*-
@c %**start of header
@setfilename autobook.info
@settitle Autoconf, Automake, and Libtool
@setchapternewpage odd
@c %**end of header
@finalout
@headings 	    double

m4_ifelse(`

  Pick your favourite from below, or invent your own! =)O|
  Note: no  texinfo escapes (because the text is used inside @menu)
  and no commas (because the text is used in @node).

')m4_dnl
m4_dnl define(COLLECTIVE, `GNU autoconf automake and libtool')m4_dnl
m4_define(COLLECTIVE, `GNU Autotools')m4_dnl
m4_dnl define(COLLECTIVE, `GNU salt')m4_dnl
m4_dnl define(COLLECTIVE, `GNU gestalt')m4_dnl

@include version.texi

@dircategory GNU programming tools
@direntry
* Autoconf, Automake, Libtool: (autobook).	Using the GNU autotools.
@end direntry

@ifinfo
This file documents GNU Autoconf, Automake and Libtool.

Copyright (C) 1999, 2000 Gary V. Vaughan, Ben Elliston, Tom Tromey,  Ian Lance Taylor

Permission is granted to make and distribute verbatim copies of this
manual provided the copyright notice and this permission notice are
preserved on all copies.

@ignore
Permission is granted to process this file through TeX and print the
results, provided the printed document carries copying permission notice
identical to this one except for the removal of this paragraph


@end ignore
Permission is granted to copy and distribute modified versions of this
manual under the conditions for verbatim copying, provided that the
entire resulting derived work is distributed under the terms of a
permission notice identical to this one.

Permission is granted to copy and distribute translations of this manual
into another language, under the above conditions for modified versions,
except that this permission notice may be stated in a translation
approved by the Foundation.
@end ifinfo

@titlepage
@sp 10
@title Autoconf, Automake, Libtool
@subtitle Edition @value{EDITION}, @value{UPDATED}
@subtitle $Id: autobook.m4,v 1.13 2000/06/27 01:01:42 gvv Exp $
@include AUTHORS

@page
@vskip 0pt plus 1filll
Copyright @copyright{} 1999, 2000 Gary V. Vaughan, Ben Elliston, Tom Tromey,  Ian Lance Taylor

Permission is granted to make and distribute verbatim copies of this
manual provided the copyright notice and this permission notice are
preserved on all copies.

Permission is granted to copy and distribute modified versions of this
manual under the conditions for verbatim copying, provided that the
entire resulting derived work is distributed under the terms of a
permission notice identical to this one.

Permission is granted to copy and distribute translations of this manual
into another language, under the above conditions for modified versions,
except that this permission notice may be stated in a translation
approved by the Authors.
@end titlepage

@ifnottex
@c    name next   previous  up
@node Top, Introduction, (dir), (dir)
@top  The GNU Project Build Tools
@end ifnottex

@iftex
@unnumbered Foreword
@end iftex

m4_include(chapters/foreword.texi)

@menu
m4_include(part1.menu)m4_dnl
m4_include(part2.menu)m4_dnl
m4_include(part3.menu)m4_dnl
m4_include(appendices.menu)m4_dnl
* Index::
@end menu

@c Part I
@iftex
@page
@unnumbered{Part I}
@end iftex

m4_include(part1.texi)

@c Part II
@iftex
@page
@unnumbered{Part II}
@end iftex

m4_include(part2.texi)

@c Part III
@iftex
@page
@unnumbered{Part III}
@end iftex

m4_include(part3.texi)

@c Appendices
@iftex
@page
@unnumbered{Appendices}
@end iftex

m4_include(appendices.texi)

@page
@node Index
@unnumbered Index

@syncodeindex fn cp
@printindex cp

@summarycontents
@contents
@bye
