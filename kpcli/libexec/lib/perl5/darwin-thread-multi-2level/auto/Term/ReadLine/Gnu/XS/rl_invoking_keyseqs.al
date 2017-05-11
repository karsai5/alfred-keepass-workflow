# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 247 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_invoking_keyseqs.al)"
sub rl_invoking_keyseqs ($;$) {
    if (defined $_[1]) {
	return _rl_invoking_keyseqs(_str2fn($_[0]), _str2map($_[1]));
    } else {
	return _rl_invoking_keyseqs(_str2fn($_[0]));
    }
}

# end of Term::ReadLine::Gnu::XS::rl_invoking_keyseqs
1;
