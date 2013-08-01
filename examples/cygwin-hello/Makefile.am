## Makefile.am -- Process this file with automake to produce Makefile.in
## Copyright (C) 2000, 2004 Gary V. Vaughan
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2, or (at your option)
## any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

lib_LTLIBRARIES		= libhello.la
libhello_la_SOURCES	= hello.c
libhello_la_LDFLAGS	= -no-undefined -version-info 0:0:0

include_HEADERS		= hello.h

bin_PROGRAMS		= hello
hello_SOURCES		= main.c
hello_LDADD		= libhello.la

main.o: main.c
	$(COMPILE) @LIBHELLO_DLL_IMPORT@ -c main.c
