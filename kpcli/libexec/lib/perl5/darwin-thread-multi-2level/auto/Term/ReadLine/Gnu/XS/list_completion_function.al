# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 546 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/list_completion_function.al)"
#
#	List Completion Function
#
sub list_completion_function ( $$ ) {
    my($text, $state) = @_;

    $_i = $state ? $_i + 1 : 0;	# clear counter at the first call
    my $cw = $Attribs{completion_word};
    for (; $_i <= $#{$cw}; $_i++) {
	return $cw->[$_i] if ($cw->[$_i] =~ /^\Q$text/);
    }
    return undef;
}

# end of Term::ReadLine::Gnu::XS::list_completion_function
1;
