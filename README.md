The toplevel wrapper which holds all this stuff together is the file
autobook.texi.

The book includes four files (one for each part) twice each, once to
populate the top level menu and again to include the body.

The makefile extracts the lines between ``@c %**start of menu'' and
``@c %**end of menu'' to insert on the first inclusion.

Subdivide the part.texi files into separate chapter files if you wish;
wrap any menu entries in a single ``@c %**'' pair in these sub files,
and ``@include file.menu'' in the part.texi file to have make extract
menu sections from individual files for @including while reading the
document source.

Just out of interest, it would be nice not to require an m4 pass over
the texi source, but it seems that my makeinfo can't handle auto-node
references (Next, Prev, Up) if I use texi @include for the menus and
subsections.
