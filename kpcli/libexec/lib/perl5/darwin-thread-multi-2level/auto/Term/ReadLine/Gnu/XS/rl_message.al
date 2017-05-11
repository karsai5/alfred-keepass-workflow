# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 293 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/rl_message.al)"
sub rl_message {
    my $fmt = shift;
    my $line = sprintf($fmt, @_);
    _rl_message($line);
}

# end of Term::ReadLine::Gnu::XS::rl_message
1;
