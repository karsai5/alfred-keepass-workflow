# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 477 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/Tk_getc.al)"
#
#	for tkRunning
#
sub Tk_getc {
    &Term::ReadLine::Tk::Tk_loop
	if $Term::ReadLine::toloop && defined &Tk::DoOneEvent;
    my $FILE = $Attribs{instream};
    return rl_getc($FILE);
}

# end of Term::ReadLine::Gnu::XS::Tk_getc
1;
