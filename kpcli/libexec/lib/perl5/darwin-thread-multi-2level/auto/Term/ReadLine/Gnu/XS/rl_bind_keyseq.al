# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 159 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_bind_keyseq.al)"
# rl_bind_keyseq
sub rl_bind_keyseq ($$;$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 5.0) {
	carp "rl_bind_keyseq() is not supported.  Ignored\n";
	return;
    }
    if (defined $_[2]) {
	return _rl_bind_keyseq($_[0], _str2fn($_[1]), _str2map($_[2]));
    } else {
	return _rl_bind_keyseq($_[0], _str2fn($_[1]));
    }
}

# end of Term::ReadLine::Gnu::XS::rl_bind_keyseq
1;
