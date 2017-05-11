# NOTE: Derived from blib/lib/Term/ReadLine/Gnu/XS.pm.
# Changes made here will be lost when autosplit is run again.
# See AutoSplit.pm.
package Term::ReadLine::Gnu::XS;

#line 409 "blib/lib/Term/ReadLine/Gnu/XS.pm (autosplit into blib/lib/auto/Term/ReadLine/Gnu/XS/operate_and_get_next.al)"
# The equivalent of the Korn shell C-o operate-and-get-next-history-line
# editing command. 

# This routine was borrowed from bash.
sub operate_and_get_next {
    my ($count, $key) = @_;

    my $saved_history_line_to_use = -1;
    my $old_rl_startup_hook;

    # Accept the current line.
    rl_call_function('accept-line', 1, $key);

    # Find the current line, and find the next line to use. */
    my $where = where_history();
    if ((history_is_stifled()
	 && ($Attribs{history_length} >= $Attribs{max_input_history}))
	|| ($where >= $Attribs{history_length} - 1)) {
	$saved_history_line_to_use = $where;
    } else {
	$saved_history_line_to_use = $where + 1;
    }
    $old_rl_startup_hook = $Attribs{startup_hook};
    $Attribs{startup_hook} = sub {
	if ($saved_history_line_to_use >= 0) {
	    rl_call_function('previous-history',
			     $Attribs{history_length}
			     - $saved_history_line_to_use,
			     0);
	    $Attribs{startup_hook} = $old_rl_startup_hook;
	    $saved_history_line_to_use = -1;
	}
    };
}

# end of Term::ReadLine::Gnu::XS::operate_and_get_next
1;
