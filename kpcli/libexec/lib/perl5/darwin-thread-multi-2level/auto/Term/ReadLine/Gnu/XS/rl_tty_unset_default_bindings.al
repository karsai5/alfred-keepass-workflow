# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 279 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_tty_unset_default_bindings.al)"
sub rl_tty_unset_default_bindings (;$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 5.0) {
	carp "rl_tty_unset_default_bindings() is not supported.  Ignored\n";
	return;
    }
    if (defined $_[0]) {
	return _rl_tty_unset_defaut_bindings(_str2map($_[1]));
    } else {
	return _rl_tty_unset_defaut_bindings();
    }
}

# end of Term::ReadLine::Gnu::XS::rl_tty_unset_default_bindings
1;
