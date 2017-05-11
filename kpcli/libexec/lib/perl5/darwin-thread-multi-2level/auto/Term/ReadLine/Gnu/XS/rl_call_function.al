# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 237 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_call_function.al)"
sub rl_call_function ($;$$) {
    if (defined $_[2]) {
	return _rl_call_function(_str2fn($_[0]), $_[1], $_[2]);
    } elsif (defined $_[1]) {
	return _rl_call_function(_str2fn($_[0]), $_[1]);
    } else {
	return _rl_call_function(_str2fn($_[0]));
    }
}

# end of Term::ReadLine::Gnu::XS::rl_call_function
1;
