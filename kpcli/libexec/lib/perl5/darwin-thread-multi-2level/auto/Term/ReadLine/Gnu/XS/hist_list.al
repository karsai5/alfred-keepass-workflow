# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 322 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/hist_list.al)"
#
#	History Library function wrappers
#
# history_list
sub hist_list () {
    my ($i, $history_base, $history_length, @d);
    $history_base   = $Attribs{history_base};
    $history_length = $Attribs{history_length};
    for ($i = $history_base; $i < $history_base + $history_length; $i++) {
	push(@d, history_get($i));
    }
    @d;
}

# end of Term::ReadLine::Gnu::XS::hist_list
1;
