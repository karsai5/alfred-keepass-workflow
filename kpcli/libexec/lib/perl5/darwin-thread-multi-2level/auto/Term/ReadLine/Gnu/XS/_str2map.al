# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 74 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/_str2map.al)"
#
#	Readline Library function wrappers
#

# Convert keymap name to Keymap if the argument is not reference to Keymap
sub _str2map ($) {
    return ref $_[0] ? $_[0]
	: (rl_get_keymap_by_name($_[0]) || carp "unknown keymap name \`$_[0]\'\n");
}

# end of Term::ReadLine::Gnu::XS::_str2map
1;
