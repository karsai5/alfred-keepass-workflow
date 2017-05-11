# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 347 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/get_history_event.al)"
sub get_history_event ( $$;$ ) {
    _get_history_event($_[0], $_[1], defined $_[2] ? ord $_[2] : 0);
}

# end of Term::ReadLine::Gnu::XS::get_history_event
1;
