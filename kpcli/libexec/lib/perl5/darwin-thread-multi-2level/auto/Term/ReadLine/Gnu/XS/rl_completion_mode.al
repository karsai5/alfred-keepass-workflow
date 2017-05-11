# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 299 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_completion_mode.al)"
sub rl_completion_mode {
    # libreadline.* in Debian GNU/Linux 2.0 tells wrong value as '2.1-bash'
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 4.3) {
	carp "rl_completion_mode() is not supported.  Ignored\n";
	return;
    }
    return _rl_completion_mode(_str2fn($_[0]));
}

# end of Term::ReadLine::Gnu::XS::rl_completion_mode
1;
