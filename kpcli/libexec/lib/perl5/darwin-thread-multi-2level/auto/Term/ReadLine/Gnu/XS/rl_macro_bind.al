# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 203 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_macro_bind.al)"
sub rl_macro_bind ($$;$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if (defined $_[2]) {
	return _rl_macro_bind($_[0], $_[1], _str2map($_[2]));
    } else {
	return _rl_macro_bind($_[0], $_[1]);
    }
}

# end of Term::ReadLine::Gnu::XS::rl_macro_bind
1;
