# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 119 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/unbind_key.al)"
# rl_unbind_key
sub unbind_key ($;$) {
    if (defined $_[1]) {
	return _rl_unbind_key($_[0], _str2map($_[1]));
    } else {
	return _rl_unbind_key($_[0]);
    }
}

# end of Term::ReadLine::Gnu::XS::unbind_key
1;
