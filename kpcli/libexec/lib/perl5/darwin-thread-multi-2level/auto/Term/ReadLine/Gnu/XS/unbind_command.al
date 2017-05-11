# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 144 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/unbind_command.al)"
# rl_unbind_command
sub unbind_command ($;$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 2.2) {
	carp "rl_unbind_command() is not supported.  Ignored\n";
	return;
    }
    if (defined $_[1]) {
	return _rl_unbind_command($_[0], _str2map($_[1]));
    } else {
	return _rl_unbind_command($_[0]);
    }
}

# end of Term::ReadLine::Gnu::XS::unbind_command
1;
