# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 444 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/display_readline_version.al)"
sub display_readline_version {	# show version
    my($count, $key) = @_;	# ignored in this function
    my $OUT = $Attribs{outstream};
    print $OUT
	("\nTerm::ReadLine::Gnu version: $Term::ReadLine::Gnu::VERSION");
    print $OUT
	("\nGNU Readline Library version: $Attribs{library_version}\n");
    rl_on_new_line();
}

# end of Term::ReadLine::Gnu::XS::display_readline_version
1;
