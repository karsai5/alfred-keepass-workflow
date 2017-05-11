# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 310 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_filename_list.al)"
#
#	for compatibility with Term::ReadLine::Perl
#
sub rl_filename_list {
    my ($text) = @_;

    # lcd : lowest common denominator
    my ($lcd, @matches) = rl_completion_matches($text,
						\&rl_filename_completion_function);
    return @matches ? @matches : $lcd;
}

# end of Term::ReadLine::Gnu::XS::rl_filename_list
1;
