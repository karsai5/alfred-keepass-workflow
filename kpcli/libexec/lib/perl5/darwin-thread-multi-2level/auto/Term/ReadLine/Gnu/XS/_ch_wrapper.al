# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 521 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/_ch_wrapper.al)"
# callback handler wrapper function for CallbackHandlerInstall method
sub _ch_wrapper {
    my $line = shift;

    if (defined $line) {
	if ($Attribs{do_expand}) {
	    my $result;
	    ($result, $line) = history_expand($line);
	    my $outstream = $Attribs{outstream};
	    print $outstream "$line\n" if ($result);

	    # return without adding line into history
	    if ($result < 0 || $result == 2) {
		return '';	# don't return `undef' which means EOF.
	    }
	}

	# add to history buffer
	add_history($line) 
	    if ($Attribs{MinLength} > 0
		&& length($line) >= $Attribs{MinLength});
    }
    &{$Attribs{_callback_handler}}($line);
}

# end of Term::ReadLine::Gnu::XS::_ch_wrapper
1;
