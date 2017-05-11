# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 174 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_set_key.al)"
sub rl_set_key ($$;$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 4.2) {
	carp "rl_set_key() is not supported.  Ignored\n";
	return;
    }
    if (defined $_[2]) {
	return _rl_set_key($_[0], _str2fn($_[1]), _str2map($_[2]));
    } else {
	return _rl_set_key($_[0], _str2fn($_[1]));
    }
}

# end of Term::ReadLine::Gnu::XS::rl_set_key
1;
