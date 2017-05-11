# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 336 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/hist_arg_extract.al)"
# history_arg_extract
sub hist_arg_extract ( ;$$$ ) {
    my ($line, $first, $last) = @_;
    $line  = $_      unless defined $line;
    $first = 0       unless defined $first;
    $last  = ord '$' unless defined $last; # '
    $first = ord '$' if defined $first and $first eq '$'; # '
    $last  = ord '$' if defined $last  and $last  eq '$'; # '
    &_history_arg_extract($line, $first, $last);
}

# end of Term::ReadLine::Gnu::XS::hist_arg_extract
1;
