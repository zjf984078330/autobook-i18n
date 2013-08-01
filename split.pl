# This is a helper which tries to compute all the macros used
# in the text.  Run it on all the .texi files:
# perl split.pl $(find . -name '*.texi' -print)

$bad = 0;
%r = ();
while (<>)
{
    if (/^\@node ([^,]+)/)
    {
	$node = $1;
	$bad = ($node eq 'Autoconf Macro Index'
		|| $node eq 'Useful autoconf Macros');
    }

    foreach $line (split (/A[CM]_[A-Z0-9_]+/))
    {
	if (/(A[CM]_[A-Z0-9_]+)/)
	{
	    # Make sure we only keep track of macro references from
	    # outside the explanation appendix.
	    # There is a nice GC problem here: we'd really like to
	    # make sure we track macros referenced from this appendix.
	    # But we only want to do this if the current description is
	    # for a macro referenced from outside this appendix.
	    # I'm too lazy to solve it now.
	    $macro = $1;
	    if (! $bad)
	    {
		$r{$macro} = 1;
	    }
	}
    }
}

# This is only used in a ChangeLog entry.
delete $r{'AM_MISSING_INSTALL_SH'};

# These are not macros.
delete $r{'AM_CFLAGS'};
delete $r{'AM_MCFLAGS'};

foreach $item (sort keys %r)
{
    print $item, "\n";
}
