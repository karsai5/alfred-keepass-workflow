# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 255 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_add_funmap_entry.al)"
sub rl_add_funmap_entry ($$) {
    my ($version) = $Attribs{library_version}
	=~ /(\d+\.\d+)/;
    if ($version < 4.2) {
	carp "rl_add_funmap_entry() is not supported.  Ignored\n";
	return;
    }
    return _rl_add_funmap_entry($_[0], _str2fn($_[1]));
}

# end of Term::ReadLine::Gnu::XS::rl_add_funmap_entry
1;
