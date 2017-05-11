# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 507 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/_tgetstrs.al)"
sub _tgetstrs {
    my @s = (tgetstr('cr'),	# carriage return
	     tgetstr('ce'),	# clear to EOL
	     tgetstr('le'));	# cursor left
    warn <<"EOM" unless (defined($s[0]) && defined($s[1]) && defined($s[2]));
Your terminal 'TERM=$ENV{TERM}' does not support enough function.
Check if your environment variable 'TERM' is set correctly.
EOM
    # suppress warning "Use of uninitialized value in print at ..."
    $s[0] = $s[0] || ''; $s[1] = $s[1] || ''; $s[2] = $s[2] || '';
    $_tstrs_init = 1;
    return @s;
}

# end of Term::ReadLine::Gnu::XS::_tgetstrs
1;
