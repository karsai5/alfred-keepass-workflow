# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 84 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/_str2fn.al)"
# Convert function name to Function if the argument is not reference
# to Function
sub _str2fn ($) {
    return ref $_[0] ? $_[0]
	: (rl_named_function($_[0]) || carp "unknown function name \`$_[0]\'\n");
}

# end of Term::ReadLine::Gnu::XS::_str2fn
1;
