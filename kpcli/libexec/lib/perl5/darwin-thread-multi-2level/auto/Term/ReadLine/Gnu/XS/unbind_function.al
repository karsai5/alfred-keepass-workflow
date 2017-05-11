# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 128 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/unbind_function.al)"
# rl_unbind_function
sub unbind_function ($;$) {
    # libreadline.* in Debian GNU/Linux 2.0 tells wrong value as '2.1-bash'
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 2.2) {
	carp "rl_unbind_function() is not supported.  Ignored\n";
	return;
    }
    if (defined $_[1]) {
	return _rl_unbind_function($_[0], _str2map($_[1]));
    } else {
	return _rl_unbind_function($_[0]);
    }
}

# end of Term::ReadLine::Gnu::XS::unbind_function
1;
