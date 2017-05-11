# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 96 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_bind_key.al)"
sub rl_bind_key ($$;$) {
    if (defined $_[2]) {
	return _rl_bind_key($_[0], _str2fn($_[1]), _str2map($_[2]));
    } else {
	return _rl_bind_key($_[0], _str2fn($_[1]));
    }
}

# end of Term::ReadLine::Gnu::XS::rl_bind_key
1;
