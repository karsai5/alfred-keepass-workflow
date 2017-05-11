# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 560 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/_trp_completion_function.al)"
#
#	wrapper completion function of 'completion_function'
#	for compatibility with Term::ReadLine::Perl
#
sub _trp_completion_function ( $$ ) {
    my($text, $state) = @_;

    my $cf;
    if (not defined ($cf = $Attribs{completion_function})) {
	carp "_trp_comletion_fuction: internal error\n";
	return undef;
    }

    if ($state) {
	$_i++;
    } else {
	# the first call
	$_i = 0;		# clear index
	@_matches = &$cf($text,
			 $Attribs{line_buffer},
			 $Attribs{point} - length($text));
	# return here since $#_matches is 0 instead of -1 when
	# @_matches = undef
	return undef unless defined $_matches[0];
    }

    for (; $_i <= $#_matches; $_i++) {
	# case insensitive match to be compatible with
	# Term::ReadLine::Perl.
	# https://rt.cpan.org/Ticket/Display.html?id=72378
	return $_matches[$_i] if ($_matches[$_i] =~ /^\Q$text/i);
    }
    return undef;
}

1;

__END__
1;
# end of Term::ReadLine::Gnu::XS::_trp_completion_function
