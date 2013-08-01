# @start 1
# configure.in -- Process this file with autoconf to produce configure
# @end 1
# Copyright (C) 2000 Gary V. Vaughan
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

# @start 1
AC_INIT(rpl_fopen.c)

AC_PROG_CC
AC_HEADER_STDC
AC_CHECK_HEADERS(string.h strings.h, break)
AC_CHECK_HEADERS(stdlib.h stddef.h sys/types.h memory.h)

AC_C_CONST
AC_TYPE_SIZE_T

AC_CHECK_FUNCS(strchr index strcpy strdup)
AB_AC_FUNC_FOPEN_BINARY
AB_AC_FUNC_FOPEN_TEXT
# @end 1
